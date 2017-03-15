.class public Lcom/google/android/gms/vision/face/FaceDetector$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/vision/face/FaceDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private zzamE:I

.field private zzbiD:I

.field private zzbiE:Z

.field private zzbiF:I

.field private zzbiG:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->zzbiD:I

    iput-boolean v1, p0, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->zzbiE:Z

    iput v1, p0, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->zzbiF:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->zzbiG:Z

    iput v1, p0, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->zzamE:I

    iput-object p1, p0, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/vision/face/FaceDetector;
    .locals 3

    new-instance v0, Lcom/google/android/gms/vision/face/internal/client/FaceSettingsParcel;

    invoke-direct {v0}, Lcom/google/android/gms/vision/face/internal/client/FaceSettingsParcel;-><init>()V

    iget v1, p0, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->zzamE:I

    iput v1, v0, Lcom/google/android/gms/vision/face/internal/client/FaceSettingsParcel;->mode:I

    iget v1, p0, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->zzbiD:I

    iput v1, v0, Lcom/google/android/gms/vision/face/internal/client/FaceSettingsParcel;->zzbiO:I

    iget v1, p0, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->zzbiF:I

    iput v1, v0, Lcom/google/android/gms/vision/face/internal/client/FaceSettingsParcel;->zzbiP:I

    iget-boolean v1, p0, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->zzbiE:Z

    iput-boolean v1, v0, Lcom/google/android/gms/vision/face/internal/client/FaceSettingsParcel;->zzbiQ:Z

    iget-boolean v1, p0, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->zzbiG:Z

    iput-boolean v1, v0, Lcom/google/android/gms/vision/face/internal/client/FaceSettingsParcel;->zzbiR:Z

    new-instance v1, Lcom/google/android/gms/vision/face/internal/client/zzg;

    iget-object v2, p0, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/vision/face/internal/client/zzg;-><init>(Landroid/content/Context;Lcom/google/android/gms/vision/face/internal/client/FaceSettingsParcel;)V

    new-instance v0, Lcom/google/android/gms/vision/face/FaceDetector;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/vision/face/FaceDetector;-><init>(Lcom/google/android/gms/vision/face/internal/client/zzg;Lcom/google/android/gms/vision/face/FaceDetector$1;)V

    return-object v0
.end method

.method public setClassificationType(I)Lcom/google/android/gms/vision/face/FaceDetector$Builder;
    .locals 3
    .param p1, "classificationType"    # I

    .prologue
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid classification type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->zzbiF:I

    return-object p0
.end method

.method public setLandmarkType(I)Lcom/google/android/gms/vision/face/FaceDetector$Builder;
    .locals 3
    .param p1, "landmarkType"    # I

    .prologue
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid landmark type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->zzbiD:I

    return-object p0
.end method

.method public setMode(I)Lcom/google/android/gms/vision/face/FaceDetector$Builder;
    .locals 3
    .param p1, "mode"    # I

    .prologue
    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iput p1, p0, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->zzamE:I

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setProminentFaceOnly(Z)Lcom/google/android/gms/vision/face/FaceDetector$Builder;
    .locals 0
    .param p1, "prominentFaceOnly"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->zzbiE:Z

    return-object p0
.end method

.method public setTrackingEnabled(Z)Lcom/google/android/gms/vision/face/FaceDetector$Builder;
    .locals 0
    .param p1, "trackingEnabled"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->zzbiG:Z

    return-object p0
.end method
