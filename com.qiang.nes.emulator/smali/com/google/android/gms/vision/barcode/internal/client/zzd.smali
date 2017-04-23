.class public Lcom/google/android/gms/vision/barcode/internal/client/zzd;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/vision/barcode/internal/client/zzd$zza;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzbip:Lcom/google/android/gms/vision/barcode/internal/client/BarcodeDetectorOptions;

.field private zzbir:Lcom/google/android/gms/vision/barcode/internal/client/zzb;

.field private final zzpK:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/vision/barcode/internal/client/BarcodeDetectorOptions;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/vision/barcode/internal/client/zzd;->zzpK:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/vision/barcode/internal/client/zzd;->zzbir:Lcom/google/android/gms/vision/barcode/internal/client/zzb;

    iput-object p1, p0, Lcom/google/android/gms/vision/barcode/internal/client/zzd;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/vision/barcode/internal/client/zzd;->zzbip:Lcom/google/android/gms/vision/barcode/internal/client/BarcodeDetectorOptions;

    invoke-direct {p0}, Lcom/google/android/gms/vision/barcode/internal/client/zzd;->zzGl()Lcom/google/android/gms/vision/barcode/internal/client/zzb;

    return-void
.end method

.method private zzGl()Lcom/google/android/gms/vision/barcode/internal/client/zzb;
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/vision/barcode/internal/client/zzd;->zzpK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/vision/barcode/internal/client/zzd;->zzbir:Lcom/google/android/gms/vision/barcode/internal/client/zzb;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/vision/barcode/internal/client/zzd;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/vision/barcode/internal/client/zzd;->zzbip:Lcom/google/android/gms/vision/barcode/internal/client/BarcodeDetectorOptions;

    invoke-static {v0, v2}, Lcom/google/android/gms/vision/barcode/internal/client/zzd$zza;->zza(Landroid/content/Context;Lcom/google/android/gms/vision/barcode/internal/client/BarcodeDetectorOptions;)Lcom/google/android/gms/vision/barcode/internal/client/zzb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/vision/barcode/internal/client/zzd;->zzbir:Lcom/google/android/gms/vision/barcode/internal/client/zzb;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/vision/barcode/internal/client/zzd;->zzbir:Lcom/google/android/gms/vision/barcode/internal/client/zzb;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public isOperational()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/vision/barcode/internal/client/zzd;->zzGl()Lcom/google/android/gms/vision/barcode/internal/client/zzb;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zza(Landroid/graphics/Bitmap;Lcom/google/android/gms/vision/internal/client/FrameMetadataParcel;)[Lcom/google/android/gms/vision/barcode/Barcode;
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/vision/barcode/internal/client/zzd;->zzGl()Lcom/google/android/gms/vision/barcode/internal/client/zzb;

    move-result-object v0

    if-nez v0, :cond_0

    new-array v0, v3, [Lcom/google/android/gms/vision/barcode/Barcode;

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzB(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/vision/barcode/internal/client/zzb;->zzb(Lcom/google/android/gms/dynamic/zzd;Lcom/google/android/gms/vision/internal/client/FrameMetadataParcel;)[Lcom/google/android/gms/vision/barcode/Barcode;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "NativeBarcodeDetectorHandle"

    const-string v2, "Error calling native barcode detector"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-array v0, v3, [Lcom/google/android/gms/vision/barcode/Barcode;

    goto :goto_0
.end method

.method public zza(Ljava/nio/ByteBuffer;Lcom/google/android/gms/vision/internal/client/FrameMetadataParcel;)[Lcom/google/android/gms/vision/barcode/Barcode;
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/vision/barcode/internal/client/zzd;->zzGl()Lcom/google/android/gms/vision/barcode/internal/client/zzb;

    move-result-object v0

    if-nez v0, :cond_0

    new-array v0, v3, [Lcom/google/android/gms/vision/barcode/Barcode;

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzB(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/vision/barcode/internal/client/zzb;->zza(Lcom/google/android/gms/dynamic/zzd;Lcom/google/android/gms/vision/internal/client/FrameMetadataParcel;)[Lcom/google/android/gms/vision/barcode/Barcode;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "NativeBarcodeDetectorHandle"

    const-string v2, "Error calling native barcode detector"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-array v0, v3, [Lcom/google/android/gms/vision/barcode/Barcode;

    goto :goto_0
.end method
