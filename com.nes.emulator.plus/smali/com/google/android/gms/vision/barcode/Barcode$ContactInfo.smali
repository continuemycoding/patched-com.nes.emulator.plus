.class public Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/vision/barcode/Barcode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactInfo"
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/vision/barcode/zze;


# instance fields
.field public addresses:[Lcom/google/android/gms/vision/barcode/Barcode$Address;

.field public emails:[Lcom/google/android/gms/vision/barcode/Barcode$Email;

.field public name:Lcom/google/android/gms/vision/barcode/Barcode$PersonName;

.field public organization:Ljava/lang/String;

.field public phones:[Lcom/google/android/gms/vision/barcode/Barcode$Phone;

.field public title:Ljava/lang/String;

.field public urls:[Ljava/lang/String;

.field final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/vision/barcode/zze;

    invoke-direct {v0}, Lcom/google/android/gms/vision/barcode/zze;-><init>()V

    sput-object v0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->CREATOR:Lcom/google/android/gms/vision/barcode/zze;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->versionCode:I

    return-void
.end method

.method public constructor <init>(ILcom/google/android/gms/vision/barcode/Barcode$PersonName;Ljava/lang/String;Ljava/lang/String;[Lcom/google/android/gms/vision/barcode/Barcode$Phone;[Lcom/google/android/gms/vision/barcode/Barcode$Email;[Ljava/lang/String;[Lcom/google/android/gms/vision/barcode/Barcode$Address;)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "name"    # Lcom/google/android/gms/vision/barcode/Barcode$PersonName;
    .param p3, "organization"    # Ljava/lang/String;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "phones"    # [Lcom/google/android/gms/vision/barcode/Barcode$Phone;
    .param p6, "emails"    # [Lcom/google/android/gms/vision/barcode/Barcode$Email;
    .param p7, "urls"    # [Ljava/lang/String;
    .param p8, "addresses"    # [Lcom/google/android/gms/vision/barcode/Barcode$Address;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->name:Lcom/google/android/gms/vision/barcode/Barcode$PersonName;

    iput-object p3, p0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->organization:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->title:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->phones:[Lcom/google/android/gms/vision/barcode/Barcode$Phone;

    iput-object p6, p0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->emails:[Lcom/google/android/gms/vision/barcode/Barcode$Email;

    iput-object p7, p0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->urls:[Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->addresses:[Lcom/google/android/gms/vision/barcode/Barcode$Address;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->CREATOR:Lcom/google/android/gms/vision/barcode/zze;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    sget-object v0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->CREATOR:Lcom/google/android/gms/vision/barcode/zze;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/vision/barcode/zze;->zza(Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;Landroid/os/Parcel;I)V

    return-void
.end method
