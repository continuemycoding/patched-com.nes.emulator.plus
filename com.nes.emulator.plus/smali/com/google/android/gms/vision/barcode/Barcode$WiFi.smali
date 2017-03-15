.class public Lcom/google/android/gms/vision/barcode/Barcode$WiFi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/vision/barcode/Barcode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WiFi"
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/vision/barcode/zzm;

.field public static final OPEN:I = 0x1

.field public static final WEP:I = 0x3

.field public static final WPA:I = 0x2


# instance fields
.field public encryptionType:I

.field public password:Ljava/lang/String;

.field public ssid:Ljava/lang/String;

.field final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/vision/barcode/zzm;

    invoke-direct {v0}, Lcom/google/android/gms/vision/barcode/zzm;-><init>()V

    sput-object v0, Lcom/google/android/gms/vision/barcode/Barcode$WiFi;->CREATOR:Lcom/google/android/gms/vision/barcode/zzm;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/vision/barcode/Barcode$WiFi;->versionCode:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "encryptionType"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/vision/barcode/Barcode$WiFi;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/vision/barcode/Barcode$WiFi;->ssid:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/vision/barcode/Barcode$WiFi;->password:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/vision/barcode/Barcode$WiFi;->encryptionType:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/vision/barcode/Barcode$WiFi;->CREATOR:Lcom/google/android/gms/vision/barcode/zzm;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    sget-object v0, Lcom/google/android/gms/vision/barcode/Barcode$WiFi;->CREATOR:Lcom/google/android/gms/vision/barcode/zzm;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/vision/barcode/zzm;->zza(Lcom/google/android/gms/vision/barcode/Barcode$WiFi;Landroid/os/Parcel;I)V

    return-void
.end method
