package com.qiang.framework.helper;

import org.apache.commons.io.IOUtils;

import java.io.IOException;
import java.io.InputStream;
import java.util.Random;

/**
 * Created by Lin on 2016/7/3.
 */
public class Utils
{
    /**
     * 随机打乱数组
     */
    public static void shuffleArray(Object[] array)
    {
        Random random = new Random();
        for (int i = array.length - 1; i > 0; i--)
        {
            int index = random.nextInt(i + 1);

            Object tmp = array[index];
            array[index] = array[i];
            array[i] = tmp;
        }
    }

    public static  String toString(InputStream input)
    {
        return toString(input, "UTF-8");
    }

    public static  String toString(InputStream input, String encoding)
    {
        try
        {
            return IOUtils.toString(input, encoding);
        }
        catch (IOException e)
        {
            e.printStackTrace();
        }

        return "";
    }
}
