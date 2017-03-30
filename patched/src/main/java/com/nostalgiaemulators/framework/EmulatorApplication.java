package com.nostalgiaemulators.framework;

import com.nostalgiaemulators.framework.utils.Log;
import com.qiang.framework.MyApplication;
import com.qiang.nes.BuildConfig;

import lanchon.dexpatcher.annotation.*;

/**
 * Created by Administrator on 2017/3/30.
 */

@DexEdit(defaultAction = DexAction.IGNORE)
public abstract class EmulatorApplication extends MyApplication {

    @DexReplace
    @Override
    public void onCreate() {

        Log.setDebugMode(BuildConfig.DEBUG);
        initVersionCodes();

        super.onCreate();
    }

    private void initVersionCodes(){}
}
