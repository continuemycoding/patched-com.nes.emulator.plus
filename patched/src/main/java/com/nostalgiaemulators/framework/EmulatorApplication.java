package com.nostalgiaemulators.framework;

import com.db.android.api.AdSystem;
import com.nostalgiaemulators.framework.utils.Log;
import com.qiang.framework.MyApplication;
import com.qiang.framework.helpers.MetaDataHelper;
import com.qiang.nes.BuildConfig;

import lanchon.dexpatcher.annotation.DexAction;
import lanchon.dexpatcher.annotation.DexEdit;
import lanchon.dexpatcher.annotation.DexReplace;

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

        AdSystem.getInstance(this).init(MetaDataHelper.getString("DANGBEIAD_APPID"), MetaDataHelper.getString("DANGBEIAD_APPKEY"));
        //ReflectHelper.invokeMethod("com.db.android.api.AdSystem", "init", new Object[]{MetaDataHelper.getString("DANGBEIAD_APPID"), MetaDataHelper.getString("DANGBEIAD_APPKEY")});

        AdSystem.setLogState(BuildConfig.DEBUG);
        //ReflectHelper.invokeMethod("com.db.android.api.AdSystem", "setLogState", new Object[]{com.qiang.framework.BuildConfig.DEBUG});
    }

    private void initVersionCodes(){}
}
