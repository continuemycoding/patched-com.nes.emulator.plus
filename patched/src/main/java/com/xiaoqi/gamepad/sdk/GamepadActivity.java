package com.xiaoqi.gamepad.sdk;

import android.app.Activity;
import android.os.Bundle;

import lanchon.dexpatcher.annotation.DexAction;
import lanchon.dexpatcher.annotation.DexAdd;
import lanchon.dexpatcher.annotation.DexEdit;
import lanchon.dexpatcher.annotation.DexIgnore;
import lanchon.dexpatcher.annotation.DexRemove;
import lanchon.dexpatcher.annotation.DexReplace;

/**
 * Created by Administrator on 2017/3/25.
 */

@DexEdit(defaultAction = DexAction.IGNORE)
public class GamepadActivity extends Activity {

    private WrapActivity wrap;

    @DexReplace
    @Override
    protected void onCreate(Bundle paramBundle)
    {
        super.onCreate(paramBundle);

        wrap = new WrapActivity(this);
        wrap.onCreate();
    }
}
