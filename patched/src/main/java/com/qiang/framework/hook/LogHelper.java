package com.qiang.framework.hook;

import android.util.Log;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

public class LogHelper
{
    private static final String TAG = "LogHelper";
    private static Gson gson = new GsonBuilder().setPrettyPrinting().create();

    public static String getStackTrace(int start)
    {
        return getStackTrace(start, 5);
    }

    public static String getStackTrace(int start, int count)
    {
        StringBuilder stringBuilder = new StringBuilder();
        StackTraceElement[] stackTraceElements = new RuntimeException().getStackTrace();
        int i = start;
        while (i < stackTraceElements.length && i < start + count)
        {
            stringBuilder.append("\t");
            stringBuilder.append("at");
            stringBuilder.append(" ");
            stringBuilder.append(stackTraceElements[i].toString());
            stringBuilder.append("\n");
            i += 1;
        }

        return stringBuilder.toString();
    }

    public static int debug(String tag, String msg)
    {
        return Log.d(TAG, tag + ": " + msg + "\n" + getStackTrace(3));
    }

    public static int debug(String tag, String msg, Throwable throwable)
    {
        return Log.d(TAG, tag + ": " + msg + "\n" + getStackTrace(3), throwable);
    }

    public static void debug()
    {
        Log.d(TAG, TAG + "\n" + getStackTrace(3));
    }

    public static void debug(Object msg)
    {
        Log.d(TAG, gson.toJson(msg) + "\n" + getStackTrace(3));
    }

    public static void debug(Object msg, int count)
    {
        Log.d(TAG, gson.toJson(msg) + "\n" + getStackTrace(3, count));
    }

    public static int error(String tag, String msg)
    {
        return Log.e(TAG, tag + ": " + msg + "\n" + getStackTrace(3));
    }

    public static int error(String tag, String msg, Throwable throwable)
    {
        return Log.e(TAG, tag + ": " + msg + "\n" + getStackTrace(3), throwable);
    }

    public static void error()
    {
        Log.e(TAG, TAG + "\n" + getStackTrace(3));
    }

    public static void error(Object msg)
    {
        Log.e(TAG, gson.toJson(msg) + "\n" + getStackTrace(3));
    }

    public static void error(Object msg, int paramInt)
    {
        Log.e(TAG, gson.toJson(msg) + "\n" + getStackTrace(3, paramInt));
    }

    public static int info(String tag, String msg)
    {
        return Log.i(TAG, tag + ": " + msg + "\n" + getStackTrace(3));
    }

    public static int info(String tag, String msg, Throwable throwable)
    {
        return Log.i(TAG, tag + ": " + msg + "\n" + getStackTrace(3), throwable);
    }

    public static void info()
    {
        Log.i(TAG, TAG + "\n" + getStackTrace(3));
    }

    public static void info(Object msg)
    {
        Log.i(TAG, gson.toJson(msg) + "\n" + getStackTrace(3));
    }

    public static void info(Object msg, int count)
    {
        Log.i(TAG, gson.toJson(msg) + "\n" + getStackTrace(3, count));
    }

    public static int warning(String tag, String msg)
    {
        return Log.w(TAG, tag + ": " + msg + "\n" + getStackTrace(3));
    }

    public static int warning(String tag, String msg, Throwable throwable)
    {
        return Log.w(TAG, tag + ": " + msg + "\n" + getStackTrace(3), throwable);
    }

    public static void warning()
    {
        Log.w(TAG, TAG + "\n" + getStackTrace(3));
    }

    public static void warning(Object msg)
    {
        Log.w(TAG, gson.toJson(msg) + "\n" + getStackTrace(3));
    }

    public static void warning(Object msg, int count)
    {
        Log.w(TAG, gson.toJson(msg) + "\n" + getStackTrace(3, count));
    }
}