.class public Lcom/google/android/gms/internal/zzdu;
.super Lcom/google/android/gms/internal/zzil;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzha;
.end annotation


# instance fields
.field final zzps:Lcom/google/android/gms/internal/zzjn;

.field final zzzj:Lcom/google/android/gms/internal/zzdw;

.field private final zzzk:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzjn;Lcom/google/android/gms/internal/zzdw;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzil;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdu;->zzps:Lcom/google/android/gms/internal/zzjn;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdu;->zzzj:Lcom/google/android/gms/internal/zzdw;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzdu;->zzzk:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbL()Lcom/google/android/gms/internal/zzdv;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzdv;->zza(Lcom/google/android/gms/internal/zzdu;)V

    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdu;->zzzj:Lcom/google/android/gms/internal/zzdw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdw;->abort()V

    return-void
.end method

.method public zzbp()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdu;->zzzj:Lcom/google/android/gms/internal/zzdw;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdu;->zzzk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzdw;->zzZ(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/google/android/gms/internal/zzip;->zzKO:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzdu$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzdu$1;-><init>(Lcom/google/android/gms/internal/zzdu;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/google/android/gms/internal/zzip;->zzKO:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/zzdu$1;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzdu$1;-><init>(Lcom/google/android/gms/internal/zzdu;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v0
.end method
