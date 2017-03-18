package com.nostalgiaemulators.nes1;

import android.content.Intent;
import android.os.Bundle;
import android.os.Environment;

import com.nostalgiaemulators.framework.base.GameMenu;
import com.nostalgiaemulators.framework.ui.gamegallery.GalleryActivity;
import com.nostalgiaemulators.framework.ui.gamegallery.GameDescription;
import com.qiang.framework.helper.FileHelper;

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
    public void onCreate(Bundle savedInstanceState)
    {
        super.onCreate(savedInstanceState);

        if(!getPackageName().equals("com.qiang.nes.emulator"))
        {
            String path = Environment.getDataDirectory() + "/data/" + getPackageName() + "/game.zip";
            FileHelper.copyResource(this, com.qiang.nes.R.raw.game, path);

            GameDescription gameDescription = new GameDescription();
            gameDescription.name = "";
            gameDescription.path = path;

            Intent intent = new Intent(this, NesEmulatorActivity.class);
            intent.putExtra("game", gameDescription);
            intent.putExtra("slot", 0);
            intent.putExtra("fromGallery", false);
            startActivityForResult(intent, 0);
        }
    }

    @DexAdd
    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        if(!getPackageName().equals("com.qiang.nes.emulator"))
            finish();
    }

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
    protected Set<String> getRomExtensions(){
        return null;
    }
}
