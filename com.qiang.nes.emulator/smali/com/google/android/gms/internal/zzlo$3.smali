.class Lcom/google/android/gms/internal/zzlo$3;
.super Lcom/google/android/gms/internal/zzlo$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzlo;->stopRemoteDisplay(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzada:Lcom/google/android/gms/internal/zzlo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzlo;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlo$3;->zzada:Lcom/google/android/gms/internal/zzlo;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzlo$zzb;-><init>(Lcom/google/android/gms/internal/zzlo;Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/internal/zzlp;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzlo$3;->zza(Lcom/google/android/gms/internal/zzlp;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzlp;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzlo$zzb$zzb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzlo$zzb$zzb;-><init>(Lcom/google/android/gms/internal/zzlo$zzb;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzlp;->zza(Lcom/google/android/gms/internal/zzlq;)V

    return-void
.end method
