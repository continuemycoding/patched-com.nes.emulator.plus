.class Lcom/google/android/gms/internal/zzpt$5;
.super Lcom/google/android/gms/internal/zzos$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzpt;->unclaimBleDevice(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaxu:Lcom/google/android/gms/internal/zzpt;

.field final synthetic zzaxw:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpt;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpt$5;->zzaxu:Lcom/google/android/gms/internal/zzpt;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzpt$5;->zzaxw:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzos$zzc;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzos;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzpt$5;->zza(Lcom/google/android/gms/internal/zzos;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzos;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v1, Lcom/google/android/gms/internal/zzqa;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzqa;-><init>(Lcom/google/android/gms/internal/zzlx$zzb;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzos;->zzqs()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpd;

    new-instance v2, Lcom/google/android/gms/fitness/request/UnclaimBleDeviceRequest;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzpt$5;->zzaxw:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Lcom/google/android/gms/fitness/request/UnclaimBleDeviceRequest;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzpp;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzpd;->zza(Lcom/google/android/gms/fitness/request/UnclaimBleDeviceRequest;)V

    return-void
.end method
