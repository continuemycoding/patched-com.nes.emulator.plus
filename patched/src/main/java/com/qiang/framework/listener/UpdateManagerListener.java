package com.qiang.framework.listener;

import com.qiang.framework.recommend.Product;

/**
 * Created by Lin on 2016/7/12.
 */
public interface UpdateManagerListener
{
    void onNoUpdateAvailable();

    void onUpdateAvailable(Product product);
}
