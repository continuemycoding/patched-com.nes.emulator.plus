.class public Lcom/google/android/gms/vision/internal/client/FrameMetadataParcel;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/vision/internal/client/zza;


# instance fields
.field public height:I

.field public id:I

.field public rotation:I

.field final versionCode:I

.field public width:I

.field public zzbiW:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/vision/internal/client/zza;

    invoke-direct {v0}, Lcom/google/android/gms/vision/internal/client/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/vision/internal/client/FrameMetadataParcel;->CREATOR:Lcom/google/android/gms/vision/internal/client/zza;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/vision/internal/client/FrameMetadataParcel;->versionCode:I

    return-void
.end method

.method public constructor <init>(IIIIJI)V
    .locals 1
    .param p1, "versionCode"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "id"    # I
    .param p5, "timestampMillis"    # J
    .param p7, "rotation"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/vision/internal/client/FrameMetadataParcel;->versionCode:I

    iput p2, p0, Lcom/google/android/gms/vision/internal/client/FrameMetadataParcel;->width:I

    iput p3, p0, Lcom/google/android/gms/vision/internal/client/FrameMetadataParcel;->height:I

    iput p4, p0, Lcom/google/android/gms/vision/internal/client/FrameMetadataParcel;->id:I

    iput-wide p5, p0, Lcom/google/android/gms/vision/internal/client/FrameMetadataParcel;->zzbiW:J

    iput p7, p0, Lcom/google/android/gms/vision/internal/client/FrameMetadataParcel;->rotation:I

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/vision/Frame;)Lcom/google/android/gms/vision/internal/client/FrameMetadataParcel;
    .locals 4

    new-instance v0, Lcom/google/android/gms/vision/internal/client/FrameMetadataParcel;

    invoke-direct {v0}, Lcom/google/android/gms/vision/internal/client/FrameMetadataParcel;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/vision/Frame;->getMetadata()Lcom/google/android/gms/vision/Frame$Metadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/vision/Frame$Metadata;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/vision/internal/client/FrameMetadataParcel;->width:I

    invoke-virtual {p0}, Lcom/google/android/gms/vision/Frame;->getMetadata()Lcom/google/android/gms/vision/Frame$Metadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/vision/Frame$Metadata;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/vision/internal/client/FrameMetadataParcel;->height:I

    invoke-virtual {p0}, Lcom/google/android/gms/vision/Frame;->getMetadata()Lcom/google/android/gms/vision/Frame$Metadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/vision/Frame$Metadata;->getRotation()I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/vision/internal/client/FrameMetadataParcel;->rotation:I

    invoke-virtual {p0}, Lcom/google/android/gms/vision/Frame;->getMetadata()Lcom/google/android/gms/vision/Frame$Metadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/vision/Frame$Metadata;->getId()I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/vision/internal/client/FrameMetadataParcel;->id:I

    invoke-virtual {p0}, Lcom/google/android/gms/vision/Frame;->getMetadata()Lcom/google/android/gms/vision/Frame$Metadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/vision/Frame$Metadata;->getTimestampMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/vision/internal/client/FrameMetadataParcel;->zzbiW:J

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/vision/internal/client/FrameMetadataParcel;->CREATOR:Lcom/google/android/gms/vision/internal/client/zza;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    sget-object v0, Lcom/google/android/gms/vision/internal/client/FrameMetadataParcel;->CREATOR:Lcom/google/android/gms/vision/internal/client/zza;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/vision/internal/client/zza;->zza(Lcom/google/android/gms/vision/internal/client/FrameMetadataParcel;Landroid/os/Parcel;I)V

    return-void
.end method
