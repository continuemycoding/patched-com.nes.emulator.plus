.class public Lcom/google/android/gms/vision/barcode/internal/client/BarcodeDetectorOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/vision/barcode/internal/client/zza;


# instance fields
.field final versionCode:I

.field public zzbiq:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/vision/barcode/internal/client/zza;

    invoke-direct {v0}, Lcom/google/android/gms/vision/barcode/internal/client/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/vision/barcode/internal/client/BarcodeDetectorOptions;->CREATOR:Lcom/google/android/gms/vision/barcode/internal/client/zza;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/vision/barcode/internal/client/BarcodeDetectorOptions;->versionCode:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "barcodeFormats"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/vision/barcode/internal/client/BarcodeDetectorOptions;->versionCode:I

    iput p2, p0, Lcom/google/android/gms/vision/barcode/internal/client/BarcodeDetectorOptions;->zzbiq:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/vision/barcode/internal/client/BarcodeDetectorOptions;->CREATOR:Lcom/google/android/gms/vision/barcode/internal/client/zza;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    sget-object v0, Lcom/google/android/gms/vision/barcode/internal/client/BarcodeDetectorOptions;->CREATOR:Lcom/google/android/gms/vision/barcode/internal/client/zza;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/vision/barcode/internal/client/zza;->zza(Lcom/google/android/gms/vision/barcode/internal/client/BarcodeDetectorOptions;Landroid/os/Parcel;I)V

    return-void
.end method
