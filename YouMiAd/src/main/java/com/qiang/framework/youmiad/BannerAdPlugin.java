package com.qiang.framework.youmiad;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;

import net.youmi.android.normal.banner.BannerManager;
import net.youmi.android.normal.banner.BannerViewListener;

/**
 * Created by Administrator on 2017/3/24.
 */

public class BannerAdPlugin
{
    private static final String tag = "SpotAdPlugin";

    private static Context mContext;

    public static void init(Context context) {
        mContext = context;

        /**
         * 悬浮布局
         */
        // 实例化LayoutParams
        FrameLayout.LayoutParams layoutParams =
                new FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        // 设置广告条的悬浮位置，这里示例为右下角
        layoutParams.gravity = Gravity.BOTTOM | Gravity.RIGHT;
        // 获取广告条
        final View bannerView = BannerManager.getInstance(mContext)
                .getBannerView(mContext, new BannerViewListener() {

                    @Override
                    public void onRequestSuccess() {
                        Log.i(tag, "请求广告条成功");
                    }

                    @Override
                    public void onSwitchBanner() {
                        Log.i(tag, "广告条切换");
                    }

                    @Override
                    public void onRequestFailed() {
                        Log.i(tag, "请求广告条失败");
                    }
                });

        // 添加广告条到窗口中
        ((Activity) mContext).addContentView(bannerView, layoutParams);
    }

    public static void destroy()
    {
        BannerManager.getInstance(mContext).onDestroy();
    }
}
