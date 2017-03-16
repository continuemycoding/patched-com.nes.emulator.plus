package com.google.android.gms.ads;

import android.content.Context;
import android.view.ViewGroup;

import lanchon.dexpatcher.annotation.DexAdd;
import lanchon.dexpatcher.annotation.DexEdit;
import lanchon.dexpatcher.annotation.DexIgnore;
import lanchon.dexpatcher.annotation.DexReplace;

/**
 * Created by Administrator on 2017/3/16.
 */

@DexEdit
public class BaseAdView extends ViewGroup {

    @DexIgnore
    public BaseAdView(Context context) {
        super(context);
    }

    @DexReplace
    public void loadAd(AdRequest paramAdRequest){}

    @DexIgnore
    @Override
    protected void onLayout(boolean changed, int l, int t, int r, int b) {

    }
}
