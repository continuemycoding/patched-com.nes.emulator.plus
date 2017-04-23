.class public final Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/vision/face/internal/client/zze;


# instance fields
.field public final type:I

.field public final versionCode:I

.field public final x:F

.field public final y:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/vision/face/internal/client/zze;

    invoke-direct {v0}, Lcom/google/android/gms/vision/face/internal/client/zze;-><init>()V

    sput-object v0, Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;->CREATOR:Lcom/google/android/gms/vision/face/internal/client/zze;

    return-void
.end method

.method public constructor <init>(IFFI)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "type"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;->versionCode:I

    iput p2, p0, Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;->x:F

    iput p3, p0, Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;->y:F

    iput p4, p0, Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;->type:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/vision/face/internal/client/zze;->zza(Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;Landroid/os/Parcel;I)V

    return-void
.end method
