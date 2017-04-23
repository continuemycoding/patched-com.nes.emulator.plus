.class public Lcom/nostalgiaemulators/framework/EmulatorSettings;
.super Ljava/lang/Object;
.source "EmulatorSettings.java"


# instance fields
.field historyEnabled:Z

.field loadSavFiles:Z

.field quality:I

.field saveSavFiles:Z

.field zapperEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/nostalgiaemulators/framework/EmulatorSettings;->quality:I

    .line 21
    return-void
.end method


# virtual methods
.method public toInt()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 29
    iget-boolean v2, p0, Lcom/nostalgiaemulators/framework/EmulatorSettings;->zapperEnabled:Z

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 30
    .local v0, "x":I
    :goto_0
    iget-boolean v2, p0, Lcom/nostalgiaemulators/framework/EmulatorSettings;->historyEnabled:Z

    if-eqz v2, :cond_2

    const/16 v2, 0xa

    :goto_1
    add-int/2addr v0, v2

    .line 31
    iget-boolean v2, p0, Lcom/nostalgiaemulators/framework/EmulatorSettings;->loadSavFiles:Z

    if-eqz v2, :cond_3

    const/16 v2, 0x64

    :goto_2
    add-int/2addr v0, v2

    .line 32
    iget-boolean v2, p0, Lcom/nostalgiaemulators/framework/EmulatorSettings;->saveSavFiles:Z

    if-eqz v2, :cond_0

    const/16 v1, 0x3e8

    :cond_0
    add-int/2addr v0, v1

    .line 33
    iget v1, p0, Lcom/nostalgiaemulators/framework/EmulatorSettings;->quality:I

    mul-int/lit16 v1, v1, 0x2710

    add-int/2addr v0, v1

    .line 34
    return v0

    .end local v0    # "x":I
    :cond_1
    move v0, v1

    .line 29
    goto :goto_0

    .restart local v0    # "x":I
    :cond_2
    move v2, v1

    .line 30
    goto :goto_1

    :cond_3
    move v2, v1

    .line 31
    goto :goto_2
.end method
