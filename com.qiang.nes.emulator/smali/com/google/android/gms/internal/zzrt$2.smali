.class Lcom/google/android/gms/internal/zzrt$2;
.super Lcom/google/android/gms/internal/zzrt$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzrt;->lookupUri(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbbl:Lcom/google/android/gms/internal/zzrt;

.field final synthetic zzbbm:Ljava/util/List;

.field final synthetic zzbbn:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzrt;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrt$2;->zzbbl:Lcom/google/android/gms/internal/zzrt;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzrt$2;->zzbbm:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzrt$2;->zzbbn:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzrt$zzc;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/internal/zzru;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzrt$2;->zza(Lcom/google/android/gms/internal/zzru;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzru;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrt$2;->zzbbp:Lcom/google/android/gms/internal/zzrr;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrt$2;->zzbbm:Ljava/util/List;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzrt$2;->zzbbn:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzru;->zza(Lcom/google/android/gms/internal/zzrr;Ljava/util/List;ILjava/lang/String;)V

    return-void
.end method
