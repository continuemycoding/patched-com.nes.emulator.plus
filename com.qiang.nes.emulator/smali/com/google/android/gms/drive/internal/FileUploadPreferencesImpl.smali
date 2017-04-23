.class public final Lcom/google/android/gms/drive/internal/FileUploadPreferencesImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/drive/FileUploadPreferences;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/internal/FileUploadPreferencesImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field zzapC:I

.field zzapD:I

.field zzapE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/internal/zzag;

    invoke-direct {v0}, Lcom/google/android/gms/drive/internal/zzag;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/internal/FileUploadPreferencesImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IIIZ)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "networkTypePreference"    # I
    .param p3, "batteryUsagePreference"    # I
    .param p4, "allowRoaming"    # Z

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/internal/FileUploadPreferencesImpl;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/drive/internal/FileUploadPreferencesImpl;->zzapC:I

    iput p3, p0, Lcom/google/android/gms/drive/internal/FileUploadPreferencesImpl;->zzapD:I

    iput-boolean p4, p0, Lcom/google/android/gms/drive/internal/FileUploadPreferencesImpl;->zzapE:Z

    return-void
.end method

.method public static zzdg(I)Z
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static zzdh(I)Z
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x100
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBatteryUsagePreference()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/drive/internal/FileUploadPreferencesImpl;->zzapD:I

    invoke-static {v0}, Lcom/google/android/gms/drive/internal/FileUploadPreferencesImpl;->zzdh(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/drive/internal/FileUploadPreferencesImpl;->zzapD:I

    goto :goto_0
.end method

.method public getNetworkTypePreference()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/drive/internal/FileUploadPreferencesImpl;->zzapC:I

    invoke-static {v0}, Lcom/google/android/gms/drive/internal/FileUploadPreferencesImpl;->zzdg(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/drive/internal/FileUploadPreferencesImpl;->zzapC:I

    goto :goto_0
.end method

.method public isRoamingAllowed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/drive/internal/FileUploadPreferencesImpl;->zzapE:Z

    return v0
.end method

.method public setBatteryUsagePreference(I)V
    .locals 2
    .param p1, "batteryUsagePreference"    # I

    .prologue
    invoke-static {p1}, Lcom/google/android/gms/drive/internal/FileUploadPreferencesImpl;->zzdh(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid battery usage preference value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lcom/google/android/gms/drive/internal/FileUploadPreferencesImpl;->zzapD:I

    return-void
.end method

.method public setNetworkTypePreference(I)V
    .locals 2
    .param p1, "networkTypePreference"    # I

    .prologue
    invoke-static {p1}, Lcom/google/android/gms/drive/internal/FileUploadPreferencesImpl;->zzdg(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid data connection preference value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lcom/google/android/gms/drive/internal/FileUploadPreferencesImpl;->zzapC:I

    return-void
.end method

.method public setRoamingAllowed(Z)V
    .locals 0
    .param p1, "allowRoaming"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/google/android/gms/drive/internal/FileUploadPreferencesImpl;->zzapE:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/internal/zzag;->zza(Lcom/google/android/gms/drive/internal/FileUploadPreferencesImpl;Landroid/os/Parcel;I)V

    return-void
.end method
