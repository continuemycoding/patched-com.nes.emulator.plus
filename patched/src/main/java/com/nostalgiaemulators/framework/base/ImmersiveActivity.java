package com.nostalgiaemulators.framework.base;

import android.annotation.SuppressLint;
import android.os.Bundle;

import com.xiaoqi.gamepad.sdk.GamepadActivity;

import lanchon.dexpatcher.annotation.DexAction;
import lanchon.dexpatcher.annotation.DexAdd;
import lanchon.dexpatcher.annotation.DexEdit;
import lanchon.dexpatcher.annotation.DexReplace;

/**
 * Created by Administrator on 2017/3/25.
 */

@DexEdit(defaultAction = DexAction.IGNORE)
public class ImmersiveActivity extends GamepadActivity {

    @DexReplace
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
    }
}
