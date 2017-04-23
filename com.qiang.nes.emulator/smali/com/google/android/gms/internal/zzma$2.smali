.class Lcom/google/android/gms/internal/zzma$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzmm$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzma;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzmg;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/GoogleApiAvailability;Ljava/util/Map;Lcom/google/android/gms/common/internal/zzf;Ljava/util/Map;Lcom/google/android/gms/common/api/Api$zza;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzafB:Lcom/google/android/gms/internal/zzma;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzma;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzma$2;->zzafB:Lcom/google/android/gms/internal/zzma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzbz(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzma$2;->zzafB:Lcom/google/android/gms/internal/zzma;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzma;->zza(Lcom/google/android/gms/internal/zzma;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzma$2;->zzafB:Lcom/google/android/gms/internal/zzma;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzma$2;->zzafB:Lcom/google/android/gms/internal/zzma;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzma;->zzd(Lcom/google/android/gms/internal/zzma;)Lcom/google/android/gms/internal/zzmi;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/zzma;->zza(Lcom/google/android/gms/internal/zzma;Lcom/google/android/gms/internal/zzmi;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzma$2;->zzafB:Lcom/google/android/gms/internal/zzma;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzma;->zza(Lcom/google/android/gms/internal/zzma;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzma$2;->zzafB:Lcom/google/android/gms/internal/zzma;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzma;->zza(Lcom/google/android/gms/internal/zzma;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public zze(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzma$2;->zzafB:Lcom/google/android/gms/internal/zzma;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzma;->zza(Lcom/google/android/gms/internal/zzma;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzma$2;->zzafB:Lcom/google/android/gms/internal/zzma;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzma;->zzb(Lcom/google/android/gms/internal/zzma;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzma$2;->zzafB:Lcom/google/android/gms/internal/zzma;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzma;->zzb(Lcom/google/android/gms/internal/zzma;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzma$2;->zzafB:Lcom/google/android/gms/internal/zzma;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzma;->zza(Lcom/google/android/gms/internal/zzma;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzma$2;->zzafB:Lcom/google/android/gms/internal/zzma;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzma;->zza(Lcom/google/android/gms/internal/zzma;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public zzi(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzma$2;->zzafB:Lcom/google/android/gms/internal/zzma;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzma;->zza(Lcom/google/android/gms/internal/zzma;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzma$2;->zzafB:Lcom/google/android/gms/internal/zzma;

    sget-object v1, Lcom/google/android/gms/common/ConnectionResult;->zzadR:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzma;->zzb(Lcom/google/android/gms/internal/zzma;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzma$2;->zzafB:Lcom/google/android/gms/internal/zzma;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzma;->zzb(Lcom/google/android/gms/internal/zzma;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzma$2;->zzafB:Lcom/google/android/gms/internal/zzma;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzma;->zza(Lcom/google/android/gms/internal/zzma;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzma$2;->zzafB:Lcom/google/android/gms/internal/zzma;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzma;->zza(Lcom/google/android/gms/internal/zzma;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
