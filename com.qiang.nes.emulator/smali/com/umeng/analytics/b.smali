.class public Lcom/umeng/analytics/b;
.super Ljava/lang/Object;
.source "InternalAgent.java"

# interfaces
.implements Lu/aly/ay;


# static fields
.field private static final j:Ljava/lang/String; = "sp"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lu/aly/bw;

.field private c:Lu/aly/as;

.field private d:Lu/aly/bf;

.field private e:Lu/aly/bd;

.field private f:Lu/aly/at;

.field private g:Lu/aly/ar;

.field private h:Lu/aly/ap;

.field private i:Lu/aly/m;

.field private k:Z

.field private l:Z

.field private m:Lorg/json/JSONObject;

.field private n:Z


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object v1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 51
    new-instance v0, Lu/aly/as;

    invoke-direct {v0}, Lu/aly/as;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/b;->c:Lu/aly/as;

    .line 52
    new-instance v0, Lu/aly/bf;

    invoke-direct {v0}, Lu/aly/bf;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/b;->d:Lu/aly/bf;

    .line 53
    new-instance v0, Lu/aly/bd;

    invoke-direct {v0}, Lu/aly/bd;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/b;->e:Lu/aly/bd;

    .line 54
    iput-object v1, p0, Lcom/umeng/analytics/b;->f:Lu/aly/at;

    .line 55
    iput-object v1, p0, Lcom/umeng/analytics/b;->g:Lu/aly/ar;

    .line 56
    iput-object v1, p0, Lcom/umeng/analytics/b;->h:Lu/aly/ap;

    .line 57
    iput-object v1, p0, Lcom/umeng/analytics/b;->i:Lu/aly/m;

    .line 59
    iput-boolean v2, p0, Lcom/umeng/analytics/b;->k:Z

    .line 60
    iput-boolean v2, p0, Lcom/umeng/analytics/b;->l:Z

    .line 61
    iput-object v1, p0, Lcom/umeng/analytics/b;->m:Lorg/json/JSONObject;

    .line 62
    iput-boolean v2, p0, Lcom/umeng/analytics/b;->n:Z

    .line 65
    iget-object v0, p0, Lcom/umeng/analytics/b;->c:Lu/aly/as;

    invoke-virtual {v0, p0}, Lu/aly/as;->a(Lu/aly/ay;)V

    .line 66
    return-void
.end method

.method static synthetic a(Lcom/umeng/analytics/b;)Lu/aly/m;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/umeng/analytics/b;->i:Lu/aly/m;

    return-object v0
.end method

.method static synthetic a(Lcom/umeng/analytics/b;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/umeng/analytics/b;->h(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/umeng/analytics/b;Z)Z
    .locals 0

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/umeng/analytics/b;->l:Z

    return p1
.end method

.method static synthetic b(Lcom/umeng/analytics/b;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/umeng/analytics/b;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/umeng/analytics/b;->i(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic c(Lcom/umeng/analytics/b;)Lu/aly/ar;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/umeng/analytics/b;->g:Lu/aly/ar;

    return-object v0
.end method

.method private g(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 71
    if-nez p1, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xd

    if-le v1, v2, :cond_2

    .line 76
    iget-boolean v1, p0, Lcom/umeng/analytics/b;->n:Z

    if-nez v1, :cond_2

    .line 77
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_2

    .line 78
    new-instance v2, Lu/aly/ap;

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    invoke-direct {v2, v1}, Lu/aly/ap;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/umeng/analytics/b;->h:Lu/aly/ap;

    .line 79
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/umeng/analytics/b;->n:Z

    .line 84
    :cond_2
    iget-boolean v1, p0, Lcom/umeng/analytics/b;->k:Z

    if-nez v1, :cond_0

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 86
    new-instance v1, Lu/aly/at;

    iget-object v2, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lu/aly/at;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/umeng/analytics/b;->f:Lu/aly/at;

    .line 87
    iget-object v1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/ar;->b(Landroid/content/Context;)Lu/aly/ar;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/analytics/b;->g:Lu/aly/ar;

    .line 88
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/umeng/analytics/b;->k:Z

    .line 89
    iget-object v1, p0, Lcom/umeng/analytics/b;->i:Lu/aly/m;

    if-nez v1, :cond_3

    .line 90
    iget-object v1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/m;->a(Landroid/content/Context;)Lu/aly/m;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/analytics/b;->i:Lu/aly/m;

    .line 92
    :cond_3
    iget-boolean v1, p0, Lcom/umeng/analytics/b;->l:Z

    if-nez v1, :cond_0

    .line 93
    new-instance v1, Lcom/umeng/analytics/b$1;

    invoke-direct {v1, p0}, Lcom/umeng/analytics/b$1;-><init>(Lcom/umeng/analytics/b;)V

    invoke-static {v1}, Lu/aly/by;->b(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 118
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private h(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/umeng/analytics/b;->e:Lu/aly/bd;

    invoke-virtual {v0, p1}, Lu/aly/bd;->c(Landroid/content/Context;)V

    .line 263
    iget-object v0, p0, Lcom/umeng/analytics/b;->b:Lu/aly/bw;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/umeng/analytics/b;->b:Lu/aly/bw;

    invoke-interface {v0}, Lu/aly/bw;->a()V

    .line 265
    :cond_0
    return-void
.end method

.method private i(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/umeng/analytics/b;->e:Lu/aly/bd;

    invoke-virtual {v0, p1}, Lu/aly/bd;->d(Landroid/content/Context;)V

    .line 274
    invoke-static {p1}, Lu/aly/bf;->a(Landroid/content/Context;)V

    .line 275
    invoke-static {p1}, Lu/aly/ap;->b(Landroid/content/Context;)V

    .line 276
    iget-object v0, p0, Lcom/umeng/analytics/b;->g:Lu/aly/ar;

    iget-object v1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lu/aly/ar;->a(Landroid/content/Context;)Lu/aly/aq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lu/aly/aq;->a(Landroid/content/Context;)V

    .line 278
    iget-object v0, p0, Lcom/umeng/analytics/b;->b:Lu/aly/bw;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/umeng/analytics/b;->b:Lu/aly/bw;

    invoke-interface {v0}, Lu/aly/bw;->b()V

    .line 280
    :cond_0
    return-void
.end method

.method private j(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 689
    :try_start_0
    invoke-static {p1}, Lu/aly/ba;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 690
    const-string v2, "sp"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 692
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 693
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 700
    :goto_0
    return-object v0

    .line 697
    :catch_0
    move-exception v0

    .line 698
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    move-object v0, v1

    .line 700
    goto :goto_0
.end method


# virtual methods
.method public a()Lu/aly/bd;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/umeng/analytics/b;->e:Lu/aly/bd;

    return-object v0
.end method

.method a(DD)V
    .locals 3

    .prologue
    .line 507
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->a:[D

    if-nez v0, :cond_0

    .line 508
    const/4 v0, 0x2

    new-array v0, v0, [D

    sput-object v0, Lcom/umeng/analytics/AnalyticsConfig;->a:[D

    .line 511
    :cond_0
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->a:[D

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    .line 512
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->a:[D

    const/4 v1, 0x1

    aput-wide p3, v0, v1

    .line 513
    return-void
.end method

.method a(J)V
    .locals 1

    .prologue
    .line 516
    long-to-int v0, p1

    mul-int/lit16 v0, v0, 0x3e8

    sput v0, Lcom/umeng/analytics/AnalyticsConfig;->sLatentWindow:I

    .line 517
    return-void
.end method

.method a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 149
    if-nez p1, :cond_0

    .line 150
    const-string v0, "unexpected null context in onResume"

    invoke-static {v0}, Lu/aly/bx;->e(Ljava/lang/String;)V

    .line 170
    :goto_0
    return-void

    .line 153
    :cond_0
    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->ACTIVITY_DURATION_OPEN:Z

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/umeng/analytics/b;->d:Lu/aly/bf;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/bf;->a(Ljava/lang/String;)V

    .line 158
    :cond_1
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/b;->k:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/umeng/analytics/b;->n:Z

    if-nez v0, :cond_3

    .line 159
    :cond_2
    invoke-direct {p0, p1}, Lcom/umeng/analytics/b;->g(Landroid/content/Context;)V

    .line 161
    :cond_3
    new-instance v0, Lcom/umeng/analytics/b$2;

    invoke-direct {v0, p0, p1}, Lcom/umeng/analytics/b$2;-><init>(Lcom/umeng/analytics/b;Landroid/content/Context;)V

    invoke-static {v0}, Lu/aly/by;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    const-string v1, "Exception occurred in Mobclick.onResume(). "

    invoke-static {v1, v0}, Lu/aly/bx;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 145
    invoke-static {p1, p2}, Lcom/umeng/analytics/AnalyticsConfig;->a(Landroid/content/Context;I)V

    .line 146
    return-void
.end method

.method a(Landroid/content/Context;Lcom/umeng/analytics/MobclickAgent$EScenarioType;)V
    .locals 1

    .prologue
    .line 526
    if-eqz p1, :cond_0

    .line 527
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 529
    :cond_0
    if-eqz p2, :cond_1

    .line 530
    invoke-virtual {p2}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;I)V

    .line 532
    :cond_1
    return-void
.end method

.method a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 216
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    if-nez p1, :cond_2

    .line 221
    const-string v0, "unexpected null context in reportError"

    invoke-static {v0}, Lu/aly/bx;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 226
    :cond_2
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/b;->k:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/umeng/analytics/b;->n:Z

    if-nez v0, :cond_4

    .line 227
    :cond_3
    invoke-direct {p0, p1}, Lcom/umeng/analytics/b;->g(Landroid/content/Context;)V

    .line 228
    :cond_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 229
    const-string v1, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 230
    const-string v1, "error_source"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 231
    const-string v1, "context"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 232
    iget-object v1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/w;->a(Landroid/content/Context;)Lu/aly/w;

    move-result-object v1

    invoke-static {}, Lu/aly/bd;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v0, v3}, Lu/aly/w;->a(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 233
    :catch_0
    move-exception v0

    .line 234
    sget-boolean v1, Lu/aly/bx;->a:Z

    if-eqz v1, :cond_0

    .line 235
    invoke-static {v0}, Lu/aly/bx;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 611
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 8

    .prologue
    .line 314
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/b;->k:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/umeng/analytics/b;->n:Z

    if-nez v0, :cond_1

    .line 315
    :cond_0
    invoke-direct {p0, p1}, Lcom/umeng/analytics/b;->g(Landroid/content/Context;)V

    .line 316
    :cond_1
    iget-object v1, p0, Lcom/umeng/analytics/b;->f:Lu/aly/at;

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v1 .. v6}, Lu/aly/at;->a(Ljava/lang/String;Ljava/lang/String;JI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    :cond_2
    :goto_0
    return-void

    .line 317
    :catch_0
    move-exception v0

    .line 318
    sget-boolean v1, Lu/aly/bx;->a:Z

    if-eqz v1, :cond_2

    .line 319
    invoke-static {v0}, Lu/aly/bx;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 205
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/b;->k:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/umeng/analytics/b;->n:Z

    if-nez v0, :cond_1

    .line 206
    :cond_0
    invoke-direct {p0, p1}, Lcom/umeng/analytics/b;->g(Landroid/content/Context;)V

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/b;->f:Lu/aly/at;

    invoke-virtual {v0, p2, p3}, Lu/aly/at;->b(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :cond_2
    :goto_0
    return-void

    .line 208
    :catch_0
    move-exception v0

    .line 209
    sget-boolean v1, Lu/aly/bx;->a:Z

    if-eqz v1, :cond_2

    .line 210
    invoke-static {v0}, Lu/aly/bx;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 348
    return-void
.end method

.method a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 326
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/b;->k:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/umeng/analytics/b;->n:Z

    if-nez v0, :cond_1

    .line 327
    :cond_0
    invoke-direct {p0, p1}, Lcom/umeng/analytics/b;->g(Landroid/content/Context;)V

    .line 328
    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/b;->f:Lu/aly/at;

    invoke-virtual {v0, p2, p3, p4, p5}, Lu/aly/at;->a(Ljava/lang/String;Ljava/util/Map;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    :cond_2
    :goto_0
    return-void

    .line 329
    :catch_0
    move-exception v0

    .line 330
    sget-boolean v1, Lu/aly/bx;->a:Z

    if-eqz v1, :cond_2

    .line 331
    invoke-static {v0}, Lu/aly/bx;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method a(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 247
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    :try_start_0
    invoke-static {p2}, Lu/aly/bs;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 253
    :catch_0
    move-exception v0

    .line 254
    sget-boolean v1, Lu/aly/bx;->a:Z

    if-eqz v1, :cond_0

    .line 255
    invoke-static {v0}, Lu/aly/bx;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 725
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/b;->k:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/umeng/analytics/b;->n:Z

    if-nez v0, :cond_1

    .line 726
    :cond_0
    invoke-direct {p0, p1}, Lcom/umeng/analytics/b;->g(Landroid/content/Context;)V

    .line 728
    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/b;->f:Lu/aly/at;

    invoke-virtual {v0, p1, p2}, Lu/aly/at;->a(Landroid/content/Context;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 732
    :goto_0
    return-void

    .line 729
    :catch_0
    move-exception v0

    .line 730
    invoke-static {v0}, Lu/aly/bx;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/util/List;ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 301
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/b;->k:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/umeng/analytics/b;->n:Z

    if-nez v0, :cond_1

    .line 302
    :cond_0
    invoke-direct {p0, p1}, Lcom/umeng/analytics/b;->g(Landroid/content/Context;)V

    .line 303
    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/b;->f:Lu/aly/at;

    invoke-virtual {v0, p2, p3, p4}, Lu/aly/at;->a(Ljava/util/List;ILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    :cond_2
    :goto_0
    return-void

    .line 304
    :catch_0
    move-exception v0

    .line 305
    sget-boolean v1, Lu/aly/bx;->a:Z

    if-eqz v1, :cond_2

    .line 306
    invoke-static {v0}, Lu/aly/bx;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method a(Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;)V
    .locals 2

    .prologue
    .line 553
    iget-object v0, p1, Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p1, Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 556
    :cond_0
    iget-object v0, p1, Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;->mAppkey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 557
    iget-object v0, p1, Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;->mAppkey:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/umeng/analytics/AnalyticsConfig;->setAppkey(Landroid/content/Context;Ljava/lang/String;)V

    .line 562
    iget-object v0, p1, Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;->mChannelId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 563
    iget-object v0, p1, Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;->mChannelId:Ljava/lang/String;

    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->setChannel(Ljava/lang/String;)V

    .line 565
    :cond_1
    iget-boolean v0, p1, Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;->mIsCrashEnable:Z

    sput-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->CATCH_EXCEPTION:Z

    .line 566
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    iget-object v1, p1, Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;->mType:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {p0, v0, v1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Lcom/umeng/analytics/MobclickAgent$EScenarioType;)V

    .line 567
    :goto_0
    return-void

    .line 559
    :cond_2
    const-string v0, "the appkey is null!"

    invoke-static {v0}, Lu/aly/bx;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 123
    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->ACTIVITY_DURATION_OPEN:Z

    if-nez v0, :cond_0

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/b;->d:Lu/aly/bf;

    invoke-virtual {v0, p1}, Lu/aly/bf;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 393
    :try_start_0
    new-instance v0, Lcom/umeng/analytics/b$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/umeng/analytics/b$4;-><init>(Lcom/umeng/analytics/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lu/aly/by;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    :cond_0
    :goto_0
    return-void

    .line 409
    :catch_0
    move-exception v0

    .line 410
    sget-boolean v1, Lu/aly/bx;->a:Z

    if-eqz v1, :cond_0

    .line 411
    const-string v1, " Excepthon  in  onProfileSignIn"

    invoke-static {v1, v0}, Lu/aly/bx;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 367
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/b;->d:Lu/aly/bf;

    invoke-virtual {v0}, Lu/aly/bf;->a()V

    .line 369
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 370
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/umeng/analytics/b;->g:Lu/aly/ar;

    if-eqz v0, :cond_0

    .line 371
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 372
    const-string v1, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 373
    const-string v1, "error_source"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 374
    const-string v1, "context"

    invoke-static {p1}, Lu/aly/bs;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 375
    iget-object v1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/w;->a(Landroid/content/Context;)Lu/aly/w;

    move-result-object v1

    invoke-static {}, Lu/aly/bd;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lu/aly/w;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/b;->i:Lu/aly/m;

    invoke-virtual {v0}, Lu/aly/m;->e()V

    .line 378
    iget-object v0, p0, Lcom/umeng/analytics/b;->h:Lu/aly/ap;

    iget-object v1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lu/aly/ap;->a(Landroid/content/Context;)V

    .line 379
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/umeng/analytics/b;->i(Landroid/content/Context;)V

    .line 380
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/ba;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 383
    :cond_1
    invoke-static {}, Lu/aly/by;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    :cond_2
    :goto_0
    return-void

    .line 384
    :catch_0
    move-exception v0

    .line 385
    sget-boolean v1, Lu/aly/bx;->a:Z

    if-eqz v1, :cond_2

    .line 386
    const-string v1, "Exception in onAppCrash"

    invoke-static {v1, v0}, Lu/aly/bx;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3

    .prologue
    .line 457
    invoke-static {p1}, Lu/aly/bu;->a(Ljavax/microedition/khronos/opengles/GL10;)[Ljava/lang/String;

    move-result-object v0

    .line 458
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 459
    const/4 v1, 0x0

    aget-object v1, v0, v1

    sput-object v1, Lcom/umeng/analytics/AnalyticsConfig;->GPU_VENDER:Ljava/lang/String;

    .line 460
    const/4 v1, 0x1

    aget-object v0, v0, v1

    sput-object v0, Lcom/umeng/analytics/AnalyticsConfig;->GPU_RENDERER:Ljava/lang/String;

    .line 462
    :cond_0
    return-void
.end method

.method public a(Lu/aly/bw;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/umeng/analytics/b;->b:Lu/aly/bw;

    .line 142
    return-void
.end method

.method a(Z)V
    .locals 0

    .prologue
    .line 448
    sput-boolean p1, Lcom/umeng/analytics/AnalyticsConfig;->CATCH_EXCEPTION:Z

    .line 449
    return-void
.end method

.method b()V
    .locals 2

    .prologue
    .line 418
    :try_start_0
    new-instance v0, Lcom/umeng/analytics/b$5;

    invoke-direct {v0, p0}, Lcom/umeng/analytics/b$5;-><init>(Lcom/umeng/analytics/b;)V

    invoke-static {v0}, Lu/aly/by;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    :cond_0
    :goto_0
    return-void

    .line 435
    :catch_0
    move-exception v0

    .line 436
    sget-boolean v1, Lu/aly/bx;->a:Z

    if-eqz v1, :cond_0

    .line 437
    const-string v1, " Excepthon  in  onProfileSignOff"

    invoke-static {v1, v0}, Lu/aly/bx;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method b(J)V
    .locals 1

    .prologue
    .line 575
    sput-wide p1, Lcom/umeng/analytics/AnalyticsConfig;->kContinueSessionMillis:J

    .line 576
    return-void
.end method

.method b(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 173
    if-nez p1, :cond_1

    .line 174
    const-string v0, "unexpected null context in onPause"

    invoke-static {v0}, Lu/aly/bx;->e(Ljava/lang/String;)V

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->ACTIVITY_DURATION_OPEN:Z

    if-eqz v0, :cond_2

    .line 179
    iget-object v0, p0, Lcom/umeng/analytics/b;->d:Lu/aly/bf;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/bf;->b(Ljava/lang/String;)V

    .line 183
    :cond_2
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/b;->k:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/umeng/analytics/b;->n:Z

    if-nez v0, :cond_4

    .line 184
    :cond_3
    invoke-direct {p0, p1}, Lcom/umeng/analytics/b;->g(Landroid/content/Context;)V

    .line 186
    :cond_4
    new-instance v0, Lcom/umeng/analytics/b$3;

    invoke-direct {v0, p0, p1}, Lcom/umeng/analytics/b$3;-><init>(Lcom/umeng/analytics/b;Landroid/content/Context;)V

    invoke-static {v0}, Lu/aly/by;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 192
    :catch_0
    move-exception v0

    .line 193
    sget-boolean v1, Lu/aly/bx;->a:Z

    if-eqz v1, :cond_0

    .line 194
    const-string v1, "Exception occurred in Mobclick.onRause(). "

    invoke-static {v1, v0}, Lu/aly/bx;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 541
    if-eqz p1, :cond_0

    .line 542
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 544
    :cond_0
    invoke-static {p1, p2}, Lcom/umeng/analytics/AnalyticsConfig;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 545
    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 132
    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->ACTIVITY_DURATION_OPEN:Z

    if-nez v0, :cond_0

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/b;->d:Lu/aly/bf;

    invoke-virtual {v0, p1}, Lu/aly/bf;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method b(Z)V
    .locals 0

    .prologue
    .line 470
    sput-boolean p1, Lcom/umeng/analytics/AnalyticsConfig;->ACTIVITY_DURATION_OPEN:Z

    .line 471
    return-void
.end method

.method c(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 284
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/b;->k:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/umeng/analytics/b;->n:Z

    if-nez v0, :cond_1

    .line 285
    :cond_0
    invoke-direct {p0, p1}, Lcom/umeng/analytics/b;->g(Landroid/content/Context;)V

    .line 286
    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/b;->g:Lu/aly/ar;

    invoke-virtual {v0}, Lu/aly/ar;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :goto_0
    return-void

    .line 287
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 645
    return-void
.end method

.method c(Z)V
    .locals 0

    .prologue
    .line 479
    sput-boolean p1, Lcom/umeng/analytics/a;->e:Z

    .line 480
    return-void
.end method

.method public d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 662
    const/4 v0, 0x0

    return-object v0
.end method

.method d(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 352
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/b;->h:Lu/aly/ap;

    invoke-virtual {v0, p1}, Lu/aly/ap;->a(Landroid/content/Context;)V

    .line 353
    iget-object v0, p0, Lcom/umeng/analytics/b;->d:Lu/aly/bf;

    invoke-virtual {v0}, Lu/aly/bf;->a()V

    .line 354
    invoke-direct {p0, p1}, Lcom/umeng/analytics/b;->i(Landroid/content/Context;)V

    .line 355
    invoke-static {p1}, Lu/aly/ba;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 356
    iget-object v0, p0, Lcom/umeng/analytics/b;->i:Lu/aly/m;

    invoke-virtual {v0}, Lu/aly/m;->d()V

    .line 357
    invoke-static {}, Lu/aly/by;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 358
    :catch_0
    move-exception v0

    .line 359
    sget-boolean v1, Lu/aly/bx;->a:Z

    if-eqz v1, :cond_0

    .line 360
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method d(Z)V
    .locals 0

    .prologue
    .line 488
    sput-boolean p1, Lu/aly/bx;->a:Z

    .line 489
    return-void
.end method

.method public e(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 678
    const/4 v0, 0x0

    return-object v0
.end method

.method e(Z)V
    .locals 0

    .prologue
    .line 497
    invoke-static {p1}, Lcom/umeng/analytics/AnalyticsConfig;->a(Z)V

    .line 498
    return-void
.end method

.method public f(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 721
    return-void
.end method
