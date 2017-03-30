package com.qiang.framework.hook;

import android.content.ContentResolver;
import android.net.Uri;
import android.provider.Settings;

import java.util.Random;

/**
 * Created by Administrator on 2017/2/25.
 */

public class SettingsHelper {
    public static final class SecureHelper
    {
        private static String android_id;
        public static String getString(ContentResolver resolver, String name) {
            if(name.equals(Settings.Secure.ANDROID_ID))
            {
                if(android_id == null)
                {
                    android_id = "";
                    Random random = new Random();
                    for(int i=0;i<16;i++)
                    {
                        android_id += Integer.toHexString(random.nextInt(16));
                    }
                }

                return android_id;
            }
            return Settings.Secure.getString(resolver, name);
        }

        public static boolean putString(ContentResolver resolver, String name, String value) {
            return Settings.Secure.putString(resolver, name, value);
        }

        public static Uri getUriFor(String name) {
            return Settings.Secure.getUriFor(name);
        }

        public static int getInt(ContentResolver cr, String name, int def) {
            return Settings.Secure.getInt(cr, name, def);
        }

        public static int getInt(ContentResolver cr, String name)
                throws Settings.SettingNotFoundException {
            return Settings.Secure.getInt(cr, name);
        }

        public static boolean putInt(ContentResolver cr, String name, int value) {
            return Settings.Secure.putInt(cr, name, value);
        }

        public static long getLong(ContentResolver cr, String name, long def) {
            return Settings.Secure.getLong(cr, name, def);
        }

        public static long getLong(ContentResolver cr, String name)
                throws Settings.SettingNotFoundException {
            return Settings.Secure.getLong(cr, name);
        }

        public static boolean putLong(ContentResolver cr, String name, long value) {
            return Settings.Secure.putLong(cr, name, value);
        }

        public static float getFloat(ContentResolver cr, String name, float def) {
            return Settings.Secure.getFloat(cr, name, def);
        }

        public static float getFloat(ContentResolver cr, String name)
                throws Settings.SettingNotFoundException {
            return Settings.Secure.getFloat(cr, name);
        }

        public static boolean putFloat(ContentResolver cr, String name, float value) {
            return Settings.Secure.putFloat(cr, name, value);
        }
    }
}
