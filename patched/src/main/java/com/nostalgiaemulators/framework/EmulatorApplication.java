package com.nostalgiaemulators.framework;

import android.support.annotation.Keep;

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

@Keep
@DexEdit(defaultAction = DexAction.IGNORE)
public abstract class EmulatorApplication extends MyApplication {

    @DexReplace
    @Override
    public void onCreate() {

        super.onCreate();

        Log.setDebugMode(MetaDataHelper.getBoolean("DEBUG"));
        initVersionCodes();

        AdSystem.getInstance(this).init(MetaDataHelper.getString("DANGBEIAD_APPID"), MetaDataHelper.getString("DANGBEIAD_APPKEY"));
        //ReflectHelper.invokeStaticMethod("com.db.android.api.AdSystem", "init", new Object[]{MetaDataHelper.getString("DANGBEIAD_APPID"), MetaDataHelper.getString("DANGBEIAD_APPKEY")});

        AdSystem.setLogState(MetaDataHelper.getBoolean("DEBUG"));
        //ReflectHelper.invokeStaticMethod("com.db.android.api.AdSystem", "setLogState", new Object[]{com.qiang.framework.BuildConfig.DEBUG});
    }

    private void initVersionCodes(){}
}
