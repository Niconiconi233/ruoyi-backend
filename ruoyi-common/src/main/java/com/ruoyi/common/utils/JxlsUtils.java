package com.ruoyi.common.utils;

import org.apache.commons.jexl3.JexlBuilder;
import org.apache.commons.jexl3.JexlEngine;
import org.jxls.common.Context;
import org.jxls.expression.JexlExpressionEvaluator;
import org.jxls.transform.Transformer;
import org.jxls.transform.poi.PoiTransformer;
import org.jxls.util.JxlsHelper;

import java.io.*;
import java.util.HashMap;
import java.util.Map;

public class JxlsUtils {

    public static void exportExcel(InputStream is, OutputStream os, Map<String, Object> model) throws IOException {
        Context context = PoiTransformer.createInitialContext();
        if (model != null)
        {
            for (String key : model.keySet())
            {
                context.putVar(key, model.get(key));
            }
        }
        JxlsHelper jxlsHelper = JxlsHelper.getInstance();
        Transformer transform = jxlsHelper.createTransformer(is, os);

        JexlExpressionEvaluator evaluator = (JexlExpressionEvaluator)transform.getTransformationConfig().getExpressionEvaluator();

        Map<String, Object> funcs = new HashMap<String, Object>();
        funcs.put("utils", new JxlsUtils());
        JexlBuilder jb = new JexlBuilder();
        jb.namespaces(funcs);
        JexlEngine je = jb.create();
        evaluator.setJexlEngine(je);

        jxlsHelper.setUseFastFormulaProcessor(false).processTemplate(context, transform);
    }

    public static void exportExcel(File xls, File out, Map<String, Object> model) throws IOException {
        exportExcel(new FileInputStream(xls), new FileOutputStream(out), model);
    }

    public static void exportExcel(String templatePath, OutputStream os, Map<String, Object> model) throws Exception {
        File template = getTemplate(templatePath);
        if (template != null)
        {
            exportExcel(new FileInputStream(template), os, model);
        }else
        {
            throw new Exception("Excel 模版未找到");
        }
    }

    public static File getTemplate(String path)
    {
        File template = new File(path);
        if (template.exists())
        {
            return template;
        }
        return null;
    }
}

















