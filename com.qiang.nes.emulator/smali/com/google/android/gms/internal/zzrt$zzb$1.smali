.class Lcom/google/android/gms/internal/zzrt$zzb$1;
.super Lcom/google/android/gms/internal/zzrp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzrt$zzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbbq:Lcom/google/android/gms/internal/zzrt$zzb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzrt$zzb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrt$zzb$1;->zzbbq:Lcom/google/android/gms/internal/zzrt$zzb;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzrp;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/safetynet/AttestationData;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrt$zzb$1;->zzbbq:Lcom/google/android/gms/internal/zzrt$zzb;

    new-instance v1, Lcom/google/android/gms/internal/zzrt$zza;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/zzrt$zza;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/safetynet/AttestationData;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzrt$zzb;->zzb(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
