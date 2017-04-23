.class public Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;
.super Ljava/lang/Object;
.source "PreferenceUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$NotFoundHandling;,
        Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$ROTATION;,
        Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$Shader;
    }
.end annotation


# static fields
.field public static final EXPORT:I = 0x1

.field public static final GAME_PREF_SUFFIX:Ljava/lang/String; = ".gamepref"

.field public static final IMPORT:I = 0x2

.field private static escapedI:Ljava/lang/String;

.field private static escapedN:Ljava/lang/String;

.field private static escapedNull:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-string v0, "{escapedI:-)}"

    sput-object v0, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->escapedI:Ljava/lang/String;

    .line 52
    const-string v0, "{escapedN:-)}"

    sput-object v0, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->escapedN:Ljava/lang/String;

    .line 53
    const-string v0, "{escapedNULL:-)}"

    sput-object v0, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->escapedNull:Ljava/lang/String;

    .line 735
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canCheckNewVersion(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 105
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 106
    .local v4, "pref":Landroid/content/SharedPreferences;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 107
    .local v2, "currentTime":J
    const-string v5, "__new_version_check_time"

    const-wide/16 v6, -0x1

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 108
    .local v0, "checkTime":J
    cmp-long v5, v2, v0

    if-lez v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static canRemind(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 114
    .local v4, "pref":Landroid/content/SharedPreferences;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 115
    .local v2, "currentTime":J
    const-string v5, "__remind_time"

    const-wide/16 v6, -0x1

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 116
    .local v0, "checkTime":J
    cmp-long v5, v2, v0

    if-lez v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static exportPreferences(Landroid/content/SharedPreferences;Ljava/io/File;)V
    .locals 14
    .param p0, "pref"    # Landroid/content/SharedPreferences;
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 183
    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v5

    .line 185
    .local v5, "prefs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v11

    if-nez v11, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    const/4 v9, 0x0

    .line 192
    .local v9, "writer":Ljava/io/PrintWriter;
    :try_start_0
    new-instance v10, Ljava/io/PrintWriter;

    invoke-direct {v10, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    .end local v9    # "writer":Ljava/io/PrintWriter;
    .local v10, "writer":Ljava/io/PrintWriter;
    :try_start_1
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v12

    if-nez v12, :cond_3

    .line 243
    if-eqz v10, :cond_0

    .line 244
    invoke-virtual {v10}, Ljava/io/PrintWriter;->close()V

    goto :goto_0

    .line 194
    :cond_3
    :try_start_2
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 195
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 196
    .local v4, "o":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 197
    .local v6, "type":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    .line 199
    .local v8, "value":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    const-class v13, Ljava/lang/Integer;

    if-ne v12, v13, :cond_4

    .line 200
    const-string v6, "I"

    .line 203
    :cond_4
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    const-class v13, Ljava/lang/Long;

    if-ne v12, v13, :cond_5

    .line 204
    const-string v6, "L"

    .line 207
    :cond_5
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    const-class v13, Ljava/lang/String;

    if-ne v12, v13, :cond_6

    .line 208
    const-string v6, "S"

    .line 209
    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    .line 210
    .local v7, "val":Ljava/lang/String;
    const-string v12, "|"

    sget-object v13, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->escapedI:Ljava/lang/String;

    invoke-virtual {v7, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 211
    const-string v12, "\n"

    sget-object v13, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->escapedN:Ljava/lang/String;

    invoke-virtual {v7, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 212
    move-object v8, v7

    .line 215
    .end local v7    # "val":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/Object;
    :cond_6
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    const-class v13, Ljava/lang/Float;

    if-ne v12, v13, :cond_7

    .line 216
    const-string v6, "F"

    .line 219
    :cond_7
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    const-class v13, Ljava/lang/Boolean;

    if-ne v12, v13, :cond_8

    .line 220
    const-string v6, "B"

    .line 223
    :cond_8
    if-nez v6, :cond_a

    .line 224
    new-instance v11, Ljava/lang/RuntimeException;

    const-string v12, "unknown type"

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 239
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v4    # "o":Ljava/lang/Object;
    .end local v6    # "type":Ljava/lang/String;
    :catch_0
    move-exception v1

    move-object v9, v10

    .line 240
    .end local v10    # "writer":Ljava/io/PrintWriter;
    .local v1, "e":Ljava/io/FileNotFoundException;
    .restart local v9    # "writer":Ljava/io/PrintWriter;
    :goto_2
    :try_start_3
    new-instance v11, Ljava/lang/RuntimeException;

    invoke-direct {v11, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 242
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v11

    .line 243
    :goto_3
    if-eqz v9, :cond_9

    .line 244
    invoke-virtual {v9}, Ljava/io/PrintWriter;->close()V

    .line 246
    :cond_9
    throw v11

    .line 227
    .end local v9    # "writer":Ljava/io/PrintWriter;
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .restart local v4    # "o":Ljava/lang/Object;
    .restart local v6    # "type":Ljava/lang/String;
    .restart local v10    # "writer":Ljava/io/PrintWriter;
    :cond_a
    if-nez v8, :cond_b

    .line 228
    :try_start_4
    sget-object v8, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->escapedNull:Ljava/lang/String;

    .line 231
    :cond_b
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 233
    .local v3, "name":Ljava/lang/String;
    const-string v12, "__"

    invoke-virtual {v3, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 234
    const-string v12, "|"

    sget-object v13, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->escapedI:Ljava/lang/String;

    invoke-virtual {v3, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 235
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "|"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "|"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_1

    .line 242
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "o":Ljava/lang/Object;
    .end local v6    # "type":Ljava/lang/String;
    :catchall_1
    move-exception v11

    move-object v9, v10

    .end local v10    # "writer":Ljava/io/PrintWriter;
    .restart local v9    # "writer":Ljava/io/PrintWriter;
    goto :goto_3

    .line 239
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public static getControllerLayoutTimestamp(Landroid/content/Context;)J
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 157
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 158
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "general_cl_timestamp"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 159
    .local v2, "timestamp":J
    return-wide v2
.end method

.method public static getControlsOpacity(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 634
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 635
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "general_pref_ui_opacity"

    const/16 v2, 0x64

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static getDisplayRotation(Landroid/content/Context;)Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$ROTATION;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 739
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 740
    .local v0, "pref":Landroid/content/SharedPreferences;
    invoke-static {p0, v0}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->getDisplayRotation(Landroid/content/Context;Landroid/content/SharedPreferences;)Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$ROTATION;

    move-result-object v1

    return-object v1
.end method

.method private static getDisplayRotation(Landroid/content/Context;Landroid/content/SharedPreferences;)Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$ROTATION;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pref"    # Landroid/content/SharedPreferences;

    .prologue
    .line 781
    const-string v1, "general_pref_rotation"

    const-string v2, "0"

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 782
    .local v0, "i":I
    invoke-static {}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$ROTATION;->values()[Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$ROTATION;

    move-result-object v1

    aget-object v1, v1, v0

    return-object v1
.end method

.method public static getEmulationQuality(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 610
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 611
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "general_pref_quality"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static getFastForwardFrameCount(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 135
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 136
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v3, "general_pref_ff_speed"

    const/4 v4, 0x4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 137
    .local v2, "speed":I
    const/4 v1, 0x0

    .line 138
    .local v1, "res":I
    add-int/lit8 v3, v2, 0x1

    mul-int/lit8 v1, v3, 0x2

    .line 139
    return v1
.end method

.method public static getFiltering(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 144
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 145
    .local v1, "pref":Landroid/content/SharedPreferences;
    const-string v3, "general_pref_smoothing"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 146
    .local v0, "isFiltering":Z
    if-eqz v0, :cond_0

    const/16 v2, 0x2601

    .line 147
    .local v2, "res":I
    :goto_0
    return v2

    .line 146
    .end local v2    # "res":I
    :cond_0
    const/16 v2, 0x2600

    goto :goto_0
.end method

.method public static getFragmentShader(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 504
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 505
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v2, "fragment_shader"

    const/4 v3, -0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 506
    .local v1, "shader":I
    return v1
.end method

.method public static getLastAdJSON(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 331
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 332
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "__last_ad_json"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getLastGalleryTab(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 765
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 766
    .local v1, "pref":Landroid/content/SharedPreferences;
    const-string v2, "LastGalleryTab"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 767
    .local v0, "i":I
    return v0
.end method

.method public static getLastGfxProfile(Landroid/content/Context;)Lcom/nostalgiaemulators/framework/GfxProfile;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 674
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 675
    .local v1, "pref":Landroid/content/SharedPreferences;
    const-string v4, "_lastGfx"

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 678
    .local v0, "name":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/nostalgiaemulators/framework/base/EmulatorInfoHolder;->getInfo()Lcom/nostalgiaemulators/framework/EmulatorInfo;

    move-result-object v4

    .line 679
    invoke-interface {v4}, Lcom/nostalgiaemulators/framework/EmulatorInfo;->getAvailableGfxProfiles()Ljava/util/List;

    move-result-object v3

    .line 681
    .local v3, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/nostalgiaemulators/framework/GfxProfile;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_1

    .line 690
    .end local v3    # "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/nostalgiaemulators/framework/GfxProfile;>;"
    :goto_0
    invoke-static {}, Lcom/nostalgiaemulators/framework/base/EmulatorInfoHolder;->getInfo()Lcom/nostalgiaemulators/framework/EmulatorInfo;

    move-result-object v4

    invoke-interface {v4}, Lcom/nostalgiaemulators/framework/EmulatorInfo;->getDefaultGfxProfile()Lcom/nostalgiaemulators/framework/GfxProfile;

    move-result-object v2

    :goto_1
    return-object v2

    .line 681
    .restart local v3    # "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/nostalgiaemulators/framework/GfxProfile;>;"
    :cond_1
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nostalgiaemulators/framework/GfxProfile;

    .line 682
    .local v2, "profile":Lcom/nostalgiaemulators/framework/GfxProfile;
    iget-object v5, v2, Lcom/nostalgiaemulators/framework/GfxProfile;->name:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 687
    .end local v2    # "profile":Lcom/nostalgiaemulators/framework/GfxProfile;
    .end local v3    # "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/nostalgiaemulators/framework/GfxProfile;>;"
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static getPlayStoreAppVersion(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 90
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 91
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v2, "__online_app_version"

    const/4 v3, -0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 92
    .local v1, "res":I
    return v1
.end method

.method public static getRateAppTime(Landroid/content/Context;)J
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 373
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 374
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "__rate_app_time"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 375
    .local v2, "time":J
    return-wide v2
.end method

.method public static getShader(Landroid/content/Context;)Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$Shader;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 750
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 751
    .local v0, "pref":Landroid/content/SharedPreferences;
    invoke-static {p0, v0}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->getShader(Landroid/content/Context;Landroid/content/SharedPreferences;)Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$Shader;

    move-result-object v1

    return-object v1
.end method

.method private static getShader(Landroid/content/Context;Landroid/content/SharedPreferences;)Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$Shader;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pref"    # Landroid/content/SharedPreferences;

    .prologue
    .line 786
    const-string v1, "general_pref_shader"

    const-string v2, "0"

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 787
    .local v0, "i":I
    invoke-static {}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$Shader;->values()[Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$Shader;

    move-result-object v1

    aget-object v1, v1, v0

    return-object v1
.end method

.method public static getSoundVolume(Landroid/content/Context;)F
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 555
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 556
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v2, "general_pref_sound_volume"

    const/16 v3, 0x64

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float v1, v2, v3

    .line 557
    .local v1, "volume":F
    return v1
.end method

.method public static getVibrationDuration(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 596
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 597
    .local v0, "pref":Landroid/content/SharedPreferences;
    invoke-static {p0, v0}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->getVibrationDuration(Landroid/content/Context;Landroid/content/SharedPreferences;)I

    move-result v1

    return v1
.end method

.method private static getVibrationDuration(Landroid/content/Context;Landroid/content/SharedPreferences;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pref"    # Landroid/content/SharedPreferences;

    .prologue
    .line 646
    const-string v0, "game_pref_ui_strong_vibration"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    return v0
.end method

.method private static getVideoMode(Landroid/content/Context;Lcom/nostalgiaemulators/framework/Emulator;Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "emulator"    # Lcom/nostalgiaemulators/framework/Emulator;
    .param p2, "pref"    # Landroid/content/SharedPreferences;

    .prologue
    .line 716
    .line 717
    const-string v0, "game_pref_ui_pal_ntsc_switch"

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 716
    return-object v0
.end method

.method public static getVideoMode(Landroid/content/Context;Lcom/nostalgiaemulators/framework/Emulator;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "emulator"    # Lcom/nostalgiaemulators/framework/Emulator;
    .param p2, "gameHash"    # Ljava/lang/String;

    .prologue
    .line 703
    if-nez p2, :cond_0

    .line 704
    const/4 v1, 0x0

    .line 710
    :goto_0
    return-object v1

    .line 708
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 709
    const-string v2, ".gamepref"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 708
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 710
    .local v0, "pref":Landroid/content/SharedPreferences;
    invoke-static {p0, p1, v0}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->getVideoMode(Landroid/content/Context;Lcom/nostalgiaemulators/framework/Emulator;Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getVideoProfile(Landroid/content/Context;Lcom/nostalgiaemulators/framework/Emulator;Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;)Lcom/nostalgiaemulators/framework/GfxProfile;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "emulator"    # Lcom/nostalgiaemulators/framework/Emulator;
    .param p2, "game"    # Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    .prologue
    .line 651
    iget-object v3, p2, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->checksum:Ljava/lang/String;

    invoke-static {p0, p1, v3}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->getVideoMode(Landroid/content/Context;Lcom/nostalgiaemulators/framework/Emulator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 652
    .local v1, "gfxProfileName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 654
    .local v0, "gfx":Lcom/nostalgiaemulators/framework/GfxProfile;
    if-eqz v1, :cond_1

    .line 655
    invoke-static {}, Lcom/nostalgiaemulators/framework/base/EmulatorInfoHolder;->getInfo()Lcom/nostalgiaemulators/framework/EmulatorInfo;

    move-result-object v3

    .line 656
    invoke-interface {v3}, Lcom/nostalgiaemulators/framework/EmulatorInfo;->getAvailableGfxProfiles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 655
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 665
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    .line 666
    invoke-interface {p1, p2}, Lcom/nostalgiaemulators/framework/Emulator;->autoDetectGfx(Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;)Lcom/nostalgiaemulators/framework/GfxProfile;

    move-result-object v0

    .line 669
    :cond_2
    return-object v0

    .line 656
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nostalgiaemulators/framework/GfxProfile;

    .line 657
    .local v2, "profile":Lcom/nostalgiaemulators/framework/GfxProfile;
    iget-object v4, v2, Lcom/nostalgiaemulators/framework/GfxProfile;->name:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 658
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 657
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 658
    if-eqz v4, :cond_0

    .line 659
    move-object v0, v2

    .line 660
    goto :goto_0
.end method

.method public static getViewPort(Landroid/content/Context;II)Lcom/nostalgiaemulators/framework/base/ViewPort;
    .locals 24
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "physicalScreenWidth"    # I
    .param p2, "physicalScreenHeight"    # I

    .prologue
    .line 430
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 431
    .local v13, "pref":Landroid/content/SharedPreferences;
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "asp"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 433
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v22, v22, v23

    const v23, 0x461c4000    # 10000.0f

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->floor(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    .line 432
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 431
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 434
    .local v15, "tmp":Ljava/lang/String;
    const/high16 v5, 0x3f800000    # 1.0f

    .line 435
    .local v5, "correctionW":F
    const/high16 v4, 0x3f800000    # 1.0f

    .line 437
    .local v4, "correctionH":F
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "vp-version-"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, -0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v21

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    .line 438
    move/from16 v3, p1

    .line 439
    .local v3, "candidateWidth":I
    move/from16 v2, p2

    .line 441
    .local v2, "candidateHeight":I
    invoke-interface {v13}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-nez v22, :cond_3

    .line 469
    :goto_0
    move/from16 v17, v3

    .line 470
    .local v17, "w":I
    move v10, v2

    .line 471
    .local v10, "h":I
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "x"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 474
    .end local v2    # "candidateHeight":I
    .end local v3    # "candidateWidth":I
    .end local v10    # "h":I
    .end local v17    # "w":I
    :cond_1
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "vp-x-"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 475
    .local v19, "x":Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "vp-y-"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 476
    .local v20, "y":Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "vp-width-"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 477
    .local v18, "width":Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "vp-height-"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 478
    .local v11, "height":Ljava/lang/String;
    new-instance v16, Lcom/nostalgiaemulators/framework/base/ViewPort;

    invoke-direct/range {v16 .. v16}, Lcom/nostalgiaemulators/framework/base/ViewPort;-><init>()V

    .line 479
    .local v16, "vp":Lcom/nostalgiaemulators/framework/base/ViewPort;
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "vp-version-"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v16

    iput v0, v1, Lcom/nostalgiaemulators/framework/base/ViewPort;->version:I

    .line 481
    const-string v21, "asp"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_4

    .line 482
    const/16 v21, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v5

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v16

    iput v0, v1, Lcom/nostalgiaemulators/framework/base/ViewPort;->x:I

    .line 483
    const/16 v21, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v4

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v16

    iput v0, v1, Lcom/nostalgiaemulators/framework/base/ViewPort;->y:I

    .line 484
    const/16 v21, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v5

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v16

    iput v0, v1, Lcom/nostalgiaemulators/framework/base/ViewPort;->width:I

    .line 485
    const/16 v21, -0x1

    move/from16 v0, v21

    invoke-interface {v13, v11, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v4

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v16

    iput v0, v1, Lcom/nostalgiaemulators/framework/base/ViewPort;->height:I

    .line 494
    :goto_1
    move-object/from16 v0, v16

    iget v0, v0, Lcom/nostalgiaemulators/framework/base/ViewPort;->x:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/nostalgiaemulators/framework/base/ViewPort;->y:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/nostalgiaemulators/framework/base/ViewPort;->width:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/nostalgiaemulators/framework/base/ViewPort;->height:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_5

    .line 495
    :cond_2
    const/16 v16, 0x0

    .line 499
    .end local v16    # "vp":Lcom/nostalgiaemulators/framework/base/ViewPort;
    :goto_2
    return-object v16

    .line 441
    .end local v11    # "height":Ljava/lang/String;
    .end local v18    # "width":Ljava/lang/String;
    .end local v19    # "x":Ljava/lang/String;
    .end local v20    # "y":Ljava/lang/String;
    .restart local v2    # "candidateHeight":I
    .restart local v3    # "candidateWidth":I
    :cond_3
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 442
    .local v12, "key":Ljava/lang/String;
    if-eqz v12, :cond_0

    const-string v22, "vp-x-"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 443
    const-string v22, "vp-x-"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 445
    .local v14, "resolution":Ljava/lang/String;
    const-string v22, "asp"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_0

    .line 449
    const/16 v22, 0x0

    .line 450
    const-string v23, "x"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v23

    .line 449
    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 452
    .local v9, "fws":Ljava/lang/String;
    const-string v22, "x"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v22

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 453
    .local v7, "fhs":Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 454
    .restart local v17    # "w":I
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 455
    .restart local v10    # "h":I
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v22, v0

    int-to-float v0, v10

    move/from16 v23, v0

    div-float v8, v22, v23

    .line 456
    .local v8, "foundAspect":F
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v22, v0

    .line 457
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v23, v0

    .line 456
    div-float v6, v22, v23

    .line 459
    .local v6, "desiredAspect":F
    sub-float v22, v8, v6

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v22

    const v23, 0x3a83126f    # 0.001f

    cmpg-float v22, v22, v23

    if-gez v22, :cond_0

    .line 460
    move/from16 v3, v17

    .line 461
    move v2, v10

    .line 462
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v5, v21, v22

    .line 463
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v21, v0

    int-to-float v0, v10

    move/from16 v22, v0

    div-float v4, v21, v22

    .line 464
    goto/16 :goto_0

    .line 488
    .end local v2    # "candidateHeight":I
    .end local v3    # "candidateWidth":I
    .end local v6    # "desiredAspect":F
    .end local v7    # "fhs":Ljava/lang/String;
    .end local v8    # "foundAspect":F
    .end local v9    # "fws":Ljava/lang/String;
    .end local v10    # "h":I
    .end local v12    # "key":Ljava/lang/String;
    .end local v14    # "resolution":Ljava/lang/String;
    .end local v17    # "w":I
    .restart local v11    # "height":Ljava/lang/String;
    .restart local v16    # "vp":Lcom/nostalgiaemulators/framework/base/ViewPort;
    .restart local v18    # "width":Ljava/lang/String;
    .restart local v19    # "x":Ljava/lang/String;
    .restart local v20    # "y":Ljava/lang/String;
    :cond_4
    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v21

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v16

    iput v0, v1, Lcom/nostalgiaemulators/framework/base/ViewPort;->x:I

    .line 489
    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v21

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v16

    iput v0, v1, Lcom/nostalgiaemulators/framework/base/ViewPort;->y:I

    .line 490
    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v21

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v16

    iput v0, v1, Lcom/nostalgiaemulators/framework/base/ViewPort;->width:I

    .line 491
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-interface {v13, v11, v0}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v21

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v16

    iput v0, v1, Lcom/nostalgiaemulators/framework/base/ViewPort;->height:I

    goto/16 :goto_1

    .line 498
    :cond_5
    const-string v21, "PreferenceUtil"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "vp "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " loaded"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public static getWorkingDirParent(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 526
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 527
    .local v1, "pref":Landroid/content/SharedPreferences;
    const-string v2, "general_pref_working_dir"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 528
    .local v0, "dir":Ljava/lang/String;
    return-object v0
.end method

.method public static importPreferences(Landroid/content/SharedPreferences;Ljava/io/File;Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$NotFoundHandling;)V
    .locals 13
    .param p0, "pref"    # Landroid/content/SharedPreferences;
    .param p1, "file"    # Ljava/io/File;
    .param p2, "handling"    # Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$NotFoundHandling;

    .prologue
    .line 251
    sget-object v10, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$NotFoundHandling;->IGNORE:Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$NotFoundHandling;

    if-ne p2, v10, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_1

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    const/4 v6, 0x0

    .line 258
    .local v6, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 259
    .local v5, "r":Ljava/io/FileReader;
    new-instance v7, Ljava/io/BufferedReader;

    invoke-direct {v7, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .local v7, "reader":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 261
    .local v2, "line":Ljava/lang/String;
    :try_start_1
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 263
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    :cond_2
    :goto_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 305
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 311
    if-eqz v7, :cond_0

    .line 313
    :try_start_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 315
    :catch_0
    move-exception v10

    goto :goto_0

    .line 264
    :cond_3
    :try_start_3
    const-string v10, "\\|"

    invoke-virtual {v2, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 265
    .local v4, "parts":[Ljava/lang/String;
    const/4 v10, 0x0

    aget-object v8, v4, v10

    .line 266
    .local v8, "type":Ljava/lang/String;
    const/4 v10, 0x1

    aget-object v3, v4, v10

    .line 267
    .local v3, "name":Ljava/lang/String;
    sget-object v10, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->escapedI:Ljava/lang/String;

    const-string v11, "|"

    invoke-virtual {v3, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 268
    const/4 v10, 0x2

    aget-object v9, v4, v10

    .line 269
    .local v9, "value":Ljava/lang/String;
    const-string v10, "IMPORT"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, " --> "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    sget-object v10, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->escapedNull:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 272
    const/4 v9, 0x0

    .line 275
    :cond_4
    const-string v10, "I"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 276
    if-eqz v9, :cond_b

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 277
    :goto_2
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 276
    invoke-interface {v1, v3, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 280
    :cond_5
    const-string v10, "B"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 282
    if-eqz v9, :cond_c

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    :goto_3
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 281
    invoke-interface {v1, v3, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 285
    :cond_6
    const-string v10, "F"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 287
    if-eqz v9, :cond_d

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    :goto_4
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    .line 286
    invoke-interface {v1, v3, v10}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 290
    :cond_7
    const-string v10, "L"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 291
    if-eqz v9, :cond_e

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 292
    :goto_5
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 291
    invoke-interface {v1, v3, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 295
    :cond_8
    const-string v10, "S"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 296
    if-eqz v9, :cond_9

    .line 297
    sget-object v10, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->escapedI:Ljava/lang/String;

    const-string v11, "|"

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 298
    sget-object v10, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->escapedN:Ljava/lang/String;

    const-string v11, "\n"

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 301
    :cond_9
    invoke-interface {v1, v3, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_1

    .line 307
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "parts":[Ljava/lang/String;
    .end local v8    # "type":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object v6, v7

    .line 308
    .end local v2    # "line":Ljava/lang/String;
    .end local v5    # "r":Ljava/io/FileReader;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :goto_6
    :try_start_4
    new-instance v10, Ljava/lang/RuntimeException;

    invoke-direct {v10, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 310
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    .line 311
    :goto_7
    if-eqz v6, :cond_a

    .line 313
    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 318
    :cond_a
    :goto_8
    throw v10

    .line 277
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v4    # "parts":[Ljava/lang/String;
    .restart local v5    # "r":Ljava/io/FileReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "type":Ljava/lang/String;
    .restart local v9    # "value":Ljava/lang/String;
    :cond_b
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 282
    :cond_c
    const/4 v10, 0x0

    goto :goto_3

    .line 287
    :cond_d
    const/4 v10, 0x0

    goto :goto_4

    .line 292
    :cond_e
    const/4 v10, 0x0

    goto :goto_5

    .line 315
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "parts":[Ljava/lang/String;
    .end local v5    # "r":Ljava/io/FileReader;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .end local v8    # "type":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v11

    goto :goto_8

    .line 310
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v5    # "r":Ljava/io/FileReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v10

    move-object v6, v7

    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    goto :goto_7

    .line 307
    .end local v2    # "line":Ljava/lang/String;
    .end local v5    # "r":Ljava/io/FileReader;
    :catch_3
    move-exception v0

    goto :goto_6
.end method

.method public static isABButtonEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 622
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 623
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "general_pref_ab_button"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static isAutoHideControls(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 640
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 641
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "general_pref_ui_autohide"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static isBatterySaveBugFixed(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 69
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "bs_bug_fixed"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static isBenchmarked(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 582
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 583
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "is_benchmarked"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static isDynamicDPADEnable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 839
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 840
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "general_pref_ddpad"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static isDynamicDPADUsed(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 861
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 862
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "general_pref_ddpad_used"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static isFastForwardEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 895
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 896
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "general_pref_fastforward"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static isFastForwardToggleable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 913
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 914
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "general_pref_fastforward_toggle"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static isFastForwardUsed(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 867
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 868
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "general_pref_fastforward_used"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static isFullScreenEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 628
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 629
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "general_pref_fullscreen"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static isImmersiveModeEnabled(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 62
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v2, "general_pref_immersive_mode"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 63
    .local v1, "res":Z
    return v1
.end method

.method public static isLoadSavFiles(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 570
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 571
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "general_pref_load_sav_files"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static isOpenGLEnable(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 827
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 828
    .local v0, "pref":Landroid/content/SharedPreferences;
    invoke-static {p0, v0}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->isOpenGLEnable(Landroid/content/Context;Landroid/content/SharedPreferences;)Z

    move-result v1

    return v1
.end method

.method private static isOpenGLEnable(Landroid/content/Context;Landroid/content/SharedPreferences;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pref"    # Landroid/content/SharedPreferences;

    .prologue
    .line 833
    const-string v0, "general_pref_opengl"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isQuickSaveEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 129
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 130
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "general_pref_quicksave"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static isSaveSavFiles(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 576
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 577
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "general_pref_save_sav_files"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static isScreenLayoutUsed(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 881
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 882
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "general_pref_screen_layout_used"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static isScreenSettingsSaved(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 901
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 903
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 908
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 903
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 904
    .local v0, "key":Ljava/lang/String;
    const-string v3, "vp-"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 905
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isSoundEnabled(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 519
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 520
    .local v1, "pref":Landroid/content/SharedPreferences;
    const-string v3, "general_pref_mute"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 521
    .local v0, "muted":Z
    if-eqz v0, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static isTimeshiftEnable(Landroid/content/Context;Landroid/content/SharedPreferences;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pref"    # Landroid/content/SharedPreferences;

    .prologue
    .line 798
    const-string v0, "game_pref_ui_timeshift"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isTimeshiftEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 792
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 793
    .local v0, "pref":Landroid/content/SharedPreferences;
    invoke-static {p0, v0}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->isTimeshiftEnable(Landroid/content/Context;Landroid/content/SharedPreferences;)Z

    move-result v1

    return v1
.end method

.method public static isTurboEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 616
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 617
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "general_pref_turbo"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static isWifiServerEnable(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 803
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 804
    .local v0, "pref":Landroid/content/SharedPreferences;
    invoke-static {p0, v0}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->isWifiServerEnable(Landroid/content/Context;Landroid/content/SharedPreferences;)Z

    move-result v1

    return v1
.end method

.method private static isWifiServerEnable(Landroid/content/Context;Landroid/content/SharedPreferences;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pref"    # Landroid/content/SharedPreferences;

    .prologue
    .line 809
    const-string v0, "general_pref_wifi_server_enable"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isWorkingDirCopyContent(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 549
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 550
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "general_pref_working_dir_copy_content"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private static isZapperEnable(Landroid/content/Context;Landroid/content/SharedPreferences;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pref"    # Landroid/content/SharedPreferences;

    .prologue
    .line 728
    const-string v0, "game_pref_zapper"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isZapperEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gameHash"    # Ljava/lang/String;

    .prologue
    .line 721
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 722
    const-string v2, ".gamepref"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 721
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 723
    .local v0, "pref":Landroid/content/SharedPreferences;
    invoke-static {p0, v0}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->isZapperEnable(Landroid/content/Context;Landroid/content/SharedPreferences;)Z

    move-result v1

    return v1
.end method

.method public static lastUseSystemFont(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 351
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 352
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "__last_use_system_font"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static migratePreferences(ILandroid/content/SharedPreferences;Ljava/io/File;)V
    .locals 1
    .param p0, "type"    # I
    .param p1, "pref"    # Landroid/content/SharedPreferences;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 152
    sget-object v0, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$NotFoundHandling;->FAIL:Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$NotFoundHandling;

    invoke-static {p0, p1, p2, v0}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->migratePreferences(ILandroid/content/SharedPreferences;Ljava/io/File;Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$NotFoundHandling;)V

    .line 153
    return-void
.end method

.method public static migratePreferences(ILandroid/content/SharedPreferences;Ljava/io/File;Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$NotFoundHandling;)V
    .locals 1
    .param p0, "type"    # I
    .param p1, "pref"    # Landroid/content/SharedPreferences;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "handling"    # Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$NotFoundHandling;

    .prologue
    .line 172
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 173
    invoke-static {p1, p2}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->exportPreferences(Landroid/content/SharedPreferences;Ljava/io/File;)V

    .line 180
    :goto_0
    return-void

    .line 175
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 176
    invoke-static {p1, p2, p3}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->importPreferences(Landroid/content/SharedPreferences;Ljava/io/File;Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$NotFoundHandling;)V

    goto :goto_0

    .line 179
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static printPreferences(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 927
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 929
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 933
    return-void

    .line 929
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 930
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    const-string v4, "PreferenceUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " --> "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 931
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 930
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static removeViewPortSave(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 412
    const-string v3, ""

    const-string v4, "removing view port save!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 415
    .local v2, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 417
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 423
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 424
    return-void

    .line 417
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 418
    .local v1, "key":Ljava/lang/String;
    const-string v4, "vp-"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 419
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public static saveLastGalleryTab(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tabIdx"    # I

    .prologue
    .line 773
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 774
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 775
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "LastGalleryTab"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 776
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 777
    return-void
.end method

.method public static setBatterySaveBugFixed(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 75
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 76
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "bs_bug_fixed"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 77
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 78
    return-void
.end method

.method public static setBenchmarked(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # Z

    .prologue
    .line 588
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 589
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 590
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v2, "is_benchmarked"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 591
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 592
    return-void
.end method

.method public static setControllerLayoutTimestamp(Landroid/content/Context;J)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # J

    .prologue
    .line 164
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 165
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 166
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v2, "general_cl_timestamp"

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 167
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 168
    return-void
.end method

.method public static setDefaultShader(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 756
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 757
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 758
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "general_pref_shader"

    const-string v3, "0"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 759
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 760
    return-void
.end method

.method public static setDynamicDPADEnable(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .prologue
    .line 845
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 846
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 847
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "general_pref_ddpad"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 848
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 849
    return-void
.end method

.method public static setDynamicDPADUsed(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "used"    # Z

    .prologue
    .line 853
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 854
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 855
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "general_pref_ddpad_used"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 856
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 857
    return-void
.end method

.method public static setEmulationQuality(Landroid/content/Context;I)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "quality"    # I

    .prologue
    .line 602
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 603
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 604
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v2, "general_pref_quality"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 605
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 606
    return-void
.end method

.method public static setFastForwardEnable(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .prologue
    .line 919
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 920
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 921
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "general_pref_fastforward"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 922
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 923
    return-void
.end method

.method public static setFastForwardUsed(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "used"    # Z

    .prologue
    .line 873
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 874
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 875
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "general_pref_fastforward_used"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 876
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 877
    return-void
.end method

.method public static setFragmentShader(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shader"    # I

    .prologue
    .line 511
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 512
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 513
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "fragment_shader"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 514
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 515
    return-void
.end method

.method public static setLastAdJSON(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 323
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 324
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 325
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "__last_ad_json"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 326
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 327
    return-void
.end method

.method public static setLastGfxProfile(Landroid/content/Context;Lcom/nostalgiaemulators/framework/GfxProfile;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "profile"    # Lcom/nostalgiaemulators/framework/GfxProfile;

    .prologue
    .line 695
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 696
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 697
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v2, "_lastGfx"

    iget-object v3, p1, Lcom/nostalgiaemulators/framework/GfxProfile;->name:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 698
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 699
    return-void
.end method

.method public static setLastUseSystemFont(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # Z

    .prologue
    .line 357
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 358
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 359
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "__last_use_system_font"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 360
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 361
    return-void
.end method

.method public static setNewVersionCheckTime(Landroid/content/Context;J)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "timeInMillis"    # J

    .prologue
    .line 97
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 98
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 99
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "__new_version_check_time"

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 100
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 101
    return-void
.end method

.method public static setPlayStoreAppVersion(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "versionCode"    # I

    .prologue
    .line 82
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 83
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 84
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "__online_app_version"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 85
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 86
    return-void
.end method

.method public static setRateAppTime(Landroid/content/Context;J)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time"    # J

    .prologue
    .line 365
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 366
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 367
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "__rate_app_time"

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 368
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 369
    return-void
.end method

.method public static setRemindTime(Landroid/content/Context;J)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "timeInMillis"    # J

    .prologue
    .line 121
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 122
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 123
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "__remind_time"

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 124
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 125
    return-void
.end method

.method public static setScreenLayoutUsed(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "used"    # Z

    .prologue
    .line 887
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 888
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 889
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "general_pref_screen_layout_used"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 890
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 891
    return-void
.end method

.method public static setSoundVolume(Landroid/content/Context;F)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "volume"    # F

    .prologue
    .line 562
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 563
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 564
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "general_pref_sound_volume"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 565
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 566
    return-void
.end method

.method public static setUseSystemFont(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # Z

    .prologue
    .line 343
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 344
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 345
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "general_pref_use_system_font"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 346
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 347
    return-void
.end method

.method public static setViewPort(Landroid/content/Context;Lcom/nostalgiaemulators/framework/base/ViewPort;II)V
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "vp"    # Lcom/nostalgiaemulators/framework/base/ViewPort;
    .param p2, "physicalScreenWidth"    # I
    .param p3, "physicalScreenHeight"    # I

    .prologue
    .line 381
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 382
    .local v6, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 383
    .local v2, "edit":Landroid/content/SharedPreferences$Editor;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 385
    .local v5, "oldTmp":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "vp-x-"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, -0x1

    invoke-interface {v6, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_1

    .line 386
    invoke-interface {v6}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_2

    .line 393
    :cond_1
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "asp"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 395
    move/from16 v0, p2

    int-to-float v13, v0

    move/from16 v0, p3

    int-to-float v14, v0

    div-float/2addr v13, v14

    const v14, 0x461c4000    # 10000.0f

    mul-float/2addr v13, v14

    float-to-double v14, v13

    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    move-result-wide v14

    double-to-int v13, v14

    .line 394
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 393
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 396
    .local v7, "tmp":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "vp-x-"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 397
    .local v10, "x":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "vp-y-"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 398
    .local v11, "y":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "vp-width-"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 399
    .local v9, "width":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "vp-height-"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 400
    .local v3, "height":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "vp-version-"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 401
    .local v8, "version":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v12, v0, Lcom/nostalgiaemulators/framework/base/ViewPort;->x:I

    int-to-float v12, v12

    move/from16 v0, p2

    int-to-float v13, v0

    div-float/2addr v12, v13

    invoke-interface {v2, v10, v12}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 402
    move-object/from16 v0, p1

    iget v12, v0, Lcom/nostalgiaemulators/framework/base/ViewPort;->y:I

    int-to-float v12, v12

    move/from16 v0, p3

    int-to-float v13, v0

    div-float/2addr v12, v13

    invoke-interface {v2, v11, v12}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 403
    move-object/from16 v0, p1

    iget v12, v0, Lcom/nostalgiaemulators/framework/base/ViewPort;->width:I

    int-to-float v12, v12

    move/from16 v0, p2

    int-to-float v13, v0

    div-float/2addr v12, v13

    invoke-interface {v2, v9, v12}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 404
    move-object/from16 v0, p1

    iget v12, v0, Lcom/nostalgiaemulators/framework/base/ViewPort;->height:I

    int-to-float v12, v12

    move/from16 v0, p3

    int-to-float v13, v0

    div-float/2addr v12, v13

    invoke-interface {v2, v3, v12}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 405
    move-object/from16 v0, p1

    iget v12, v0, Lcom/nostalgiaemulators/framework/base/ViewPort;->version:I

    invoke-interface {v2, v8, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 406
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 407
    const-string v12, "PreferenceUtil"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "vp "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " saved"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    return-void

    .line 386
    .end local v3    # "height":Ljava/lang/String;
    .end local v7    # "tmp":Ljava/lang/String;
    .end local v8    # "version":Ljava/lang/String;
    .end local v9    # "width":Ljava/lang/String;
    .end local v10    # "x":Ljava/lang/String;
    .end local v11    # "y":Ljava/lang/String;
    :cond_2
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 387
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 388
    invoke-interface {v2, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0
.end method

.method private static setWifiServerEnable(Landroid/content/Context;Landroid/content/SharedPreferences;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pref"    # Landroid/content/SharedPreferences;
    .param p2, "enable"    # Z

    .prologue
    .line 820
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 821
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v1, "general_pref_wifi_server_enable"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 822
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 823
    return-void
.end method

.method public static setWifiServerEnable(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .prologue
    .line 814
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 815
    .local v0, "pref":Landroid/content/SharedPreferences;
    invoke-static {p0, v0, p1}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->setWifiServerEnable(Landroid/content/Context;Landroid/content/SharedPreferences;Z)V

    .line 816
    return-void
.end method

.method public static setWorkingDirCopyContent(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "copy"    # Z

    .prologue
    .line 541
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 542
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 543
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "general_pref_working_dir_copy_content"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 544
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 545
    return-void
.end method

.method public static setWorkingDirParent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dir"    # Ljava/lang/String;

    .prologue
    .line 533
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 534
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 535
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "general_pref_working_dir"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 536
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 537
    return-void
.end method

.method public static useSystemFont(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 337
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 338
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "general_pref_use_system_font"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method
