.class Lcom/google/android/gms/internal/zzbl$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbl;->zzf(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzsV:Landroid/view/View;

.field final synthetic zzsW:Lcom/google/android/gms/internal/zzbl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbl;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbl$1;->zzsW:Lcom/google/android/gms/internal/zzbl;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbl$1;->zzsV:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbl$1;->zzsW:Lcom/google/android/gms/internal/zzbl;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbl$1;->zzsV:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbl;->zzg(Landroid/view/View;)V

    return-void
.end method
