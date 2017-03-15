package com.nostalgiaemulators.nes1;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;

import com.nostalgiaemulators.framework.Emulator;
import com.nostalgiaemulators.framework.base.EmulatorActivity;
import com.nostalgiaemulators.framework.ui.gamegallery.GalleryActivity;
import com.nostalgiaemulators.framework.ui.gamegallery.GameDescription;
import com.qiang.framework.helper.FileHelper;
import com.qiang.framework.helper.SystemHelper;

import java.util.Set;

import lanchon.dexpatcher.annotation.DexAdd;
import lanchon.dexpatcher.annotation.DexEdit;
import lanchon.dexpatcher.annotation.DexIgnore;
import lanchon.dexpatcher.annotation.DexReplace;

import com.qiang.nes.R;

/**
 * Created by Administrator on 2017/3/16.
 */

@DexEdit
public class NesGalleryActivity extends GalleryActivity{

    @DexIgnore
    public NesGalleryActivity(){}

    @DexAdd
    @Override
    protected void onCreate(Bundle savedInstanceState)
    {
        super.onCreate(savedInstanceState);

        String path = Environment.getDataDirectory() + "/data/" + getPackageName() + "/game.zip";
        FileHelper.copyResource(this, R.raw.game, path);

        GameDescription gameDescription = new GameDescription();
        gameDescription.name = "";
        gameDescription.path = path;

        Intent intent = new Intent(this, NesEmulatorActivity.class);
        intent.putExtra("game", gameDescription);
        intent.putExtra("slot", 0);
        intent.putExtra("fromGallery", false);
        startActivity(intent);
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
