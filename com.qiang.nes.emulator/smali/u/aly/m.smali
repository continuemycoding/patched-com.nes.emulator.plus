.class public Lu/aly/m;
.super Ljava/lang/Object;
.source "UMCCAggregatedManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/aly/m$a;,
        Lu/aly/m$b;
    }
.end annotation


# static fields
.field private static final i:I = 0x30

.field private static final j:I = 0x31

.field private static k:Landroid/content/Context;


# instance fields
.field private a:Lu/aly/h;

.field private b:Lu/aly/o;

.field private c:Lu/aly/p;

.field private d:Z

.field private e:Z

.field private f:J

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lu/aly/m$a;

.field private final n:Ljava/lang/Thread;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v2, p0, Lu/aly/m;->a:Lu/aly/h;

    .line 43
    iput-object v2, p0, Lu/aly/m;->b:Lu/aly/o;

    .line 44
    iput-object v2, p0, Lu/aly/m;->c:Lu/aly/p;

    .line 46
    iput-boolean v0, p0, Lu/aly/m;->d:Z

    .line 47
    iput-boolean v0, p0, Lu/aly/m;->e:Z

    .line 48
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lu/aly/m;->f:J

    .line 50
    const-string v0, "main_fest_mode"

    iput-object v0, p0, Lu/aly/m;->g:Ljava/lang/String;

    .line 51
    const-string v0, "main_fest_timestamp"

    iput-object v0, p0, Lu/aly/m;->h:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lu/aly/m;->l:Ljava/util/List;

    .line 59
    iput-object v2, p0, Lu/aly/m;->m:Lu/aly/m$a;

    .line 61
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lu/aly/m$1;

    invoke-direct {v1, p0}, Lu/aly/m$1;-><init>(Lu/aly/m;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lu/aly/m;->n:Ljava/lang/Thread;

    .line 105
    sget-object v0, Lu/aly/m;->k:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 107
    iget-object v0, p0, Lu/aly/m;->a:Lu/aly/h;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Lu/aly/h;

    invoke-direct {v0}, Lu/aly/h;-><init>()V

    iput-object v0, p0, Lu/aly/m;->a:Lu/aly/h;

    .line 110
    :cond_0
    iget-object v0, p0, Lu/aly/m;->b:Lu/aly/o;

    if-nez v0, :cond_1

    .line 111
    sget-object v0, Lu/aly/m;->k:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/o;->a(Landroid/content/Context;)Lu/aly/o;

    move-result-object v0

    iput-object v0, p0, Lu/aly/m;->b:Lu/aly/o;

    .line 113
    :cond_1
    iget-object v0, p0, Lu/aly/m;->c:Lu/aly/p;

    if-nez v0, :cond_2

    .line 114
    new-instance v0, Lu/aly/p;

    invoke-direct {v0}, Lu/aly/p;-><init>()V

    iput-object v0, p0, Lu/aly/m;->c:Lu/aly/p;

    .line 117
    :cond_2
    iget-object v0, p0, Lu/aly/m;->n:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 118
    return-void
.end method

.method synthetic constructor <init>(Lu/aly/m$1;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lu/aly/m;-><init>()V

    return-void
.end method

.method static synthetic a(Lu/aly/m;Lu/aly/h;)Lu/aly/h;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lu/aly/m;->a:Lu/aly/h;

    return-object p1
.end method

.method static synthetic a(Lu/aly/m;)Lu/aly/m$a;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lu/aly/m;->m:Lu/aly/m$a;

    return-object v0
.end method

.method static synthetic a(Lu/aly/m;Lu/aly/m$a;)Lu/aly/m$a;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lu/aly/m;->m:Lu/aly/m$a;

    return-object p1
.end method

.method public static final a(Landroid/content/Context;)Lu/aly/m;
    .locals 1

    .prologue
    .line 127
    sput-object p0, Lu/aly/m;->k:Landroid/content/Context;

    .line 128
    invoke-static {}, Lu/aly/m$b;->a()Lu/aly/m;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lu/aly/m;Lu/aly/p;)Lu/aly/p;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lu/aly/m;->c:Lu/aly/p;

    return-object p1
.end method

.method private a(Lu/aly/l;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu/aly/l;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 253
    iget-object v0, p0, Lu/aly/m;->a:Lu/aly/h;

    new-instance v1, Lu/aly/m$9;

    invoke-direct {v1, p0}, Lu/aly/m$9;-><init>(Lu/aly/m;)V

    iget-object v2, p0, Lu/aly/m;->l:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2, v2}, Lu/aly/h;->a(Lu/aly/f;Lu/aly/l;Ljava/util/List;Ljava/util/List;)V

    .line 263
    return-void
.end method

.method static synthetic a(Lu/aly/m;Z)Z
    .locals 0

    .prologue
    .line 36
    iput-boolean p1, p0, Lu/aly/m;->d:Z

    return p1
.end method

.method static synthetic b(Lu/aly/m;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lu/aly/m;->h()V

    return-void
.end method

.method static synthetic c(Lu/aly/m;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lu/aly/m;->p()V

    return-void
.end method

.method static synthetic d(Lu/aly/m;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lu/aly/m;->o()V

    return-void
.end method

.method static synthetic e(Lu/aly/m;)Lu/aly/h;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lu/aly/m;->a:Lu/aly/h;

    return-object v0
.end method

.method static synthetic f(Lu/aly/m;)Lu/aly/o;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lu/aly/m;->b:Lu/aly/o;

    return-object v0
.end method

.method static synthetic g()Landroid/content/Context;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lu/aly/m;->k:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic g(Lu/aly/m;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lu/aly/m;->l()V

    return-void
.end method

.method private h()V
    .locals 6

    .prologue
    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 122
    iget-object v2, p0, Lu/aly/m;->m:Lu/aly/m$a;

    const/16 v3, 0x30

    invoke-static {v0, v1}, Lu/aly/q;->c(J)J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lu/aly/m$a;->sendEmptyMessageDelayed(IJ)Z

    .line 123
    iget-object v2, p0, Lu/aly/m;->m:Lu/aly/m$a;

    const/16 v3, 0x31

    invoke-static {v0, v1}, Lu/aly/q;->d(J)J

    move-result-wide v0

    invoke-virtual {v2, v3, v0, v1}, Lu/aly/m$a;->sendEmptyMessageDelayed(IJ)Z

    .line 124
    return-void
.end method

.method static synthetic h(Lu/aly/m;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lu/aly/m;->q()V

    return-void
.end method

.method static synthetic i(Lu/aly/m;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lu/aly/m;->n()V

    return-void
.end method

.method private i()Z
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lu/aly/m;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {}, Lu/aly/n;->a()Lu/aly/n;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/n;->d()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 273
    const/4 v0, 0x1

    .line 275
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic j(Lu/aly/m;)Lu/aly/p;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lu/aly/m;->c:Lu/aly/p;

    return-object v0
.end method

.method private j()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 283
    sget-object v0, Lu/aly/m;->k:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/ba;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 284
    const-string v1, "main_fest_mode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 285
    iput-boolean v3, p0, Lu/aly/m;->e:Z

    .line 286
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 287
    const-string v1, "main_fest_mode"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 288
    const-string v1, "main_fest_timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 289
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 291
    :cond_0
    return-void
.end method

.method private k()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 297
    sget-object v0, Lu/aly/m;->k:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/ba;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 298
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 299
    const-string v1, "main_fest_mode"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 300
    const-string v1, "main_fest_timestamp"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 301
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 302
    iput-boolean v4, p0, Lu/aly/m;->e:Z

    .line 303
    return-void
.end method

.method static synthetic k(Lu/aly/m;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lu/aly/m;->m()V

    return-void
.end method

.method private l()V
    .locals 4

    .prologue
    .line 309
    sget-object v0, Lu/aly/m;->k:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/ba;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 310
    const-string v1, "main_fest_mode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lu/aly/m;->e:Z

    .line 311
    const-string v1, "main_fest_timestamp"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lu/aly/m;->f:J

    .line 312
    return-void
.end method

.method private m()V
    .locals 3

    .prologue
    .line 380
    .line 381
    iget-object v0, p0, Lu/aly/m;->a:Lu/aly/h;

    invoke-virtual {v0}, Lu/aly/h;->a()Ljava/util/Map;

    move-result-object v0

    .line 382
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 383
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 384
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 385
    iget-object v2, p0, Lu/aly/m;->l:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 386
    iget-object v2, p0, Lu/aly/m;->l:Ljava/util/List;

    invoke-static {v0}, Lu/aly/d;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 389
    :cond_1
    iget-object v0, p0, Lu/aly/m;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 390
    iget-object v0, p0, Lu/aly/m;->b:Lu/aly/o;

    new-instance v1, Lu/aly/f;

    invoke-direct {v1}, Lu/aly/f;-><init>()V

    iget-object v2, p0, Lu/aly/m;->l:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lu/aly/o;->a(Lu/aly/f;Ljava/util/List;)V

    .line 392
    :cond_2
    return-void
.end method

.method private n()V
    .locals 3

    .prologue
    .line 399
    iget-object v0, p0, Lu/aly/m;->c:Lu/aly/p;

    new-instance v1, Lu/aly/m$12;

    invoke-direct {v1, p0}, Lu/aly/m$12;-><init>(Lu/aly/m;)V

    const-string v2, "__ag_of"

    invoke-virtual {v0, v1, v2}, Lu/aly/p;->a(Lu/aly/f;Ljava/lang/String;)V

    .line 406
    return-void
.end method

.method private o()V
    .locals 3

    .prologue
    .line 434
    :try_start_0
    iget-object v0, p0, Lu/aly/m;->a:Lu/aly/h;

    invoke-virtual {v0}, Lu/aly/h;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 435
    iget-object v0, p0, Lu/aly/m;->b:Lu/aly/o;

    new-instance v1, Lu/aly/m$2;

    invoke-direct {v1, p0}, Lu/aly/m$2;-><init>(Lu/aly/m;)V

    iget-object v2, p0, Lu/aly/m;->a:Lu/aly/h;

    .line 442
    invoke-virtual {v2}, Lu/aly/h;->a()Ljava/util/Map;

    move-result-object v2

    .line 435
    invoke-virtual {v0, v1, v2}, Lu/aly/o;->c(Lu/aly/f;Ljava/util/Map;)V

    .line 444
    :cond_0
    iget-object v0, p0, Lu/aly/m;->c:Lu/aly/p;

    invoke-virtual {v0}, Lu/aly/p;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 445
    iget-object v0, p0, Lu/aly/m;->b:Lu/aly/o;

    new-instance v1, Lu/aly/m$3;

    invoke-direct {v1, p0}, Lu/aly/m$3;-><init>(Lu/aly/m;)V

    iget-object v2, p0, Lu/aly/m;->c:Lu/aly/p;

    .line 453
    invoke-virtual {v2}, Lu/aly/p;->a()Ljava/util/Map;

    move-result-object v2

    .line 445
    invoke-virtual {v0, v1, v2}, Lu/aly/o;->b(Lu/aly/f;Ljava/util/Map;)V

    .line 455
    :cond_1
    iget-object v0, p0, Lu/aly/m;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 456
    iget-object v0, p0, Lu/aly/m;->b:Lu/aly/o;

    new-instance v1, Lu/aly/f;

    invoke-direct {v1}, Lu/aly/f;-><init>()V

    iget-object v2, p0, Lu/aly/m;->l:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lu/aly/o;->a(Lu/aly/f;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    :cond_2
    :goto_0
    return-void

    .line 458
    :catch_0
    move-exception v0

    .line 459
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "converyMemoryToDataTable happen error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lu/aly/bx;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private p()V
    .locals 3

    .prologue
    .line 471
    :try_start_0
    iget-object v0, p0, Lu/aly/m;->a:Lu/aly/h;

    invoke-virtual {v0}, Lu/aly/h;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 472
    iget-object v0, p0, Lu/aly/m;->b:Lu/aly/o;

    new-instance v1, Lu/aly/m$4;

    invoke-direct {v1, p0}, Lu/aly/m$4;-><init>(Lu/aly/m;)V

    iget-object v2, p0, Lu/aly/m;->a:Lu/aly/h;

    .line 475
    invoke-virtual {v2}, Lu/aly/h;->a()Ljava/util/Map;

    move-result-object v2

    .line 472
    invoke-virtual {v0, v1, v2}, Lu/aly/o;->a(Lu/aly/f;Ljava/util/Map;)V

    .line 477
    :cond_0
    iget-object v0, p0, Lu/aly/m;->c:Lu/aly/p;

    invoke-virtual {v0}, Lu/aly/p;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 478
    iget-object v0, p0, Lu/aly/m;->b:Lu/aly/o;

    new-instance v1, Lu/aly/m$5;

    invoke-direct {v1, p0}, Lu/aly/m$5;-><init>(Lu/aly/m;)V

    iget-object v2, p0, Lu/aly/m;->c:Lu/aly/p;

    .line 486
    invoke-virtual {v2}, Lu/aly/p;->a()Ljava/util/Map;

    move-result-object v2

    .line 478
    invoke-virtual {v0, v1, v2}, Lu/aly/o;->b(Lu/aly/f;Ljava/util/Map;)V

    .line 488
    :cond_1
    iget-object v0, p0, Lu/aly/m;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 489
    iget-object v0, p0, Lu/aly/m;->b:Lu/aly/o;

    new-instance v1, Lu/aly/f;

    invoke-direct {v1}, Lu/aly/f;-><init>()V

    iget-object v2, p0, Lu/aly/m;->l:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lu/aly/o;->a(Lu/aly/f;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    :cond_2
    :goto_0
    return-void

    .line 491
    :catch_0
    move-exception v0

    .line 492
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertMemoryToCacheTable happen error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lu/aly/bx;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private q()V
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lu/aly/m;->b:Lu/aly/o;

    invoke-virtual {v0}, Lu/aly/o;->b()Ljava/util/List;

    move-result-object v0

    .line 502
    if-eqz v0, :cond_0

    .line 503
    iput-object v0, p0, Lu/aly/m;->l:Ljava/util/List;

    .line 506
    :cond_0
    return-void
.end method


# virtual methods
.method public a(JJLjava/lang/String;)V
    .locals 9

    .prologue
    .line 417
    iget-object v1, p0, Lu/aly/m;->b:Lu/aly/o;

    new-instance v2, Lu/aly/m$13;

    invoke-direct {v2, p0}, Lu/aly/m$13;-><init>(Lu/aly/m;)V

    move-object v3, p5

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v1 .. v7}, Lu/aly/o;->a(Lu/aly/f;Ljava/lang/String;JJ)V

    .line 425
    return-void
.end method

.method public a(Lu/aly/f;)V
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lu/aly/m;->d:Z

    if-eqz v0, :cond_0

    .line 181
    :goto_0
    return-void

    .line 149
    :cond_0
    new-instance v0, Lu/aly/m$6;

    invoke-direct {v0, p0, p1}, Lu/aly/m$6;-><init>(Lu/aly/m;Lu/aly/f;)V

    invoke-static {v0}, Lu/aly/by;->b(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(Lu/aly/f;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu/aly/f;",
            "Ljava/util/Map",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lu/aly/l;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 194
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lu/aly/l;

    .line 196
    invoke-virtual {v0}, Lu/aly/l;->a()Ljava/util/List;

    move-result-object v1

    .line 197
    iget-object v2, p0, Lu/aly/m;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 198
    iget-object v2, p0, Lu/aly/m;->l:Ljava/util/List;

    invoke-static {v1}, Lu/aly/d;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 199
    iget-object v1, p0, Lu/aly/m;->a:Lu/aly/h;

    new-instance v2, Lu/aly/m$7;

    invoke-direct {v2, p0, p1}, Lu/aly/m$7;-><init>(Lu/aly/m;Lu/aly/f;)V

    invoke-virtual {v1, v2, v0}, Lu/aly/h;->a(Lu/aly/f;Lu/aly/l;)V

    .line 243
    :goto_0
    return-void

    .line 213
    :cond_0
    iget-boolean v2, p0, Lu/aly/m;->e:Z

    if-eqz v2, :cond_1

    .line 214
    invoke-direct {p0, v0, v1}, Lu/aly/m;->a(Lu/aly/l;Ljava/util/List;)V

    goto :goto_0

    .line 219
    :cond_1
    invoke-direct {p0}, Lu/aly/m;->i()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 220
    invoke-static {v1}, Lu/aly/d;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 222
    iget-object v3, p0, Lu/aly/m;->l:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 223
    iget-object v3, p0, Lu/aly/m;->l:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    :cond_2
    iget-object v2, p0, Lu/aly/m;->a:Lu/aly/h;

    new-instance v3, Lu/aly/m$8;

    invoke-direct {v3, p0}, Lu/aly/m$8;-><init>(Lu/aly/m;)V

    invoke-virtual {v2, v3, v1, v0}, Lu/aly/h;->a(Lu/aly/f;Ljava/util/List;Lu/aly/l;)V

    goto :goto_0

    .line 238
    :cond_3
    invoke-direct {p0, v0, v1}, Lu/aly/m;->a(Lu/aly/l;Ljava/util/List;)V

    .line 240
    invoke-direct {p0}, Lu/aly/m;->j()V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lu/aly/m;->d:Z

    return v0
.end method

.method public b()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 317
    iget-object v0, p0, Lu/aly/m;->b:Lu/aly/o;

    invoke-virtual {v0}, Lu/aly/o;->a()Lorg/json/JSONObject;

    move-result-object v2

    .line 318
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 319
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 320
    :cond_0
    const/4 v0, 0x0

    .line 330
    :goto_0
    return-object v0

    .line 322
    :cond_1
    iget-object v0, p0, Lu/aly/m;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 323
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 325
    :try_start_0
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 326
    :catch_0
    move-exception v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 330
    goto :goto_0
.end method

.method public b(Lu/aly/f;)V
    .locals 4

    .prologue
    .line 352
    const/4 v0, 0x0

    .line 353
    iget-boolean v1, p0, Lu/aly/m;->e:Z

    if-eqz v1, :cond_1

    .line 354
    iget-wide v0, p0, Lu/aly/m;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 355
    invoke-direct {p0}, Lu/aly/m;->l()V

    .line 357
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lu/aly/m;->f:J

    invoke-static {v0, v1, v2, v3}, Lu/aly/q;->a(JJ)Z

    move-result v0

    .line 359
    :cond_1
    if-nez v0, :cond_2

    .line 360
    invoke-direct {p0}, Lu/aly/m;->k()V

    .line 361
    iget-object v1, p0, Lu/aly/m;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 364
    :cond_2
    iget-object v1, p0, Lu/aly/m;->c:Lu/aly/p;

    invoke-virtual {v1}, Lu/aly/p;->b()V

    .line 365
    iget-object v1, p0, Lu/aly/m;->b:Lu/aly/o;

    new-instance v2, Lu/aly/m$11;

    invoke-direct {v2, p0}, Lu/aly/m$11;-><init>(Lu/aly/m;)V

    invoke-virtual {v1, v2, v0}, Lu/aly/o;->a(Lu/aly/f;Z)V

    .line 374
    return-void
.end method

.method public c()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 334
    iget-object v0, p0, Lu/aly/m;->c:Lu/aly/p;

    invoke-virtual {v0}, Lu/aly/p;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 335
    iget-object v0, p0, Lu/aly/m;->b:Lu/aly/o;

    new-instance v1, Lu/aly/m$10;

    invoke-direct {v1, p0}, Lu/aly/m$10;-><init>(Lu/aly/m;)V

    iget-object v2, p0, Lu/aly/m;->c:Lu/aly/p;

    .line 342
    invoke-virtual {v2}, Lu/aly/p;->a()Ljava/util/Map;

    move-result-object v2

    .line 335
    invoke-virtual {v0, v1, v2}, Lu/aly/o;->b(Lu/aly/f;Ljava/util/Map;)V

    .line 344
    :cond_0
    iget-object v0, p0, Lu/aly/m;->b:Lu/aly/o;

    new-instance v1, Lu/aly/f;

    invoke-direct {v1}, Lu/aly/f;-><init>()V

    invoke-virtual {v0, v1}, Lu/aly/o;->b(Lu/aly/f;)Lorg/json/JSONObject;

    move-result-object v0

    .line 345
    return-object v0
.end method

.method public d()V
    .locals 0

    .prologue
    .line 509
    invoke-direct {p0}, Lu/aly/m;->p()V

    .line 510
    return-void
.end method

.method public e()V
    .locals 0

    .prologue
    .line 513
    invoke-direct {p0}, Lu/aly/m;->p()V

    .line 514
    return-void
.end method

.method public f()V
    .locals 0

    .prologue
    .line 517
    invoke-direct {p0}, Lu/aly/m;->p()V

    .line 518
    return-void
.end method
