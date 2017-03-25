.class public Lcom/xiaoqi/gamepad/sdk/input/InputDeviceUtil;
.super Ljava/lang/Object;
.source "InputDeviceUtil.java"


# static fields
.field static final SOURCE_GAMEPAD:I = 0x401

.field static final SOURCE_JOYSTICK:I = 0x1000010

.field static final TAG:Ljava/lang/String;

.field private static getDescriptorMethodCached:Ljava/lang/reflect/Method;

.field private static isCoolpadCached:Ljava/lang/Boolean;

.field private static isMTKTestKeyBuildCached:Ljava/lang/Boolean;

.field private static isMtkCached:Ljava/lang/Boolean;

.field private static mFilter:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 17
    const-class v0, Lcom/xiaoqi/gamepad/sdk/input/InputDeviceUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaoqi/gamepad/sdk/input/InputDeviceUtil;->TAG:Ljava/lang/String;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaoqi/gamepad/sdk/input/InputDeviceUtil;->mFilter:Ljava/util/HashMap;

    .line 23
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/input/InputDeviceUtil;->mFilter:Ljava/util/HashMap;

    const-string v1, "AVRCP"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sput-object v3, Lcom/xiaoqi/gamepad/sdk/input/InputDeviceUtil;->getDescriptorMethodCached:Ljava/lang/reflect/Method;

    .line 97
    sput-object v3, Lcom/xiaoqi/gamepad/sdk/input/InputDeviceUtil;->isMtkCached:Ljava/lang/Boolean;

    .line 119
    sput-object v3, Lcom/xiaoqi/gamepad/sdk/input/InputDeviceUtil;->isMTKTestKeyBuildCached:Ljava/lang/Boolean;

    .line 135
    sput-object v3, Lcom/xiaoqi/gamepad/sdk/input/InputDeviceUtil;->isCoolpadCached:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceId(Landroid/view/InputDevice;)Ljava/lang/String;
    .locals 4
    .param p0, "dev"    # Landroid/view/InputDevice;

    .prologue
    .line 74
    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 75
    .local v0, "apiVertion":I
    const/16 v2, 0x10

    if-lt v0, v2, :cond_1

    .line 76
    const-class v1, Landroid/view/InputDevice;

    .line 79
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/view/InputDevice;>;"
    :try_start_0
    sget-object v2, Lcom/xiaoqi/gamepad/sdk/input/InputDeviceUtil;->getDescriptorMethodCached:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    .line 81
    const-string v2, "getDescriptor"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 80
    sput-object v2, Lcom/xiaoqi/gamepad/sdk/input/InputDeviceUtil;->getDescriptorMethodCached:Ljava/lang/reflect/Method;

    .line 83
    :cond_0
    sget-object v2, Lcom/xiaoqi/gamepad/sdk/input/InputDeviceUtil;->getDescriptorMethodCached:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_1

    .line 84
    sget-object v2, Lcom/xiaoqi/gamepad/sdk/input/InputDeviceUtil;->getDescriptorMethodCached:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/view/InputDevice;>;"
    :goto_0
    return-object v2

    .line 86
    .restart local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/view/InputDevice;>;"
    :catch_0
    move-exception v2

    .line 94
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/view/InputDevice;>;"
    :cond_1
    invoke-virtual {p0}, Landroid/view/InputDevice;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static isAllTrue([Z)Z
    .locals 4
    .param p0, "input"    # [Z

    .prologue
    const/4 v1, 0x0

    .line 161
    if-eqz p0, :cond_0

    array-length v2, p0

    if-lez v2, :cond_0

    .line 162
    array-length v3, p0

    move v2, v1

    :goto_0
    if-lt v2, v3, :cond_1

    .line 166
    const/4 v1, 0x1

    .line 168
    :cond_0
    return v1

    .line 162
    :cond_1
    aget-boolean v0, p0, v2

    .line 163
    .local v0, "tmp":Z
    if-eqz v0, :cond_0

    .line 162
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static isCoolpad()Z
    .locals 5

    .prologue
    .line 137
    sget-object v3, Lcom/xiaoqi/gamepad/sdk/input/InputDeviceUtil;->isCoolpadCached:Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    .line 138
    sget-object v3, Lcom/xiaoqi/gamepad/sdk/input/InputDeviceUtil;->isCoolpadCached:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 147
    .local v2, "prop":Lcom/xiaoqi/gamepad/sdk/input/BuildProperties;
    :goto_0
    return v3

    .line 141
    .end local v2    # "prop":Lcom/xiaoqi/gamepad/sdk/input/BuildProperties;
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/xiaoqi/gamepad/sdk/input/BuildProperties;->getInstance()Lcom/xiaoqi/gamepad/sdk/input/BuildProperties;

    move-result-object v2

    .line 142
    .restart local v2    # "prop":Lcom/xiaoqi/gamepad/sdk/input/BuildProperties;
    const-string v3, "ro.com.google.clientidbase"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/xiaoqi/gamepad/sdk/input/BuildProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 143
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "clientBase":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android-coolpad"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/xiaoqi/gamepad/sdk/input/InputDeviceUtil;->isCoolpadCached:Ljava/lang/Boolean;

    .line 145
    sget-object v3, Lcom/xiaoqi/gamepad/sdk/input/InputDeviceUtil;->isCoolpadCached:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 146
    .end local v0    # "clientBase":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 147
    .local v1, "e":Ljava/io/IOException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isDeviceIsExternal(Landroid/view/InputDevice;)Z
    .locals 7
    .param p0, "device"    # Landroid/view/InputDevice;

    .prologue
    const/4 v3, 0x0

    .line 59
    :try_start_0
    const-class v4, Landroid/view/InputDevice;

    const-string v5, "isExternal"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 60
    .local v1, "m":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 61
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 62
    .local v2, "result":Ljava/lang/Boolean;
    if-nez v2, :cond_1

    .line 67
    .end local v1    # "m":Ljava/lang/reflect/Method;
    .end local v2    # "result":Ljava/lang/Boolean;
    :cond_0
    :goto_0
    return v3

    .line 62
    .restart local v1    # "m":Ljava/lang/reflect/Method;
    .restart local v2    # "result":Ljava/lang/Boolean;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 64
    .end local v1    # "m":Ljava/lang/reflect/Method;
    .end local v2    # "result":Ljava/lang/Boolean;
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isGamePad(Landroid/view/InputDevice;)Z
    .locals 5
    .param p0, "device"    # Landroid/view/InputDevice;

    .prologue
    const/4 v2, 0x0

    .line 27
    if-eqz p0, :cond_0

    .line 28
    sget-object v3, Lcom/xiaoqi/gamepad/sdk/input/InputDeviceUtil;->mFilter:Ljava/util/HashMap;

    invoke-virtual {p0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 50
    :cond_0
    :goto_0
    return v2

    .line 32
    :cond_1
    invoke-virtual {p0}, Landroid/view/InputDevice;->getSources()I

    move-result v1

    .line 33
    .local v1, "sources":I
    const/16 v3, 0x401

    invoke-static {v1, v3}, Lcom/xiaoqi/gamepad/sdk/input/InputDeviceUtil;->isSourceType(II)Z

    move-result v3

    if-nez v3, :cond_2

    .line 34
    const v3, 0x1000010

    invoke-static {v1, v3}, Lcom/xiaoqi/gamepad/sdk/input/InputDeviceUtil;->isSourceType(II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 35
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 36
    :cond_3
    invoke-virtual {p0}, Landroid/view/InputDevice;->getId()I

    move-result v3

    if-ltz v3, :cond_0

    .line 37
    const/16 v3, 0x101

    invoke-static {v1, v3}, Lcom/xiaoqi/gamepad/sdk/input/InputDeviceUtil;->isSourceType(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 38
    invoke-static {p0}, Lcom/xiaoqi/gamepad/sdk/input/InputDeviceUtil;->isDeviceIsExternal(Landroid/view/InputDevice;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 42
    const/4 v2, 0x6

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/view/KeyCharacterMap;->deviceHasKeys([I)[Z

    move-result-object v0

    .line 47
    .local v0, "result":[Z
    invoke-static {v0}, Lcom/xiaoqi/gamepad/sdk/input/InputDeviceUtil;->isAllTrue([Z)Z

    move-result v2

    goto :goto_0

    .line 42
    :array_0
    .array-data 4
        0x1d
        0x1e
        0x34
        0x35
        0x6d
        0x6c
    .end array-data
.end method

.method public static isMTK()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 99
    sget-object v4, Lcom/xiaoqi/gamepad/sdk/input/InputDeviceUtil;->isMtkCached:Ljava/lang/Boolean;

    if-eqz v4, :cond_0

    .line 100
    sget-object v3, Lcom/xiaoqi/gamepad/sdk/input/InputDeviceUtil;->isMtkCached:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 115
    .local v2, "prop":Lcom/xiaoqi/gamepad/sdk/input/BuildProperties;
    :goto_0
    return v3

    .line 104
    .end local v2    # "prop":Lcom/xiaoqi/gamepad/sdk/input/BuildProperties;
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/xiaoqi/gamepad/sdk/input/BuildProperties;->getInstance()Lcom/xiaoqi/gamepad/sdk/input/BuildProperties;

    move-result-object v2

    .line 105
    .restart local v2    # "prop":Lcom/xiaoqi/gamepad/sdk/input/BuildProperties;
    const-string v4, "ro.mediatek.platform"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/xiaoqi/gamepad/sdk/input/BuildProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 106
    const-string v4, "ro.mediatek.chip_ver"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/xiaoqi/gamepad/sdk/input/BuildProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 107
    const-string v4, "ro.mediatek.version.branch"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/xiaoqi/gamepad/sdk/input/BuildProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    move v4, v3

    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 105
    sput-object v4, Lcom/xiaoqi/gamepad/sdk/input/InputDeviceUtil;->isMtkCached:Ljava/lang/Boolean;

    .line 110
    sget-object v4, Lcom/xiaoqi/gamepad/sdk/input/InputDeviceUtil;->isMtkCached:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v1, "MTK"

    .line 111
    .local v1, "platform":Ljava/lang/String;
    :goto_2
    sget-object v4, Lcom/xiaoqi/gamepad/sdk/input/InputDeviceUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Current platform is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    sget-object v4, Lcom/xiaoqi/gamepad/sdk/input/InputDeviceUtil;->isMtkCached:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0

    .line 107
    .end local v1    # "platform":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x1

    goto :goto_1

    .line 110
    :cond_2
    const-string v1, "non-MTK"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method public static isMTKTestKeyBuild()Z
    .locals 5

    .prologue
    .line 121
    sget-object v3, Lcom/xiaoqi/gamepad/sdk/input/InputDeviceUtil;->isMTKTestKeyBuildCached:Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    .line 122
    sget-object v3, Lcom/xiaoqi/gamepad/sdk/input/InputDeviceUtil;->isMTKTestKeyBuildCached:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 130
    .local v2, "prop":Lcom/xiaoqi/gamepad/sdk/input/BuildProperties;
    :goto_0
    return v3

    .line 125
    .end local v2    # "prop":Lcom/xiaoqi/gamepad/sdk/input/BuildProperties;
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/xiaoqi/gamepad/sdk/input/BuildProperties;->getInstance()Lcom/xiaoqi/gamepad/sdk/input/BuildProperties;

    move-result-object v2

    .line 126
    .restart local v2    # "prop":Lcom/xiaoqi/gamepad/sdk/input/BuildProperties;
    const-string v3, "ro.build.tags"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/xiaoqi/gamepad/sdk/input/BuildProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "buildTag":Ljava/lang/String;
    const-string v3, "test-keys"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/xiaoqi/gamepad/sdk/input/InputDeviceUtil;->isMTKTestKeyBuildCached:Ljava/lang/Boolean;

    .line 128
    sget-object v3, Lcom/xiaoqi/gamepad/sdk/input/InputDeviceUtil;->isMTKTestKeyBuildCached:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 129
    .end local v0    # "buildTag":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 130
    .local v1, "e":Ljava/io/IOException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isSourceType(II)Z
    .locals 1
    .param p0, "source"    # I
    .param p1, "sourceType"    # I

    .prologue
    .line 54
    and-int v0, p0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSpecialMTKPlatform()Z
    .locals 2

    .prologue
    .line 155
    invoke-static {}, Lcom/xiaoqi/gamepad/sdk/input/InputDeviceUtil;->isMTK()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaoqi/gamepad/sdk/input/InputDeviceUtil;->isMTKTestKeyBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    .line 155
    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
