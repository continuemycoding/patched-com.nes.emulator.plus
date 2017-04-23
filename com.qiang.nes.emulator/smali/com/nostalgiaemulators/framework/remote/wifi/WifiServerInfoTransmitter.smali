.class public Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter;
.super Ljava/lang/Object;
.source "WifiServerInfoTransmitter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter$BroadCastThread;
    }
.end annotation


# static fields
.field public static final BROADCAST_PORT:I = 0xfb39

.field public static final MESSAGE_PREFIX:Ljava/lang/String; = "EMUDROID"

.field private static final SLEEP_TIME:I = 0xbb8

.field private static final SLEEP_TIME_AFTER_EXCEPTION:I = 0x3a98

.field private static final TAG:Ljava/lang/String; = "com.nostalgiaemulators.framework.remote.wifi.BroadcastThread"

.field static instance:Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter;


# instance fields
.field private thread:Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter$BroadCastThread;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter;->thread:Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter$BroadCastThread;

    .line 44
    return-void
.end method

.method private forceStop()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter;->thread:Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter$BroadCastThread;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter;->thread:Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter$BroadCastThread;

    # invokes: Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter$BroadCastThread;->stopSending()V
    invoke-static {v0}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter$BroadCastThread;->access$2(Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter$BroadCastThread;)V

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter;->thread:Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter$BroadCastThread;

    .line 104
    :cond_0
    return-void
.end method

.method public static halt()V
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter;->instance:Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter;

    if-eqz v0, :cond_0

    .line 70
    sget-object v0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter;->instance:Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter;

    invoke-direct {v0}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter;->forceStop()V

    .line 72
    :cond_0
    return-void
.end method

.method public static onPause()V
    .locals 6

    .prologue
    .line 57
    sget-object v0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter;->instance:Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter;

    if-eqz v0, :cond_0

    .line 58
    sget-object v0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter;->instance:Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0xfa0

    add-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter;->setKillTime(J)V

    .line 60
    :cond_0
    return-void
.end method

.method public static onResume(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "sessionDescription"    # Ljava/lang/String;

    .prologue
    .line 47
    sget-object v0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter;->instance:Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter;

    invoke-direct {v0}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter;-><init>()V

    sput-object v0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter;->instance:Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter;

    .line 51
    :cond_0
    sget-object v0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter;->instance:Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter;->startSending(Landroid/content/Context;Ljava/lang/String;)Z

    .line 53
    sget-object v0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter;->instance:Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter;

    const-wide/16 v2, -0x1

    invoke-direct {v0, v2, v3}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter;->setKillTime(J)V

    .line 54
    return-void
.end method

.method private setKillTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 63
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter;->thread:Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter$BroadCastThread;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter;->thread:Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter$BroadCastThread;

    invoke-virtual {v0, p1, p2}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter$BroadCastThread;->setKillTime(J)V

    .line 66
    :cond_0
    return-void
.end method

.method private startSending(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p1, "applicationContext"    # Landroid/content/Context;
    .param p2, "sessionDescription"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-static {p1}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->isWifiServerEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 80
    invoke-static {p1}, Lcom/nostalgiaemulators/framework/utils/Utils;->isWifiAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter;->thread:Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter$BroadCastThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter;->thread:Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter$BroadCastThread;

    # getter for: Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter$BroadCastThread;->running:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter$BroadCastThread;->access$0(Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter$BroadCastThread;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 82
    :cond_0
    new-instance v0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter$BroadCastThread;

    invoke-direct {v0, v1}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter$BroadCastThread;-><init>(Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter$BroadCastThread;)V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter;->thread:Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter$BroadCastThread;

    .line 83
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter;->thread:Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter$BroadCastThread;

    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter$BroadCastThread;->start()V

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter;->thread:Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter$BroadCastThread;

    invoke-virtual {v0, p1, p2}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter$BroadCastThread;->update(Landroid/content/Context;Ljava/lang/String;)V

    .line 87
    const/4 v0, 0x1

    .line 95
    :goto_0
    return v0

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter;->thread:Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter$BroadCastThread;

    if-eqz v0, :cond_3

    .line 91
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter;->thread:Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter$BroadCastThread;

    # invokes: Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter$BroadCastThread;->stopSending()V
    invoke-static {v0}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter$BroadCastThread;->access$2(Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter$BroadCastThread;)V

    .line 92
    iput-object v1, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter;->thread:Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter$BroadCastThread;

    .line 95
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
