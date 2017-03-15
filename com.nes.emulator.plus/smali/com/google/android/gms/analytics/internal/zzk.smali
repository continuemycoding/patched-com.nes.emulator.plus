.class public Lcom/google/android/gms/analytics/internal/zzk;
.super Lcom/google/android/gms/analytics/internal/zzd;


# instance fields
.field private final zzPD:Lcom/google/android/gms/internal/zzqh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/internal/zzf;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/internal/zzd;-><init>(Lcom/google/android/gms/analytics/internal/zzf;)V

    new-instance v0, Lcom/google/android/gms/internal/zzqh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzqh;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzk;->zzPD:Lcom/google/android/gms/internal/zzqh;

    return-void
.end method


# virtual methods
.method public zzim()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzk;->zziq()Lcom/google/android/gms/analytics/internal/zzan;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzan;->zzkP()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzk;->zzPD:Lcom/google/android/gms/internal/zzqh;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zzqh;->setAppName(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzan;->zzkR()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzk;->zzPD:Lcom/google/android/gms/internal/zzqh;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzqh;->setAppVersion(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected zzir()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzk;->zziW()Lcom/google/android/gms/measurement/zzg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/zzg;->zzzR()Lcom/google/android/gms/internal/zzqh;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzk;->zzPD:Lcom/google/android/gms/internal/zzqh;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzqh;->zza(Lcom/google/android/gms/internal/zzqh;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzk;->zzim()V

    return-void
.end method

.method public zzjB()Lcom/google/android/gms/internal/zzqh;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzk;->zzje()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzk;->zzPD:Lcom/google/android/gms/internal/zzqh;

    return-object v0
.end method
