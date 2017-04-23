.class public Lcom/db/android/api/gif/GifImageView;
.super Landroid/widget/ImageView;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "GifDecoderView"


# instance fields
.field private dp:Lcom/db/android/api/gif/a;

.field private dq:Landroid/graphics/Bitmap;

.field private dr:Z

.field private ds:Z

.field private dt:Z

.field private du:Ljava/lang/Thread;

.field private dv:Lcom/db/android/api/bitmap/core/k;

.field private dw:J

.field private dx:Lcom/db/android/api/bitmap/core/k;

.field private final dy:Ljava/lang/Runnable;

.field private final dz:Ljava/lang/Runnable;

.field private final handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/db/android/api/gif/GifImageView;->handler:Landroid/os/Handler;

    iput-object v2, p0, Lcom/db/android/api/gif/GifImageView;->dv:Lcom/db/android/api/bitmap/core/k;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/db/android/api/gif/GifImageView;->dw:J

    iput-object v2, p0, Lcom/db/android/api/gif/GifImageView;->dx:Lcom/db/android/api/bitmap/core/k;

    new-instance v0, Lcom/db/android/api/gif/f;

    invoke-direct {v0, p0}, Lcom/db/android/api/gif/f;-><init>(Lcom/db/android/api/gif/GifImageView;)V

    iput-object v0, p0, Lcom/db/android/api/gif/GifImageView;->dy:Ljava/lang/Runnable;

    new-instance v0, Lcom/db/android/api/gif/g;

    invoke-direct {v0, p0}, Lcom/db/android/api/gif/g;-><init>(Lcom/db/android/api/gif/GifImageView;)V

    iput-object v0, p0, Lcom/db/android/api/gif/GifImageView;->dz:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/db/android/api/gif/GifImageView;->handler:Landroid/os/Handler;

    iput-object v2, p0, Lcom/db/android/api/gif/GifImageView;->dv:Lcom/db/android/api/bitmap/core/k;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/db/android/api/gif/GifImageView;->dw:J

    iput-object v2, p0, Lcom/db/android/api/gif/GifImageView;->dx:Lcom/db/android/api/bitmap/core/k;

    new-instance v0, Lcom/db/android/api/gif/f;

    invoke-direct {v0, p0}, Lcom/db/android/api/gif/f;-><init>(Lcom/db/android/api/gif/GifImageView;)V

    iput-object v0, p0, Lcom/db/android/api/gif/GifImageView;->dy:Ljava/lang/Runnable;

    new-instance v0, Lcom/db/android/api/gif/g;

    invoke-direct {v0, p0}, Lcom/db/android/api/gif/g;-><init>(Lcom/db/android/api/gif/GifImageView;)V

    iput-object v0, p0, Lcom/db/android/api/gif/GifImageView;->dz:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/db/android/api/gif/GifImageView;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/db/android/api/gif/GifImageView;->dq:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic a(Lcom/db/android/api/gif/GifImageView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/db/android/api/gif/GifImageView;->dq:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic a(Lcom/db/android/api/gif/GifImageView;Lcom/db/android/api/gif/a;)Lcom/db/android/api/gif/a;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/db/android/api/gif/GifImageView;->dp:Lcom/db/android/api/gif/a;

    return-object v0
.end method

.method static synthetic a(Lcom/db/android/api/gif/GifImageView;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/db/android/api/gif/GifImageView;->du:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic a(Lcom/db/android/api/gif/GifImageView;Z)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/db/android/api/gif/GifImageView;->dt:Z

    return v0
.end method

.method private aA()Lcom/db/android/api/bitmap/core/k;
    .locals 1

    iget-object v0, p0, Lcom/db/android/api/gif/GifImageView;->dx:Lcom/db/android/api/bitmap/core/k;

    return-object v0
.end method

.method private aB()V
    .locals 1

    iget-boolean v0, p0, Lcom/db/android/api/gif/GifImageView;->dr:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/db/android/api/gif/GifImageView;->ds:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/db/android/api/gif/GifImageView;->dp:Lcom/db/android/api/gif/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/db/android/api/gif/GifImageView;->du:Ljava/lang/Thread;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/db/android/api/gif/GifImageView;->du:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/db/android/api/gif/GifImageView;->du:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ar()J
    .locals 2

    iget-wide v0, p0, Lcom/db/android/api/gif/GifImageView;->dw:J

    return-wide v0
.end method

.method private at()Z
    .locals 1

    iget-boolean v0, p0, Lcom/db/android/api/gif/GifImageView;->dr:Z

    return v0
.end method

.method private au()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/db/android/api/gif/GifImageView;->dr:Z

    iget-object v0, p0, Lcom/db/android/api/gif/GifImageView;->du:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/gif/GifImageView;->du:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/db/android/api/gif/GifImageView;->du:Ljava/lang/Thread;

    :cond_0
    return-void
.end method

.method private av()V
    .locals 1

    iget-object v0, p0, Lcom/db/android/api/gif/GifImageView;->dp:Lcom/db/android/api/gif/a;

    invoke-virtual {v0}, Lcom/db/android/api/gif/a;->U()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/db/android/api/gif/GifImageView;->w(I)V

    return-void
.end method

.method private aw()Z
    .locals 1

    iget-boolean v0, p0, Lcom/db/android/api/gif/GifImageView;->dr:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/db/android/api/gif/GifImageView;->ds:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/db/android/api/gif/GifImageView;->dp:Lcom/db/android/api/gif/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/db/android/api/gif/GifImageView;->du:Ljava/lang/Thread;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ax()I
    .locals 1

    iget-object v0, p0, Lcom/db/android/api/gif/GifImageView;->dp:Lcom/db/android/api/gif/a;

    invoke-virtual {v0}, Lcom/db/android/api/gif/a;->getWidth()I

    move-result v0

    return v0
.end method

.method private ay()I
    .locals 1

    iget-object v0, p0, Lcom/db/android/api/gif/GifImageView;->dp:Lcom/db/android/api/gif/a;

    invoke-virtual {v0}, Lcom/db/android/api/gif/a;->getHeight()I

    move-result v0

    return v0
.end method

.method private az()Lcom/db/android/api/bitmap/core/k;
    .locals 1

    iget-object v0, p0, Lcom/db/android/api/gif/GifImageView;->dv:Lcom/db/android/api/bitmap/core/k;

    return-object v0
.end method

.method private b(J)V
    .locals 1

    iput-wide p1, p0, Lcom/db/android/api/gif/GifImageView;->dw:J

    return-void
.end method

.method private clear()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/db/android/api/gif/GifImageView;->dr:Z

    iput-boolean v1, p0, Lcom/db/android/api/gif/GifImageView;->ds:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/db/android/api/gif/GifImageView;->dt:Z

    iput-boolean v1, p0, Lcom/db/android/api/gif/GifImageView;->dr:Z

    iget-object v0, p0, Lcom/db/android/api/gif/GifImageView;->du:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/gif/GifImageView;->du:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/db/android/api/gif/GifImageView;->du:Ljava/lang/Thread;

    :cond_0
    iget-object v0, p0, Lcom/db/android/api/gif/GifImageView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/db/android/api/gif/GifImageView;->dz:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private e(Lcom/db/android/api/bitmap/core/k;)V
    .locals 0

    iput-object p1, p0, Lcom/db/android/api/gif/GifImageView;->dv:Lcom/db/android/api/bitmap/core/k;

    return-void
.end method

.method private f(Lcom/db/android/api/bitmap/core/k;)V
    .locals 0

    iput-object p1, p0, Lcom/db/android/api/gif/GifImageView;->dx:Lcom/db/android/api/bitmap/core/k;

    return-void
.end method

.method private w(I)V
    .locals 2

    iget-object v0, p0, Lcom/db/android/api/gif/GifImageView;->dp:Lcom/db/android/api/gif/a;

    invoke-virtual {v0}, Lcom/db/android/api/gif/a;->S()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/db/android/api/gif/GifImageView;->dp:Lcom/db/android/api/gif/a;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/db/android/api/gif/a;->r(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/db/android/api/gif/GifImageView;->dr:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/db/android/api/gif/GifImageView;->ds:Z

    invoke-direct {p0}, Lcom/db/android/api/gif/GifImageView;->aB()V

    goto :goto_0
.end method


# virtual methods
.method public final as()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/db/android/api/gif/GifImageView;->dr:Z

    invoke-direct {p0}, Lcom/db/android/api/gif/GifImageView;->aB()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    iput-boolean v1, p0, Lcom/db/android/api/gif/GifImageView;->dr:Z

    iput-boolean v1, p0, Lcom/db/android/api/gif/GifImageView;->ds:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/db/android/api/gif/GifImageView;->dt:Z

    iput-boolean v1, p0, Lcom/db/android/api/gif/GifImageView;->dr:Z

    iget-object v0, p0, Lcom/db/android/api/gif/GifImageView;->du:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/gif/GifImageView;->du:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/db/android/api/gif/GifImageView;->du:Ljava/lang/Thread;

    :cond_0
    iget-object v0, p0, Lcom/db/android/api/gif/GifImageView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/db/android/api/gif/GifImageView;->dz:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public run()V
    .locals 9

    const-wide/16 v4, 0x0

    const/4 v8, 0x0

    :cond_0
    iget-boolean v0, p0, Lcom/db/android/api/gif/GifImageView;->dr:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/db/android/api/gif/GifImageView;->ds:Z

    if-eqz v0, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/db/android/api/gif/GifImageView;->dp:Lcom/db/android/api/gif/a;

    invoke-virtual {v0}, Lcom/db/android/api/gif/a;->advance()Z

    move-result v3

    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/db/android/api/gif/GifImageView;->dp:Lcom/db/android/api/gif/a;

    invoke-virtual {v2}, Lcom/db/android/api/gif/a;->X()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/db/android/api/gif/GifImageView;->dq:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/db/android/api/gif/GifImageView;->dv:Lcom/db/android/api/bitmap/core/k;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/db/android/api/gif/GifImageView;->dv:Lcom/db/android/api/bitmap/core/k;

    invoke-interface {v2}, Lcom/db/android/api/bitmap/core/k;->y()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/db/android/api/gif/GifImageView;->dq:Landroid/graphics/Bitmap;

    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v0, v6, v0

    const-wide/32 v6, 0xf4240

    div-long/2addr v0, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/db/android/api/gif/GifImageView;->handler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/db/android/api/gif/GifImageView;->dy:Ljava/lang/Runnable;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    iput-boolean v8, p0, Lcom/db/android/api/gif/GifImageView;->ds:Z

    iget-boolean v2, p0, Lcom/db/android/api/gif/GifImageView;->dr:Z

    if-eqz v2, :cond_3

    if-nez v3, :cond_6

    :cond_3
    iput-boolean v8, p0, Lcom/db/android/api/gif/GifImageView;->dr:Z

    :cond_4
    :goto_1
    iget-boolean v0, p0, Lcom/db/android/api/gif/GifImageView;->dt:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/db/android/api/gif/GifImageView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/db/android/api/gif/GifImageView;->dz:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/db/android/api/gif/GifImageView;->du:Ljava/lang/Thread;

    return-void

    :catch_0
    move-exception v0

    move-object v2, v0

    move-wide v0, v4

    :goto_2
    const-string v6, "GifDecoderView"

    invoke-static {v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_6
    :try_start_2
    iget-object v2, p0, Lcom/db/android/api/gif/GifImageView;->dp:Lcom/db/android/api/gif/a;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/db/android/api/gif/GifImageView;->dp:Lcom/db/android/api/gif/a;

    invoke-virtual {v2}, Lcom/db/android/api/gif/a;->R()I

    move-result v2

    int-to-long v2, v2

    sub-long v0, v2, v0

    long-to-int v0, v0

    if-lez v0, :cond_7

    iget-wide v2, p0, Lcom/db/android/api/gif/GifImageView;->dw:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_8

    iget-wide v0, p0, Lcom/db/android/api/gif/GifImageView;->dw:J

    :goto_3
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_7
    :goto_4
    iget-boolean v0, p0, Lcom/db/android/api/gif/GifImageView;->dr:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_8
    int-to-long v0, v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v2

    goto :goto_2
.end method

.method public final setBytes([B)V
    .locals 3

    new-instance v0, Lcom/db/android/api/gif/a;

    invoke-direct {v0}, Lcom/db/android/api/gif/a;-><init>()V

    iput-object v0, p0, Lcom/db/android/api/gif/GifImageView;->dp:Lcom/db/android/api/gif/a;

    :try_start_0
    iget-object v0, p0, Lcom/db/android/api/gif/GifImageView;->dp:Lcom/db/android/api/gif/a;

    invoke-virtual {v0, p1}, Lcom/db/android/api/gif/a;->read([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-boolean v0, p0, Lcom/db/android/api/gif/GifImageView;->dr:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/db/android/api/gif/GifImageView;->aB()V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/db/android/api/gif/GifImageView;->dp:Lcom/db/android/api/gif/a;

    const-string v1, "GifDecoderView"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/db/android/api/gif/GifImageView;->w(I)V

    goto :goto_0
.end method
