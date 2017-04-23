.class public final Lu/aly/aq;
.super Ljava/lang/Object;
.source "CacheImpl.java"

# interfaces
.implements Lu/aly/au;
.implements Lu/aly/az;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/aly/aq$a;
    }
.end annotation


# static fields
.field private static j:Landroid/content/Context; = null

.field private static final q:Ljava/lang/String; = "thtstart"

.field private static final r:Ljava/lang/String; = "gkvc"

.field private static final s:Ljava/lang/String; = "ekvc"


# instance fields
.field a:Ljava/lang/String;

.field private b:Lu/aly/cb;

.field private c:Lu/aly/be;

.field private d:Lu/aly/bh;

.field private e:Lu/aly/bg;

.field private f:Lu/aly/bi;

.field private g:Lu/aly/aq$a;

.field private h:Lu/aly/af$a;

.field private i:J

.field private k:I

.field private l:Lorg/json/JSONArray;

.field private final m:I

.field private n:I

.field private o:I

.field private p:J

.field private final t:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object v4, p0, Lu/aly/aq;->b:Lu/aly/cb;

    .line 51
    iput-object v4, p0, Lu/aly/aq;->c:Lu/aly/be;

    .line 52
    iput-object v4, p0, Lu/aly/aq;->d:Lu/aly/bh;

    .line 53
    iput-object v4, p0, Lu/aly/aq;->e:Lu/aly/bg;

    .line 54
    iput-object v4, p0, Lu/aly/aq;->f:Lu/aly/bi;

    .line 55
    iput-object v4, p0, Lu/aly/aq;->g:Lu/aly/aq$a;

    .line 56
    iput-object v4, p0, Lu/aly/aq;->h:Lu/aly/af$a;

    .line 57
    iput-wide v2, p0, Lu/aly/aq;->i:J

    .line 59
    iput-object v4, p0, Lu/aly/aq;->a:Ljava/lang/String;

    .line 61
    const/16 v0, 0xa

    iput v0, p0, Lu/aly/aq;->k:I

    .line 63
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lu/aly/aq;->l:Lorg/json/JSONArray;

    .line 65
    const/16 v0, 0x1388

    iput v0, p0, Lu/aly/aq;->m:I

    .line 66
    iput v5, p0, Lu/aly/aq;->n:I

    .line 67
    iput v5, p0, Lu/aly/aq;->o:I

    .line 68
    iput-wide v2, p0, Lu/aly/aq;->p:J

    .line 72
    const-wide/32 v0, 0x1b77400

    iput-wide v0, p0, Lu/aly/aq;->t:J

    .line 75
    sput-object p1, Lu/aly/aq;->j:Landroid/content/Context;

    .line 76
    new-instance v0, Lu/aly/be;

    invoke-direct {v0, p1}, Lu/aly/be;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lu/aly/aq;->c:Lu/aly/be;

    .line 78
    invoke-static {p1}, Lu/aly/cb;->a(Landroid/content/Context;)Lu/aly/cb;

    move-result-object v0

    iput-object v0, p0, Lu/aly/aq;->b:Lu/aly/cb;

    .line 79
    invoke-static {p1}, Lu/aly/af;->a(Landroid/content/Context;)Lu/aly/af;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/af;->b()Lu/aly/af$a;

    move-result-object v0

    iput-object v0, p0, Lu/aly/aq;->h:Lu/aly/af$a;

    .line 81
    new-instance v0, Lu/aly/aq$a;

    invoke-direct {v0, p0}, Lu/aly/aq$a;-><init>(Lu/aly/aq;)V

    iput-object v0, p0, Lu/aly/aq;->g:Lu/aly/aq$a;

    .line 83
    sget-object v0, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/bg;->a(Landroid/content/Context;)Lu/aly/bg;

    move-result-object v0

    iput-object v0, p0, Lu/aly/aq;->e:Lu/aly/bg;

    .line 84
    sget-object v0, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/bh;->a(Landroid/content/Context;)Lu/aly/bh;

    move-result-object v0

    iput-object v0, p0, Lu/aly/aq;->d:Lu/aly/bh;

    .line 85
    sget-object v0, Lu/aly/aq;->j:Landroid/content/Context;

    iget-object v1, p0, Lu/aly/aq;->c:Lu/aly/be;

    invoke-static {v0, v1}, Lu/aly/bi;->a(Landroid/content/Context;Lu/aly/be;)Lu/aly/bi;

    move-result-object v0

    iput-object v0, p0, Lu/aly/aq;->f:Lu/aly/bi;

    .line 86
    sget-object v0, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/ba;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 87
    const-string v1, "thtstart"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lu/aly/aq;->p:J

    .line 88
    const-string v1, "gkvc"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lu/aly/aq;->n:I

    .line 89
    const-string v1, "ekvc"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lu/aly/aq;->o:I

    .line 91
    sget-object v0, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/af;->a(Landroid/content/Context;)Lu/aly/af;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/af;->b()Lu/aly/af$a;

    move-result-object v0

    invoke-virtual {v0, v4}, Lu/aly/af$a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lu/aly/aq;->a:Ljava/lang/String;

    .line 92
    return-void
.end method

.method static synthetic a(Lu/aly/aq;)Lu/aly/af$a;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lu/aly/aq;->h:Lu/aly/af$a;

    return-object v0
.end method

.method private a(I)V
    .locals 4

    .prologue
    .line 166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lu/aly/aq;->c:Lu/aly/be;

    invoke-virtual {v2}, Lu/aly/be;->m()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 167
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-virtual {p0, v1}, Lu/aly/aq;->a([I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lu/aly/aq;->c(Lorg/json/JSONObject;)V

    .line 168
    new-instance v0, Lu/aly/aq$1;

    invoke-direct {v0, p0}, Lu/aly/aq$1;-><init>(Lu/aly/aq;)V

    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Lu/aly/by;->a(Ljava/lang/Runnable;J)V

    .line 175
    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 577
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    const-string p2, "0"

    .line 580
    :cond_0
    const-string v0, "$pr_ve"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 582
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 583
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    .line 584
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p3

    .line 586
    :cond_1
    const-string v0, "$ud_da"

    invoke-virtual {p1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 587
    return-void
.end method

.method static synthetic a(Lu/aly/aq;I)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lu/aly/aq;->b(I)V

    return-void
.end method

.method private a(Z)Z
    .locals 1

    .prologue
    .line 615
    sget-object v0, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/bu;->l(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 616
    const-string v0, "network is unavailable"

    invoke-static {v0}, Lu/aly/bx;->e(Ljava/lang/String;)V

    .line 617
    const/4 v0, 0x0

    .line 623
    :goto_0
    return v0

    .line 620
    :cond_0
    iget-object v0, p0, Lu/aly/aq;->c:Lu/aly/be;

    invoke-virtual {v0}, Lu/aly/be;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 621
    const/4 v0, 0x1

    goto :goto_0

    .line 623
    :cond_1
    iget-object v0, p0, Lu/aly/aq;->g:Lu/aly/aq$a;

    invoke-virtual {v0, p1}, Lu/aly/aq$a;->b(Z)Lu/aly/bz$h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lu/aly/bz$h;->a(Z)Z

    move-result v0

    goto :goto_0
.end method

.method private a(Landroid/content/SharedPreferences$Editor;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    .prologue
    .line 560
    const-string v0, "pre_version"

    const-string v1, ""

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 561
    const-string v0, "pre_date"

    const-string v1, ""

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 562
    const-string v1, "cur_version"

    const-string v3, ""

    invoke-interface {p2, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 563
    sget-object v3, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v3}, Lu/aly/bu;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 564
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 566
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v0, v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    .line 567
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 568
    const-string v2, "pre_version"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 569
    const-string v2, "pre_date"

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 570
    const-string v2, "cur_version"

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 571
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 573
    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object v0, v2, v1

    return-object v2

    :cond_0
    move-object v1, v2

    goto :goto_0
.end method

.method static synthetic b(Lu/aly/aq;)Lu/aly/bh;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lu/aly/aq;->d:Lu/aly/bh;

    return-object v0
.end method

.method private b(I)V
    .locals 0

    .prologue
    .line 671
    invoke-direct {p0, p1}, Lu/aly/aq;->a(I)V

    .line 672
    return-void
.end method

.method private b(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 134
    const/16 v0, 0x802

    :try_start_0
    const-string v1, "__t"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 135
    iget v0, p0, Lu/aly/aq;->n:I

    invoke-direct {p0, v0}, Lu/aly/aq;->c(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    iget v0, p0, Lu/aly/aq;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lu/aly/aq;->n:I

    .line 146
    :cond_2
    :goto_1
    iget-object v0, p0, Lu/aly/aq;->l:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    iget v1, p0, Lu/aly/aq;->k:I

    if-le v0, v1, :cond_3

    .line 147
    sget-object v0, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/w;->a(Landroid/content/Context;)Lu/aly/w;

    move-result-object v0

    iget-object v1, p0, Lu/aly/aq;->l:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Lu/aly/w;->a(Lorg/json/JSONArray;)V

    .line 148
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lu/aly/aq;->l:Lorg/json/JSONArray;

    .line 150
    :cond_3
    iget-wide v0, p0, Lu/aly/aq;->p:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lu/aly/aq;->p:J

    .line 153
    :cond_4
    iget-object v0, p0, Lu/aly/aq;->l:Lorg/json/JSONArray;

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 154
    :catch_0
    move-exception v0

    goto :goto_0

    .line 139
    :cond_5
    const/16 v0, 0x801

    const-string v1, "__t"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 140
    iget v0, p0, Lu/aly/aq;->o:I

    invoke-direct {p0, v0}, Lu/aly/aq;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget v0, p0, Lu/aly/aq;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lu/aly/aq;->o:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method static synthetic c()Landroid/content/Context;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lu/aly/aq;->j:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lu/aly/aq;)Lu/aly/be;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lu/aly/aq;->c:Lu/aly/be;

    return-object v0
.end method

.method private c(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 185
    if-nez p1, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    :try_start_0
    sget-object v0, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/ad;->a(Landroid/content/Context;)Lu/aly/ad;

    move-result-object v1

    .line 189
    invoke-virtual {v1}, Lu/aly/ad;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :try_start_1
    invoke-virtual {v1}, Lu/aly/ad;->b()Lu/aly/bm;

    move-result-object v0

    .line 192
    new-instance v2, Lu/aly/co;

    invoke-direct {v2}, Lu/aly/co;-><init>()V

    invoke-virtual {v2, v0}, Lu/aly/co;->a(Lu/aly/cf;)[B

    move-result-object v0

    .line 193
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 194
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 195
    const-string v2, "header"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 196
    const-string v3, "id_tracking"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 197
    const-string v0, "header"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 201
    :cond_2
    :goto_1
    :try_start_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 202
    if-eqz v0, :cond_0

    .line 204
    sget-object v2, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v2, v0}, Lu/aly/bs;->a(Landroid/content/Context;[B)Z

    move-result v2

    if-nez v2, :cond_0

    .line 208
    invoke-direct {p0}, Lu/aly/aq;->e()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 209
    sget-object v2, Lu/aly/aq;->j:Landroid/content/Context;

    sget-object v3, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/analytics/AnalyticsConfig;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lu/aly/aa;->b(Landroid/content/Context;Ljava/lang/String;[B)Lu/aly/aa;

    move-result-object v0

    .line 213
    :goto_2
    invoke-virtual {v0}, Lu/aly/aa;->c()[B

    move-result-object v0

    .line 214
    sget-object v2, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v2}, Lu/aly/cb;->a(Landroid/content/Context;)Lu/aly/cb;

    move-result-object v2

    .line 215
    invoke-virtual {v2}, Lu/aly/cb;->g()V

    .line 216
    invoke-virtual {v2, v0}, Lu/aly/cb;->a([B)V

    .line 217
    invoke-virtual {v1}, Lu/aly/ad;->d()V

    goto :goto_0

    .line 218
    :catch_0
    move-exception v0

    goto :goto_0

    .line 211
    :cond_3
    sget-object v2, Lu/aly/aq;->j:Landroid/content/Context;

    sget-object v3, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/analytics/AnalyticsConfig;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lu/aly/aa;->a(Landroid/content/Context;Ljava/lang/String;[B)Lu/aly/aa;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    goto :goto_2

    .line 199
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private c(I)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 832
    iget-wide v2, p0, Lu/aly/aq;->p:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 837
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 838
    iget-wide v4, p0, Lu/aly/aq;->p:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x1b77400

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 839
    invoke-direct {p0}, Lu/aly/aq;->f()V

    .line 849
    :cond_0
    :goto_0
    return v0

    .line 842
    :cond_1
    const/16 v1, 0x1388

    if-le p1, v1, :cond_0

    .line 843
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lu/aly/aq;)Lu/aly/bi;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lu/aly/aq;->f:Lu/aly/bi;

    return-object v0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 628
    :try_start_0
    iget-object v0, p0, Lu/aly/aq;->b:Lu/aly/cb;

    invoke-virtual {v0}, Lu/aly/cb;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 629
    new-instance v0, Lu/aly/bc;

    sget-object v1, Lu/aly/aq;->j:Landroid/content/Context;

    iget-object v2, p0, Lu/aly/aq;->c:Lu/aly/be;

    invoke-direct {v0, v1, v2}, Lu/aly/bc;-><init>(Landroid/content/Context;Lu/aly/be;)V

    .line 630
    invoke-virtual {v0, p0}, Lu/aly/bc;->a(Lu/aly/az;)V

    .line 631
    iget-object v1, p0, Lu/aly/aq;->d:Lu/aly/bh;

    invoke-virtual {v1}, Lu/aly/bh;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 632
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lu/aly/bc;->b(Z)V

    .line 634
    :cond_0
    invoke-virtual {v0}, Lu/aly/bc;->a()V

    .line 655
    :cond_1
    :goto_0
    return-void

    .line 636
    :cond_2
    const/4 v0, 0x0

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Lu/aly/aq;->a([I)Lorg/json/JSONObject;

    move-result-object v0

    .line 637
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 641
    new-instance v1, Lu/aly/bc;

    sget-object v2, Lu/aly/aq;->j:Landroid/content/Context;

    iget-object v3, p0, Lu/aly/aq;->c:Lu/aly/be;

    invoke-direct {v1, v2, v3}, Lu/aly/bc;-><init>(Landroid/content/Context;Lu/aly/be;)V

    .line 642
    invoke-virtual {v1, p0}, Lu/aly/bc;->a(Lu/aly/az;)V

    .line 643
    iget-object v2, p0, Lu/aly/aq;->d:Lu/aly/bh;

    invoke-virtual {v2}, Lu/aly/bh;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 644
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lu/aly/bc;->b(Z)V

    .line 646
    :cond_3
    invoke-virtual {v1, v0}, Lu/aly/bc;->a(Lorg/json/JSONObject;)V

    .line 647
    invoke-direct {p0}, Lu/aly/aq;->e()Z

    move-result v0

    invoke-virtual {v1, v0}, Lu/aly/bc;->a(Z)V

    .line 648
    invoke-virtual {v1}, Lu/aly/bc;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 650
    :catch_0
    move-exception v0

    .line 651
    if-eqz v0, :cond_1

    .line 652
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private d(Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 553
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 554
    sget-object v1, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/bg;->a(Landroid/content/Context;)Lu/aly/bg;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/bg;->f()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v2}, Lu/aly/bg;->a(Landroid/content/Context;)Lu/aly/bg;

    move-result-object v2

    invoke-virtual {v2}, Lu/aly/bg;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 555
    const-string v1, "group_info"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 556
    return-void
.end method

.method static synthetic e(Lu/aly/aq;)Lu/aly/bg;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lu/aly/aq;->e:Lu/aly/bg;

    return-object v0
.end method

.method private e()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 658
    iget-object v1, p0, Lu/aly/aq;->h:Lu/aly/af$a;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lu/aly/af$a;->c(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 666
    :goto_0
    :pswitch_0
    return v0

    .line 660
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 664
    :pswitch_2
    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->sEncrypt:Z

    goto :goto_0

    .line 658
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private f()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 875
    iput v0, p0, Lu/aly/aq;->n:I

    .line 876
    iput v0, p0, Lu/aly/aq;->o:I

    .line 877
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lu/aly/aq;->p:J

    .line 878
    return-void
.end method


# virtual methods
.method protected varargs a([I)Lorg/json/JSONObject;
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 224
    .line 226
    :try_start_0
    sget-object v0, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    const-string v0, "Appkey is missing ,Please check AndroidManifest.xml"

    invoke-static {v0}, Lu/aly/bx;->e(Ljava/lang/String;)V

    move-object v0, v1

    .line 549
    :cond_0
    :goto_0
    return-object v0

    .line 231
    :cond_1
    sget-object v0, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lu/aly/aq;->a(Landroid/content/Context;)V

    .line 240
    sget-object v0, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/w;->a(Landroid/content/Context;)Lu/aly/w;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/w;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 241
    if-nez v0, :cond_2

    .line 242
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4

    .line 250
    :cond_2
    :try_start_1
    const-string v2, "body"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    move-object v3, v2

    .line 254
    :goto_1
    :try_start_2
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 258
    sget-object v2, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v2}, Lu/aly/ba;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 259
    if-eqz v2, :cond_3

    .line 260
    const-string v5, "userlevel"

    const-string v6, ""

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 261
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 262
    const-string v6, "userlevel"

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 268
    :cond_3
    iget-object v5, p0, Lu/aly/aq;->c:Lu/aly/be;

    invoke-virtual {v5}, Lu/aly/be;->f()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 269
    iget-wide v6, p0, Lu/aly/aq;->i:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_4

    .line 270
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 271
    const-string v6, "ts"

    iget-wide v8, p0, Lu/aly/aq;->i:J

    invoke-virtual {v5, v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 272
    const-string v6, "activate_msg"

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 273
    const-string v6, "activate_msg"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 280
    :cond_4
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 281
    sget-object v6, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v6}, Lu/aly/m;->a(Landroid/content/Context;)Lu/aly/m;

    move-result-object v6

    invoke-virtual {v6}, Lu/aly/m;->b()Lorg/json/JSONObject;

    move-result-object v6

    .line 282
    if-eqz v6, :cond_5

    .line 283
    invoke-virtual {v6}, Lorg/json/JSONObject;->length()I

    move-result v7

    if-lez v7, :cond_5

    .line 284
    const-string v7, "ag"

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 288
    :cond_5
    sget-object v6, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v6}, Lu/aly/m;->a(Landroid/content/Context;)Lu/aly/m;

    move-result-object v6

    invoke-virtual {v6}, Lu/aly/m;->c()Lorg/json/JSONObject;

    move-result-object v6

    .line 289
    if-eqz v6, :cond_6

    .line 290
    invoke-virtual {v6}, Lorg/json/JSONObject;->length()I

    move-result v7

    if-lez v7, :cond_6

    .line 291
    const-string v7, "ve_meta"

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 294
    :cond_6
    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v6

    if-lez v6, :cond_7

    .line 295
    const-string v6, "cc"

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 296
    const-string v6, "cc"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 301
    :cond_7
    sget-object v5, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v5}, Lcom/umeng/analytics/c;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v5

    .line 302
    if-eqz v5, :cond_8

    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    const/4 v6, 0x1

    aget-object v6, v5, v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 303
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 304
    const-string v7, "provider"

    const/4 v8, 0x0

    aget-object v8, v5, v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 305
    const-string v7, "puid"

    const/4 v8, 0x1

    aget-object v5, v5, v8

    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 306
    invoke-virtual {v6}, Lorg/json/JSONObject;->length()I

    move-result v5

    if-lez v5, :cond_8

    .line 307
    const-string v5, "active_user"

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 308
    const-string v5, "active_user"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 314
    :cond_8
    sget-object v5, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v5}, Lu/aly/bg;->a(Landroid/content/Context;)Lu/aly/bg;

    move-result-object v5

    invoke-virtual {v5}, Lu/aly/bg;->a()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 315
    invoke-direct {p0, v3}, Lu/aly/aq;->d(Lorg/json/JSONObject;)V

    .line 318
    :cond_9
    iget-object v5, p0, Lu/aly/aq;->d:Lu/aly/bh;

    sget-object v6, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-virtual {v5, v3, v6}, Lu/aly/bh;->a(Lorg/json/JSONObject;Landroid/content/Context;)V

    .line 320
    if-eqz p1, :cond_a

    array-length v5, p1

    const/4 v6, 0x2

    if-ne v5, v6, :cond_a

    .line 321
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 322
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 323
    const-string v7, "interval"

    const/4 v8, 0x0

    aget v8, p1, v8

    div-int/lit16 v8, v8, 0x3e8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 324
    const-string v7, "latency"

    const/4 v8, 0x1

    aget v8, p1, v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 325
    const-string v7, "latent"

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 326
    const-string v6, "control_policy"

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 328
    :cond_a
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v5

    if-lez v5, :cond_16

    .line 329
    const-string v5, "body"

    invoke-virtual {v0, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 340
    :goto_2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 345
    const-string v5, "appkey"

    sget-object v6, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v6}, Lcom/umeng/analytics/AnalyticsConfig;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 346
    const-string v5, "channel"

    sget-object v6, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v6}, Lcom/umeng/analytics/AnalyticsConfig;->getChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 348
    sget-object v5, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v5}, Lcom/umeng/analytics/AnalyticsConfig;->getSecretKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lu/aly/bv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 349
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 350
    const-string v6, "secret"

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 352
    :cond_b
    const-string v5, "display_name"

    sget-object v6, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v6}, Lu/aly/bu;->w(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 353
    const-string v5, "package_name"

    sget-object v6, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v6}, Lu/aly/bu;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 354
    const-string v5, "app_signature"

    sget-object v6, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v6}, Lu/aly/bu;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4

    .line 360
    if-nez v2, :cond_c

    .line 361
    :try_start_3
    sget-object v5, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v5}, Lu/aly/ba;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 363
    :cond_c
    if-eqz v2, :cond_d

    .line 364
    const-string v5, "vers_name"

    const-string v6, ""

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 365
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_17

    .line 366
    const-string v6, "app_version"

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 367
    const-string v5, "version_code"

    const-string v6, "vers_code"

    const/4 v7, 0x0

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 380
    :cond_d
    :goto_3
    :try_start_4
    sget-object v5, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperType:Ljava/lang/String;

    if-eqz v5, :cond_e

    sget-object v5, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperVersion:Ljava/lang/String;

    if-eqz v5, :cond_e

    .line 381
    const-string v5, "wrapper_type"

    sget-object v6, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperType:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 382
    const-string v5, "wrapper_version"

    sget-object v6, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperVersion:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 384
    :cond_e
    const-string v5, "sdk_type"

    const-string v6, "Android"

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 385
    const-string v5, "sdk_version"

    sget-object v6, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v6}, Lcom/umeng/analytics/AnalyticsConfig;->getSDKVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 386
    const-string v5, "vertical_type"

    sget-object v6, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v6}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 436
    const-string v5, "idmd5"

    sget-object v6, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v6}, Lu/aly/bu;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 437
    const-string v5, "cpu"

    invoke-static {}, Lu/aly/bu;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 438
    const-string v5, "os"

    const-string v6, "Android"

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 439
    const-string v5, "os_version"

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 440
    sget-object v5, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v5}, Lu/aly/bu;->r(Landroid/content/Context;)[I

    move-result-object v5

    .line 441
    if-eqz v5, :cond_f

    .line 442
    const-string v6, "resolution"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x1

    aget v8, v5, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "*"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    aget v5, v5, v8

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 444
    :cond_f
    const-string v5, "mc"

    sget-object v6, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v6}, Lu/aly/bu;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 445
    const-string v5, "device_id"

    sget-object v6, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v6}, Lu/aly/bu;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 446
    const-string v5, "device_model"

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 447
    const-string v5, "device_board"

    sget-object v6, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 448
    const-string v5, "device_brand"

    sget-object v6, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 449
    const-string v5, "device_manutime"

    sget-wide v6, Landroid/os/Build;->TIME:J

    invoke-virtual {v3, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 450
    const-string v5, "device_manufacturer"

    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 451
    const-string v5, "device_manuid"

    sget-object v6, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 452
    const-string v5, "device_name"

    sget-object v6, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 453
    sget-object v5, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v5}, Lu/aly/bu;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 454
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_10

    .line 455
    const-string v6, "sub_os_name"

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 457
    :cond_10
    sget-object v5, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v5}, Lu/aly/bu;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 458
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_11

    .line 459
    const-string v6, "sub_os_version"

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 465
    :cond_11
    sget-object v5, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v5}, Lu/aly/bu;->j(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v5

    .line 466
    const-string v6, "Wi-Fi"

    const/4 v7, 0x0

    aget-object v7, v5, v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 467
    const-string v6, "access"

    const-string v7, "wifi"

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 476
    :goto_4
    const-string v6, ""

    const/4 v7, 0x1

    aget-object v7, v5, v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_12

    .line 477
    const-string v6, "access_subtype"

    const/4 v7, 0x1

    aget-object v5, v5, v7

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 479
    :cond_12
    sget-object v5, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v5}, Lu/aly/bu;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 480
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1a

    .line 481
    const-string v6, "mccmnc"

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 486
    :goto_5
    sget-object v5, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v5}, Lu/aly/bu;->o(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v5

    .line 487
    const-string v6, "country"

    const/4 v7, 0x0

    aget-object v7, v5, v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 488
    const-string v6, "language"

    const/4 v7, 0x1

    aget-object v5, v5, v7

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 489
    const-string v5, "timezone"

    sget-object v6, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v6}, Lu/aly/bu;->m(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 490
    const-string v5, "carrier"

    sget-object v6, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v6}, Lu/aly/bu;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    .line 495
    :try_start_5
    const-string v5, "successful_requests"

    const-string v6, "successful_request"

    const/4 v7, 0x0

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 496
    const-string v5, "failed_requests"

    const-string v6, "failed_requests"

    const/4 v7, 0x0

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 497
    const-string v5, "req_time"

    const-string v6, "last_request_spent_ms"

    const/4 v7, 0x0

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    .line 505
    :goto_6
    :try_start_6
    sget-object v5, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v5}, Lu/aly/af;->a(Landroid/content/Context;)Lu/aly/af;

    move-result-object v5

    invoke-virtual {v5}, Lu/aly/af;->a()Lu/aly/bn;

    move-result-object v5

    .line 506
    if-eqz v5, :cond_13

    .line 507
    new-instance v6, Lu/aly/co;

    invoke-direct {v6}, Lu/aly/co;-><init>()V

    invoke-virtual {v6, v5}, Lu/aly/co;->a(Lu/aly/cf;)[B

    move-result-object v5

    .line 508
    const-string v6, "imprint"

    const/4 v7, 0x0

    invoke-static {v5, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    .line 517
    :cond_13
    :goto_7
    :try_start_7
    const-string v5, "header"

    invoke-virtual {v0, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 519
    const-string v5, "sdk_version"

    const-string v6, "sdk_version"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "device_id"

    const-string v7, "device_id"

    .line 520
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "device_model"

    const-string v7, "device_model"

    .line 521
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "version"

    const-string v7, "version_code"

    .line 522
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "appkey"

    const-string v7, "appkey"

    .line 523
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "channel"

    const-string v7, "channel"

    .line 524
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 525
    invoke-virtual {p0, v3}, Lu/aly/aq;->a(Lorg/json/JSONObject;)Z

    move-result v3

    if-nez v3, :cond_14

    move-object v0, v1

    .line 528
    :cond_14
    sget-boolean v3, Lu/aly/bx;->a:Z

    if-eqz v3, :cond_15

    .line 529
    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_15

    .line 530
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lu/aly/bx;->b(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    .line 534
    :cond_15
    if-eqz v2, :cond_0

    .line 535
    :try_start_8
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 536
    const-string v2, "vers_name"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 537
    const-string v2, "vers_code"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 538
    const-string v2, "vers_date"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 539
    const-string v2, "vers_pre_version"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 540
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_0

    .line 542
    :catch_0
    move-exception v1

    goto/16 :goto_0

    .line 251
    :catch_1
    move-exception v2

    .line 252
    :try_start_9
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4

    move-object v3, v2

    goto/16 :goto_1

    .line 332
    :cond_16
    :try_start_a
    const-string v3, "body"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2

    goto/16 :goto_2

    .line 333
    :catch_2
    move-exception v3

    goto/16 :goto_2

    .line 369
    :cond_17
    :try_start_b
    const-string v5, "app_version"

    sget-object v6, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v6}, Lu/aly/bu;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 370
    const-string v5, "version_code"

    sget-object v6, Lu/aly/aq;->j:Landroid/content/Context;

    .line 371
    invoke-static {v6}, Lu/aly/bu;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 370
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_3

    goto/16 :goto_3

    .line 374
    :catch_3
    move-exception v5

    .line 375
    :try_start_c
    const-string v5, "app_version"

    sget-object v6, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v6}, Lu/aly/bu;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 376
    const-string v5, "version_code"

    sget-object v6, Lu/aly/aq;->j:Landroid/content/Context;

    .line 377
    invoke-static {v6}, Lu/aly/bu;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 376
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_4

    goto/16 :goto_3

    .line 545
    :catch_4
    move-exception v0

    .line 546
    sget-object v0, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/cb;->a(Landroid/content/Context;)Lu/aly/cb;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/cb;->g()V

    move-object v0, v1

    .line 549
    goto/16 :goto_0

    .line 469
    :cond_18
    :try_start_d
    const-string v6, "2G/3G"

    const/4 v7, 0x0

    aget-object v7, v5, v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 470
    const-string v6, "access"

    const-string v7, "2G/3G"

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_4

    .line 473
    :cond_19
    const-string v6, "access"

    const-string v7, "unknow"

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_4

    .line 483
    :cond_1a
    const-string v5, "mccmnc"

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_4

    goto/16 :goto_5

    .line 510
    :catch_5
    move-exception v5

    goto/16 :goto_7

    .line 498
    :catch_6
    move-exception v5

    goto/16 :goto_6
.end method

.method public a()V
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/bu;->l(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-direct {p0}, Lu/aly/aq;->d()V

    .line 101
    :goto_0
    return-void

    .line 99
    :cond_0
    const-string v0, "network is unavailable"

    invoke-static {v0}, Lu/aly/bx;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 860
    :try_start_0
    sget-object v0, Lu/aly/aq;->j:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 861
    sput-object p1, Lu/aly/aq;->j:Landroid/content/Context;

    .line 863
    :cond_0
    iget-object v0, p0, Lu/aly/aq;->l:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 864
    sget-object v0, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/w;->a(Landroid/content/Context;)Lu/aly/w;

    move-result-object v0

    iget-object v1, p0, Lu/aly/aq;->l:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Lu/aly/w;->a(Lorg/json/JSONArray;)V

    .line 865
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lu/aly/aq;->l:Lorg/json/JSONArray;

    .line 867
    :cond_1
    sget-object v0, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/ba;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 868
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "thtstart"

    iget-wide v2, p0, Lu/aly/aq;->p:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "gkvc"

    iget v2, p0, Lu/aly/aq;->n:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ekvc"

    iget v2, p0, Lu/aly/aq;->o:I

    .line 869
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 872
    :goto_0
    return-void

    .line 870
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lu/aly/aq;->c:Lu/aly/be;

    invoke-virtual {v0}, Lu/aly/be;->f()Z

    move-result v0

    .line 111
    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lu/aly/aq;->c:Lu/aly/be;

    invoke-virtual {v0}, Lu/aly/be;->l()J

    move-result-wide v0

    iput-wide v0, p0, Lu/aly/aq;->i:J

    .line 114
    :cond_0
    const/4 v0, 0x1

    .line 115
    instance-of v1, p1, Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    .line 117
    const/4 v0, 0x0

    .line 118
    :try_start_0
    check-cast p1, Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lu/aly/aq;->b(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Lu/aly/aq;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    invoke-direct {p0}, Lu/aly/aq;->d()V

    .line 125
    :cond_2
    return-void

    .line 119
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public a(Lu/aly/af$a;)V
    .locals 2

    .prologue
    .line 675
    iget-object v0, p0, Lu/aly/aq;->e:Lu/aly/bg;

    invoke-virtual {v0, p1}, Lu/aly/bg;->a(Lu/aly/af$a;)V

    .line 676
    iget-object v0, p0, Lu/aly/aq;->d:Lu/aly/bh;

    invoke-virtual {v0, p1}, Lu/aly/bh;->a(Lu/aly/af$a;)V

    .line 677
    iget-object v0, p0, Lu/aly/aq;->f:Lu/aly/bi;

    invoke-virtual {v0, p1}, Lu/aly/bi;->a(Lu/aly/af$a;)V

    .line 678
    iget-object v0, p0, Lu/aly/aq;->g:Lu/aly/aq$a;

    invoke-virtual {v0, p1}, Lu/aly/aq$a;->a(Lu/aly/af$a;)V

    .line 680
    sget-object v0, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/af;->a(Landroid/content/Context;)Lu/aly/af;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/af;->b()Lu/aly/af$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lu/aly/af$a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lu/aly/aq;->a:Ljava/lang/String;

    .line 681
    return-void
.end method

.method public a(Lorg/json/JSONObject;)Z
    .locals 1

    .prologue
    .line 593
    const-string v0, "device_id"

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mc"

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "resolution"

    .line 594
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "appkey"

    .line 595
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "channel"

    .line 596
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "app_signature"

    .line 597
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "package_name"

    .line 598
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "app_version"

    .line 599
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 600
    const/4 v0, 0x1

    .line 602
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Lu/aly/aq;->a([I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lu/aly/aq;->c(Lorg/json/JSONObject;)V

    .line 163
    return-void
.end method
