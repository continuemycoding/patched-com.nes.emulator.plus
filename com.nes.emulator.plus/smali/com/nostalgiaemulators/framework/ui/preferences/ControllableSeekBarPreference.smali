.class public Lcom/nostalgiaemulators/framework/ui/preferences/ControllableSeekBarPreference;
.super Lcom/hlidskialf/android/preference/SeekBarPreference;
.source "ControllableSeekBarPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/hlidskialf/android/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method


# virtual methods
.method protected showDialog(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/hlidskialf/android/preference/SeekBarPreference;->showDialog(Landroid/os/Bundle;)V

    .line 37
    invoke-static {}, Lcom/nostalgiaemulators/framework/remote/VirtualDPad;->getInstance()Lcom/nostalgiaemulators/framework/remote/VirtualDPad;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/preferences/ControllableSeekBarPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/remote/VirtualDPad;->onResume(Landroid/view/Window;)V

    .line 38
    return-void
.end method
