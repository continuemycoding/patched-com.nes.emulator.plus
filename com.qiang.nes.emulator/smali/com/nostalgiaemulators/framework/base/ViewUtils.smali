.class public Lcom/nostalgiaemulators/framework/base/ViewUtils;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static computeAllInitViewPorts(Landroid/content/Context;IIII)Ljava/util/HashMap;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "paddingLeft"    # I
    .param p4, "paddingTop"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IIII)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/nostalgiaemulators/framework/base/ViewPort;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 58
    .local v1, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/nostalgiaemulators/framework/base/ViewPort;>;"
    invoke-static {}, Lcom/nostalgiaemulators/framework/base/EmulatorInfoHolder;->getInfo()Lcom/nostalgiaemulators/framework/EmulatorInfo;

    move-result-object v3

    .line 59
    invoke-interface {v3}, Lcom/nostalgiaemulators/framework/EmulatorInfo;->getAvailableGfxProfiles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 58
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 65
    return-object v1

    .line 59
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nostalgiaemulators/framework/GfxProfile;

    .line 60
    .local v0, "profile":Lcom/nostalgiaemulators/framework/GfxProfile;
    invoke-static {v0, p1, p2, p3, p4}, Lcom/nostalgiaemulators/framework/base/ViewUtils;->computeViewPort(Lcom/nostalgiaemulators/framework/GfxProfile;IIII)Lcom/nostalgiaemulators/framework/base/ViewPort;

    move-result-object v2

    .line 62
    .local v2, "vp":Lcom/nostalgiaemulators/framework/base/ViewPort;
    iget-object v4, v0, Lcom/nostalgiaemulators/framework/GfxProfile;->name:Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static computeInitViewPort(Landroid/content/Context;IIII)Lcom/nostalgiaemulators/framework/base/ViewPort;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "paddingLeft"    # I
    .param p4, "paddingTop"    # I

    .prologue
    .line 50
    invoke-static {}, Lcom/nostalgiaemulators/framework/base/EmulatorInfoHolder;->getInfo()Lcom/nostalgiaemulators/framework/EmulatorInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/nostalgiaemulators/framework/EmulatorInfo;->getDefaultGfxProfile()Lcom/nostalgiaemulators/framework/GfxProfile;

    move-result-object v0

    .line 51
    .local v0, "gfx":Lcom/nostalgiaemulators/framework/GfxProfile;
    invoke-static {v0, p1, p2, p3, p4}, Lcom/nostalgiaemulators/framework/base/ViewUtils;->computeViewPort(Lcom/nostalgiaemulators/framework/GfxProfile;IIII)Lcom/nostalgiaemulators/framework/base/ViewPort;

    move-result-object v1

    return-object v1
.end method

.method public static computeViewPort(Lcom/nostalgiaemulators/framework/Emulator;IIII)Lcom/nostalgiaemulators/framework/base/ViewPort;
    .locals 2
    .param p0, "emulator"    # Lcom/nostalgiaemulators/framework/Emulator;
    .param p1, "screenWidth"    # I
    .param p2, "screenHeight"    # I
    .param p3, "paddingLeft"    # I
    .param p4, "paddingTop"    # I

    .prologue
    .line 35
    const/4 v0, 0x0

    .line 37
    .local v0, "gfx":Lcom/nostalgiaemulators/framework/GfxProfile;
    if-eqz p0, :cond_0

    .line 38
    invoke-interface {p0}, Lcom/nostalgiaemulators/framework/Emulator;->getActiveGfxProfile()Lcom/nostalgiaemulators/framework/GfxProfile;

    move-result-object v0

    .line 44
    :goto_0
    invoke-static {v0, p1, p2, p3, p4}, Lcom/nostalgiaemulators/framework/base/ViewUtils;->computeViewPort(Lcom/nostalgiaemulators/framework/GfxProfile;IIII)Lcom/nostalgiaemulators/framework/base/ViewPort;

    move-result-object v1

    return-object v1

    .line 41
    :cond_0
    invoke-static {}, Lcom/nostalgiaemulators/framework/base/EmulatorInfoHolder;->getInfo()Lcom/nostalgiaemulators/framework/EmulatorInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/nostalgiaemulators/framework/EmulatorInfo;->getDefaultGfxProfile()Lcom/nostalgiaemulators/framework/GfxProfile;

    move-result-object v0

    goto :goto_0
.end method

.method public static computeViewPort(Lcom/nostalgiaemulators/framework/GfxProfile;IIII)Lcom/nostalgiaemulators/framework/base/ViewPort;
    .locals 8
    .param p0, "gfx"    # Lcom/nostalgiaemulators/framework/GfxProfile;
    .param p1, "screenWidth"    # I
    .param p2, "screenHeight"    # I
    .param p3, "paddingLeft"    # I
    .param p4, "paddingTop"    # I

    .prologue
    .line 150
    if-nez p0, :cond_0

    .line 151
    invoke-static {}, Lcom/nostalgiaemulators/framework/base/EmulatorInfoHolder;->getInfo()Lcom/nostalgiaemulators/framework/EmulatorInfo;

    move-result-object v6

    invoke-interface {v6}, Lcom/nostalgiaemulators/framework/EmulatorInfo;->getDefaultGfxProfile()Lcom/nostalgiaemulators/framework/GfxProfile;

    move-result-object p0

    .line 154
    :cond_0
    sub-int v5, p1, p3

    .line 155
    .local v5, "w":I
    sub-int v0, p2, p4

    .line 158
    .local v0, "h":I
    iget v6, p0, Lcom/nostalgiaemulators/framework/GfxProfile;->originalScreenHeight:I

    int-to-float v6, v6

    .line 159
    iget v7, p0, Lcom/nostalgiaemulators/framework/GfxProfile;->originalScreenWidth:I

    int-to-float v7, v7

    .line 158
    div-float v1, v6, v7

    .line 161
    .local v1, "ratio":F
    if-ge v5, v0, :cond_1

    .line 162
    move v4, v5

    .line 163
    .local v4, "vpw":I
    int-to-float v6, v4

    mul-float/2addr v6, v1

    float-to-int v3, v6

    .line 170
    .local v3, "vph":I
    :goto_0
    new-instance v2, Lcom/nostalgiaemulators/framework/base/ViewPort;

    invoke-direct {v2}, Lcom/nostalgiaemulators/framework/base/ViewPort;-><init>()V

    .line 171
    .local v2, "result":Lcom/nostalgiaemulators/framework/base/ViewPort;
    sub-int v6, v5, v4

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, p3

    iput v6, v2, Lcom/nostalgiaemulators/framework/base/ViewPort;->x:I

    .line 172
    add-int/lit8 v6, p4, 0x0

    iput v6, v2, Lcom/nostalgiaemulators/framework/base/ViewPort;->y:I

    .line 173
    iput v3, v2, Lcom/nostalgiaemulators/framework/base/ViewPort;->height:I

    .line 174
    iput v4, v2, Lcom/nostalgiaemulators/framework/base/ViewPort;->width:I

    .line 175
    return-object v2

    .line 166
    .end local v2    # "result":Lcom/nostalgiaemulators/framework/base/ViewPort;
    .end local v3    # "vph":I
    .end local v4    # "vpw":I
    :cond_1
    move v3, v0

    .line 167
    .restart local v3    # "vph":I
    int-to-float v6, v3

    div-float/2addr v6, v1

    float-to-int v4, v6

    .restart local v4    # "vpw":I
    goto :goto_0
.end method

.method public static loadOrComputeAllViewPorts(Landroid/content/Context;IIII)Ljava/util/HashMap;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "paddingLeft"    # I
    .param p4, "paddingTop"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IIII)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/nostalgiaemulators/framework/base/ViewPort;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    invoke-static {p0, p1, p2, p3, p4}, Lcom/nostalgiaemulators/framework/base/ViewUtils;->computeAllInitViewPorts(Landroid/content/Context;IIII)Ljava/util/HashMap;

    move-result-object v1

    .line 73
    .local v1, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/nostalgiaemulators/framework/base/ViewPort;>;"
    invoke-static {}, Lcom/nostalgiaemulators/framework/base/EmulatorInfoHolder;->getInfo()Lcom/nostalgiaemulators/framework/EmulatorInfo;

    move-result-object v3

    .line 74
    invoke-interface {v3}, Lcom/nostalgiaemulators/framework/EmulatorInfo;->getAvailableGfxProfiles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 73
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 82
    return-object v1

    .line 74
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nostalgiaemulators/framework/GfxProfile;

    .line 75
    .local v0, "profile":Lcom/nostalgiaemulators/framework/GfxProfile;
    invoke-static {p0, p1, p2, v0}, Lcom/nostalgiaemulators/framework/base/ViewUtils;->loadViewPort(Landroid/content/Context;IILcom/nostalgiaemulators/framework/GfxProfile;)Lcom/nostalgiaemulators/framework/base/ViewPort;

    move-result-object v2

    .line 77
    .local v2, "vp":Lcom/nostalgiaemulators/framework/base/ViewPort;
    if-eqz v2, :cond_0

    .line 78
    iget-object v4, v0, Lcom/nostalgiaemulators/framework/GfxProfile;->name:Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static loadOrComputeViewPort(Landroid/content/Context;Lcom/nostalgiaemulators/framework/Emulator;IIIIZ)Lcom/nostalgiaemulators/framework/base/ViewPort;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "emulator"    # Lcom/nostalgiaemulators/framework/Emulator;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "paddingLeft"    # I
    .param p5, "paddingTop"    # I
    .param p6, "ignoreFullscreenSettings"    # Z

    .prologue
    const/4 v3, 0x0

    .line 88
    const/4 v1, 0x0

    .line 89
    .local v1, "vp":Lcom/nostalgiaemulators/framework/base/ViewPort;
    const/4 v0, 0x0

    .line 91
    .local v0, "profile":Lcom/nostalgiaemulators/framework/GfxProfile;
    if-eqz p1, :cond_0

    .line 92
    invoke-interface {p1}, Lcom/nostalgiaemulators/framework/Emulator;->getActiveGfxProfile()Lcom/nostalgiaemulators/framework/GfxProfile;

    move-result-object v0

    .line 98
    :goto_0
    if-nez p6, :cond_1

    .line 99
    invoke-static {p0}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->isFullScreenEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 100
    new-instance v1, Lcom/nostalgiaemulators/framework/base/ViewPort;

    .end local v1    # "vp":Lcom/nostalgiaemulators/framework/base/ViewPort;
    invoke-direct {v1}, Lcom/nostalgiaemulators/framework/base/ViewPort;-><init>()V

    .line 101
    .restart local v1    # "vp":Lcom/nostalgiaemulators/framework/base/ViewPort;
    iput p3, v1, Lcom/nostalgiaemulators/framework/base/ViewPort;->height:I

    .line 102
    iput p2, v1, Lcom/nostalgiaemulators/framework/base/ViewPort;->width:I

    .line 103
    iput v3, v1, Lcom/nostalgiaemulators/framework/base/ViewPort;->x:I

    .line 104
    iput v3, v1, Lcom/nostalgiaemulators/framework/base/ViewPort;->y:I

    .line 114
    :goto_1
    return-object v1

    .line 95
    :cond_0
    invoke-static {}, Lcom/nostalgiaemulators/framework/base/EmulatorInfoHolder;->getInfo()Lcom/nostalgiaemulators/framework/EmulatorInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/nostalgiaemulators/framework/EmulatorInfo;->getDefaultGfxProfile()Lcom/nostalgiaemulators/framework/GfxProfile;

    move-result-object v0

    goto :goto_0

    .line 106
    :cond_1
    invoke-static {p0, p2, p3, v0}, Lcom/nostalgiaemulators/framework/base/ViewUtils;->loadViewPort(Landroid/content/Context;IILcom/nostalgiaemulators/framework/GfxProfile;)Lcom/nostalgiaemulators/framework/base/ViewPort;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 107
    invoke-static {p0, p2, p3, v0}, Lcom/nostalgiaemulators/framework/base/ViewUtils;->loadViewPort(Landroid/content/Context;IILcom/nostalgiaemulators/framework/GfxProfile;)Lcom/nostalgiaemulators/framework/base/ViewPort;

    move-result-object v1

    .line 109
    goto :goto_1

    .line 110
    :cond_2
    invoke-static {v0, p2, p3, p4, p5}, Lcom/nostalgiaemulators/framework/base/ViewUtils;->computeViewPort(Lcom/nostalgiaemulators/framework/GfxProfile;IIII)Lcom/nostalgiaemulators/framework/base/ViewPort;

    move-result-object v1

    goto :goto_1
.end method

.method private static loadViewPort(Landroid/content/Context;IILcom/nostalgiaemulators/framework/GfxProfile;)Lcom/nostalgiaemulators/framework/base/ViewPort;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "profile"    # Lcom/nostalgiaemulators/framework/GfxProfile;

    .prologue
    .line 119
    invoke-static {p0, p1, p2}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->getViewPort(Landroid/content/Context;II)Lcom/nostalgiaemulators/framework/base/ViewPort;

    move-result-object v4

    .line 120
    .local v4, "vp":Lcom/nostalgiaemulators/framework/base/ViewPort;
    invoke-static {}, Lcom/nostalgiaemulators/framework/base/EmulatorInfoHolder;->getInfo()Lcom/nostalgiaemulators/framework/EmulatorInfo;

    move-result-object v7

    .line 121
    invoke-interface {v7}, Lcom/nostalgiaemulators/framework/EmulatorInfo;->getDefaultGfxProfile()Lcom/nostalgiaemulators/framework/GfxProfile;

    move-result-object v0

    .line 123
    .local v0, "defaultProfile":Lcom/nostalgiaemulators/framework/GfxProfile;
    if-eqz v4, :cond_0

    if-eq p3, v0, :cond_0

    .line 124
    iget v6, v4, Lcom/nostalgiaemulators/framework/base/ViewPort;->width:I

    .line 125
    .local v6, "vpw":I
    iget v5, v4, Lcom/nostalgiaemulators/framework/base/ViewPort;->height:I

    .line 126
    .local v5, "vph":I
    move v2, v6

    .line 127
    .local v2, "ow":I
    move v1, v5

    .line 128
    .local v1, "oh":I
    iget v7, p3, Lcom/nostalgiaemulators/framework/GfxProfile;->originalScreenHeight:I

    int-to-float v7, v7

    .line 129
    iget v8, p3, Lcom/nostalgiaemulators/framework/GfxProfile;->originalScreenWidth:I

    int-to-float v8, v8

    .line 128
    div-float v3, v7, v8

    .line 131
    .local v3, "ratio":F
    if-ge p1, p2, :cond_1

    .line 132
    iget v6, v4, Lcom/nostalgiaemulators/framework/base/ViewPort;->width:I

    .line 133
    int-to-float v7, v6

    mul-float/2addr v7, v3

    float-to-int v5, v7

    .line 141
    :goto_0
    iput v6, v4, Lcom/nostalgiaemulators/framework/base/ViewPort;->width:I

    .line 142
    iput v5, v4, Lcom/nostalgiaemulators/framework/base/ViewPort;->height:I

    .line 145
    .end local v1    # "oh":I
    .end local v2    # "ow":I
    .end local v3    # "ratio":F
    .end local v5    # "vph":I
    .end local v6    # "vpw":I
    :cond_0
    return-object v4

    .line 136
    .restart local v1    # "oh":I
    .restart local v2    # "ow":I
    .restart local v3    # "ratio":F
    .restart local v5    # "vph":I
    .restart local v6    # "vpw":I
    :cond_1
    iget v5, v4, Lcom/nostalgiaemulators/framework/base/ViewPort;->height:I

    .line 137
    int-to-float v7, v5

    div-float/2addr v7, v3

    float-to-int v6, v7

    .line 138
    iget v7, v4, Lcom/nostalgiaemulators/framework/base/ViewPort;->x:I

    sub-int v8, v2, v6

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    iput v7, v4, Lcom/nostalgiaemulators/framework/base/ViewPort;->x:I

    goto :goto_0
.end method
