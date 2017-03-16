package com.nostalgiaemulators.framework.base;

import android.content.Context;
import android.os.Environment;

import lanchon.dexpatcher.annotation.DexEdit;
import lanchon.dexpatcher.annotation.DexIgnore;
import lanchon.dexpatcher.annotation.DexReplace;

/**
 * Created by Administrator on 2017/3/17.
 */

@DexEdit
public class EmulatorUtils {
    @DexIgnore
    public EmulatorUtils(){}

    @DexReplace
    public static String getBaseDir(Context context)
    {
        return Environment.getDataDirectory() + "/data/" + context.getPackageName() + "/";
    }
}
