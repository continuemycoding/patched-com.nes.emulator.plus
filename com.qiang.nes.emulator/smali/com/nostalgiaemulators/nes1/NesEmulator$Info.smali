.class Lcom/nostalgiaemulators/nes1/NesEmulator$Info;
.super Lcom/nostalgiaemulators/framework/BasicEmulatorInfo;
.source "NesEmulator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostalgiaemulators/nes1/NesEmulator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Info"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostalgiaemulators/nes1/NesEmulator$Info$NesGfxProfile;,
        Lcom/nostalgiaemulators/nes1/NesEmulator$Info$NesSfxProfile;
    }
.end annotation


# static fields
.field private static gfxProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nostalgiaemulators/framework/GfxProfile;",
            ">;"
        }
    .end annotation
.end field

.field private static ntsc:Lcom/nostalgiaemulators/framework/GfxProfile;

.field private static pal:Lcom/nostalgiaemulators/framework/GfxProfile;

.field private static sfxProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nostalgiaemulators/framework/SfxProfile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x100

    const v7, 0x8000

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 188
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lcom/nostalgiaemulators/nes1/NesEmulator$Info;->sfxProfiles:Ljava/util/List;

    .line 189
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lcom/nostalgiaemulators/nes1/NesEmulator$Info;->gfxProfiles:Ljava/util/List;

    .line 211
    new-instance v3, Lcom/nostalgiaemulators/nes1/NesEmulator$Info$NesGfxProfile;

    invoke-direct {v3, v5}, Lcom/nostalgiaemulators/nes1/NesEmulator$Info$NesGfxProfile;-><init>(Lcom/nostalgiaemulators/nes1/NesEmulator$Info$NesGfxProfile;)V

    sput-object v3, Lcom/nostalgiaemulators/nes1/NesEmulator$Info;->pal:Lcom/nostalgiaemulators/framework/GfxProfile;

    .line 212
    sget-object v3, Lcom/nostalgiaemulators/nes1/NesEmulator$Info;->pal:Lcom/nostalgiaemulators/framework/GfxProfile;

    const/16 v4, 0x32

    iput v4, v3, Lcom/nostalgiaemulators/framework/GfxProfile;->fps:I

    .line 213
    sget-object v3, Lcom/nostalgiaemulators/nes1/NesEmulator$Info;->pal:Lcom/nostalgiaemulators/framework/GfxProfile;

    const-string v4, "PAL"

    iput-object v4, v3, Lcom/nostalgiaemulators/framework/GfxProfile;->name:Ljava/lang/String;

    .line 214
    sget-object v3, Lcom/nostalgiaemulators/nes1/NesEmulator$Info;->pal:Lcom/nostalgiaemulators/framework/GfxProfile;

    iput v8, v3, Lcom/nostalgiaemulators/framework/GfxProfile;->originalScreenWidth:I

    .line 215
    sget-object v3, Lcom/nostalgiaemulators/nes1/NesEmulator$Info;->pal:Lcom/nostalgiaemulators/framework/GfxProfile;

    const/16 v4, 0xf0

    iput v4, v3, Lcom/nostalgiaemulators/framework/GfxProfile;->originalScreenHeight:I

    .line 216
    new-instance v3, Lcom/nostalgiaemulators/nes1/NesEmulator$Info$NesGfxProfile;

    invoke-direct {v3, v5}, Lcom/nostalgiaemulators/nes1/NesEmulator$Info$NesGfxProfile;-><init>(Lcom/nostalgiaemulators/nes1/NesEmulator$Info$NesGfxProfile;)V

    sput-object v3, Lcom/nostalgiaemulators/nes1/NesEmulator$Info;->ntsc:Lcom/nostalgiaemulators/framework/GfxProfile;

    .line 217
    sget-object v3, Lcom/nostalgiaemulators/nes1/NesEmulator$Info;->ntsc:Lcom/nostalgiaemulators/framework/GfxProfile;

    const/16 v4, 0x3c

    iput v4, v3, Lcom/nostalgiaemulators/framework/GfxProfile;->fps:I

    .line 218
    sget-object v3, Lcom/nostalgiaemulators/nes1/NesEmulator$Info;->ntsc:Lcom/nostalgiaemulators/framework/GfxProfile;

    const-string v4, "NTSC"

    iput-object v4, v3, Lcom/nostalgiaemulators/framework/GfxProfile;->name:Ljava/lang/String;

    .line 219
    sget-object v3, Lcom/nostalgiaemulators/nes1/NesEmulator$Info;->ntsc:Lcom/nostalgiaemulators/framework/GfxProfile;

    iput v8, v3, Lcom/nostalgiaemulators/framework/GfxProfile;->originalScreenWidth:I

    .line 220
    sget-object v3, Lcom/nostalgiaemulators/nes1/NesEmulator$Info;->ntsc:Lcom/nostalgiaemulators/framework/GfxProfile;

    const/16 v4, 0xe0

    iput v4, v3, Lcom/nostalgiaemulators/framework/GfxProfile;->originalScreenHeight:I

    .line 221
    sget-object v3, Lcom/nostalgiaemulators/nes1/NesEmulator$Info;->gfxProfiles:Ljava/util/List;

    sget-object v4, Lcom/nostalgiaemulators/nes1/NesEmulator$Info;->ntsc:Lcom/nostalgiaemulators/framework/GfxProfile;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    sget-object v3, Lcom/nostalgiaemulators/nes1/NesEmulator$Info;->gfxProfiles:Ljava/util/List;

    sget-object v4, Lcom/nostalgiaemulators/nes1/NesEmulator$Info;->pal:Lcom/nostalgiaemulators/framework/GfxProfile;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    new-instance v1, Lcom/nostalgiaemulators/nes1/NesEmulator$Info$NesSfxProfile;

    invoke-direct {v1, v5}, Lcom/nostalgiaemulators/nes1/NesEmulator$Info$NesSfxProfile;-><init>(Lcom/nostalgiaemulators/nes1/NesEmulator$Info$NesSfxProfile;)V

    .line 224
    .local v1, "low":Lcom/nostalgiaemulators/framework/SfxProfile;
    const-string v3, "low"

    iput-object v3, v1, Lcom/nostalgiaemulators/framework/SfxProfile;->name:Ljava/lang/String;

    .line 225
    iput v7, v1, Lcom/nostalgiaemulators/framework/SfxProfile;->bufferSize:I

    .line 226
    sget-object v3, Lcom/nostalgiaemulators/framework/SfxProfile$SoundEncoding;->PCM16:Lcom/nostalgiaemulators/framework/SfxProfile$SoundEncoding;

    iput-object v3, v1, Lcom/nostalgiaemulators/framework/SfxProfile;->encoding:Lcom/nostalgiaemulators/framework/SfxProfile$SoundEncoding;

    .line 227
    iput-boolean v6, v1, Lcom/nostalgiaemulators/framework/SfxProfile;->isStereo:Z

    .line 228
    const/16 v3, 0x2b11

    iput v3, v1, Lcom/nostalgiaemulators/framework/SfxProfile;->rate:I

    .line 229
    const/4 v3, 0x0

    iput v3, v1, Lcom/nostalgiaemulators/framework/SfxProfile;->quality:I

    .line 230
    sget-object v3, Lcom/nostalgiaemulators/nes1/NesEmulator$Info;->sfxProfiles:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    new-instance v2, Lcom/nostalgiaemulators/nes1/NesEmulator$Info$NesSfxProfile;

    invoke-direct {v2, v5}, Lcom/nostalgiaemulators/nes1/NesEmulator$Info$NesSfxProfile;-><init>(Lcom/nostalgiaemulators/nes1/NesEmulator$Info$NesSfxProfile;)V

    .line 232
    .local v2, "medium":Lcom/nostalgiaemulators/framework/SfxProfile;
    const-string v3, "medium"

    iput-object v3, v2, Lcom/nostalgiaemulators/framework/SfxProfile;->name:Ljava/lang/String;

    .line 233
    iput v7, v2, Lcom/nostalgiaemulators/framework/SfxProfile;->bufferSize:I

    .line 234
    sget-object v3, Lcom/nostalgiaemulators/framework/SfxProfile$SoundEncoding;->PCM16:Lcom/nostalgiaemulators/framework/SfxProfile$SoundEncoding;

    iput-object v3, v2, Lcom/nostalgiaemulators/framework/SfxProfile;->encoding:Lcom/nostalgiaemulators/framework/SfxProfile$SoundEncoding;

    .line 235
    iput-boolean v6, v2, Lcom/nostalgiaemulators/framework/SfxProfile;->isStereo:Z

    .line 236
    const/16 v3, 0x5622

    iput v3, v2, Lcom/nostalgiaemulators/framework/SfxProfile;->rate:I

    .line 237
    iput v6, v2, Lcom/nostalgiaemulators/framework/SfxProfile;->quality:I

    .line 238
    sget-object v3, Lcom/nostalgiaemulators/nes1/NesEmulator$Info;->sfxProfiles:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    new-instance v0, Lcom/nostalgiaemulators/nes1/NesEmulator$Info$NesSfxProfile;

    invoke-direct {v0, v5}, Lcom/nostalgiaemulators/nes1/NesEmulator$Info$NesSfxProfile;-><init>(Lcom/nostalgiaemulators/nes1/NesEmulator$Info$NesSfxProfile;)V

    .line 240
    .local v0, "high":Lcom/nostalgiaemulators/framework/SfxProfile;
    const-string v3, "high"

    iput-object v3, v0, Lcom/nostalgiaemulators/framework/SfxProfile;->name:Ljava/lang/String;

    .line 241
    iput v7, v0, Lcom/nostalgiaemulators/framework/SfxProfile;->bufferSize:I

    .line 242
    sget-object v3, Lcom/nostalgiaemulators/framework/SfxProfile$SoundEncoding;->PCM16:Lcom/nostalgiaemulators/framework/SfxProfile$SoundEncoding;

    iput-object v3, v0, Lcom/nostalgiaemulators/framework/SfxProfile;->encoding:Lcom/nostalgiaemulators/framework/SfxProfile$SoundEncoding;

    .line 243
    iput-boolean v6, v0, Lcom/nostalgiaemulators/framework/SfxProfile;->isStereo:Z

    .line 244
    const v3, 0xac44

    iput v3, v0, Lcom/nostalgiaemulators/framework/SfxProfile;->rate:I

    .line 245
    const/4 v3, 0x2

    iput v3, v0, Lcom/nostalgiaemulators/framework/SfxProfile;->quality:I

    .line 246
    sget-object v3, Lcom/nostalgiaemulators/nes1/NesEmulator$Info;->sfxProfiles:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/nostalgiaemulators/framework/BasicEmulatorInfo;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nostalgiaemulators/nes1/NesEmulator$Info;)V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/nostalgiaemulators/nes1/NesEmulator$Info;-><init>()V

    return-void
.end method

.method static synthetic access$0()Lcom/nostalgiaemulators/framework/GfxProfile;
    .locals 1

    .prologue
    .line 207
    sget-object v0, Lcom/nostalgiaemulators/nes1/NesEmulator$Info;->pal:Lcom/nostalgiaemulators/framework/GfxProfile;

    return-object v0
.end method


# virtual methods
.method public getAvailableGfxProfiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nostalgiaemulators/framework/GfxProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 180
    sget-object v0, Lcom/nostalgiaemulators/nes1/NesEmulator$Info;->gfxProfiles:Ljava/util/List;

    return-object v0
.end method

.method public getAvailableSfxProfiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nostalgiaemulators/framework/SfxProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    sget-object v0, Lcom/nostalgiaemulators/nes1/NesEmulator$Info;->sfxProfiles:Ljava/util/List;

    return-object v0
.end method

.method public getDefaultGfxProfile()Lcom/nostalgiaemulators/framework/GfxProfile;
    .locals 1

    .prologue
    .line 170
    sget-object v0, Lcom/nostalgiaemulators/nes1/NesEmulator$Info;->ntsc:Lcom/nostalgiaemulators/framework/GfxProfile;

    return-object v0
.end method

.method public getDefaultSfxProfile()Lcom/nostalgiaemulators/framework/SfxProfile;
    .locals 2

    .prologue
    .line 175
    sget-object v0, Lcom/nostalgiaemulators/nes1/NesEmulator$Info;->sfxProfiles:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nostalgiaemulators/framework/SfxProfile;

    return-object v0
.end method

.method public getKeyMapping()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 150
    .local v0, "mapping":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x40

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const/16 v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x3e9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const/16 v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x3ea

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    const-string v0, "Nostalgia.NES"

    return-object v0
.end method

.method public getNumQualityLevels()I
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x3

    return v0
.end method

.method public hasZapper()Z
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x1

    return v0
.end method

.method public supportsRawCheats()Z
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x1

    return v0
.end method
