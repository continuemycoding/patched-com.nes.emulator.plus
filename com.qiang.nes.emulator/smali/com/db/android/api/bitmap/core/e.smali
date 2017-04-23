.class final Lcom/db/android/api/bitmap/core/e;
.super Lcom/db/android/api/bitmap/core/z;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/db/android/api/bitmap/core/z",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic ac:Lcom/db/android/api/bitmap/core/d;


# direct methods
.method constructor <init>(Lcom/db/android/api/bitmap/core/d;I)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/db/android/api/bitmap/core/z;-><init>(I)V

    return-void
.end method

.method private static a(Landroid/graphics/Bitmap;)I
    .locals 1

    invoke-static {p0}, Lcom/db/android/api/utils/k;->h(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected final synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-static {p2}, Lcom/db/android/api/utils/k;->h(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method
