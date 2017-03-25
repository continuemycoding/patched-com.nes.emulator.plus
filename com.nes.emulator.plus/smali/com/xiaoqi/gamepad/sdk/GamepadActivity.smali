.class public Lcom/xiaoqi/gamepad/sdk/GamepadActivity;
.super Landroid/app/Activity;
.source "GamepadActivity.java"


# instance fields
.field private wrap:Lcom/xiaoqi/gamepad/sdk/WrapActivity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 9
    new-instance v0, Lcom/xiaoqi/gamepad/sdk/WrapActivity;

    invoke-direct {v0, p0}, Lcom/xiaoqi/gamepad/sdk/WrapActivity;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaoqi/gamepad/sdk/GamepadActivity;->wrap:Lcom/xiaoqi/gamepad/sdk/WrapActivity;

    .line 8
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 37
    iget-object v1, p0, Lcom/xiaoqi/gamepad/sdk/GamepadActivity;->wrap:Lcom/xiaoqi/gamepad/sdk/WrapActivity;

    invoke-virtual {v1, p1}, Lcom/xiaoqi/gamepad/sdk/WrapActivity;->getButtonBDownEventInCoolpad(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object v0

    .line 39
    .local v0, "e":Landroid/view/KeyEvent;
    if-nez v0, :cond_0

    .line 40
    move-object v0, p1

    .line 43
    :cond_0
    iget-object v1, p0, Lcom/xiaoqi/gamepad/sdk/GamepadActivity;->wrap:Lcom/xiaoqi/gamepad/sdk/WrapActivity;

    invoke-virtual {v1, v0}, Lcom/xiaoqi/gamepad/sdk/WrapActivity;->passThrough(Landroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 44
    const/4 v1, 0x1

    .line 47
    :goto_0
    return v1

    :cond_1
    invoke-super {p0, v0}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 13
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/GamepadActivity;->wrap:Lcom/xiaoqi/gamepad/sdk/WrapActivity;

    invoke-virtual {v0}, Lcom/xiaoqi/gamepad/sdk/WrapActivity;->onCreate()V

    .line 15
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/GamepadActivity;->wrap:Lcom/xiaoqi/gamepad/sdk/WrapActivity;

    invoke-virtual {v0}, Lcom/xiaoqi/gamepad/sdk/WrapActivity;->onDestroy()V

    .line 20
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 21
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/GamepadActivity;->wrap:Lcom/xiaoqi/gamepad/sdk/WrapActivity;

    invoke-virtual {v0, p1}, Lcom/xiaoqi/gamepad/sdk/WrapActivity;->onGenericMotionEvent(Landroid/view/MotionEvent;)V

    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/GamepadActivity;->wrap:Lcom/xiaoqi/gamepad/sdk/WrapActivity;

    invoke-virtual {v0, p1, p2}, Lcom/xiaoqi/gamepad/sdk/WrapActivity;->onKeyDown(ILandroid/view/KeyEvent;)V

    .line 59
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/GamepadActivity;->wrap:Lcom/xiaoqi/gamepad/sdk/WrapActivity;

    invoke-virtual {v0, p1, p2}, Lcom/xiaoqi/gamepad/sdk/WrapActivity;->onKeyUp(ILandroid/view/KeyEvent;)V

    .line 65
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 25
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 26
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/GamepadActivity;->wrap:Lcom/xiaoqi/gamepad/sdk/WrapActivity;

    invoke-virtual {v0}, Lcom/xiaoqi/gamepad/sdk/WrapActivity;->onPause()V

    .line 27
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 31
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 32
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/GamepadActivity;->wrap:Lcom/xiaoqi/gamepad/sdk/WrapActivity;

    invoke-virtual {v0}, Lcom/xiaoqi/gamepad/sdk/WrapActivity;->onResume()V

    .line 33
    return-void
.end method
