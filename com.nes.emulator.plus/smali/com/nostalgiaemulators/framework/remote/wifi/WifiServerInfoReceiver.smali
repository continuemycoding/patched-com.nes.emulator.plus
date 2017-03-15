.class public Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver;
.super Ljava/lang/Object;
.source "WifiServerInfoReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$BroadcastReceiverListener;,
        Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$BroadcastReceiverThread;,
        Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$DetectionResult;,
        Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$SendHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.nostalgiaemulators.framework.remote.wifi.BroadcastReceiverService"


# instance fields
.field broadcastReceiverThread:Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$BroadcastReceiverThread;

.field listener:Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$BroadcastReceiverListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public startExploring(Landroid/content/Context;Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$BroadcastReceiverListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$BroadcastReceiverListener;

    .prologue
    .line 93
    iput-object p2, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver;->listener:Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$BroadcastReceiverListener;

    .line 94
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver;->stop()V

    .line 95
    new-instance v0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$BroadcastReceiverThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$BroadcastReceiverThread;-><init>(Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver;Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$BroadcastReceiverThread;)V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver;->broadcastReceiverThread:Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$BroadcastReceiverThread;

    .line 96
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver;->broadcastReceiverThread:Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$BroadcastReceiverThread;

    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$BroadcastReceiverThread;->startListening()V

    .line 97
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver;->broadcastReceiverThread:Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$BroadcastReceiverThread;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver;->broadcastReceiverThread:Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$BroadcastReceiverThread;

    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$BroadcastReceiverThread;->stopListening()V

    .line 103
    :cond_0
    return-void
.end method
