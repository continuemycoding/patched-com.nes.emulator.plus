.class public Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer;
.super Ljava/lang/Object;
.source "WifiControllerServer.java"

# interfaces
.implements Lcom/nostalgiaemulators/framework/remote/ControllerEventSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;,
        Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$ServerThread;
    }
.end annotation


# static fields
.field public static final SERVER_PORT:I = 0xcfe0

.field private static final TAG:Ljava/lang/String; = "com.nostalgiaemulators.framework.remote.wifi.WifiControllerServer"

.field private static instance:Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer;


# instance fields
.field private context:Landroid/content/Context;

.field private listener:Lcom/nostalgiaemulators/framework/remote/OnControllerEventListener;

.field private serverThread:Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$ServerThread;

.field sessionDescription:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sessionDescription"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p2, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer;->sessionDescription:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer;->context:Landroid/content/Context;

    .line 54
    return-void
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sessionDescription"    # Ljava/lang/String;

    .prologue
    .line 60
    sget-object v0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer;->instance:Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer;

    invoke-direct {v0, p0, p1}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer;->instance:Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer;

    .line 64
    :cond_0
    sget-object v0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer;->instance:Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer;

    iput-object p1, v0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer;->sessionDescription:Ljava/lang/String;

    .line 65
    sget-object v0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer;->instance:Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer;

    return-object v0
.end method


# virtual methods
.method public onPause()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer;->serverThread:Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$ServerThread;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer;->serverThread:Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$ServerThread;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$ServerThread;->setListener(Lcom/nostalgiaemulators/framework/remote/OnControllerEventListener;)V

    .line 106
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->isWifiServerEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 87
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/nostalgiaemulators/framework/utils/Utils;->isWifiAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 88
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer;->serverThread:Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$ServerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer;->serverThread:Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$ServerThread;

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$ServerThread;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 89
    :cond_0
    new-instance v0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$ServerThread;

    invoke-direct {v0, v1}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$ServerThread;-><init>(Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$ServerThread;)V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer;->serverThread:Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$ServerThread;

    .line 90
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer;->serverThread:Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$ServerThread;

    iget-object v1, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer;->listener:Lcom/nostalgiaemulators/framework/remote/OnControllerEventListener;

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$ServerThread;->startListening(Lcom/nostalgiaemulators/framework/remote/OnControllerEventListener;)V

    .line 99
    :cond_1
    :goto_0
    return-void

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer;->serverThread:Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$ServerThread;

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer;->serverThread:Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$ServerThread;

    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$ServerThread;->stopListening()V

    .line 96
    iput-object v1, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer;->serverThread:Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$ServerThread;

    goto :goto_0
.end method

.method public setControllerEventListener(Lcom/nostalgiaemulators/framework/remote/OnControllerEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/nostalgiaemulators/framework/remote/OnControllerEventListener;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer;->listener:Lcom/nostalgiaemulators/framework/remote/OnControllerEventListener;

    .line 76
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer;->serverThread:Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$ServerThread;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer;->serverThread:Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$ServerThread;

    invoke-virtual {v0, p1}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$ServerThread;->setListener(Lcom/nostalgiaemulators/framework/remote/OnControllerEventListener;)V

    .line 79
    :cond_0
    return-void
.end method

.method public setSessionDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer;->sessionDescription:Ljava/lang/String;

    .line 70
    return-void
.end method
