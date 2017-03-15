.class public Lcom/nostalgiaemulators/nes1/NesEmulator;
.super Lcom/nostalgiaemulators/framework/base/JniEmulator;
.source "NesEmulator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostalgiaemulators/nes1/NesEmulator$Info;
    }
.end annotation


# static fields
.field public static final PACK_SUFFIX:Ljava/lang/String; = "nness"

.field private static info:Lcom/nostalgiaemulators/framework/EmulatorInfo;

.field private static instance:Lcom/nostalgiaemulators/nes1/NesEmulator;


# instance fields
.field public palExclusiveKeywords:[Ljava/lang/String;

.field public palHashes:[Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 39
    invoke-direct {p0}, Lcom/nostalgiaemulators/framework/base/JniEmulator;-><init>()V

    .line 97
    const/16 v0, 0x21

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ".beauty|beast"

    aput-object v1, v0, v3

    .line 98
    const-string v1, ".hammerin|harry"

    aput-object v1, v0, v4

    const-string v1, ".noah|ark"

    aput-object v1, v0, v5

    const-string v1, ".rockets|rivals"

    aput-object v1, v0, v6

    .line 99
    const-string v1, ".formula|sensation"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, ".trolls|crazyland"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "asterix"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "elite"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 100
    const-string v2, "smurfs"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "international cricket"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "turrican"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "valiant"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 101
    const-string v2, "aladdin"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "aussie rules"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "banana prince"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "chevaliers"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 102
    const-string v2, "crackout"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "devil world"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "kick off"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "hyper soccer"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "ufouria"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 103
    const-string v2, "lion king"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "gimmick"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "dropzone"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "drop zone"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "$mario bros"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    .line 104
    const-string v2, "road fighter"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "rodland"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "parasol stars"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "parodius"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    .line 105
    const-string v2, "over horizon"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "championship rally"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "aussio rules"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/nostalgiaemulators/nes1/NesEmulator;->palExclusiveKeywords:[Ljava/lang/String;

    .line 108
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    .line 109
    const-string v1, "85ce1107c922600990884d63c75cfec4"

    aput-object v1, v0, v3

    .line 110
    const-string v1, "6f6d5cc27354e1527fc88ec97c8b7c27"

    aput-object v1, v0, v4

    .line 111
    const-string v1, "83c8b2142884965c2214196f3f71f6ec"

    aput-object v1, v0, v5

    .line 112
    const-string v1, "caf9d44ae71fa8ade852fb453d797798"

    aput-object v1, v0, v6

    .line 113
    const-string v1, "fe36a09cd6c94916d48ea61776978cc8"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 114
    const-string v2, "3eb49813c3c5b6088bfed3f1d7ecaa0e"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 115
    const-string v2, "b40b25a9bc54eb8f46310fae45723759"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 116
    const-string v2, "d91a5f3e924916eb16bb6a3255f532bc"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/nostalgiaemulators/nes1/NesEmulator;->palHashes:[Ljava/lang/String;

    .line 40
    return-void
.end method

.method public static getInstance()Lcom/nostalgiaemulators/framework/base/JniEmulator;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/nostalgiaemulators/nes1/NesEmulator;->instance:Lcom/nostalgiaemulators/nes1/NesEmulator;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/nostalgiaemulators/nes1/NesEmulator;

    invoke-direct {v0}, Lcom/nostalgiaemulators/nes1/NesEmulator;-><init>()V

    sput-object v0, Lcom/nostalgiaemulators/nes1/NesEmulator;->instance:Lcom/nostalgiaemulators/nes1/NesEmulator;

    .line 47
    :cond_0
    sget-object v0, Lcom/nostalgiaemulators/nes1/NesEmulator;->instance:Lcom/nostalgiaemulators/nes1/NesEmulator;

    return-object v0
.end method


# virtual methods
.method public autoDetectGfx(Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;)Lcom/nostalgiaemulators/framework/GfxProfile;
    .locals 12
    .param p1, "game"    # Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    .prologue
    const/4 v11, 0x1

    const/4 v5, 0x0

    .line 52
    invoke-virtual {p1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->getCleanName()Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 55
    const-string v4, "(e)"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "(europe)"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 56
    const-string v4, "(f)"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "(g)"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 57
    const-string v4, "(i)"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "(pal)"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 58
    const-string v4, "[e]"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "[f]"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 59
    const-string v4, "[g]"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "[i]"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 60
    const-string v4, "[europe]"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "[pal]"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 61
    :cond_0
    # getter for: Lcom/nostalgiaemulators/nes1/NesEmulator$Info;->pal:Lcom/nostalgiaemulators/framework/GfxProfile;
    invoke-static {}, Lcom/nostalgiaemulators/nes1/NesEmulator$Info;->access$0()Lcom/nostalgiaemulators/framework/GfxProfile;

    move-result-object v4

    .line 94
    :goto_0
    return-object v4

    .line 64
    :cond_1
    iget-object v7, p0, Lcom/nostalgiaemulators/nes1/NesEmulator;->palExclusiveKeywords:[Ljava/lang/String;

    array-length v8, v7

    move v6, v5

    :goto_1
    if-lt v6, v8, :cond_2

    .line 90
    iget-object v4, p0, Lcom/nostalgiaemulators/nes1/NesEmulator;->palHashes:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p1, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->checksum:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 91
    # getter for: Lcom/nostalgiaemulators/nes1/NesEmulator$Info;->pal:Lcom/nostalgiaemulators/framework/GfxProfile;
    invoke-static {}, Lcom/nostalgiaemulators/nes1/NesEmulator$Info;->access$0()Lcom/nostalgiaemulators/framework/GfxProfile;

    move-result-object v4

    goto :goto_0

    .line 64
    :cond_2
    aget-object v3, v7, v6

    .line 65
    .local v3, "pal":Ljava/lang/String;
    const-string v4, "$"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 66
    invoke-virtual {v3, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 68
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 69
    # getter for: Lcom/nostalgiaemulators/nes1/NesEmulator$Info;->pal:Lcom/nostalgiaemulators/framework/GfxProfile;
    invoke-static {}, Lcom/nostalgiaemulators/nes1/NesEmulator$Info;->access$0()Lcom/nostalgiaemulators/framework/GfxProfile;

    move-result-object v4

    goto :goto_0

    .line 73
    :cond_3
    new-array v1, v11, [Ljava/lang/String;

    .line 74
    .local v1, "kws":[Ljava/lang/String;
    aput-object v3, v1, v5

    .line 76
    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 77
    invoke-virtual {v3, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 78
    const-string v4, "\\|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 81
    :cond_4
    array-length v9, v1

    move v4, v5

    :goto_2
    if-lt v4, v9, :cond_6

    .line 64
    .end local v1    # "kws":[Ljava/lang/String;
    :cond_5
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_1

    .line 81
    .restart local v1    # "kws":[Ljava/lang/String;
    :cond_6
    aget-object v0, v1, v4

    .line 82
    .local v0, "keyWord":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 83
    # getter for: Lcom/nostalgiaemulators/nes1/NesEmulator$Info;->pal:Lcom/nostalgiaemulators/framework/GfxProfile;
    invoke-static {}, Lcom/nostalgiaemulators/nes1/NesEmulator$Info;->access$0()Lcom/nostalgiaemulators/framework/GfxProfile;

    move-result-object v4

    goto :goto_0

    .line 81
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 94
    .end local v0    # "keyWord":Ljava/lang/String;
    .end local v1    # "kws":[Ljava/lang/String;
    .end local v3    # "pal":Ljava/lang/String;
    :cond_8
    invoke-virtual {p0}, Lcom/nostalgiaemulators/nes1/NesEmulator;->getInfo()Lcom/nostalgiaemulators/framework/EmulatorInfo;

    move-result-object v4

    invoke-interface {v4}, Lcom/nostalgiaemulators/framework/EmulatorInfo;->getDefaultGfxProfile()Lcom/nostalgiaemulators/framework/GfxProfile;

    move-result-object v4

    goto :goto_0
.end method

.method public autoDetectSfx(Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;)Lcom/nostalgiaemulators/framework/SfxProfile;
    .locals 1
    .param p1, "game"    # Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/nostalgiaemulators/nes1/NesEmulator;->getInfo()Lcom/nostalgiaemulators/framework/EmulatorInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/nostalgiaemulators/framework/EmulatorInfo;->getDefaultSfxProfile()Lcom/nostalgiaemulators/framework/SfxProfile;

    move-result-object v0

    return-object v0
.end method

.method public getBridge()Lcom/nostalgiaemulators/framework/base/JniBridge;
    .locals 1

    .prologue
    .line 126
    invoke-static {}, Lcom/nostalgiaemulators/nes1/Core;->getInstance()Lcom/nostalgiaemulators/nes1/Core;

    move-result-object v0

    return-object v0
.end method

.method public getInfo()Lcom/nostalgiaemulators/framework/EmulatorInfo;
    .locals 2

    .prologue
    .line 131
    sget-object v0, Lcom/nostalgiaemulators/nes1/NesEmulator;->info:Lcom/nostalgiaemulators/framework/EmulatorInfo;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Lcom/nostalgiaemulators/nes1/NesEmulator$Info;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nostalgiaemulators/nes1/NesEmulator$Info;-><init>(Lcom/nostalgiaemulators/nes1/NesEmulator$Info;)V

    sput-object v0, Lcom/nostalgiaemulators/nes1/NesEmulator;->info:Lcom/nostalgiaemulators/framework/EmulatorInfo;

    .line 135
    :cond_0
    sget-object v0, Lcom/nostalgiaemulators/nes1/NesEmulator;->info:Lcom/nostalgiaemulators/framework/EmulatorInfo;

    return-object v0
.end method
