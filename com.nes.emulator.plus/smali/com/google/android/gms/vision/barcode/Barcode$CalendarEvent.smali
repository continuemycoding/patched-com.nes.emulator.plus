.class public Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/vision/barcode/Barcode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CalendarEvent"
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/vision/barcode/zzd;


# instance fields
.field public description:Ljava/lang/String;

.field public end:Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;

.field public location:Ljava/lang/String;

.field public organizer:Ljava/lang/String;

.field public start:Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;

.field public status:Ljava/lang/String;

.field public summary:Ljava/lang/String;

.field final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/vision/barcode/zzd;

    invoke-direct {v0}, Lcom/google/android/gms/vision/barcode/zzd;-><init>()V

    sput-object v0, Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;->CREATOR:Lcom/google/android/gms/vision/barcode/zzd;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;->versionCode:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "summary"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "location"    # Ljava/lang/String;
    .param p5, "organizer"    # Ljava/lang/String;
    .param p6, "status"    # Ljava/lang/String;
    .param p7, "start"    # Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;
    .param p8, "end"    # Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;->summary:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;->description:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;->location:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;->organizer:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;->status:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;->start:Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;

    iput-object p8, p0, Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;->end:Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;->CREATOR:Lcom/google/android/gms/vision/barcode/zzd;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    sget-object v0, Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;->CREATOR:Lcom/google/android/gms/vision/barcode/zzd;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/vision/barcode/zzd;->zza(Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;Landroid/os/Parcel;I)V

    return-void
.end method
