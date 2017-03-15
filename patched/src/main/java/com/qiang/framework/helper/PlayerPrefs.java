package com.qiang.framework.helper;

import android.content.Context;
import android.content.SharedPreferences;

/**
 * Created by Lin on 2016/7/10.
 */
public class PlayerPrefs
{
    private static SharedPreferences preferences;
    private static SharedPreferences.Editor editor;

    static
    {
        Context context = SystemHelper.getApplicationContext();
        preferences=context.getSharedPreferences("PlayerPrefs", Context.MODE_PRIVATE);
        editor = preferences.edit();
    }

    public static void deleteAll()
    {
        editor.clear();
    }

    public static void deleteKey(String key)
    {
        editor.remove(key);
    }

    public static float getFloat(String key)
    {
        return getFloat(key, 0);
    }

    public static float getFloat(String key, float defaultValue)
    {
        return preferences.getFloat(key, defaultValue);
    }

    public static boolean getBoolean(String key)
    {
        return getBoolean(key, false);
    }

    public static boolean getBoolean(String key, boolean defaultValue)
    {
        return preferences.getBoolean(key, defaultValue);
    }

    public static int getInt(String key)
    {
        return getInt(key, 0);
    }

    public static int getInt(String key, int defaultValue)
    {
        return preferences.getInt(key, defaultValue);
    }

    public static long getLong(String key)
    {
        return getLong(key, 0);
    }

    public static long getLong(String key, long defaultValue)
    {
        return preferences.getLong(key, defaultValue);
    }

    public static String getString(String key)
    {
        return getString(key, "");
    }

    public static String getString(String key, String defaultValue)
    {
        return preferences.getString(key, defaultValue);
    }

    public static boolean hasKey(String key)
    {
        return preferences.contains(key);
    }

    public static void save()
    {
        editor.apply();
    }

    public static void setFloat(String key, float value)
    {
        editor.putFloat(key, value);
    }

    public static void setBoolean(String key, boolean value)
    {
        editor.putBoolean(key, value);
    }

    public static void setInt(String key, int value)
    {
        editor.putInt(key, value);
    }

    public static void setLong(String key, int value)
    {
        editor.putLong(key, value);
    }

    public static void setString(String key, String value)
    {
        editor.putString(key, value);
    }
}
