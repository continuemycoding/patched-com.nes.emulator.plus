package com.nostalgiaemulators.framework.ui.gamegallery;

import android.annotation.SuppressLint;
import android.os.Bundle;

import com.nostalgiaemulators.framework.remote.ControllableActivity;

import lanchon.dexpatcher.annotation.DexAction;
import lanchon.dexpatcher.annotation.DexAdd;
import lanchon.dexpatcher.annotation.DexEdit;
import lanchon.dexpatcher.annotation.DexReplace;

/**
 * Created by Administrator on 2017/4/5.
 */

@DexEdit(defaultAction = DexAction.IGNORE)
public class SlotSelectionActivity extends ControllableActivity {

    @DexEdit(target = "onCreate")
    protected void source_onCreate(Bundle savedInstanceState){}

    @SuppressLint("MissingSuperCall")
    @DexAdd
    @Override
    protected void onCreate(Bundle savedInstanceState){
        source_onCreate(savedInstanceState);

        //BannerAdPlugin.init(this);
    }

    @DexReplace
    @Override
    protected void onDestroy()
    {
        super.onDestroy();

        //BannerAdPlugin.destroy();
    }
}
