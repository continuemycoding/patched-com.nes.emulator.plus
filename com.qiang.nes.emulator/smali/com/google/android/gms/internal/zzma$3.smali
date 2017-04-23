.class Lcom/google/android/gms/internal/zzma$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzma;->zzoF()V
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

    iput-object p1, p0, Lcom/google/android/gms/internal/zzma$3;->zzafB:Lcom/google/android/gms/internal/zzma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzma$3;->zzafB:Lcom/google/android/gms/internal/zzma;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzma;->zza(Lcom/google/android/gms/internal/zzma;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzma$3;->zzafB:Lcom/google/android/gms/internal/zzma;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzma;->zzb(Lcom/google/android/gms/internal/zzma;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzma$3;->zzafB:Lcom/google/android/gms/internal/zzma;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzma;->zza(Lcom/google/android/gms/internal/zzma;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzma$3;->zzafB:Lcom/google/android/gms/internal/zzma;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzma;->zza(Lcom/google/android/gms/internal/zzma;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
