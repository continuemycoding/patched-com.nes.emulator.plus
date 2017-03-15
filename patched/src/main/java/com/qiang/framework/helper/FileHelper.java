package com.qiang.framework.helper;

import android.content.Context;
import android.content.res.AssetManager;

import org.apache.commons.io.FileUtils;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;

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

    public static String readAssetFileToString(String fileName)
    {
        try
        {
            InputStream inputStream = SystemHelper.getApplicationContext().getAssets().open(fileName);
            return readString(inputStream);
        }
        catch (IOException e)
        {
            e.printStackTrace();
        }

        return "";
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

    public static boolean copyAsset(AssetManager assetManager, String fromAssetPath, String toPath)
    {
        try {
            InputStream in = assetManager.open(fromAssetPath);
            new File(toPath).createNewFile();
            OutputStream out = new FileOutputStream(toPath);
            copyFile(in, out);
            in.close();
            out.flush();
            out.close();
            return true;
        } catch(Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static boolean copyResource(Context context, String name, String type, String toPath)
    {
        return copyResource(context, context.getResources().getIdentifier(name, type, context.getPackageName()), toPath);
    }

    public static boolean copyResource(Context context, int id, String toPath)
    {
        try {
            InputStream in = context.getResources().openRawResource(id);;
            new File(toPath).createNewFile();
            OutputStream out = new FileOutputStream(toPath);
            copyFile(in, out);
            in.close();
            out.flush();
            out.close();
            return true;
        } catch(Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static void copyFile(InputStream in, OutputStream out) throws IOException {
        byte[] buffer = new byte[1024];
        int read;
        while((read = in.read(buffer)) != -1){
            out.write(buffer, 0, read);
        }
    }
}
