.class public abstract Lcom/nostalgiaemulators/framework/remote/ControllableActivity;
.super Landroid/app/Activity;
.source "ControllableActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 36
    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_0
    return-void

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/remote/ControllableActivity;->finish()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 45
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 46
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/remote/ControllableActivity;->stopWifiListening()V

    .line 47
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 30
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/remote/ControllableActivity;->startWifiListening()V

    .line 31
    return-void
.end method

.method protected startWifiListening()V
    .locals 2

    .prologue
    .line 50
    invoke-static {}, Lcom/nostalgiaemulators/framework/remote/VirtualDPad;->getInstance()Lcom/nostalgiaemulators/framework/remote/VirtualDPad;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/remote/ControllableActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/remote/VirtualDPad;->onResume(Landroid/view/Window;)V

    .line 51
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter;->onResume(Landroid/app/Activity;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method protected stopWifiListening()V
    .locals 1

    .prologue
    .line 55
    invoke-static {}, Lcom/nostalgiaemulators/framework/remote/VirtualDPad;->getInstance()Lcom/nostalgiaemulators/framework/remote/VirtualDPad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/remote/VirtualDPad;->onPause()V

    .line 56
    invoke-static {}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter;->onPause()V

    .line 57
    return-void
.end method
