.class public interface abstract Lcom/nostalgiaemulators/framework/EmulatorController;
.super Ljava/lang/Object;
.source "EmulatorController.java"


# static fields
.field public static final ACTION_DOWN:I = 0x0

.field public static final ACTION_UP:I = 0x1

.field public static final KEY_A:I = 0x0

.field public static final KEY_A_TURBO:I = 0xff

.field public static final KEY_B:I = 0x1

.field public static final KEY_B_TURBO:I = 0x100

.field public static final KEY_DOWN:I = 0x7

.field public static final KEY_LEFT:I = 0x8

.field public static final KEY_RIGHT:I = 0x9

.field public static final KEY_SELECT:I = 0x5

.field public static final KEY_START:I = 0x4

.field public static final KEY_UP:I = 0x6

.field public static final KEY_X:I = 0x2

.field public static final KEY_Y:I = 0x3


# virtual methods
.method public abstract connectToEmulator(ILcom/nostalgiaemulators/framework/Emulator;)V
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onGamePaused(Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;)V
.end method

.method public abstract onGameStarted(Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;)V
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract onWindowFocusChanged(Z)V
.end method
