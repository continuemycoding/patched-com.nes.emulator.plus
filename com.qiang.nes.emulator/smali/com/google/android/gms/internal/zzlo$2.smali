.class Lcom/google/android/gms/internal/zzlo$2;
.super Lcom/google/android/gms/internal/zzlo$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzlo;->startRemoteDisplay(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzada:Lcom/google/android/gms/internal/zzlo;

.field final synthetic zzadb:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzlo;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlo$2;->zzada:Lcom/google/android/gms/internal/zzlo;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzlo$2;->zzadb:Ljava/lang/String;

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzlo$2;->zza(Lcom/google/android/gms/internal/zzlp;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzlp;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzlo$zzb$zza;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzlo$zzb$zza;-><init>(Lcom/google/android/gms/internal/zzlo$zzb;Lcom/google/android/gms/internal/zzlp;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlo$2;->zzada:Lcom/google/android/gms/internal/zzlo;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzlo;->zzb(Lcom/google/android/gms/internal/zzlo;)Lcom/google/android/gms/internal/zzls;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlo$2;->zzadb:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzlp;->zza(Lcom/google/android/gms/internal/zzlq;Lcom/google/android/gms/internal/zzls;Ljava/lang/String;)V

    return-void
.end method
