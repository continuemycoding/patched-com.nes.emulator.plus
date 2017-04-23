.class Lcom/google/android/gms/internal/zzra$2;
.super Lcom/google/android/gms/internal/zzra$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzra;->startAdvertising(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/nearby/connection/AppMetadata;JLcom/google/android/gms/nearby/connection/Connections$ConnectionRequestListener;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$name:Ljava/lang/String;

.field final synthetic zzaWu:Lcom/google/android/gms/nearby/connection/AppMetadata;

.field final synthetic zzaWv:J

.field final synthetic zzaWw:Lcom/google/android/gms/internal/zzmn;

.field final synthetic zzaWx:Lcom/google/android/gms/internal/zzra;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzra;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/nearby/connection/AppMetadata;JLcom/google/android/gms/internal/zzmn;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzra$2;->zzaWx:Lcom/google/android/gms/internal/zzra;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzra$2;->val$name:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzra$2;->zzaWu:Lcom/google/android/gms/nearby/connection/AppMetadata;

    iput-wide p5, p0, Lcom/google/android/gms/internal/zzra$2;->zzaWv:J

    iput-object p7, p0, Lcom/google/android/gms/internal/zzra$2;->zzaWw:Lcom/google/android/gms/internal/zzmn;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/zzra$zzb;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzra$1;)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzra$2;->zza(Lcom/google/android/gms/internal/zzqz;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzqz;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v2, p0, Lcom/google/android/gms/internal/zzra$2;->val$name:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzra$2;->zzaWu:Lcom/google/android/gms/nearby/connection/AppMetadata;

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzra$2;->zzaWv:J

    iget-object v6, p0, Lcom/google/android/gms/internal/zzra$2;->zzaWw:Lcom/google/android/gms/internal/zzmn;

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/zzqz;->zza(Lcom/google/android/gms/internal/zzlx$zzb;Ljava/lang/String;Lcom/google/android/gms/nearby/connection/AppMetadata;JLcom/google/android/gms/internal/zzmn;)V

    return-void
.end method
