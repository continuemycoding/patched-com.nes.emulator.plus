.class final Lcom/db/android/api/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/db/android/api/bitmap/core/x;


# instance fields
.field private synthetic D:Ljava/lang/String;

.field private synthetic L:Lcom/db/android/api/callback/a;

.field private synthetic M:Landroid/widget/ImageView;

.field private synthetic N:Lcom/db/android/api/l;


# direct methods
.method constructor <init>(Lcom/db/android/api/l;Ljava/lang/String;Lcom/db/android/api/callback/a;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p2, p0, Lcom/db/android/api/m;->D:Ljava/lang/String;

    iput-object p3, p0, Lcom/db/android/api/m;->L:Lcom/db/android/api/callback/a;

    iput-object p4, p0, Lcom/db/android/api/m;->M:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/db/android/api/m;->D:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/m;->D:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/m;->L:Lcom/db/android/api/callback/a;

    iget-object v1, p0, Lcom/db/android/api/m;->D:Ljava/lang/String;

    iget-object v2, p0, Lcom/db/android/api/m;->M:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2, p1}, Lcom/db/android/api/callback/a;->onImageSuccess(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 3

    iget-object v0, p0, Lcom/db/android/api/m;->L:Lcom/db/android/api/callback/a;

    const/16 v1, 0x2710

    const-string v2, "MISSING_IMAGE_SRC"

    invoke-virtual {v0, v1, v2}, Lcom/db/android/api/callback/a;->onFail(ILjava/lang/String;)V

    return-void
.end method
