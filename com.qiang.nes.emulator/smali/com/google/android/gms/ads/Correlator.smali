.class public final Lcom/google/android/gms/ads/Correlator;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzha;
.end annotation


# instance fields
.field private zzoz:Lcom/google/android/gms/ads/internal/client/zzm;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzm;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/zzm;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/Correlator;->zzoz:Lcom/google/android/gms/ads/internal/client/zzm;

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/Correlator;->zzoz:Lcom/google/android/gms/ads/internal/client/zzm;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzm;->zzcS()V

    return-void
.end method

.method public zzaH()Lcom/google/android/gms/ads/internal/client/zzm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/Correlator;->zzoz:Lcom/google/android/gms/ads/internal/client/zzm;

    return-object v0
.end method
