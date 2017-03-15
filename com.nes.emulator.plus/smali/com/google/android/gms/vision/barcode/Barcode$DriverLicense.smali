.class public Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/vision/barcode/Barcode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DriverLicense"
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/vision/barcode/zzf;


# instance fields
.field public addressCity:Ljava/lang/String;

.field public addressState:Ljava/lang/String;

.field public addressStreet:Ljava/lang/String;

.field public addressZip:Ljava/lang/String;

.field public birthDate:Ljava/lang/String;

.field public documentType:Ljava/lang/String;

.field public expiryDate:Ljava/lang/String;

.field public firstName:Ljava/lang/String;

.field public gender:Ljava/lang/String;

.field public issueDate:Ljava/lang/String;

.field public issuingCountry:Ljava/lang/String;

.field public lastName:Ljava/lang/String;

.field public licenseNumber:Ljava/lang/String;

.field public middleName:Ljava/lang/String;

.field final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/vision/barcode/zzf;

    invoke-direct {v0}, Lcom/google/android/gms/vision/barcode/zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->CREATOR:Lcom/google/android/gms/vision/barcode/zzf;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->versionCode:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "documentType"    # Ljava/lang/String;
    .param p3, "firstName"    # Ljava/lang/String;
    .param p4, "middleName"    # Ljava/lang/String;
    .param p5, "lastName"    # Ljava/lang/String;
    .param p6, "gender"    # Ljava/lang/String;
    .param p7, "addressStreet"    # Ljava/lang/String;
    .param p8, "addressCity"    # Ljava/lang/String;
    .param p9, "addressState"    # Ljava/lang/String;
    .param p10, "addressZip"    # Ljava/lang/String;
    .param p11, "licenseNumber"    # Ljava/lang/String;
    .param p12, "issueDate"    # Ljava/lang/String;
    .param p13, "expiryDate"    # Ljava/lang/String;
    .param p14, "birthDate"    # Ljava/lang/String;
    .param p15, "issuingCountry"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->documentType:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->firstName:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->middleName:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->lastName:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->gender:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->addressStreet:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->addressCity:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->addressState:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->addressZip:Ljava/lang/String;

    iput-object p11, p0, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->licenseNumber:Ljava/lang/String;

    iput-object p12, p0, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->issueDate:Ljava/lang/String;

    iput-object p13, p0, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->expiryDate:Ljava/lang/String;

    iput-object p14, p0, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->birthDate:Ljava/lang/String;

    iput-object p15, p0, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->issuingCountry:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->CREATOR:Lcom/google/android/gms/vision/barcode/zzf;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    sget-object v0, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->CREATOR:Lcom/google/android/gms/vision/barcode/zzf;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/vision/barcode/zzf;->zza(Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;Landroid/os/Parcel;I)V

    return-void
.end method
