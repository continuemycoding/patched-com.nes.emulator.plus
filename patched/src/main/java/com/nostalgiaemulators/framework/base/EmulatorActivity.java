package com.nostalgiaemulators.framework.base;

import android.annotation.SuppressLint;
import android.os.Bundle;

import com.nostalgiaemulators.framework.Emulator;
import com.nostalgiaemulators.framework.controllers.TouchController;

import lanchon.dexpatcher.annotation.DexAction;
import lanchon.dexpatcher.annotation.DexAdd;
import lanchon.dexpatcher.annotation.DexEdit;
import lanchon.dexpatcher.annotation.DexIgnore;
import lanchon.dexpatcher.annotation.DexReplace;

/**
 * Created by Administrator on 2017/3/16.
 */

@DexEdit(defaultAction = DexAction.IGNORE)
public abstract class EmulatorActivity extends ImmersiveActivity implements GameMenu.OnGameMenuListener{

    protected Manager manager;

    @DexEdit(target = "onCreate")
    protected void source_onCreate(Bundle savedInstanceState){}

    @SuppressLint("MissingSuperCall")
    @DexAdd
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        source_onCreate(savedInstanceState);

        hideTouchController();
    }

    public abstract Emulator getEmulatorInstance();

    @DexReplace
    private void requestNewInterstitial(){}

    @DexReplace
    public void quickLoad(){
        manager.loadState(10);
    }

    @DexReplace
    public void quickSave(){
        manager.saveState(10);
    }

    public void hideTouchController() {

    }

    @Override
    public void onGameMenuClosed(GameMenu gameMenu) {

    }

    @Override
    public void onGameMenuCreate(GameMenu gameMenu) {

    }

    @Override
    public void onGameMenuItemSelected(GameMenu gameMenu, GameMenu.GameMenuItem gameMenuItem) {

    }

    @Override
    public void onGameMenuOpened(GameMenu gameMenu) {

    }

    @Override
    public void onGameMenuPrepare(GameMenu gameMenu) {

    }
}
