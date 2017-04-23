.class Lcom/google/android/gms/internal/zzra$5;
.super Lcom/google/android/gms/internal/zzra$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzra;->acceptConnectionRequest(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;[BLcom/google/android/gms/nearby/connection/Connections$MessageListener;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaEC:[B

.field final synthetic zzaWA:Lcom/google/android/gms/internal/zzmn;

.field final synthetic zzaWf:Ljava/lang/String;

.field final synthetic zzaWx:Lcom/google/android/gms/internal/zzra;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzra;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;[BLcom/google/android/gms/internal/zzmn;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzra$5;->zzaWx:Lcom/google/android/gms/internal/zzra;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzra$5;->zzaWf:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzra$5;->zzaEC:[B

    iput-object p5, p0, Lcom/google/android/gms/internal/zzra$5;->zzaWA:Lcom/google/android/gms/internal/zzmn;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/zzra$zzc;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzra$1;)V

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

    check-cast p1, Lcom/google/android/gms/internal/zzqz;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzra$5;->zza(Lcom/google/android/gms/internal/zzqz;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzqz;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra$5;->zzaWf:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzra$5;->zzaEC:[B

    iget-object v2, p0, Lcom/google/android/gms/internal/zzra$5;->zzaWA:Lcom/google/android/gms/internal/zzmn;

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/internal/zzqz;->zza(Lcom/google/android/gms/internal/zzlx$zzb;Ljava/lang/String;[BLcom/google/android/gms/internal/zzmn;)V

    return-void
.end method
