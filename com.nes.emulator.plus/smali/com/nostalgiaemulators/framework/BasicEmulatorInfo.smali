.class public abstract Lcom/nostalgiaemulators/framework/BasicEmulatorInfo;
.super Ljava/lang/Object;
.source "BasicEmulatorInfo.java"

# interfaces
.implements Lcom/nostalgiaemulators/framework/EmulatorInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCheatInvalidCharsRegex()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    const-string v0, "[^\\p{L}\\?\\:\\p{N}]"

    return-object v0
.end method

.method public getDefaultKeyboardProfile()Lcom/nostalgiaemulators/framework/KeyboardProfile;
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/nostalgiaemulators/framework/KeyboardProfile;->createDefaultProfile()Lcom/nostalgiaemulators/framework/KeyboardProfile;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceKeyboardCodes()[I
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x7

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x1

    .line 39
    const/16 v3, 0x19

    new-array v0, v3, [I

    const/4 v3, 0x0

    const/4 v4, 0x6

    aput v4, v0, v3

    .line 40
    aput v8, v0, v5

    const/4 v3, 0x2

    const/16 v4, 0x9

    aput v4, v0, v3

    const/4 v3, 0x3

    .line 41
    aput v9, v0, v3

    aput v6, v0, v6

    .line 42
    aput v7, v0, v7

    .line 43
    aput v5, v0, v8

    const/16 v3, 0xff

    aput v3, v0, v9

    const/16 v3, 0x9

    .line 44
    const/16 v4, 0x100

    aput v4, v0, v3

    const/16 v3, 0xa

    .line 46
    sget v4, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->KEYS_LEFT_AND_UP:I

    aput v4, v0, v3

    const/16 v3, 0xb

    .line 47
    sget v4, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->KEYS_RIGHT_AND_UP:I

    aput v4, v0, v3

    const/16 v3, 0xc

    .line 49
    sget v4, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->KEYS_RIGHT_AND_DOWN:I

    aput v4, v0, v3

    const/16 v3, 0xd

    .line 50
    sget v4, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->KEYS_LEFT_AND_DOWN:I

    aput v4, v0, v3

    const/16 v3, 0xe

    .line 52
    sget v4, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->KEYS_A_AND_B:I

    aput v4, v0, v3

    const/16 v3, 0xf

    .line 54
    const/16 v4, 0x388

    aput v4, v0, v3

    const/16 v3, 0x10

    .line 55
    const/16 v4, 0x389

    aput v4, v0, v3

    const/16 v3, 0x11

    .line 57
    const/16 v4, 0x38a

    aput v4, v0, v3

    const/16 v3, 0x12

    .line 58
    const/16 v4, 0x38b

    aput v4, v0, v3

    const/16 v3, 0x13

    .line 60
    const/16 v4, 0x38c

    aput v4, v0, v3

    const/16 v3, 0x14

    .line 61
    const/16 v4, 0x38d

    aput v4, v0, v3

    const/16 v3, 0x15

    .line 63
    const/16 v4, 0x386

    aput v4, v0, v3

    const/16 v3, 0x16

    .line 64
    const/16 v4, 0x387

    aput v4, v0, v3

    const/16 v3, 0x17

    .line 65
    const/16 v4, 0x38e

    aput v4, v0, v3

    const/16 v3, 0x18

    .line 67
    const/16 v4, 0x384

    aput v4, v0, v3

    .line 70
    .local v0, "base":[I
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/BasicEmulatorInfo;->isMultiPlayerSupported()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 71
    array-length v3, v0

    mul-int/lit8 v3, v3, 0x2

    new-array v2, v3, [I

    .line 73
    .local v2, "res":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-lt v1, v3, :cond_0

    .line 77
    const/4 v1, 0x0

    :goto_1
    array-length v3, v0

    if-lt v1, v3, :cond_1

    .line 85
    .end local v1    # "i":I
    .end local v2    # "res":[I
    :goto_2
    return-object v2

    .line 74
    .restart local v1    # "i":I
    .restart local v2    # "res":[I
    :cond_0
    aget v3, v0, v1

    aput v3, v2, v1

    .line 73
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    :cond_1
    array-length v3, v0

    add-int/2addr v3, v1

    aget v4, v0, v1

    .line 79
    const v5, 0x186a0

    add-int/2addr v4, v5

    .line 78
    aput v4, v2, v3

    .line 77
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "i":I
    .end local v2    # "res":[I
    :cond_2
    move-object v2, v0

    .line 85
    goto :goto_2
.end method

.method public getDeviceKeyboardDescriptions()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/BasicEmulatorInfo;->getDeviceKeyboardNames()[Ljava/lang/String;

    move-result-object v3

    array-length v2, v3

    .line 118
    .local v2, "len":I
    new-array v0, v2, [Ljava/lang/String;

    .line 120
    .local v0, "descs":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 133
    return-object v0

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/BasicEmulatorInfo;->isMultiPlayerSupported()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 122
    const-string v3, "Player 1"

    aput-object v3, v0, v1

    .line 128
    :goto_1
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/BasicEmulatorInfo;->isMultiPlayerSupported()Z

    move-result v3

    if-eqz v3, :cond_1

    div-int/lit8 v3, v2, 0x2

    if-lt v1, v3, :cond_1

    .line 129
    const-string v3, "Player 2"

    aput-object v3, v0, v1

    .line 120
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 125
    :cond_2
    const-string v3, ""

    aput-object v3, v0, v1

    goto :goto_1
.end method

.method public getDeviceKeyboardNames()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 91
    const/16 v3, 0x19

    new-array v0, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UP"

    aput-object v4, v0, v3

    const/4 v3, 0x1

    const-string v4, "DOWN"

    aput-object v4, v0, v3

    const/4 v3, 0x2

    const-string v4, "RIGHT"

    aput-object v4, v0, v3

    const/4 v3, 0x3

    const-string v4, "LEFT"

    aput-object v4, v0, v3

    const/4 v3, 0x4

    const-string v4, "START"

    aput-object v4, v0, v3

    const/4 v3, 0x5

    .line 92
    const-string v4, "SELECT"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, "A"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string v4, "B"

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const-string v4, "TURBO A"

    aput-object v4, v0, v3

    const/16 v3, 0x9

    const-string v4, "TURBO B"

    aput-object v4, v0, v3

    const/16 v3, 0xa

    const-string v4, "LEFT+UP"

    aput-object v4, v0, v3

    const/16 v3, 0xb

    .line 93
    const-string v4, "RIGHT+UP"

    aput-object v4, v0, v3

    const/16 v3, 0xc

    const-string v4, "RIGHT+DOWN"

    aput-object v4, v0, v3

    const/16 v3, 0xd

    const-string v4, "LEFT+DOWN"

    aput-object v4, v0, v3

    const/16 v3, 0xe

    const-string v4, "A+B"

    aput-object v4, v0, v3

    const/16 v3, 0xf

    const-string v4, "SAVE STATE 1"

    aput-object v4, v0, v3

    const/16 v3, 0x10

    const-string v4, "LOAD STATE 1"

    aput-object v4, v0, v3

    const/16 v3, 0x11

    const-string v4, "SAVE STATE 2"

    aput-object v4, v0, v3

    const/16 v3, 0x12

    const-string v4, "LOAD STATE 2"

    aput-object v4, v0, v3

    const/16 v3, 0x13

    const-string v4, "SAVE STATE 3"

    aput-object v4, v0, v3

    const/16 v3, 0x14

    const-string v4, "LOAD STATE 3"

    aput-object v4, v0, v3

    const/16 v3, 0x15

    .line 94
    const-string v4, "MENU"

    aput-object v4, v0, v3

    const/16 v3, 0x16

    const-string v4, "FAST FORWARD"

    aput-object v4, v0, v3

    const/16 v3, 0x17

    const-string v4, "REWIND"

    aput-object v4, v0, v3

    const/16 v3, 0x18

    const-string v4, "EXIT"

    aput-object v4, v0, v3

    .line 97
    .local v0, "base":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/BasicEmulatorInfo;->isMultiPlayerSupported()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 98
    array-length v3, v0

    mul-int/lit8 v3, v3, 0x2

    new-array v2, v3, [Ljava/lang/String;

    .line 100
    .local v2, "res":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-lt v1, v3, :cond_0

    .line 104
    const/4 v1, 0x0

    :goto_1
    array-length v3, v0

    if-lt v1, v3, :cond_1

    .line 111
    .end local v1    # "i":I
    .end local v2    # "res":[Ljava/lang/String;
    :goto_2
    return-object v2

    .line 101
    .restart local v1    # "i":I
    .restart local v2    # "res":[Ljava/lang/String;
    :cond_0
    aget-object v3, v0, v1

    aput-object v3, v2, v1

    .line 100
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    :cond_1
    array-length v3, v0

    add-int/2addr v3, v1

    aget-object v4, v0, v1

    aput-object v4, v2, v3

    .line 104
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "i":I
    .end local v2    # "res":[Ljava/lang/String;
    :cond_2
    move-object v2, v0

    .line 111
    goto :goto_2
.end method

.method public hasZapper()Z
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x1

    return v0
.end method

.method public isMultiPlayerSupported()Z
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x1

    return v0
.end method
