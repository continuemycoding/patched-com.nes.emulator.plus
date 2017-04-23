.class public Lcom/nostalgiaemulators/framework/KeyboardProfile;
.super Ljava/lang/Object;
.source "KeyboardProfile.java"


# static fields
.field public static final DEFAULT_PROFILES_NAMES:[Ljava/lang/String;

.field private static final KEYBOARD_PROFILES_SETTINGS:Ljava/lang/String; = "keyboard_profiles_pref"

.field private static final KEYBOARD_PROFILE_POSTFIX:Ljava/lang/String; = "_keyboard_profile"

.field private static final TAG:Ljava/lang/String; = "com.nostalgiaemulators.framework.KeyboardProfile"

.field private static sButtonDescriptions:[Ljava/lang/String; = null

.field private static sButtonKeyEventCodes:[I = null

.field private static sButtonNames:[Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x50bd30ae68f5618aL


# instance fields
.field public keyMap:Landroid/util/SparseIntArray;

.field public loadedFromDisk:Z

.field public name:Ljava/lang/String;

.field private requiresTwoGamepads:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 78
    sput-object v0, Lcom/nostalgiaemulators/framework/KeyboardProfile;->sButtonDescriptions:[Ljava/lang/String;

    .line 90
    sput-object v0, Lcom/nostalgiaemulators/framework/KeyboardProfile;->sButtonKeyEventCodes:[I

    .line 105
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 106
    const-string v2, "default"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ps3"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "wiimote"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "nes30"

    aput-object v2, v0, v1

    .line 105
    sput-object v0, Lcom/nostalgiaemulators/framework/KeyboardProfile;->DEFAULT_PROFILES_NAMES:[Ljava/lang/String;

    .line 359
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/KeyboardProfile;->requiresTwoGamepads:Ljava/lang/Boolean;

    .line 110
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/KeyboardProfile;->keyMap:Landroid/util/SparseIntArray;

    .line 42
    return-void
.end method

.method public static createDefaultProfile()Lcom/nostalgiaemulators/framework/KeyboardProfile;
    .locals 9

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 28
    new-instance v0, Lcom/nostalgiaemulators/framework/KeyboardProfile;

    invoke-direct {v0}, Lcom/nostalgiaemulators/framework/KeyboardProfile;-><init>()V

    .line 29
    .local v0, "localKeyboardProfile":Lcom/nostalgiaemulators/framework/KeyboardProfile;
    const-string v1, "default"

    iput-object v1, v0, Lcom/nostalgiaemulators/framework/KeyboardProfile;->name:Ljava/lang/String;

    .line 30
    iget-object v1, v0, Lcom/nostalgiaemulators/framework/KeyboardProfile;->keyMap:Landroid/util/SparseIntArray;

    const/16 v2, 0x13

    invoke-virtual {v1, v2, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 31
    iget-object v1, v0, Lcom/nostalgiaemulators/framework/KeyboardProfile;->keyMap:Landroid/util/SparseIntArray;

    const/16 v2, 0x14

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 32
    iget-object v1, v0, Lcom/nostalgiaemulators/framework/KeyboardProfile;->keyMap:Landroid/util/SparseIntArray;

    const/16 v2, 0x15

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 33
    iget-object v1, v0, Lcom/nostalgiaemulators/framework/KeyboardProfile;->keyMap:Landroid/util/SparseIntArray;

    const/16 v2, 0x16

    const/16 v3, 0x9

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 34
    iget-object v1, v0, Lcom/nostalgiaemulators/framework/KeyboardProfile;->keyMap:Landroid/util/SparseIntArray;

    const/16 v2, 0x6d

    invoke-virtual {v1, v2, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 35
    iget-object v1, v0, Lcom/nostalgiaemulators/framework/KeyboardProfile;->keyMap:Landroid/util/SparseIntArray;

    const/16 v2, 0x6c

    invoke-virtual {v1, v2, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 36
    iget-object v1, v0, Lcom/nostalgiaemulators/framework/KeyboardProfile;->keyMap:Landroid/util/SparseIntArray;

    const/16 v2, 0x60

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 37
    iget-object v1, v0, Lcom/nostalgiaemulators/framework/KeyboardProfile;->keyMap:Landroid/util/SparseIntArray;

    const/16 v2, 0x61

    invoke-virtual {v1, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 38
    iget-object v1, v0, Lcom/nostalgiaemulators/framework/KeyboardProfile;->keyMap:Landroid/util/SparseIntArray;

    const/16 v2, 0x63

    const/16 v3, 0xff

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 39
    iget-object v1, v0, Lcom/nostalgiaemulators/framework/KeyboardProfile;->keyMap:Landroid/util/SparseIntArray;

    const/16 v2, 0x64

    const/16 v3, 0x100

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 40
    iget-object v1, v0, Lcom/nostalgiaemulators/framework/KeyboardProfile;->keyMap:Landroid/util/SparseIntArray;

    const v2, 0x186b3

    invoke-virtual {v1, v2, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 41
    iget-object v1, v0, Lcom/nostalgiaemulators/framework/KeyboardProfile;->keyMap:Landroid/util/SparseIntArray;

    const v2, 0x186b4

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 42
    iget-object v1, v0, Lcom/nostalgiaemulators/framework/KeyboardProfile;->keyMap:Landroid/util/SparseIntArray;

    const v2, 0x186b5

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 43
    iget-object v1, v0, Lcom/nostalgiaemulators/framework/KeyboardProfile;->keyMap:Landroid/util/SparseIntArray;

    const v2, 0x186b6

    const/16 v3, 0x9

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 44
    iget-object v1, v0, Lcom/nostalgiaemulators/framework/KeyboardProfile;->keyMap:Landroid/util/SparseIntArray;

    const v2, 0x1870d

    invoke-virtual {v1, v2, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 45
    iget-object v1, v0, Lcom/nostalgiaemulators/framework/KeyboardProfile;->keyMap:Landroid/util/SparseIntArray;

    const v2, 0x1870c

    invoke-virtual {v1, v2, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 46
    iget-object v1, v0, Lcom/nostalgiaemulators/framework/KeyboardProfile;->keyMap:Landroid/util/SparseIntArray;

    const v2, 0x18700

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 47
    iget-object v1, v0, Lcom/nostalgiaemulators/framework/KeyboardProfile;->keyMap:Landroid/util/SparseIntArray;

    const v2, 0x18701

    invoke-virtual {v1, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 48
    iget-object v1, v0, Lcom/nostalgiaemulators/framework/KeyboardProfile;->keyMap:Landroid/util/SparseIntArray;

    const v2, 0x18703

    const/16 v3, 0xff

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 49
    iget-object v1, v0, Lcom/nostalgiaemulators/framework/KeyboardProfile;->keyMap:Landroid/util/SparseIntArray;

    const v2, 0x18704

    const/16 v3, 0x100

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 50
    return-object v0
.end method

.method public static createNes30Profile()Lcom/nostalgiaemulators/framework/KeyboardProfile;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 212
    new-instance v1, Lcom/nostalgiaemulators/framework/KeyboardProfile;

    invoke-direct {v1}, Lcom/nostalgiaemulators/framework/KeyboardProfile;-><init>()V

    .line 213
    .local v1, "profile":Lcom/nostalgiaemulators/framework/KeyboardProfile;
    const-string v2, "nes30"

    iput-object v2, v1, Lcom/nostalgiaemulators/framework/KeyboardProfile;->name:Ljava/lang/String;

    .line 215
    const/4 v0, 0x0

    .local v0, "player":I
    :goto_0
    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    .line 245
    return-object v1

    .line 216
    :cond_0
    const/16 v2, 0x15

    invoke-virtual {v1, v0, v2, v4}, Lcom/nostalgiaemulators/framework/KeyboardProfile;->setMapping(III)V

    .line 218
    const/16 v2, 0x16

    .line 219
    const/16 v3, 0x9

    .line 218
    invoke-virtual {v1, v0, v2, v3}, Lcom/nostalgiaemulators/framework/KeyboardProfile;->setMapping(III)V

    .line 220
    const/16 v2, 0x13

    .line 221
    const/4 v3, 0x6

    .line 220
    invoke-virtual {v1, v0, v2, v3}, Lcom/nostalgiaemulators/framework/KeyboardProfile;->setMapping(III)V

    .line 222
    const/16 v2, 0x14

    .line 223
    const/4 v3, 0x7

    .line 222
    invoke-virtual {v1, v0, v2, v3}, Lcom/nostalgiaemulators/framework/KeyboardProfile;->setMapping(III)V

    .line 225
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v2, v4, :cond_1

    .line 226
    const/16 v2, 0x60

    .line 227
    const/4 v3, 0x0

    .line 226
    invoke-virtual {v1, v0, v2, v3}, Lcom/nostalgiaemulators/framework/KeyboardProfile;->setMapping(III)V

    .line 228
    const/16 v2, 0x61

    .line 229
    const/4 v3, 0x1

    .line 228
    invoke-virtual {v1, v0, v2, v3}, Lcom/nostalgiaemulators/framework/KeyboardProfile;->setMapping(III)V

    .line 230
    const/16 v2, 0x63

    .line 231
    const/16 v3, 0xff

    .line 230
    invoke-virtual {v1, v0, v2, v3}, Lcom/nostalgiaemulators/framework/KeyboardProfile;->setMapping(III)V

    .line 232
    const/16 v2, 0x64

    .line 233
    const/16 v3, 0x100

    .line 232
    invoke-virtual {v1, v0, v2, v3}, Lcom/nostalgiaemulators/framework/KeyboardProfile;->setMapping(III)V

    .line 234
    const/16 v2, 0x6c

    .line 235
    const/4 v3, 0x4

    .line 234
    invoke-virtual {v1, v0, v2, v3}, Lcom/nostalgiaemulators/framework/KeyboardProfile;->setMapping(III)V

    .line 236
    const/16 v2, 0x6d

    .line 237
    const/4 v3, 0x5

    .line 236
    invoke-virtual {v1, v0, v2, v3}, Lcom/nostalgiaemulators/framework/KeyboardProfile;->setMapping(III)V

    .line 238
    const/16 v2, 0x66

    .line 239
    const/16 v3, 0x386

    .line 238
    invoke-virtual {v1, v0, v2, v3}, Lcom/nostalgiaemulators/framework/KeyboardProfile;->setMapping(III)V

    .line 240
    const/16 v2, 0x67

    .line 241
    const/16 v3, 0x387

    .line 240
    invoke-virtual {v1, v0, v2, v3}, Lcom/nostalgiaemulators/framework/KeyboardProfile;->setMapping(III)V

    .line 215
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static createPS3Profile()Lcom/nostalgiaemulators/framework/KeyboardProfile;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 172
    new-instance v1, Lcom/nostalgiaemulators/framework/KeyboardProfile;

    invoke-direct {v1}, Lcom/nostalgiaemulators/framework/KeyboardProfile;-><init>()V

    .line 173
    .local v1, "profile":Lcom/nostalgiaemulators/framework/KeyboardProfile;
    const-string v2, "ps3"

    iput-object v2, v1, Lcom/nostalgiaemulators/framework/KeyboardProfile;->name:Ljava/lang/String;

    .line 175
    const/4 v0, 0x0

    .local v0, "player":I
    :goto_0
    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    .line 205
    return-object v1

    .line 176
    :cond_0
    const/16 v2, 0x15

    invoke-virtual {v1, v0, v2, v4}, Lcom/nostalgiaemulators/framework/KeyboardProfile;->setMapping(III)V

    .line 178
    const/16 v2, 0x16

    .line 179
    const/16 v3, 0x9

    .line 178
    invoke-virtual {v1, v0, v2, v3}, Lcom/nostalgiaemulators/framework/KeyboardProfile;->setMapping(III)V

    .line 180
    const/16 v2, 0x13

    .line 181
    const/4 v3, 0x6

    .line 180
    invoke-virtual {v1, v0, v2, v3}, Lcom/nostalgiaemulators/framework/KeyboardProfile;->setMapping(III)V

    .line 182
    const/16 v2, 0x14

    .line 183
    const/4 v3, 0x7

    .line 182
    invoke-virtual {v1, v0, v2, v3}, Lcom/nostalgiaemulators/framework/KeyboardProfile;->setMapping(III)V

    .line 185
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v2, v4, :cond_1

    .line 186
    const/16 v2, 0x6c

    .line 187
    const/4 v3, 0x4

    .line 186
    invoke-virtual {v1, v0, v2, v3}, Lcom/nostalgiaemulators/framework/KeyboardProfile;->setMapping(III)V

    .line 188
    const/16 v2, 0x6d

    .line 189
    const/4 v3, 0x5

    .line 188
    invoke-virtual {v1, v0, v2, v3}, Lcom/nostalgiaemulators/framework/KeyboardProfile;->setMapping(III)V

    .line 190
    const/16 v2, 0x61

    .line 191
    const/4 v3, 0x0

    .line 190
    invoke-virtual {v1, v0, v2, v3}, Lcom/nostalgiaemulators/framework/KeyboardProfile;->setMapping(III)V

    .line 192
    const/16 v2, 0x64

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/nostalgiaemulators/framework/KeyboardProfile;->setMapping(III)V

    .line 193
    const/16 v2, 0x60

    .line 194
    const/16 v3, 0xff

    .line 193
    invoke-virtual {v1, v0, v2, v3}, Lcom/nostalgiaemulators/framework/KeyboardProfile;->setMapping(III)V

    .line 195
    const/16 v2, 0x63

    const/16 v3, 0x100

    invoke-virtual {v1, v0, v2, v3}, Lcom/nostalgiaemulators/framework/KeyboardProfile;->setMapping(III)V

    .line 196
    const/16 v2, 0x69

    .line 197
    const/16 v3, 0x386

    .line 196
    invoke-virtual {v1, v0, v2, v3}, Lcom/nostalgiaemulators/framework/KeyboardProfile;->setMapping(III)V

    .line 198
    const/16 v2, 0x68

    .line 199
    const/16 v3, 0x384

    .line 198
    invoke-virtual {v1, v0, v2, v3}, Lcom/nostalgiaemulators/framework/KeyboardProfile;->setMapping(III)V

    .line 200
    const/16 v2, 0x66

    .line 201
    const/16 v3, 0x387

    .line 200
    invoke-virtual {v1, v0, v2, v3}, Lcom/nostalgiaemulators/framework/KeyboardProfile;->setMapping(III)V

    .line 175
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static createWiimoteProfile()Lcom/nostalgiaemulators/framework/KeyboardProfile;
    .locals 8

    .prologue
    const/16 v7, 0x9

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 249
    new-instance v0, Lcom/nostalgiaemulators/framework/KeyboardProfile;

    invoke-direct {v0}, Lcom/nostalgiaemulators/framework/KeyboardProfile;-><init>()V

    .line 250
    .local v0, "profile":Lcom/nostalgiaemulators/framework/KeyboardProfile;
    const-string v1, "wiimote"

    iput-object v1, v0, Lcom/nostalgiaemulators/framework/KeyboardProfile;->name:Ljava/lang/String;

    .line 251
    iget-object v1, v0, Lcom/nostalgiaemulators/framework/KeyboardProfile;->keyMap:Landroid/util/SparseIntArray;

    const/16 v2, 0x15

    invoke-virtual {v1, v2, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 253
    iget-object v1, v0, Lcom/nostalgiaemulators/framework/KeyboardProfile;->keyMap:Landroid/util/SparseIntArray;

    const/16 v2, 0x16

    invoke-virtual {v1, v2, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 255
    iget-object v1, v0, Lcom/nostalgiaemulators/framework/KeyboardProfile;->keyMap:Landroid/util/SparseIntArray;

    const/16 v2, 0x13

    const/4 v3, 0x6

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 256
    iget-object v1, v0, Lcom/nostalgiaemulators/framework/KeyboardProfile;->keyMap:Landroid/util/SparseIntArray;

    const/16 v2, 0x14

    .line 257
    const/4 v3, 0x7

    .line 256
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 258
    iget-object v1, v0, Lcom/nostalgiaemulators/framework/KeyboardProfile;->keyMap:Landroid/util/SparseIntArray;

    const/16 v2, 0x2c

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 259
    iget-object v1, v0, Lcom/nostalgiaemulators/framework/KeyboardProfile;->keyMap:Landroid/util/SparseIntArray;

    const/16 v2, 0x29

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 260
    iget-object v1, v0, Lcom/nostalgiaemulators/framework/KeyboardProfile;->keyMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v6, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 261
    iget-object v1, v0, Lcom/nostalgiaemulators/framework/KeyboardProfile;->keyMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v7, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 262
    iget-object v1, v0, Lcom/nostalgiaemulators/framework/KeyboardProfile;->keyMap:Landroid/util/SparseIntArray;

    const/16 v2, 0x17

    const/16 v3, 0x386

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 263
    iget-object v1, v0, Lcom/nostalgiaemulators/framework/KeyboardProfile;->keyMap:Landroid/util/SparseIntArray;

    const/16 v2, 0x24

    const/16 v3, 0x384

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 264
    iget-object v1, v0, Lcom/nostalgiaemulators/framework/KeyboardProfile;->keyMap:Landroid/util/SparseIntArray;

    .line 265
    const v2, 0x186cb

    .line 266
    const v3, 0x186a8

    .line 265
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 268
    iget-object v1, v0, Lcom/nostalgiaemulators/framework/KeyboardProfile;->keyMap:Landroid/util/SparseIntArray;

    const v2, 0x186c6

    .line 270
    const v3, 0x186a9

    .line 268
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 272
    iget-object v1, v0, Lcom/nostalgiaemulators/framework/KeyboardProfile;->keyMap:Landroid/util/SparseIntArray;

    const v2, 0x186c5

    .line 273
    const v3, 0x186a6

    .line 272
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 275
    iget-object v1, v0, Lcom/nostalgiaemulators/framework/KeyboardProfile;->keyMap:Landroid/util/SparseIntArray;

    .line 276
    const v2, 0x186c7

    .line 277
    const v3, 0x186a7

    .line 276
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 279
    iget-object v1, v0, Lcom/nostalgiaemulators/framework/KeyboardProfile;->keyMap:Landroid/util/SparseIntArray;

    const v2, 0x186f1

    .line 281
    const v3, 0x186a4

    .line 279
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 283
    iget-object v1, v0, Lcom/nostalgiaemulators/framework/KeyboardProfile;->keyMap:Landroid/util/SparseIntArray;

    const v2, 0x186e5

    .line 285
    const v3, 0x186a5

    .line 283
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 287
    iget-object v1, v0, Lcom/nostalgiaemulators/framework/KeyboardProfile;->keyMap:Landroid/util/SparseIntArray;

    const v2, 0x186d7

    invoke-virtual {v1, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 289
    iget-object v1, v0, Lcom/nostalgiaemulators/framework/KeyboardProfile;->keyMap:Landroid/util/SparseIntArray;

    const v2, 0x186d8

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 291
    return-object v0
.end method

.method public static getButtonDescriptions()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/nostalgiaemulators/framework/KeyboardProfile;->sButtonDescriptions:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 82
    invoke-static {}, Lcom/nostalgiaemulators/framework/base/EmulatorInfoHolder;->getInfo()Lcom/nostalgiaemulators/framework/EmulatorInfo;

    move-result-object v0

    .line 83
    invoke-interface {v0}, Lcom/nostalgiaemulators/framework/EmulatorInfo;->getDeviceKeyboardDescriptions()[Ljava/lang/String;

    move-result-object v0

    .line 82
    sput-object v0, Lcom/nostalgiaemulators/framework/KeyboardProfile;->sButtonDescriptions:[Ljava/lang/String;

    .line 86
    :cond_0
    sget-object v0, Lcom/nostalgiaemulators/framework/KeyboardProfile;->sButtonDescriptions:[Ljava/lang/String;

    return-object v0
.end method

.method public static getButtonKeyEventCodes()[I
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/nostalgiaemulators/framework/KeyboardProfile;->sButtonKeyEventCodes:[I

    if-nez v0, :cond_0

    .line 94
    invoke-static {}, Lcom/nostalgiaemulators/framework/base/EmulatorInfoHolder;->getInfo()Lcom/nostalgiaemulators/framework/EmulatorInfo;

    move-result-object v0

    .line 95
    invoke-interface {v0}, Lcom/nostalgiaemulators/framework/EmulatorInfo;->getDeviceKeyboardCodes()[I

    move-result-object v0

    .line 94
    sput-object v0, Lcom/nostalgiaemulators/framework/KeyboardProfile;->sButtonKeyEventCodes:[I

    .line 98
    :cond_0
    sget-object v0, Lcom/nostalgiaemulators/framework/KeyboardProfile;->sButtonKeyEventCodes:[I

    return-object v0
.end method

.method public static getButtonNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/nostalgiaemulators/framework/KeyboardProfile;->sButtonNames:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 50
    invoke-static {}, Lcom/nostalgiaemulators/framework/base/EmulatorInfoHolder;->getInfo()Lcom/nostalgiaemulators/framework/EmulatorInfo;

    move-result-object v0

    .line 51
    invoke-interface {v0}, Lcom/nostalgiaemulators/framework/EmulatorInfo;->getDeviceKeyboardNames()[Ljava/lang/String;

    move-result-object v0

    .line 50
    sput-object v0, Lcom/nostalgiaemulators/framework/KeyboardProfile;->sButtonNames:[Ljava/lang/String;

    .line 54
    :cond_0
    sget-object v0, Lcom/nostalgiaemulators/framework/KeyboardProfile;->sButtonNames:[Ljava/lang/String;

    return-object v0
.end method

.method public static getProfilesNames(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 411
    .line 412
    const-string v5, "keyboard_profiles_pref"

    .line 411
    invoke-virtual {p0, v5, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 413
    .local v2, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 414
    .local v3, "prefNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 416
    .local v1, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v5, Lcom/nostalgiaemulators/framework/KeyboardProfile;->DEFAULT_PROFILES_NAMES:[Ljava/lang/String;

    array-length v6, v5

    :goto_0
    if-lt v4, v6, :cond_0

    .line 421
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 422
    return-object v1

    .line 416
    :cond_0
    aget-object v0, v5, v4

    .line 417
    .local v0, "defName":Ljava/lang/String;
    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 418
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static getSelectedProfile(Ljava/lang/String;Landroid/content/Context;)Lcom/nostalgiaemulators/framework/KeyboardProfile;
    .locals 4
    .param p0, "gameHash"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 354
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 355
    .local v1, "pref":Landroid/content/SharedPreferences;
    const-string v2, "pref_game_keyboard_profile"

    const-string v3, "default"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 356
    .local v0, "name":Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/nostalgiaemulators/framework/KeyboardProfile;->load(Landroid/content/Context;Ljava/lang/String;)Lcom/nostalgiaemulators/framework/KeyboardProfile;

    move-result-object v2

    return-object v2
.end method

.method public static isDefaultProfile(Ljava/lang/String;)Z
    .locals 6
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 426
    const/4 v1, 0x0

    .line 428
    .local v1, "defProf":Z
    sget-object v3, Lcom/nostalgiaemulators/framework/KeyboardProfile;->DEFAULT_PROFILES_NAMES:[Ljava/lang/String;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_0

    .line 434
    return v1

    .line 428
    :cond_0
    aget-object v0, v3, v2

    .line 429
    .local v0, "defName":Ljava/lang/String;
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 430
    const/4 v1, 0x1

    .line 428
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static load(Landroid/content/Context;Ljava/lang/String;)Lcom/nostalgiaemulators/framework/KeyboardProfile;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const v9, 0x186a0

    .line 362
    if-eqz p1, :cond_6

    .line 363
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 364
    const-string v8, "_keyboard_profile"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 363
    invoke-virtual {p0, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 366
    .local v4, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    if-eqz v7, :cond_2

    .line 367
    new-instance v5, Lcom/nostalgiaemulators/framework/KeyboardProfile;

    invoke-direct {v5}, Lcom/nostalgiaemulators/framework/KeyboardProfile;-><init>()V

    .line 368
    .local v5, "profile":Lcom/nostalgiaemulators/framework/KeyboardProfile;
    iput-object p1, v5, Lcom/nostalgiaemulators/framework/KeyboardProfile;->name:Ljava/lang/String;

    .line 369
    const/4 v7, 0x1

    iput-boolean v7, v5, Lcom/nostalgiaemulators/framework/KeyboardProfile;->loadedFromDisk:Z

    .line 371
    invoke-interface {v4}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_0

    .line 405
    .end local v4    # "pref":Landroid/content/SharedPreferences;
    .end local v5    # "profile":Lcom/nostalgiaemulators/framework/KeyboardProfile;
    :goto_1
    return-object v5

    .line 371
    .restart local v4    # "pref":Landroid/content/SharedPreferences;
    .restart local v5    # "profile":Lcom/nostalgiaemulators/framework/KeyboardProfile;
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 372
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 373
    .local v1, "key":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 374
    .local v6, "value":Ljava/lang/Integer;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 375
    .local v2, "nkey":I
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 377
    .local v3, "nvalue":I
    if-lt v3, v9, :cond_1

    .line 378
    if-ge v2, v9, :cond_1

    .line 379
    add-int/2addr v2, v9

    .line 382
    :cond_1
    iget-object v8, v5, Lcom/nostalgiaemulators/framework/KeyboardProfile;->keyMap:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    .line 388
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "nkey":I
    .end local v3    # "nvalue":I
    .end local v5    # "profile":Lcom/nostalgiaemulators/framework/KeyboardProfile;
    .end local v6    # "value":Ljava/lang/Integer;
    :cond_2
    const-string v7, "com.nostalgiaemulators.framework.KeyboardProfile"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "empty "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_keyboard_profile"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    const-string v7, "ps3"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 391
    invoke-static {}, Lcom/nostalgiaemulators/framework/KeyboardProfile;->createPS3Profile()Lcom/nostalgiaemulators/framework/KeyboardProfile;

    move-result-object v5

    goto :goto_1

    .line 393
    :cond_3
    const-string v7, "wiimote"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 394
    invoke-static {}, Lcom/nostalgiaemulators/framework/KeyboardProfile;->createWiimoteProfile()Lcom/nostalgiaemulators/framework/KeyboardProfile;

    move-result-object v5

    goto :goto_1

    .line 396
    :cond_4
    const-string v7, "nes30"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 397
    invoke-static {}, Lcom/nostalgiaemulators/framework/KeyboardProfile;->createNes30Profile()Lcom/nostalgiaemulators/framework/KeyboardProfile;

    move-result-object v5

    goto :goto_1

    .line 400
    :cond_5
    invoke-static {}, Lcom/nostalgiaemulators/framework/KeyboardProfile;->createDefaultProfile()Lcom/nostalgiaemulators/framework/KeyboardProfile;

    move-result-object v5

    goto :goto_1

    .line 405
    .end local v4    # "pref":Landroid/content/SharedPreferences;
    :cond_6
    invoke-static {}, Lcom/nostalgiaemulators/framework/KeyboardProfile;->createDefaultProfile()Lcom/nostalgiaemulators/framework/KeyboardProfile;

    move-result-object v5

    goto :goto_1
.end method

.method public static restoreDefaultProfile(Ljava/lang/String;Landroid/content/Context;)V
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 438
    const/4 v0, 0x0

    .line 440
    .local v0, "prof":Lcom/nostalgiaemulators/framework/KeyboardProfile;
    const-string v1, "ps3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 441
    invoke-static {}, Lcom/nostalgiaemulators/framework/KeyboardProfile;->createPS3Profile()Lcom/nostalgiaemulators/framework/KeyboardProfile;

    move-result-object v0

    .line 453
    :cond_0
    :goto_0
    if-eqz v0, :cond_4

    .line 454
    invoke-virtual {v0, p1}, Lcom/nostalgiaemulators/framework/KeyboardProfile;->save(Landroid/content/Context;)Z

    .line 459
    :goto_1
    return-void

    .line 443
    :cond_1
    const-string v1, "default"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 444
    invoke-static {}, Lcom/nostalgiaemulators/framework/KeyboardProfile;->createDefaultProfile()Lcom/nostalgiaemulators/framework/KeyboardProfile;

    move-result-object v0

    .line 446
    goto :goto_0

    :cond_2
    const-string v1, "wiimote"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 447
    invoke-static {}, Lcom/nostalgiaemulators/framework/KeyboardProfile;->createWiimoteProfile()Lcom/nostalgiaemulators/framework/KeyboardProfile;

    move-result-object v0

    .line 449
    goto :goto_0

    :cond_3
    const-string v1, "nes30"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 450
    invoke-static {}, Lcom/nostalgiaemulators/framework/KeyboardProfile;->createNes30Profile()Lcom/nostalgiaemulators/framework/KeyboardProfile;

    move-result-object v0

    goto :goto_0

    .line 457
    :cond_4
    const-string v1, "com.nostalgiaemulators.framework.KeyboardProfile"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Keyboard profile "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is unknown!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/nostalgiaemulators/framework/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public delete(Landroid/content/Context;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 304
    const-string v2, "com.nostalgiaemulators.framework.KeyboardProfile"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "delete profile "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/nostalgiaemulators/framework/KeyboardProfile;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/nostalgiaemulators/framework/KeyboardProfile;->name:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".keyprof"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 305
    invoke-virtual {p1, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 307
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 308
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 309
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 310
    const-string v2, "keyboard_profiles_pref"

    invoke-virtual {p1, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 312
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 313
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/KeyboardProfile;->name:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 314
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 315
    const/4 v2, 0x1

    return v2
.end method

.method public getMapping(II)I
    .locals 4
    .param p1, "player"    # I
    .param p2, "keyCode"    # I

    .prologue
    const/4 v3, -0x1

    .line 295
    if-nez p1, :cond_0

    .line 296
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/KeyboardProfile;->keyMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 300
    :goto_0
    return v0

    .line 299
    :cond_0
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/KeyboardProfile;->keyMap:Landroid/util/SparseIntArray;

    const v2, 0x186a0

    add-int/2addr v2, p2

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 300
    .local v0, "res":I
    goto :goto_0
.end method

.method public requiresTwoGamepads()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v6, -0x1

    .line 60
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/KeyboardProfile;->requiresTwoGamepads:Ljava/lang/Boolean;

    if-eqz v4, :cond_0

    .line 61
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/KeyboardProfile;->requiresTwoGamepads:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 74
    :goto_0
    return v2

    .line 64
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/KeyboardProfile;->keyMap:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-lt v0, v4, :cond_1

    .line 73
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/nostalgiaemulators/framework/KeyboardProfile;->requiresTwoGamepads:Ljava/lang/Boolean;

    move v2, v3

    .line 74
    goto :goto_0

    .line 65
    :cond_1
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/KeyboardProfile;->keyMap:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 67
    .local v1, "key":I
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/KeyboardProfile;->keyMap:Landroid/util/SparseIntArray;

    const v5, 0x186a0

    add-int/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    if-eq v4, v6, :cond_2

    .line 68
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/nostalgiaemulators/framework/KeyboardProfile;->requiresTwoGamepads:Ljava/lang/Boolean;

    goto :goto_0

    .line 64
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public save(Landroid/content/Context;)Z
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 319
    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/nostalgiaemulators/framework/KeyboardProfile;->name:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 320
    const-string v8, "_keyboard_profile"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 319
    invoke-virtual {p1, v7, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 321
    .local v4, "pref":Landroid/content/SharedPreferences;
    const-string v7, "com.nostalgiaemulators.framework.KeyboardProfile"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "save profile "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/nostalgiaemulators/framework/KeyboardProfile;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/nostalgiaemulators/framework/KeyboardProfile;->keyMap:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 323
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 325
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-static {}, Lcom/nostalgiaemulators/framework/KeyboardProfile;->getButtonNames()[Ljava/lang/String;

    move-result-object v7

    array-length v7, v7

    if-lt v1, v7, :cond_1

    .line 337
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 339
    iget-object v7, p0, Lcom/nostalgiaemulators/framework/KeyboardProfile;->name:Ljava/lang/String;

    const-string v8, "default"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 340
    const-string v7, "keyboard_profiles_pref"

    invoke-virtual {p1, v7, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 342
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 343
    iget-object v6, p0, Lcom/nostalgiaemulators/framework/KeyboardProfile;->name:Ljava/lang/String;

    invoke-interface {v0, v6, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 344
    const-string v6, "default"

    invoke-interface {v0, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 345
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 348
    :cond_0
    return v10

    .line 326
    :cond_1
    invoke-static {}, Lcom/nostalgiaemulators/framework/KeyboardProfile;->getButtonKeyEventCodes()[I

    move-result-object v7

    aget v5, v7, v1

    .line 327
    .local v5, "value":I
    iget-object v7, p0, Lcom/nostalgiaemulators/framework/KeyboardProfile;->keyMap:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result v2

    .line 328
    .local v2, "idx":I
    const/4 v7, -0x1

    if-ne v2, v7, :cond_3

    move v3, v6

    .line 330
    .local v3, "key":I
    :goto_1
    if-eqz v3, :cond_2

    .line 331
    const-string v7, "com.nostalgiaemulators.framework.KeyboardProfile"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "save "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/nostalgiaemulators/framework/KeyboardProfile;->getButtonNames()[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "->"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 332
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 331
    invoke-static {v7, v8}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 325
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 328
    .end local v3    # "key":I
    :cond_3
    iget-object v7, p0, Lcom/nostalgiaemulators/framework/KeyboardProfile;->keyMap:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    goto :goto_1
.end method

.method setMapping(III)V
    .locals 4
    .param p1, "player"    # I
    .param p2, "keyCode"    # I
    .param p3, "mapping"    # I

    .prologue
    .line 166
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const v0, 0x186a0

    .line 167
    .local v0, "offset":I
    :goto_0
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/KeyboardProfile;->keyMap:Landroid/util/SparseIntArray;

    add-int v2, p2, v0

    add-int v3, p3, v0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 168
    return-void

    .line 166
    .end local v0    # "offset":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
