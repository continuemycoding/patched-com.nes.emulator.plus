.class public Lcom/nostalgiaemulators/framework/base/JniBridge;
.super Ljava/lang/Object;
.source "JniBridge.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native emulate(III)Z
.end method

.method public native enableCheat(Ljava/lang/String;I)Z
.end method

.method public native enableRawCheat(III)Z
.end method

.method public native fireZapper(II)Z
.end method

.method public native getHistoryItemCount()I
.end method

.method public native getInt(Ljava/lang/String;)I
.end method

.method public native loadGame(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public native loadHistoryState(I)Z
.end method

.method public native loadState(Ljava/lang/String;I)Z
.end method

.method public native processCommand(Ljava/lang/String;)Z
.end method

.method public native readPalette([I)Z
.end method

.method public native readSfxBuffer([S)I
.end method

.method public native render(Landroid/graphics/Bitmap;)Z
.end method

.method public native renderGL()Z
.end method

.method public native renderHistory(Landroid/graphics/Bitmap;III)Z
.end method

.method public native renderVP(Landroid/graphics/Bitmap;II)Z
.end method

.method public native reset()Z
.end method

.method public native saveState(Ljava/lang/String;I)Z
.end method

.method public native setBaseDir(Ljava/lang/String;)Z
.end method

.method public native setHistoryEnabled(Z)Z
.end method

.method public native setHistorySize(I)Z
.end method

.method public native setViewPortSize(II)Z
.end method

.method public native start(III)Z
.end method

.method public native stop()Z
.end method
