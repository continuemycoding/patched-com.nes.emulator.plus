.class Lcom/google/android/gms/wearable/internal/zzx$5;
.super Lcom/google/android/gms/wearable/internal/zzi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/wearable/internal/zzx;->deleteDataItems(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/net/Uri;I)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/wearable/internal/zzi",
        "<",
        "Lcom/google/android/gms/wearable/DataApi$DeleteDataItemsResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzaYf:Landroid/net/Uri;

.field final synthetic zzbnl:Lcom/google/android/gms/wearable/internal/zzx;

.field final synthetic zzbnm:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/internal/zzx;Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/net/Uri;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/zzx$5;->zzbnl:Lcom/google/android/gms/wearable/internal/zzx;

    iput-object p3, p0, Lcom/google/android/gms/wearable/internal/zzx$5;->zzaYf:Landroid/net/Uri;

    iput p4, p0, Lcom/google/android/gms/wearable/internal/zzx$5;->zzbnm:I

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/zzx$5;->zza(Lcom/google/android/gms/wearable/internal/zzce;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/wearable/internal/zzce;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzx$5;->zzaYf:Landroid/net/Uri;

    iget v1, p0, Lcom/google/android/gms/wearable/internal/zzx$5;->zzbnm:I

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/wearable/internal/zzce;->zzb(Lcom/google/android/gms/internal/zzlx$zzb;Landroid/net/Uri;I)V

    return-void
.end method

.method protected zzbt(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/wearable/DataApi$DeleteDataItemsResult;
    .locals 2

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzx$zzb;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/wearable/internal/zzx$zzb;-><init>(Lcom/google/android/gms/common/api/Status;I)V

    return-object v0
.end method

.method protected synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/zzx$5;->zzbt(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/wearable/DataApi$DeleteDataItemsResult;

    move-result-object v0

    return-object v0
.end method
