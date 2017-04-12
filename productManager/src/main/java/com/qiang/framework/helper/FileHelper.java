package com.qiang.framework.helper;

import org.apache.commons.io.FileUtils;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

/**
 * Created by Lin on 2016/7/2.
 */
public class FileHelper
{
    public static boolean isFileExists(String path)
    {
        File file = new File(path);
        return file.exists() && file.isFile();
    }

    public static boolean isDirectoryExists(String path)
    {
        File file = new File(path);
        return file.exists() && file.isDirectory();
    }

    public static void deleteFile(String path)
    {
        if(isFileExists(path))
            new File(path).delete();
    }

    public static void deleteDirectory(String path)
    {
        if(isDirectoryExists(path))
            deleteRecursive(new File(path));
    }

    private static void deleteRecursive(File fileOrDirectory)
    {
        if (fileOrDirectory.isDirectory())
            for (File child : fileOrDirectory.listFiles())
                deleteRecursive(child);

        fileOrDirectory.delete();
    }

    public static  boolean createDirectory(String path)
    {
        File file = new File(path);
        return file.mkdirs();
    }

    public static String readFileToString(String path)
    {
        return readFileToString(new File(path));
    }

    public static String readFileToString(File file)
    {
        try
        {
            return FileUtils.readFileToString(file, "utf-8");
        }
        catch (IOException e)
        {
            e.printStackTrace();
        }

        return "";
    }

    public static void writeStringToFile(String path, String data)
    {
        writeStringToFile(new File(path), data);
    }

    public static void writeStringToFile(File file, String data)
    {
        try
        {
            FileUtils.writeStringToFile(file, data);
        }
        catch (IOException e)
        {
            e.printStackTrace();
        }
    }

    public static String readString(InputStream inputStream)
    {
        try
        {
            InputStreamReader inputStreamReader = new InputStreamReader(inputStream);
            BufferedReader bufferedReader = new BufferedReader(inputStreamReader);

            StringBuilder stringBuilder = new StringBuilder();

            String  line;
            while ((line = bufferedReader.readLine()) != null)
            {
                stringBuilder.append(line);
                stringBuilder.append('\n');
            }

            return stringBuilder.toString();
        }
        catch (IOException e)
        {
            e.printStackTrace();
        }

        return "";
    }
}
