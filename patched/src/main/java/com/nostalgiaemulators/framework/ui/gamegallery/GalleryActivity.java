package com.nostalgiaemulators.framework.ui.gamegallery;

import android.support.annotation.Keep;

import com.nostalgiaemulators.framework.base.GameMenu;
import com.nostalgiaemulators.framework.remote.VirtualDPad;

import java.util.ArrayList;

import lanchon.dexpatcher.annotation.DexIgnore;
import lanchon.dexpatcher.annotation.DexReplace;

/**
 * Created by Administrator on 2017/3/17.
 */

@Keep
@DexIgnore
public abstract class GalleryActivity extends BaseGameGalleryActivity implements GalleryPagerAdapter.OnItemClickListener, GameMenu.OnGameMenuListener, VirtualDPad.OnVirtualDPEventsListener{

    @DexIgnore
    public void setNewGames(ArrayList<GameDescription> paramArrayList)
    {

    }

    @DexIgnore
    public void setLastGames(ArrayList<GameDescription> paramArrayList)
    {

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

    @DexIgnore
    @Override
    public void onVirtualDPadCommandEvent(int i, int i1, int i2) {

    }

    @DexIgnore
    @Override
    public void onVirtualDPadTextEvent(String s) {

    }

    @DexIgnore
    @Override
    public void onItemClick(GameDescription gameDescription, boolean b) {

    }
}
