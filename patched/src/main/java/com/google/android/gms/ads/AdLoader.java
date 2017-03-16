package com.google.android.gms.ads;

import com.google.android.gms.ads.doubleclick.PublisherAdRequest;

import lanchon.dexpatcher.annotation.DexEdit;
import lanchon.dexpatcher.annotation.DexIgnore;
import lanchon.dexpatcher.annotation.DexReplace;

/**
 * Created by Administrator on 2017/3/16.
 */

@DexEdit
public class AdLoader {
    @DexIgnore
    public AdLoader(){}

    @DexReplace
    public void loadAd(AdRequest paramAdRequest){}

    @DexReplace
    public void loadAd(PublisherAdRequest paramPublisherAdRequest){}
}
