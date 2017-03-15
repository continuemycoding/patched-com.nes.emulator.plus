.class public Lcom/nostalgiaemulators/framework/utils/GoogleAnalyticsHelper;
.super Ljava/lang/Object;
.source "GoogleAnalyticsHelper.java"


# static fields
.field private static instance:Lcom/nostalgiaemulators/framework/utils/GoogleAnalyticsHelper;


# instance fields
.field private mTracker:Lcom/google/android/gms/analytics/Tracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/nostalgiaemulators/framework/utils/GoogleAnalyticsHelper;->instance:Lcom/nostalgiaemulators/framework/utils/GoogleAnalyticsHelper;

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/utils/GoogleAnalyticsHelper;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    if-nez v1, :cond_0

    .line 50
    invoke-static {p1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    .line 53
    .local v0, "analytics":Lcom/google/android/gms/analytics/GoogleAnalytics;
    sget v1, Lcom/nostalgiaemulators/framework/R$string;->ga_trackingId:I

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->newTracker(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v1

    iput-object v1, p0, Lcom/nostalgiaemulators/framework/utils/GoogleAnalyticsHelper;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    .line 54
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/utils/GoogleAnalyticsHelper;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    sget v2, Lcom/nostalgiaemulators/framework/R$string;->ga_appName:I

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/Tracker;->setAppName(Ljava/lang/String;)V

    .line 55
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/utils/GoogleAnalyticsHelper;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    sget v2, Lcom/nostalgiaemulators/framework/R$string;->ga_appVersion:I

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/Tracker;->setAppVersion(Ljava/lang/String;)V

    .line 57
    .end local v0    # "analytics":Lcom/google/android/gms/analytics/GoogleAnalytics;
    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/app/Activity;)Lcom/nostalgiaemulators/framework/utils/GoogleAnalyticsHelper;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 40
    sget-object v0, Lcom/nostalgiaemulators/framework/utils/GoogleAnalyticsHelper;->instance:Lcom/nostalgiaemulators/framework/utils/GoogleAnalyticsHelper;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/nostalgiaemulators/framework/utils/GoogleAnalyticsHelper;

    invoke-direct {v0, p0}, Lcom/nostalgiaemulators/framework/utils/GoogleAnalyticsHelper;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/nostalgiaemulators/framework/utils/GoogleAnalyticsHelper;->instance:Lcom/nostalgiaemulators/framework/utils/GoogleAnalyticsHelper;

    .line 44
    :cond_0
    sget-object v0, Lcom/nostalgiaemulators/framework/utils/GoogleAnalyticsHelper;->instance:Lcom/nostalgiaemulators/framework/utils/GoogleAnalyticsHelper;

    return-object v0
.end method

.method public static sEndSession(Ljava/lang/String;)V
    .locals 0
    .param p0, "screenView"    # Ljava/lang/String;

    .prologue
    .line 89
    return-void
.end method

.method public static sSendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "value"    # J

    .prologue
    .line 69
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/nostalgiaemulators/framework/utils/GoogleAnalyticsHelper;->getInstance(Landroid/app/Activity;)Lcom/nostalgiaemulators/framework/utils/GoogleAnalyticsHelper;

    move-result-object v1

    iget-object v0, v1, Lcom/nostalgiaemulators/framework/utils/GoogleAnalyticsHelper;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    .line 70
    .local v0, "tracker":Lcom/google/android/gms/analytics/Tracker;
    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    .line 71
    invoke-virtual {v1, p0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    .line 72
    invoke-virtual {v1, p1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    .line 73
    invoke-virtual {v1, p2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    .line 74
    invoke-virtual {v1, p3, p4}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setValue(J)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    .line 75
    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    .line 70
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 76
    return-void
.end method

.method public static sSendScreenView(Ljava/lang/String;)V
    .locals 2
    .param p0, "screenView"    # Ljava/lang/String;

    .prologue
    .line 61
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/nostalgiaemulators/framework/utils/GoogleAnalyticsHelper;->getInstance(Landroid/app/Activity;)Lcom/nostalgiaemulators/framework/utils/GoogleAnalyticsHelper;

    move-result-object v1

    iget-object v0, v1, Lcom/nostalgiaemulators/framework/utils/GoogleAnalyticsHelper;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    .line 62
    .local v0, "tracker":Lcom/google/android/gms/analytics/Tracker;
    invoke-virtual {v0, p0}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 63
    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 64
    return-void
.end method

.method public static sSendUserTimings(JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "loadTime"    # J
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "interval"    # J
    .param p5, "name"    # Ljava/lang/String;
    .param p6, "label"    # Ljava/lang/String;

    .prologue
    .line 94
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/nostalgiaemulators/framework/utils/GoogleAnalyticsHelper;->getInstance(Landroid/app/Activity;)Lcom/nostalgiaemulators/framework/utils/GoogleAnalyticsHelper;

    move-result-object v1

    iget-object v0, v1, Lcom/nostalgiaemulators/framework/utils/GoogleAnalyticsHelper;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    .line 97
    .local v0, "tracker":Lcom/google/android/gms/analytics/Tracker;
    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;-><init>()V

    .line 98
    invoke-virtual {v1, p2}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    move-result-object v1

    .line 99
    invoke-virtual {v1, p3, p4}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->setValue(J)Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    move-result-object v1

    .line 100
    invoke-virtual {v1, p5}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->setVariable(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    move-result-object v1

    .line 101
    invoke-virtual {v1, p6}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    move-result-object v1

    .line 102
    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->build()Ljava/util/Map;

    move-result-object v1

    .line 97
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 103
    return-void
.end method

.method public static sSignInWithUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3
    .param p0, "userId"    # Ljava/lang/String;
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "value"    # J

    .prologue
    .line 116
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/nostalgiaemulators/framework/utils/GoogleAnalyticsHelper;->getInstance(Landroid/app/Activity;)Lcom/nostalgiaemulators/framework/utils/GoogleAnalyticsHelper;

    move-result-object v1

    iget-object v0, v1, Lcom/nostalgiaemulators/framework/utils/GoogleAnalyticsHelper;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    .line 121
    .local v0, "tracker":Lcom/google/android/gms/analytics/Tracker;
    const-string v1, "&uid"

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    .line 126
    invoke-virtual {v1, p1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    .line 127
    invoke-virtual {v1, p2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    .line 128
    const-string v2, "user_sign_in"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    .line 129
    invoke-virtual {v1, p3, p4}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setValue(J)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    .line 130
    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    .line 125
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 131
    return-void
.end method

.method public static sStartSession(Ljava/lang/String;)V
    .locals 2
    .param p0, "screenView"    # Ljava/lang/String;

    .prologue
    .line 80
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/nostalgiaemulators/framework/utils/GoogleAnalyticsHelper;->getInstance(Landroid/app/Activity;)Lcom/nostalgiaemulators/framework/utils/GoogleAnalyticsHelper;

    move-result-object v1

    iget-object v0, v1, Lcom/nostalgiaemulators/framework/utils/GoogleAnalyticsHelper;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    .line 81
    .local v0, "tracker":Lcom/google/android/gms/analytics/Tracker;
    invoke-virtual {v0, p0}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 82
    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;-><init>()V

    .line 83
    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;->setNewSession()Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;

    .line 84
    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;->build()Ljava/util/Map;

    move-result-object v1

    .line 82
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 85
    return-void
.end method
