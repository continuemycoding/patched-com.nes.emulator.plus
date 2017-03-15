.class public Lcom/google/android/gms/vision/face/internal/client/zzg;
.super Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzbiT:Lcom/google/android/gms/vision/face/internal/client/FaceSettingsParcel;

.field private zzbiU:Lcom/google/android/gms/vision/face/internal/client/zzc;

.field private zzbiV:Z

.field private final zzpK:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/vision/face/internal/client/FaceSettingsParcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/vision/face/internal/client/zzg;->zzpK:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/vision/face/internal/client/zzg;->zzbiU:Lcom/google/android/gms/vision/face/internal/client/zzc;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/vision/face/internal/client/zzg;->zzbiV:Z

    iput-object p1, p0, Lcom/google/android/gms/vision/face/internal/client/zzg;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/vision/face/internal/client/zzg;->zzbiT:Lcom/google/android/gms/vision/face/internal/client/FaceSettingsParcel;

    invoke-direct {p0}, Lcom/google/android/gms/vision/face/internal/client/zzg;->zzGn()Lcom/google/android/gms/vision/face/internal/client/zzc;

    return-void
.end method

.method private zzGn()Lcom/google/android/gms/vision/face/internal/client/zzc;
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/vision/face/internal/client/zzg;->zzpK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/vision/face/internal/client/zzg;->zzbiU:Lcom/google/android/gms/vision/face/internal/client/zzc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/vision/face/internal/client/zzg;->zzbiU:Lcom/google/android/gms/vision/face/internal/client/zzc;

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/vision/face/internal/client/zzg;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/vision/face/internal/client/zzg;->zzbiT:Lcom/google/android/gms/vision/face/internal/client/FaceSettingsParcel;

    invoke-static {v0, v2}, Lcom/google/android/gms/vision/face/internal/client/zzf;->zza(Landroid/content/Context;Lcom/google/android/gms/vision/face/internal/client/FaceSettingsParcel;)Lcom/google/android/gms/vision/face/internal/client/zzc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/vision/face/internal/client/zzg;->zzbiU:Lcom/google/android/gms/vision/face/internal/client/zzc;

    iget-boolean v0, p0, Lcom/google/android/gms/vision/face/internal/client/zzg;->zzbiV:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/vision/face/internal/client/zzg;->zzbiU:Lcom/google/android/gms/vision/face/internal/client/zzc;

    if-nez v0, :cond_2

    const-string v0, "FaceDetectorHandle"

    const-string v2, "Native face detector not yet available.  Reverting to no-op detection."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/vision/face/internal/client/zzg;->zzbiV:Z

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/vision/face/internal/client/zzg;->zzbiU:Lcom/google/android/gms/vision/face/internal/client/zzc;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/vision/face/internal/client/zzg;->zzbiV:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/vision/face/internal/client/zzg;->zzbiU:Lcom/google/android/gms/vision/face/internal/client/zzc;

    if-eqz v0, :cond_1

    const-string v0, "FaceDetectorHandle"

    const-string v2, "Native face detector is now available."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private zza(Lcom/google/android/gms/vision/face/internal/client/FaceParcel;)Lcom/google/android/gms/vision/face/Face;
    .locals 11

    new-instance v0, Lcom/google/android/gms/vision/face/Face;

    iget v1, p1, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->id:I

    new-instance v2, Landroid/graphics/PointF;

    iget v3, p1, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->centerX:F

    iget v4, p1, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->centerY:F

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    iget v3, p1, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->width:F

    iget v4, p1, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->height:F

    iget v5, p1, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->zzbiI:F

    iget v6, p1, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->zzbiJ:F

    invoke-direct {p0, p1}, Lcom/google/android/gms/vision/face/internal/client/zzg;->zzb(Lcom/google/android/gms/vision/face/internal/client/FaceParcel;)[Lcom/google/android/gms/vision/face/Landmark;

    move-result-object v7

    iget v8, p1, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->zzbiL:F

    iget v9, p1, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->zzbiM:F

    iget v10, p1, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->zzbiN:F

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/vision/face/Face;-><init>(ILandroid/graphics/PointF;FFFF[Lcom/google/android/gms/vision/face/Landmark;FFF)V

    return-object v0
.end method

.method private zza(Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;)Lcom/google/android/gms/vision/face/Landmark;
    .locals 4

    new-instance v0, Lcom/google/android/gms/vision/face/Landmark;

    new-instance v1, Landroid/graphics/PointF;

    iget v2, p1, Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;->x:F

    iget v3, p1, Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;->y:F

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iget v2, p1, Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;->type:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/vision/face/Landmark;-><init>(Landroid/graphics/PointF;I)V

    return-object v0
.end method

.method private zzb(Lcom/google/android/gms/vision/face/internal/client/FaceParcel;)[Lcom/google/android/gms/vision/face/Landmark;
    .locals 4

    const/4 v0, 0x0

    iget-object v2, p1, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->zzbiK:[Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;

    if-nez v2, :cond_0

    new-array v0, v0, [Lcom/google/android/gms/vision/face/Landmark;

    :goto_0
    return-object v0

    :cond_0
    array-length v1, v2

    new-array v1, v1, [Lcom/google/android/gms/vision/face/Landmark;

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-object v3, v2, v0

    invoke-direct {p0, v3}, Lcom/google/android/gms/vision/face/internal/client/zzg;->zza(Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;)Lcom/google/android/gms/vision/face/Landmark;

    move-result-object v3

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public isOperational()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/vision/face/internal/client/zzg;->zzGn()Lcom/google/android/gms/vision/face/internal/client/zzc;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzGm()V
    .locals 4

    iget-object v1, p0, Lcom/google/android/gms/vision/face/internal/client/zzg;->zzpK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/vision/face/internal/client/zzg;->zzbiU:Lcom/google/android/gms/vision/face/internal/client/zzc;

    if-nez v0, :cond_0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/vision/face/internal/client/zzg;->zzbiU:Lcom/google/android/gms/vision/face/internal/client/zzc;

    invoke-interface {v0}, Lcom/google/android/gms/vision/face/internal/client/zzc;->zzGm()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v2, "FaceDetectorHandle"

    const-string v3, "Could not finalize native face detector"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public zzb(Ljava/nio/ByteBuffer;Lcom/google/android/gms/vision/internal/client/FrameMetadataParcel;)[Lcom/google/android/gms/vision/face/Face;
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/vision/face/internal/client/zzg;->zzGn()Lcom/google/android/gms/vision/face/internal/client/zzc;

    move-result-object v1

    if-nez v1, :cond_0

    new-array v0, v0, [Lcom/google/android/gms/vision/face/Face;

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzB(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Lcom/google/android/gms/vision/face/internal/client/zzc;->zzc(Lcom/google/android/gms/dynamic/zzd;Lcom/google/android/gms/vision/internal/client/FrameMetadataParcel;)[Lcom/google/android/gms/vision/face/internal/client/FaceParcel;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    array-length v1, v2

    new-array v1, v1, [Lcom/google/android/gms/vision/face/Face;

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-object v3, v2, v0

    invoke-direct {p0, v3}, Lcom/google/android/gms/vision/face/internal/client/zzg;->zza(Lcom/google/android/gms/vision/face/internal/client/FaceParcel;)Lcom/google/android/gms/vision/face/Face;

    move-result-object v3

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "FaceDetectorHandle"

    const-string v3, "Could not call native face detector"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-array v0, v0, [Lcom/google/android/gms/vision/face/Face;

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public zzks(I)Z
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/vision/face/internal/client/zzg;->zzGn()Lcom/google/android/gms/vision/face/internal/client/zzc;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Lcom/google/android/gms/vision/face/internal/client/zzc;->zzks(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "FaceDetectorHandle"

    const-string v3, "Could not call native face detector"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
