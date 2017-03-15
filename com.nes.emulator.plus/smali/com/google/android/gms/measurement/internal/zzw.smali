.class abstract Lcom/google/android/gms/measurement/internal/zzw;
.super Lcom/google/android/gms/measurement/internal/zzv;


# instance fields
.field private zzOQ:Z

.field private zzOR:Z

.field private zzaUH:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzt;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzv;-><init>(Lcom/google/android/gms/measurement/internal/zzt;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzw;->zzaQX:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzb(Lcom/google/android/gms/measurement/internal/zzw;)V

    return-void
.end method


# virtual methods
.method isInitialized()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzw;->zzOQ:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzw;->zzOR:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method zzBP()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzw;->zzaUH:Z

    return v0
.end method

.method public final zza()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzw;->zzOQ:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t initialize twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzw;->zzir()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzw;->zzaQX:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzt;->zzBO()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzw;->zzOQ:Z

    return-void
.end method

.method protected abstract zzir()V
.end method

.method protected zzje()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzw;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method
