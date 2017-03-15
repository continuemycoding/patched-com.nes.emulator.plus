.class public Lcom/google/android/gms/vision/barcode/Barcode$Sms;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/vision/barcode/Barcode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sms"
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/vision/barcode/zzk;


# instance fields
.field public message:Ljava/lang/String;

.field public phoneNumber:Ljava/lang/String;

.field final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/vision/barcode/zzk;

    invoke-direct {v0}, Lcom/google/android/gms/vision/barcode/zzk;-><init>()V

    sput-object v0, Lcom/google/android/gms/vision/barcode/Barcode$Sms;->CREATOR:Lcom/google/android/gms/vision/barcode/zzk;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/vision/barcode/Barcode$Sms;->versionCode:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "phoneNumber"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/vision/barcode/Barcode$Sms;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/vision/barcode/Barcode$Sms;->message:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/vision/barcode/Barcode$Sms;->phoneNumber:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/vision/barcode/Barcode$Sms;->CREATOR:Lcom/google/android/gms/vision/barcode/zzk;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    sget-object v0, Lcom/google/android/gms/vision/barcode/Barcode$Sms;->CREATOR:Lcom/google/android/gms/vision/barcode/zzk;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/vision/barcode/zzk;->zza(Lcom/google/android/gms/vision/barcode/Barcode$Sms;Landroid/os/Parcel;I)V

    return-void
.end method
