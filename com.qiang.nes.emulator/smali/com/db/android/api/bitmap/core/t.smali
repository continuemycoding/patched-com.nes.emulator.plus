.class public final Lcom/db/android/api/bitmap/core/t;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic bL:Lcom/db/android/api/bitmap/core/r;

.field private final bM:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final bN:Lcom/db/android/api/bitmap/core/i;

.field private data:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/db/android/api/bitmap/core/r;Landroid/view/View;Lcom/db/android/api/bitmap/core/i;)V
    .locals 1

    iput-object p1, p0, Lcom/db/android/api/bitmap/core/t;->bL:Lcom/db/android/api/bitmap/core/r;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/db/android/api/bitmap/core/t;->bM:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/db/android/api/bitmap/core/t;->bN:Lcom/db/android/api/bitmap/core/i;

    return-void
.end method

.method private O()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/t;->bM:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/db/android/api/bitmap/core/r;->b(Landroid/view/View;)Lcom/db/android/api/bitmap/core/t;

    move-result-object v1

    if-ne p0, v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private varargs a([Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/db/android/api/bitmap/core/t;->data:Ljava/lang/Object;

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/t;->data:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/db/android/api/bitmap/core/t;->bL:Lcom/db/android/api/bitmap/core/r;

    invoke-static {v2}, Lcom/db/android/api/bitmap/core/r;->d(Lcom/db/android/api/bitmap/core/r;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/db/android/api/bitmap/core/t;->bL:Lcom/db/android/api/bitmap/core/r;

    invoke-static {v3}, Lcom/db/android/api/bitmap/core/r;->e(Lcom/db/android/api/bitmap/core/r;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/db/android/api/bitmap/core/t;->isCancelled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    :try_start_1
    iget-object v3, p0, Lcom/db/android/api/bitmap/core/t;->bL:Lcom/db/android/api/bitmap/core/r;

    invoke-static {v3}, Lcom/db/android/api/bitmap/core/r;->d(Lcom/db/android/api/bitmap/core/r;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_0

    :cond_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0}, Lcom/db/android/api/bitmap/core/t;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/db/android/api/bitmap/core/t;->O()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/db/android/api/bitmap/core/t;->bL:Lcom/db/android/api/bitmap/core/r;

    invoke-static {v2}, Lcom/db/android/api/bitmap/core/r;->f(Lcom/db/android/api/bitmap/core/r;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/t;->bL:Lcom/db/android/api/bitmap/core/r;

    iget-object v2, p0, Lcom/db/android/api/bitmap/core/t;->bN:Lcom/db/android/api/bitmap/core/i;

    invoke-static {v0, v1, v2}, Lcom/db/android/api/bitmap/core/r;->a(Lcom/db/android/api/bitmap/core/r;Ljava/lang/String;Lcom/db/android/api/bitmap/core/i;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    iget-object v2, p0, Lcom/db/android/api/bitmap/core/t;->bN:Lcom/db/android/api/bitmap/core/i;

    invoke-virtual {v2}, Lcom/db/android/api/bitmap/core/i;->o()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/t;->bN:Lcom/db/android/api/bitmap/core/i;

    invoke-virtual {v0}, Lcom/db/android/api/bitmap/core/i;->n()Lcom/db/android/api/bitmap/core/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/db/android/api/bitmap/core/k;->u()Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_3

    sget-object v2, Lcom/db/android/api/bitmap/core/r;->bD:Lcom/db/android/api/bitmap/core/f;

    invoke-virtual {v2, v1, v0}, Lcom/db/android/api/bitmap/core/f;->b(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_3
    return-object v0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/db/android/api/bitmap/core/t;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/t;->data:Ljava/lang/Object;

    return-object v0
.end method

.method private onCancelled(Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/t;->bL:Lcom/db/android/api/bitmap/core/r;

    invoke-static {v0}, Lcom/db/android/api/bitmap/core/r;->d(Lcom/db/android/api/bitmap/core/r;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/db/android/api/bitmap/core/t;->bL:Lcom/db/android/api/bitmap/core/r;

    invoke-static {v0}, Lcom/db/android/api/bitmap/core/r;->d(Lcom/db/android/api/bitmap/core/r;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 3

    invoke-virtual {p0}, Lcom/db/android/api/bitmap/core/t;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/t;->bL:Lcom/db/android/api/bitmap/core/r;

    invoke-static {v0}, Lcom/db/android/api/bitmap/core/r;->f(Lcom/db/android/api/bitmap/core/r;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    :cond_1
    invoke-direct {p0}, Lcom/db/android/api/bitmap/core/t;->O()Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_6

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/db/android/api/bitmap/core/t;->bL:Lcom/db/android/api/bitmap/core/r;

    invoke-static {v1}, Lcom/db/android/api/bitmap/core/r;->g(Lcom/db/android/api/bitmap/core/r;)Lcom/db/android/api/bitmap/core/v;

    move-result-object v1

    iget-object v1, v1, Lcom/db/android/api/bitmap/core/v;->bU:Lcom/db/android/api/bitmap/display/a;

    iget-object v2, p0, Lcom/db/android/api/bitmap/core/t;->bN:Lcom/db/android/api/bitmap/core/i;

    invoke-virtual {v1, v0, p1, v2}, Lcom/db/android/api/bitmap/display/a;->a(Landroid/view/View;Landroid/graphics/Bitmap;Lcom/db/android/api/bitmap/core/i;)V

    iget-object v1, p0, Lcom/db/android/api/bitmap/core/t;->data:Ljava/lang/Object;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/db/android/api/bitmap/core/t;->data:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_2
    iget-object v1, p0, Lcom/db/android/api/bitmap/core/t;->bL:Lcom/db/android/api/bitmap/core/r;

    invoke-static {v1}, Lcom/db/android/api/bitmap/core/r;->g(Lcom/db/android/api/bitmap/core/r;)Lcom/db/android/api/bitmap/core/v;

    move-result-object v1

    iget-object v1, v1, Lcom/db/android/api/bitmap/core/v;->bW:Lcom/db/android/api/bitmap/core/i;

    iget-object v1, v1, Lcom/db/android/api/bitmap/core/i;->at:Lcom/db/android/api/bitmap/core/x;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/db/android/api/bitmap/core/t;->bL:Lcom/db/android/api/bitmap/core/r;

    invoke-static {v1}, Lcom/db/android/api/bitmap/core/r;->g(Lcom/db/android/api/bitmap/core/r;)Lcom/db/android/api/bitmap/core/v;

    move-result-object v1

    iget-object v1, v1, Lcom/db/android/api/bitmap/core/v;->bW:Lcom/db/android/api/bitmap/core/i;

    iget-object v1, v1, Lcom/db/android/api/bitmap/core/i;->at:Lcom/db/android/api/bitmap/core/x;

    iget-object v2, p0, Lcom/db/android/api/bitmap/core/t;->data:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/db/android/api/bitmap/core/x;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/db/android/api/bitmap/core/t;->bL:Lcom/db/android/api/bitmap/core/r;

    invoke-static {v1}, Lcom/db/android/api/bitmap/core/r;->g(Lcom/db/android/api/bitmap/core/r;)Lcom/db/android/api/bitmap/core/v;

    move-result-object v1

    iget-object v1, v1, Lcom/db/android/api/bitmap/core/v;->bW:Lcom/db/android/api/bitmap/core/i;

    iget-object v1, v1, Lcom/db/android/api/bitmap/core/i;->as:Lcom/db/android/api/bitmap/core/k;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/db/android/api/bitmap/core/t;->data:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    :cond_4
    if-nez p1, :cond_5

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/t;->bL:Lcom/db/android/api/bitmap/core/r;

    invoke-static {v0}, Lcom/db/android/api/bitmap/core/r;->g(Lcom/db/android/api/bitmap/core/r;)Lcom/db/android/api/bitmap/core/v;

    move-result-object v0

    iget-object v0, v0, Lcom/db/android/api/bitmap/core/v;->bW:Lcom/db/android/api/bitmap/core/i;

    iget-object v0, v0, Lcom/db/android/api/bitmap/core/i;->at:Lcom/db/android/api/bitmap/core/x;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/t;->bL:Lcom/db/android/api/bitmap/core/r;

    invoke-static {v0}, Lcom/db/android/api/bitmap/core/r;->g(Lcom/db/android/api/bitmap/core/r;)Lcom/db/android/api/bitmap/core/v;

    move-result-object v0

    iget-object v0, v0, Lcom/db/android/api/bitmap/core/v;->bW:Lcom/db/android/api/bitmap/core/i;

    iget-object v0, v0, Lcom/db/android/api/bitmap/core/i;->at:Lcom/db/android/api/bitmap/core/x;

    iget-object v1, p0, Lcom/db/android/api/bitmap/core/t;->data:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    invoke-interface {v0}, Lcom/db/android/api/bitmap/core/x;->e()V

    :cond_5
    return-void

    :cond_6
    if-nez p1, :cond_3

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/db/android/api/bitmap/core/t;->bN:Lcom/db/android/api/bitmap/core/i;

    invoke-virtual {v1}, Lcom/db/android/api/bitmap/core/i;->t()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/db/android/api/bitmap/core/t;->bN:Lcom/db/android/api/bitmap/core/i;

    invoke-virtual {v1}, Lcom/db/android/api/bitmap/core/i;->t()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/db/android/api/bitmap/core/t;->bL:Lcom/db/android/api/bitmap/core/r;

    invoke-static {v1}, Lcom/db/android/api/bitmap/core/r;->g(Lcom/db/android/api/bitmap/core/r;)Lcom/db/android/api/bitmap/core/v;

    move-result-object v1

    iget-object v1, v1, Lcom/db/android/api/bitmap/core/v;->bU:Lcom/db/android/api/bitmap/display/a;

    iget-object v2, p0, Lcom/db/android/api/bitmap/core/t;->bN:Lcom/db/android/api/bitmap/core/i;

    invoke-virtual {v2}, Lcom/db/android/api/bitmap/core/i;->t()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/db/android/api/bitmap/display/a;->a(Landroid/view/View;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1}, Lcom/db/android/api/bitmap/core/t;->a([Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onCancelled(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/t;->bL:Lcom/db/android/api/bitmap/core/r;

    invoke-static {v0}, Lcom/db/android/api/bitmap/core/r;->d(Lcom/db/android/api/bitmap/core/r;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/db/android/api/bitmap/core/t;->bL:Lcom/db/android/api/bitmap/core/r;

    invoke-static {v0}, Lcom/db/android/api/bitmap/core/r;->d(Lcom/db/android/api/bitmap/core/r;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/db/android/api/bitmap/core/t;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/t;->bL:Lcom/db/android/api/bitmap/core/r;

    invoke-static {v0}, Lcom/db/android/api/bitmap/core/r;->f(Lcom/db/android/api/bitmap/core/r;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    :cond_1
    invoke-direct {p0}, Lcom/db/android/api/bitmap/core/t;->O()Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_6

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/db/android/api/bitmap/core/t;->bL:Lcom/db/android/api/bitmap/core/r;

    invoke-static {v1}, Lcom/db/android/api/bitmap/core/r;->g(Lcom/db/android/api/bitmap/core/r;)Lcom/db/android/api/bitmap/core/v;

    move-result-object v1

    iget-object v1, v1, Lcom/db/android/api/bitmap/core/v;->bU:Lcom/db/android/api/bitmap/display/a;

    iget-object v2, p0, Lcom/db/android/api/bitmap/core/t;->bN:Lcom/db/android/api/bitmap/core/i;

    invoke-virtual {v1, v0, p1, v2}, Lcom/db/android/api/bitmap/display/a;->a(Landroid/view/View;Landroid/graphics/Bitmap;Lcom/db/android/api/bitmap/core/i;)V

    iget-object v1, p0, Lcom/db/android/api/bitmap/core/t;->data:Ljava/lang/Object;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/db/android/api/bitmap/core/t;->data:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_2
    iget-object v1, p0, Lcom/db/android/api/bitmap/core/t;->bL:Lcom/db/android/api/bitmap/core/r;

    invoke-static {v1}, Lcom/db/android/api/bitmap/core/r;->g(Lcom/db/android/api/bitmap/core/r;)Lcom/db/android/api/bitmap/core/v;

    move-result-object v1

    iget-object v1, v1, Lcom/db/android/api/bitmap/core/v;->bW:Lcom/db/android/api/bitmap/core/i;

    iget-object v1, v1, Lcom/db/android/api/bitmap/core/i;->at:Lcom/db/android/api/bitmap/core/x;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/db/android/api/bitmap/core/t;->bL:Lcom/db/android/api/bitmap/core/r;

    invoke-static {v1}, Lcom/db/android/api/bitmap/core/r;->g(Lcom/db/android/api/bitmap/core/r;)Lcom/db/android/api/bitmap/core/v;

    move-result-object v1

    iget-object v1, v1, Lcom/db/android/api/bitmap/core/v;->bW:Lcom/db/android/api/bitmap/core/i;

    iget-object v1, v1, Lcom/db/android/api/bitmap/core/i;->at:Lcom/db/android/api/bitmap/core/x;

    iget-object v2, p0, Lcom/db/android/api/bitmap/core/t;->data:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/db/android/api/bitmap/core/x;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/db/android/api/bitmap/core/t;->bL:Lcom/db/android/api/bitmap/core/r;

    invoke-static {v1}, Lcom/db/android/api/bitmap/core/r;->g(Lcom/db/android/api/bitmap/core/r;)Lcom/db/android/api/bitmap/core/v;

    move-result-object v1

    iget-object v1, v1, Lcom/db/android/api/bitmap/core/v;->bW:Lcom/db/android/api/bitmap/core/i;

    iget-object v1, v1, Lcom/db/android/api/bitmap/core/i;->as:Lcom/db/android/api/bitmap/core/k;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/db/android/api/bitmap/core/t;->data:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    :cond_4
    if-nez p1, :cond_5

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/t;->bL:Lcom/db/android/api/bitmap/core/r;

    invoke-static {v0}, Lcom/db/android/api/bitmap/core/r;->g(Lcom/db/android/api/bitmap/core/r;)Lcom/db/android/api/bitmap/core/v;

    move-result-object v0

    iget-object v0, v0, Lcom/db/android/api/bitmap/core/v;->bW:Lcom/db/android/api/bitmap/core/i;

    iget-object v0, v0, Lcom/db/android/api/bitmap/core/i;->at:Lcom/db/android/api/bitmap/core/x;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/t;->bL:Lcom/db/android/api/bitmap/core/r;

    invoke-static {v0}, Lcom/db/android/api/bitmap/core/r;->g(Lcom/db/android/api/bitmap/core/r;)Lcom/db/android/api/bitmap/core/v;

    move-result-object v0

    iget-object v0, v0, Lcom/db/android/api/bitmap/core/v;->bW:Lcom/db/android/api/bitmap/core/i;

    iget-object v0, v0, Lcom/db/android/api/bitmap/core/i;->at:Lcom/db/android/api/bitmap/core/x;

    iget-object v1, p0, Lcom/db/android/api/bitmap/core/t;->data:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    invoke-interface {v0}, Lcom/db/android/api/bitmap/core/x;->e()V

    :cond_5
    return-void

    :cond_6
    if-nez p1, :cond_3

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/db/android/api/bitmap/core/t;->bN:Lcom/db/android/api/bitmap/core/i;

    invoke-virtual {v1}, Lcom/db/android/api/bitmap/core/i;->t()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/db/android/api/bitmap/core/t;->bN:Lcom/db/android/api/bitmap/core/i;

    invoke-virtual {v1}, Lcom/db/android/api/bitmap/core/i;->t()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/db/android/api/bitmap/core/t;->bL:Lcom/db/android/api/bitmap/core/r;

    invoke-static {v1}, Lcom/db/android/api/bitmap/core/r;->g(Lcom/db/android/api/bitmap/core/r;)Lcom/db/android/api/bitmap/core/v;

    move-result-object v1

    iget-object v1, v1, Lcom/db/android/api/bitmap/core/v;->bU:Lcom/db/android/api/bitmap/display/a;

    iget-object v2, p0, Lcom/db/android/api/bitmap/core/t;->bN:Lcom/db/android/api/bitmap/core/i;

    invoke-virtual {v2}, Lcom/db/android/api/bitmap/core/i;->t()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/db/android/api/bitmap/display/a;->a(Landroid/view/View;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
