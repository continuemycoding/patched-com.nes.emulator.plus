.class public Lcom/google/android/gms/vision/barcode/Barcode$Phone;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/vision/barcode/Barcode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Phone"
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/vision/barcode/zzj;

.field public static final FAX:I = 0x3

.field public static final HOME:I = 0x2

.field public static final MOBILE:I = 0x4

.field public static final UNKNOWN:I = 0x0

.field public static final WORK:I = 0x1


# instance fields
.field public number:Ljava/lang/String;

.field public type:I

.field final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/vision/barcode/zzj;

    invoke-direct {v0}, Lcom/google/android/gms/vision/barcode/zzj;-><init>()V

    sput-object v0, Lcom/google/android/gms/vision/barcode/Barcode$Phone;->CREATOR:Lcom/google/android/gms/vision/barcode/zzj;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/vision/barcode/Barcode$Phone;->versionCode:I

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "type"    # I
    .param p3, "number"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/vision/barcode/Barcode$Phone;->versionCode:I

    iput p2, p0, Lcom/google/android/gms/vision/barcode/Barcode$Phone;->type:I

    iput-object p3, p0, Lcom/google/android/gms/vision/barcode/Barcode$Phone;->number:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/vision/barcode/Barcode$Phone;->CREATOR:Lcom/google/android/gms/vision/barcode/zzj;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    sget-object v0, Lcom/google/android/gms/vision/barcode/Barcode$Phone;->CREATOR:Lcom/google/android/gms/vision/barcode/zzj;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/vision/barcode/zzj;->zza(Lcom/google/android/gms/vision/barcode/Barcode$Phone;Landroid/os/Parcel;I)V

    return-void
.end method
