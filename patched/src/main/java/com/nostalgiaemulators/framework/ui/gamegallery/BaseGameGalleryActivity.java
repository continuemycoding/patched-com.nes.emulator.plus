package com.nostalgiaemulators.framework.ui.gamegallery;

import android.support.annotation.Keep;

import com.nostalgiaemulators.framework.remote.ControllableActivity;

import java.io.File;
import java.util.ArrayList;

import lanchon.dexpatcher.annotation.DexAdd;
import lanchon.dexpatcher.annotation.DexEdit;
import lanchon.dexpatcher.annotation.DexIgnore;

/**
 * Created by Administrator on 2017/3/17.
 */

@Keep
@DexEdit
public abstract class BaseGameGalleryActivity extends ControllableActivity implements RomsFinder.OnRomsFinderListener{
    @DexIgnore
    public BaseGameGalleryActivity(){}

    @DexEdit(target = "reloadGames")
    protected void source_reloadGames(boolean paramBoolean, File paramFile){}

    @DexAdd
    protected void reloadGames(boolean paramBoolean, File paramFile)
    {
        if(getPackageName().equals("com.qiang.nes.emulator"))
            source_reloadGames(paramBoolean, paramFile);
    }

    @DexIgnore
    @Override
    public void onRomsFinderCancel(boolean b) {

    }

    @DexIgnore
    @Override
    public void onRomsFinderEnd(boolean b) {

    }

    @DexIgnore
    @Override
    public void onRomsFinderFoundFile(String s) {

    }

    @DexIgnore
    @Override
    public void onRomsFinderFoundGamesInCache(ArrayList<GameDescription> arrayList) {

    }

    @DexIgnore
    @Override
    public void onRomsFinderFoundZipEntry(String s, int i) {

    }

    @DexIgnore
    @Override
    public void onRomsFinderNewGames(ArrayList<GameDescription> arrayList) {

    }

    @DexIgnore
    @Override
    public void onRomsFinderStart(boolean b) {

    }

    @DexIgnore
    @Override
    public void onRomsFinderZipPartStart(int i) {

    }
}
