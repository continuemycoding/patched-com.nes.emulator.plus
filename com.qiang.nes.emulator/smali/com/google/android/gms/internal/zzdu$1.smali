.class Lcom/google/android/gms/internal/zzdu$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzdu;->zzbp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzzl:Lcom/google/android/gms/internal/zzdu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzdu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdu$1;->zzzl:Lcom/google/android/gms/internal/zzdu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbL()Lcom/google/android/gms/internal/zzdv;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdu$1;->zzzl:Lcom/google/android/gms/internal/zzdu;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzdv;->zzb(Lcom/google/android/gms/internal/zzdu;)V

    return-void
.end method
