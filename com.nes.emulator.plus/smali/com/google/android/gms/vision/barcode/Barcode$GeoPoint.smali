.class public Lcom/google/android/gms/vision/barcode/Barcode$GeoPoint;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/vision/barcode/Barcode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GeoPoint"
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/vision/barcode/zzh;


# instance fields
.field public lat:D

.field public lng:D

.field final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/vision/barcode/zzh;

    invoke-direct {v0}, Lcom/google/android/gms/vision/barcode/zzh;-><init>()V

    sput-object v0, Lcom/google/android/gms/vision/barcode/Barcode$GeoPoint;->CREATOR:Lcom/google/android/gms/vision/barcode/zzh;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/vision/barcode/Barcode$GeoPoint;->versionCode:I

    return-void
.end method

.method public constructor <init>(IDD)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "lat"    # D
    .param p4, "lng"    # D

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/vision/barcode/Barcode$GeoPoint;->versionCode:I

    iput-wide p2, p0, Lcom/google/android/gms/vision/barcode/Barcode$GeoPoint;->lat:D

    iput-wide p4, p0, Lcom/google/android/gms/vision/barcode/Barcode$GeoPoint;->lng:D

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/vision/barcode/Barcode$GeoPoint;->CREATOR:Lcom/google/android/gms/vision/barcode/zzh;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    sget-object v0, Lcom/google/android/gms/vision/barcode/Barcode$GeoPoint;->CREATOR:Lcom/google/android/gms/vision/barcode/zzh;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/vision/barcode/zzh;->zza(Lcom/google/android/gms/vision/barcode/Barcode$GeoPoint;Landroid/os/Parcel;I)V

    return-void
.end method
