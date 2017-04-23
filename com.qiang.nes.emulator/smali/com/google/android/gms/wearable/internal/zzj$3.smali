.class Lcom/google/android/gms/wearable/internal/zzj$3;
.super Lcom/google/android/gms/wearable/internal/zzi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/wearable/internal/zzj;->addLocalCapability(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/wearable/internal/zzi",
        "<",
        "Lcom/google/android/gms/wearable/CapabilityApi$AddLocalCapabilityResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzbmH:Ljava/lang/String;

.field final synthetic zzbmJ:Lcom/google/android/gms/wearable/internal/zzj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/internal/zzj;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/zzj$3;->zzbmJ:Lcom/google/android/gms/wearable/internal/zzj;

    iput-object p3, p0, Lcom/google/android/gms/wearable/internal/zzj$3;->zzbmH:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/google/android/gms/wearable/internal/zzi;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzce;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/zzj$3;->zza(Lcom/google/android/gms/wearable/internal/zzce;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/wearable/internal/zzce;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzj$3;->zzbmH:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/wearable/internal/zzce;->zzr(Lcom/google/android/gms/internal/zzlx$zzb;Ljava/lang/String;)V

    return-void
.end method

.method protected zzbm(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/wearable/CapabilityApi$AddLocalCapabilityResult;
    .locals 1

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzj$zza;

    invoke-direct {v0, p1}, Lcom/google/android/gms/wearable/internal/zzj$zza;-><init>(Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method protected synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/zzj$3;->zzbm(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/wearable/CapabilityApi$AddLocalCapabilityResult;

    move-result-object v0

    return-object v0
.end method
