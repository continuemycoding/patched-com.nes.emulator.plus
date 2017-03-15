.class Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$SendHandler;
.super Landroid/os/Handler;
.source "WifiServerInfoReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SendHandler"
.end annotation


# instance fields
.field listener:Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$BroadcastReceiverListener;


# direct methods
.method public constructor <init>(Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$BroadcastReceiverListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$BroadcastReceiverListener;

    .prologue
    .line 201
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 202
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$SendHandler;->listener:Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$BroadcastReceiverListener;

    .line 203
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 206
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$SendHandler;->listener:Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$BroadcastReceiverListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$DetectionResult;

    invoke-interface {v1, v0}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$BroadcastReceiverListener;->onServerDetect(Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$DetectionResult;)V

    .line 207
    return-void
.end method
