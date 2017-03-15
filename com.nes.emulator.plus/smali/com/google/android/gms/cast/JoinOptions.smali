.class public Lcom/google/android/gms/cast/JoinOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/cast/JoinOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mVersionCode:I

.field private zzZc:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/cast/zzc;

    invoke-direct {v0}, Lcom/google/android/gms/cast/zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/JoinOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/cast/JoinOptions;-><init>(II)V

    return-void
.end method

.method constructor <init>(II)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "connectionType"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/cast/JoinOptions;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/cast/JoinOptions;->zzZc:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/cast/JoinOptions;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/cast/JoinOptions;

    .end local p1    # "obj":Ljava/lang/Object;
    iget v2, p0, Lcom/google/android/gms/cast/JoinOptions;->zzZc:I

    iget v3, p1, Lcom/google/android/gms/cast/JoinOptions;->zzZc:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getConnectionType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/JoinOptions;->zzZc:I

    return v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/JoinOptions;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/cast/JoinOptions;->zzZc:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzw;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/google/android/gms/cast/JoinOptions;->zzZc:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string v0, "UNKNOWN"

    :goto_0
    const-string v1, "joinOptions(connectionType=%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    const-string v0, "STRONG"

    goto :goto_0

    :pswitch_2
    const-string v0, "INVISIBLE"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/cast/zzc;->zza(Lcom/google/android/gms/cast/JoinOptions;Landroid/os/Parcel;I)V

    return-void
.end method
