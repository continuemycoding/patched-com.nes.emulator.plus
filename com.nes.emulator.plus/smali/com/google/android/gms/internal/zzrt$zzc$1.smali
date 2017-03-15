.class Lcom/google/android/gms/internal/zzrt$zzc$1;
.super Lcom/google/android/gms/internal/zzrp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzrt$zzc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbbr:Lcom/google/android/gms/internal/zzrt$zzc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzrt$zzc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrt$zzc$1;->zzbbr:Lcom/google/android/gms/internal/zzrt$zzc;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzrp;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/safetynet/SafeBrowsingData;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrt$zzc$1;->zzbbr:Lcom/google/android/gms/internal/zzrt$zzc;

    new-instance v1, Lcom/google/android/gms/internal/zzrt$zzd;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/zzrt$zzd;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/safetynet/SafeBrowsingData;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzrt$zzc;->zzb(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
