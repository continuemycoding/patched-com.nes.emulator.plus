package com.nostalgiaemulators.nes1;

import com.nostalgiaemulators.framework.Emulator;
import com.nostalgiaemulators.framework.base.EmulatorActivity;
import com.nostalgiaemulators.framework.base.GameMenu;
import com.nostalgiaemulators.framework.ui.gamegallery.GalleryActivity;
import com.nostalgiaemulators.framework.utils.Utils;

import java.util.Set;

import lanchon.dexpatcher.annotation.DexAdd;
import lanchon.dexpatcher.annotation.DexEdit;
import lanchon.dexpatcher.annotation.DexIgnore;

/**
 * Created by Administrator on 2017/3/16.
 */

@DexEdit
public class NesGalleryActivity extends GalleryActivity{

    @DexIgnore
    public NesGalleryActivity(){}

    @DexAdd
    @Override
    public void onGameMenuPrepare(GameMenu gameMenu)
    {
        gameMenu.add(R.string.gallery_menu_download, R.drawable.ic_file_download);
        //gameMenu.add(R.string.gallery_menu_language, R.drawable.ic_language);
        //if (Utils.getDeviceType(this) == Utils.ServerType.mobile) {
        //    gameMenu.add(R.string.gallery_menu_remote_control, R.drawable.ic_gamepad);
        //}
        gameMenu.add(R.string.gallery_menu_reload, R.drawable.ic_reset);
        //gameMenu.add(R.string.gallery_menu_load_from_dir, R.drawable.ic_folder);
        gameMenu.add(R.string.gallery_menu_pref, R.drawable.ic_game_settings);
        //gameMenu.add(R.string.gallery_menu_recommend, R.drawable.ic_recommend);
        //gameMenu.add(R.string.gallery_menu_rate_us, R.drawable.ic_star);
        //gameMenu.add(R.string.gallery_menu_help, R.drawable.ic_help_mnu);
    }

    @DexIgnore
    @Override
    public Class<? extends EmulatorActivity> getEmulatorActivityClass() {
        return null;
    }

    @DexIgnore
    @Override
    public Emulator getEmulatorInstance() {
        return null;
    }

    @DexIgnore
    @Override
    protected Set<String> getRomExtensions() {
        return null;
    }
}
