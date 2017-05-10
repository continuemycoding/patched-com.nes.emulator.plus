package com.nostalgiaemulators.framework.ui.preferences;

import android.preference.PreferenceActivity;
import android.support.annotation.Keep;

import lanchon.dexpatcher.annotation.DexEdit;
import lanchon.dexpatcher.annotation.DexIgnore;
import lanchon.dexpatcher.annotation.DexReplace;

/**
 * Created by Administrator on 2017/3/16.
 */

@Keep
@DexEdit
public class GamePreferenceActivity extends PreferenceActivity {
    @DexIgnore
    public GamePreferenceActivity(){}

    @DexReplace
    @Override
    protected void onPause()
    {
        super.onPause();
    }

    @DexReplace
    @Override
    protected void onResume()
    {
        super.onResume();
    }
}
