package com.ruoyi.framework.advice;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.ruoyi.common.annotation.SecurityParameter;
import com.ruoyi.common.core.domain.model.LoginUser;
import com.ruoyi.common.utils.AesEncryptUtils;
import com.ruoyi.common.utils.RSAUtils;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.framework.web.service.TokenService;
import org.apache.commons.io.IOUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.MethodParameter;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpInputMessage;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.servlet.mvc.method.annotation.RequestBodyAdvice;

import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Type;
import java.util.Map;

@ControllerAdvice
public class DecodeRequestBodyAdvice implements RequestBodyAdvice {

    private static final Logger logger = LoggerFactory.getLogger(DecodeRequestBodyAdvice.class);

    private String CLIENT_PUBLIC_KEY;

    @Autowired
    private TokenService tokenService;

    @Override
    public boolean supports(MethodParameter methodParameter, Type targetType, Class<? extends HttpMessageConverter<?>> converterType) {
        return true;
    }

    @Override
    public HttpInputMessage beforeBodyRead(HttpInputMessage inputMessage, MethodParameter parameter, Type targetType, Class<? extends HttpMessageConverter<?>> converterType) throws IOException {
        try {
            boolean encode = false;
            if (parameter.getMethod().isAnnotationPresent(SecurityParameter.class)) {
                //获取注解配置的包含和去除字段
                SecurityParameter serializedField = parameter.getMethodAnnotation(SecurityParameter.class);
                //出参是否需要加密
                encode = serializedField.outEncode();
            }
            if (encode) {
                logger.info("对方法method : [" + parameter.getMethod().getName() + "] 传入参数进行解密");
                LoginUser loginUser = tokenService.getLoginUser(inputMessage);

                CLIENT_PUBLIC_KEY = loginUser.getClientPublicKey();
                return new MyHttpInputMessage(inputMessage);
            } else {
                return inputMessage;
            }
        }catch (Exception e) {
            e.printStackTrace();
            logger.error("对方法method: [" + parameter.getMethod().getName() + "] 解密出现异常");
            return inputMessage;
        }
    }

    @Override
    public Object afterBodyRead(Object body, HttpInputMessage inputMessage, MethodParameter parameter, Type targetType, Class<? extends HttpMessageConverter<?>> converterType) {
        return body;
    }

    @Override
    public Object handleEmptyBody(Object body, HttpInputMessage inputMessage, MethodParameter parameter, Type targetType, Class<? extends HttpMessageConverter<?>> converterType) {
        return body;
    }

    class MyHttpInputMessage implements HttpInputMessage {

        private HttpHeaders httpHeaders;

        private InputStream inputStream;

        public MyHttpInputMessage(HttpInputMessage inputMessage) throws IOException {
            this.httpHeaders = inputMessage.getHeaders();
            this.inputStream = IOUtils.toInputStream(easpString(IOUtils.toString(inputMessage.getBody(), "utf-8")), "utf-8");
        }

        @Override
        public InputStream getBody() throws IOException {
            return inputStream;
        }

        @Override
        public HttpHeaders getHeaders() {
            return httpHeaders;
        }

        public String easpString(String requestData) {
            if (!StringUtils.isEmpty(requestData)) {
                Map<String, String> map = new Gson().fromJson(requestData, new TypeToken<Map<String, String>>(){}.getType());

                String data = map.get("requestData");

                String encrypted = map.get("encrypted");

                if (StringUtils.isEmpty(data) || StringUtils.isEmpty(encrypted)) {
                    throw new RuntimeException("参数 [requestData] 缺失异常");
                }else {
                    String content = null;
                    String aseKey = null;
                    try {
                        aseKey = RSAUtils.decryptDataOnJava(encrypted, CLIENT_PUBLIC_KEY);
                    }catch (Exception e) {
                        throw new RuntimeException("参数 [aseKey] 解析异常");
                    }
                    try {
                        content = AesEncryptUtils.decrypt(data, aseKey);
                    }catch (Exception e) {
                        throw new RuntimeException("参数 [content] 解析异常");
                    }
                    if (StringUtils.isEmpty(content) || StringUtils.isEmpty(aseKey)) {
                        throw new RuntimeException("参数 [requestData] 解析参数为空");
                    }
                    return content;
                }
            }
            throw new RuntimeException("参数 [requestData] 不合法");
        }
    }
}
