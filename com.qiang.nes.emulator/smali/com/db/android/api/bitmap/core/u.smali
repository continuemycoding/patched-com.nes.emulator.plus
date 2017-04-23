.class final Lcom/db/android/api/bitmap/core/u;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static bO:I = 0x1

.field private static bP:I = 0x2

.field private static bQ:I = 0x3

.field private static bR:I = 0x4

.field private static bS:I = 0x5


# instance fields
.field private synthetic bL:Lcom/db/android/api/bitmap/core/r;


# direct methods
.method private constructor <init>(Lcom/db/android/api/bitmap/core/r;)V
    .locals 0

    iput-object p1, p0, Lcom/db/android/api/bitmap/core/u;->bL:Lcom/db/android/api/bitmap/core/r;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/db/android/api/bitmap/core/r;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/db/android/api/bitmap/core/u;-><init>(Lcom/db/android/api/bitmap/core/r;)V

    return-void
.end method

.method private varargs b([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/db/android/api/bitmap/core/u;->bL:Lcom/db/android/api/bitmap/core/r;

    invoke-static {v0}, Lcom/db/android/api/bitmap/core/r;->a(Lcom/db/android/api/bitmap/core/r;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/db/android/api/bitmap/core/u;->bL:Lcom/db/android/api/bitmap/core/r;

    invoke-static {v0}, Lcom/db/android/api/bitmap/core/r;->b(Lcom/db/android/api/bitmap/core/r;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/db/android/api/bitmap/core/u;->bL:Lcom/db/android/api/bitmap/core/r;

    invoke-static {v0}, Lcom/db/android/api/bitmap/core/r;->c(Lcom/db/android/api/bitmap/core/r;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/db/android/api/bitmap/core/u;->bL:Lcom/db/android/api/bitmap/core/r;

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/db/android/api/bitmap/core/r;->a(Lcom/db/android/api/bitmap/core/r;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/db/android/api/bitmap/core/u;->bL:Lcom/db/android/api/bitmap/core/r;

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/db/android/api/bitmap/core/r;->b(Lcom/db/android/api/bitmap/core/r;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/db/android/api/bitmap/core/u;->bL:Lcom/db/android/api/bitmap/core/r;

    invoke-static {v0}, Lcom/db/android/api/bitmap/core/r;->a(Lcom/db/android/api/bitmap/core/r;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/db/android/api/bitmap/core/u;->bL:Lcom/db/android/api/bitmap/core/r;

    invoke-static {v0}, Lcom/db/android/api/bitmap/core/r;->b(Lcom/db/android/api/bitmap/core/r;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/db/android/api/bitmap/core/u;->bL:Lcom/db/android/api/bitmap/core/r;

    invoke-static {v0}, Lcom/db/android/api/bitmap/core/r;->c(Lcom/db/android/api/bitmap/core/r;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/db/android/api/bitmap/core/u;->bL:Lcom/db/android/api/bitmap/core/r;

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/db/android/api/bitmap/core/r;->a(Lcom/db/android/api/bitmap/core/r;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/db/android/api/bitmap/core/u;->bL:Lcom/db/android/api/bitmap/core/r;

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/db/android/api/bitmap/core/r;->b(Lcom/db/android/api/bitmap/core/r;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
