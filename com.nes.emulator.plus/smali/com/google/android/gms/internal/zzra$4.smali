.class Lcom/google/android/gms/internal/zzra$4;
.super Lcom/google/android/gms/internal/zzra$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzra;->sendConnectionRequest(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;[BLcom/google/android/gms/nearby/connection/Connections$ConnectionResponseCallback;Lcom/google/android/gms/nearby/connection/Connections$MessageListener;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$name:Ljava/lang/String;

.field final synthetic zzaEC:[B

.field final synthetic zzaWA:Lcom/google/android/gms/internal/zzmn;

.field final synthetic zzaWf:Ljava/lang/String;

.field final synthetic zzaWx:Lcom/google/android/gms/internal/zzra;

.field final synthetic zzaWz:Lcom/google/android/gms/internal/zzmn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzra;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;[BLcom/google/android/gms/internal/zzmn;Lcom/google/android/gms/internal/zzmn;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzra$4;->zzaWx:Lcom/google/android/gms/internal/zzra;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzra$4;->val$name:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzra$4;->zzaWf:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzra$4;->zzaEC:[B

    iput-object p6, p0, Lcom/google/android/gms/internal/zzra$4;->zzaWz:Lcom/google/android/gms/internal/zzmn;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzra$4;->zzaWA:Lcom/google/android/gms/internal/zzmn;

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzra$4;->zza(Lcom/google/android/gms/internal/zzqz;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzqz;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v2, p0, Lcom/google/android/gms/internal/zzra$4;->val$name:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzra$4;->zzaWf:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzra$4;->zzaEC:[B

    iget-object v5, p0, Lcom/google/android/gms/internal/zzra$4;->zzaWz:Lcom/google/android/gms/internal/zzmn;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzra$4;->zzaWA:Lcom/google/android/gms/internal/zzmn;

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/zzqz;->zza(Lcom/google/android/gms/internal/zzlx$zzb;Ljava/lang/String;Ljava/lang/String;[BLcom/google/android/gms/internal/zzmn;Lcom/google/android/gms/internal/zzmn;)V

    return-void
.end method
