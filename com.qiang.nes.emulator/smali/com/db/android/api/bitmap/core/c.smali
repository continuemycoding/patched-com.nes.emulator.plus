.class public final Lcom/db/android/api/bitmap/core/c;
.super Landroid/graphics/drawable/NinePatchDrawable;

# interfaces
.implements Lcom/db/android/api/bitmap/core/a;


# instance fields
.field private final aa:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/db/android/api/bitmap/core/t;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/graphics/NinePatch;Lcom/db/android/api/bitmap/core/t;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/NinePatch;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/db/android/api/bitmap/core/c;->aa:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final g()Lcom/db/android/api/bitmap/core/t;
    .locals 1

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/c;->aa:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/db/android/api/bitmap/core/t;

    return-object v0
.end method
