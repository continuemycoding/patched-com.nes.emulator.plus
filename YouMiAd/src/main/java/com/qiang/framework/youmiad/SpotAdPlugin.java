package com.qiang.framework.youmiad;

import android.content.Context;
import android.util.Log;

import net.youmi.android.normal.common.ErrorCode;
import net.youmi.android.normal.spot.SpotListener;
import net.youmi.android.normal.spot.SpotManager;

//插屏广告
public class SpotAdPlugin
{
	private static final String tag = "SpotAdPlugin";

	public static void init(Context context) {

		// 设置插屏图片类型，默认竖图
		//		// 横图
		//		SpotManager.getInstance(mContext).setImageType(SpotManager
		// .IMAGE_TYPE_HORIZONTAL);
		// 竖图
		SpotManager.getInstance(context).setImageType(SpotManager.IMAGE_TYPE_VERTICAL);

		// 设置动画类型，默认高级动画
		//		// 无动画
		//		SpotManager.getInstance(mContext).setAnimationType(SpotManager
		// .ANIMATION_TYPE_NONE);
		//		// 简单动画
		//		SpotManager.getInstance(mContext).setAnimationType(SpotManager
		// .ANIMATION_TYPE_SIMPLE);
		// 高级动画
		SpotManager.getInstance(context).setAnimationType(SpotManager.ANIMATION_TYPE_ADVANCED);
	}

	public static void show(Context context)
	{
		SpotManager.getInstance(context).showSpot(context, new SpotListener() {

			@Override
			public void onShowSuccess() {
				Log.i(tag, "插屏展示成功");
			}

			@Override
			public void onShowFailed(int errorCode) {
				Log.e(tag, "插屏展示失败");
				switch (errorCode) {
					case ErrorCode.NON_NETWORK:
						Log.e(tag, "网络异常");
						break;
					case ErrorCode.NON_AD:
						Log.e(tag, "暂无插屏广告");
						break;
					case ErrorCode.RESOURCE_NOT_READY:
						Log.e(tag, "插屏资源还没准备好");
						break;
					case ErrorCode.SHOW_INTERVAL_LIMITED:
						Log.e(tag, "请勿频繁展示");
						break;
					case ErrorCode.WIDGET_NOT_IN_VISIBILITY_STATE:
						Log.e(tag, "请设置插屏为可见状态");
						break;
					default:
						Log.e(tag, "请稍后再试");
						break;
				}
			}

			@Override
			public void onSpotClosed() {
				Log.i(tag, "插屏被关闭");
			}

			@Override
			public void onSpotClicked(boolean isWebPage) {
				Log.i(tag, "插屏被点击");
				Log.i(tag, "是否是网页广告？  " + (isWebPage ? "是" : "不是"));
			}
		});
	}

	public boolean isShowing(Context context) {
		return SpotManager.getInstance(context).isSpotShowing();
	}

	protected void hide(Context context) {
		SpotManager.getInstance(context).hideSpot();
	}

	protected void destroy(Context context) {
		SpotManager.getInstance(context).onDestroy();
	}
}
