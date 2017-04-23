.class Lcom/google/android/gms/internal/zzpv$1;
.super Lcom/google/android/gms/internal/zzou$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzpv;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/DataSet;Z)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaxB:Lcom/google/android/gms/fitness/data/DataSet;

.field final synthetic zzaxC:Z

.field final synthetic zzaxD:Lcom/google/android/gms/internal/zzpv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpv;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/DataSet;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpv$1;->zzaxD:Lcom/google/android/gms/internal/zzpv;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzpv$1;->zzaxB:Lcom/google/android/gms/fitness/data/DataSet;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzpv$1;->zzaxC:Z

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzou$zzc;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/internal/zzou;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzpv$1;->zza(Lcom/google/android/gms/internal/zzou;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzou;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v1, Lcom/google/android/gms/internal/zzqa;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzqa;-><init>(Lcom/google/android/gms/internal/zzlx$zzb;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzou;->zzqs()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpf;

    new-instance v2, Lcom/google/android/gms/fitness/request/DataInsertRequest;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzpv$1;->zzaxB:Lcom/google/android/gms/fitness/data/DataSet;

    iget-boolean v4, p0, Lcom/google/android/gms/internal/zzpv$1;->zzaxC:Z

    invoke-direct {v2, v3, v1, v4}, Lcom/google/android/gms/fitness/request/DataInsertRequest;-><init>(Lcom/google/android/gms/fitness/data/DataSet;Lcom/google/android/gms/internal/zzpp;Z)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzpf;->zza(Lcom/google/android/gms/fitness/request/DataInsertRequest;)V

    return-void
.end method
