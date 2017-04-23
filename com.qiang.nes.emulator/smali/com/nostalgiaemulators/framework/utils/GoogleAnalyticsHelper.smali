.class public Lcom/nostalgiaemulators/framework/utils/GoogleAnalyticsHelper;
.super Ljava/lang/Object;
.source "GoogleAnalyticsHelper.java"


# static fields
.field private static instance:Lcom/nostalgiaemulators/framework/utils/GoogleAnalyticsHelper;


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "paramActivity"    # Landroid/app/Activity;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/app/Activity;)Lcom/nostalgiaemulators/framework/utils/GoogleAnalyticsHelper;
    .locals 1
    .param p0, "paramActivity"    # Landroid/app/Activity;

    .prologue
    .line 20
    sget-object v0, Lcom/nostalgiaemulators/framework/utils/GoogleAnalyticsHelper;->instance:Lcom/nostalgiaemulators/framework/utils/GoogleAnalyticsHelper;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/nostalgiaemulators/framework/utils/GoogleAnalyticsHelper;

    invoke-direct {v0, p0}, Lcom/nostalgiaemulators/framework/utils/GoogleAnalyticsHelper;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/nostalgiaemulators/framework/utils/GoogleAnalyticsHelper;->instance:Lcom/nostalgiaemulators/framework/utils/GoogleAnalyticsHelper;

    .line 23
    :cond_0
    sget-object v0, Lcom/nostalgiaemulators/framework/utils/GoogleAnalyticsHelper;->instance:Lcom/nostalgiaemulators/framework/utils/GoogleAnalyticsHelper;

    return-object v0
.end method

.method public static sEndSession(Ljava/lang/String;)V
    .locals 0
    .param p0, "paramString"    # Ljava/lang/String;

    .prologue
    .line 26
    return-void
.end method

.method public static sSendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p0, "paramString1"    # Ljava/lang/String;
    .param p1, "paramString2"    # Ljava/lang/String;
    .param p2, "paramString3"    # Ljava/lang/String;
    .param p3, "paramLong"    # J

    .prologue
    .line 28
    return-void
.end method

.method public static sSendScreenView(Ljava/lang/String;)V
    .locals 0
    .param p0, "paramString"    # Ljava/lang/String;

    .prologue
    .line 30
    return-void
.end method

.method public static sSendUserTimings(JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "paramLong1"    # J
    .param p2, "paramString1"    # Ljava/lang/String;
    .param p3, "paramLong2"    # J
    .param p5, "paramString2"    # Ljava/lang/String;
    .param p6, "paramString3"    # Ljava/lang/String;

    .prologue
    .line 32
    return-void
.end method

.method public static sSignInWithUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p0, "paramString1"    # Ljava/lang/String;
    .param p1, "paramString2"    # Ljava/lang/String;
    .param p2, "paramString3"    # Ljava/lang/String;
    .param p3, "paramLong"    # J

    .prologue
    .line 34
    return-void
.end method

.method public static sStartSession(Ljava/lang/String;)V
    .locals 0
    .param p0, "paramString"    # Ljava/lang/String;

    .prologue
    .line 36
    return-void
.end method
