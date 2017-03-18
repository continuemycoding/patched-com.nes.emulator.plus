package com.nostalgiaemulators.framework.base;

import com.nostalgiaemulators.framework.Emulator;

import lanchon.dexpatcher.annotation.DexAdd;
import lanchon.dexpatcher.annotation.DexEdit;
import lanchon.dexpatcher.annotation.DexIgnore;
import lanchon.dexpatcher.annotation.DexReplace;

/**
 * Created by Administrator on 2017/3/16.
 */

@DexEdit
public abstract class EmulatorActivity extends ImmersiveActivity implements GameMenu.OnGameMenuListener{

    @DexEdit
    protected Integer slotToRun;

    @DexIgnore
    protected Manager manager;

    @DexIgnore
    public EmulatorActivity(){}

    @DexIgnore
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

    @DexIgnore
    @Override
    public void onGameMenuClosed(GameMenu gameMenu) {

    }

    @DexIgnore
    @Override
    public void onGameMenuCreate(GameMenu gameMenu) {

    }

    @DexIgnore
    @Override
    public void onGameMenuItemSelected(GameMenu gameMenu, GameMenu.GameMenuItem gameMenuItem) {

    }

    @DexIgnore
    @Override
    public void onGameMenuOpened(GameMenu gameMenu) {

    }

    @DexIgnore
    @Override
    public void onGameMenuPrepare(GameMenu gameMenu) {

    }
}
