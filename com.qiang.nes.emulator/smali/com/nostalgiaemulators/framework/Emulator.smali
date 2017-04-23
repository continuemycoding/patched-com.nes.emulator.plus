.class public interface abstract Lcom/nostalgiaemulators/framework/Emulator;
.super Ljava/lang/Object;
.source "Emulator.java"


# virtual methods
.method public abstract autoDetectGfx(Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;)Lcom/nostalgiaemulators/framework/GfxProfile;
.end method

.method public abstract autoDetectSfx(Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;)Lcom/nostalgiaemulators/framework/SfxProfile;
.end method

.method public abstract draw(Landroid/graphics/Canvas;II)V
.end method

.method public abstract emulateFrame(I)V
.end method

.method public abstract enableCheat(Ljava/lang/String;)V
.end method

.method public abstract enableRawCheat(III)V
.end method

.method public abstract fireZapper(FF)V
.end method

.method public abstract getActiveGfxProfile()Lcom/nostalgiaemulators/framework/GfxProfile;
.end method

.method public abstract getActiveSfxProfile()Lcom/nostalgiaemulators/framework/SfxProfile;
.end method

.method public abstract getHistoryItemCount()I
.end method

.method public abstract getInfo()Lcom/nostalgiaemulators/framework/EmulatorInfo;
.end method

.method public abstract getInt(Ljava/lang/String;)I
.end method

.method public abstract getLoadedGame()Lcom/nostalgiaemulators/framework/GameInfo;
.end method

.method public abstract isGameLoaded()Z
.end method

.method public abstract isReady()Z
.end method

.method public abstract loadGame(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract loadHistoryState(I)V
.end method

.method public abstract loadState(I)V
.end method

.method public abstract onEmulationPaused()V
.end method

.method public abstract onEmulationResumed()V
.end method

.method public abstract processCommand(Ljava/lang/String;)V
.end method

.method public abstract readPalette([I)V
.end method

.method public abstract readSfxData()V
.end method

.method public abstract renderGfx()V
.end method

.method public abstract renderGfxGL()V
.end method

.method public abstract renderHistoryScreenshot(Landroid/graphics/Bitmap;I)V
.end method

.method public abstract renderSfx()V
.end method

.method public abstract reset()V
.end method

.method public abstract resetKeys()V
.end method

.method public abstract saveState(I)V
.end method

.method public abstract setBaseDir(Ljava/lang/String;)V
.end method

.method public abstract setFastForwardEnabled(Z)V
.end method

.method public abstract setFastForwardFrameCount(I)V
.end method

.method public abstract setFrameListener(Lcom/nostalgiaemulators/framework/FrameListener;)V
.end method

.method public abstract setKeyPressed(IIZ)V
.end method

.method public abstract setTurboEnabled(IIZ)V
.end method

.method public abstract setViewPortSize(II)V
.end method

.method public abstract setVolume(F)V
.end method

.method public abstract start(Lcom/nostalgiaemulators/framework/GfxProfile;Lcom/nostalgiaemulators/framework/SfxProfile;Lcom/nostalgiaemulators/framework/EmulatorSettings;)V
.end method

.method public abstract stop()V
.end method
