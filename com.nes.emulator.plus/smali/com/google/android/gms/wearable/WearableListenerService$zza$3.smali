.class Lcom/google/android/gms/wearable/WearableListenerService$zza$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/wearable/WearableListenerService$zza;->zza(Lcom/google/android/gms/wearable/internal/LargeAssetSyncRequestPayload;Lcom/google/android/gms/wearable/internal/zzay;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbmk:Lcom/google/android/gms/wearable/WearableListenerService$zza;

.field final synthetic zzbmm:Lcom/google/android/gms/wearable/internal/LargeAssetSyncRequestPayload;

.field final synthetic zzbmn:Lcom/google/android/gms/wearable/internal/zzay;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/WearableListenerService$zza;Lcom/google/android/gms/wearable/internal/LargeAssetSyncRequestPayload;Lcom/google/android/gms/wearable/internal/zzay;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/wearable/WearableListenerService$zza$3;->zzbmk:Lcom/google/android/gms/wearable/WearableListenerService$zza;

    iput-object p2, p0, Lcom/google/android/gms/wearable/WearableListenerService$zza$3;->zzbmm:Lcom/google/android/gms/wearable/internal/LargeAssetSyncRequestPayload;

    iput-object p3, p0, Lcom/google/android/gms/wearable/WearableListenerService$zza$3;->zzbmn:Lcom/google/android/gms/wearable/internal/zzay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v1, Lcom/google/android/gms/wearable/internal/zzbj;

    iget-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService$zza$3;->zzbmm:Lcom/google/android/gms/wearable/internal/LargeAssetSyncRequestPayload;

    iget-object v2, p0, Lcom/google/android/gms/wearable/WearableListenerService$zza$3;->zzbmn:Lcom/google/android/gms/wearable/internal/zzay;

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/wearable/internal/zzbj;-><init>(Lcom/google/android/gms/wearable/internal/LargeAssetSyncRequestPayload;Lcom/google/android/gms/wearable/internal/zzay;)V

    iget-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService$zza$3;->zzbmk:Lcom/google/android/gms/wearable/WearableListenerService$zza;

    iget-object v0, v0, Lcom/google/android/gms/wearable/WearableListenerService$zza;->zzbmi:Lcom/google/android/gms/wearable/WearableListenerService;

    check-cast v0, Lcom/google/android/gms/wearable/zzk;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/wearable/zzk;->zza(Lcom/google/android/gms/wearable/zzh;)V

    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/wearable/internal/zzbj;->zzGX()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "WearableLS"

    const-string v2, "Failed to respond to LargeAssetRequest"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
