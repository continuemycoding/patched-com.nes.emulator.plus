.class public final Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field public final zzaWI:Ljava/lang/String;

.field public final zzaWJ:Z

.field public final zzaWK:Z

.field public final zzaXG:Lcom/google/android/gms/nearby/messages/Strategy;

.field public final zzaXH:Ljava/lang/String;

.field public final zzaXL:Lcom/google/android/gms/nearby/messages/internal/zzb;

.field public final zzaXM:Lcom/google/android/gms/nearby/messages/MessageFilter;

.field public final zzaXN:Landroid/app/PendingIntent;

.field public final zzaXO:I

.field public final zzaXP:[B

.field public final zzaXQ:Lcom/google/android/gms/nearby/messages/internal/zzg;

.field public final zzaXm:Lcom/google/android/gms/nearby/messages/internal/zzc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzp;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/messages/internal/zzp;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;Lcom/google/android/gms/nearby/messages/Strategy;Landroid/os/IBinder;Lcom/google/android/gms/nearby/messages/MessageFilter;Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;[BZLandroid/os/IBinder;Z)V
    .locals 1
    .param p1, "versionCode"    # I
    .param p2, "messageListener"    # Landroid/os/IBinder;
    .param p3, "strategy"    # Lcom/google/android/gms/nearby/messages/Strategy;
    .param p4, "callbackAsBinder"    # Landroid/os/IBinder;
    .param p5, "filter"    # Lcom/google/android/gms/nearby/messages/MessageFilter;
    .param p6, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p7, "messageListenerKey"    # I
    .param p8, "zeroPartyPackageName"    # Ljava/lang/String;
    .param p9, "realClientPackageName"    # Ljava/lang/String;
    .param p10, "hint"    # [B
    .param p11, "isIgnoreNearbyPermission"    # Z
    .param p12, "subscribeCallbackAsBinder"    # Landroid/os/IBinder;
    .param p13, "useRealClientApiKey"    # Z

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->mVersionCode:I

    invoke-static {p2}, Lcom/google/android/gms/nearby/messages/internal/zzb$zza;->zzdt(Landroid/os/IBinder;)Lcom/google/android/gms/nearby/messages/internal/zzb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzaXL:Lcom/google/android/gms/nearby/messages/internal/zzb;

    iput-object p3, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzaXG:Lcom/google/android/gms/nearby/messages/Strategy;

    invoke-static {p4}, Lcom/google/android/gms/nearby/messages/internal/zzc$zza;->zzdu(Landroid/os/IBinder;)Lcom/google/android/gms/nearby/messages/internal/zzc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzaXm:Lcom/google/android/gms/nearby/messages/internal/zzc;

    iput-object p5, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzaXM:Lcom/google/android/gms/nearby/messages/MessageFilter;

    iput-object p6, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzaXN:Landroid/app/PendingIntent;

    iput p7, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzaXO:I

    iput-object p8, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzaWI:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzaXH:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzaXP:[B

    iput-boolean p11, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzaWJ:Z

    if-nez p12, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzaXQ:Lcom/google/android/gms/nearby/messages/internal/zzg;

    iput-boolean p13, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzaWK:Z

    return-void

    :cond_0
    invoke-static {p12}, Lcom/google/android/gms/nearby/messages/internal/zzg$zza;->zzdy(Landroid/os/IBinder;)Lcom/google/android/gms/nearby/messages/internal/zzg;

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/os/IBinder;Lcom/google/android/gms/nearby/messages/Strategy;Landroid/os/IBinder;Lcom/google/android/gms/nearby/messages/MessageFilter;Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;[BZLandroid/os/IBinder;Z)V
    .locals 14
    .param p1, "messageListener"    # Landroid/os/IBinder;
    .param p2, "strategy"    # Lcom/google/android/gms/nearby/messages/Strategy;
    .param p3, "callbackAsBinder"    # Landroid/os/IBinder;
    .param p4, "filter"    # Lcom/google/android/gms/nearby/messages/MessageFilter;
    .param p5, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p6, "messageListenerKey"    # I
    .param p7, "zeroPartyPackageName"    # Ljava/lang/String;
    .param p8, "realClientPackageName"    # Ljava/lang/String;
    .param p9, "hint"    # [B
    .param p10, "isIgnoreNearbyPermission"    # Z
    .param p11, "subscribeCallbackAsBinder"    # Landroid/os/IBinder;
    .param p12, "useRealClientApiKey"    # Z

    .prologue
    const/4 v1, 0x3

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;-><init>(ILandroid/os/IBinder;Lcom/google/android/gms/nearby/messages/Strategy;Landroid/os/IBinder;Lcom/google/android/gms/nearby/messages/MessageFilter;Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;[BZLandroid/os/IBinder;Z)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/nearby/messages/internal/zzp;->zza(Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;Landroid/os/Parcel;I)V

    return-void
.end method

.method zzCJ()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzaXm:Lcom/google/android/gms/nearby/messages/internal/zzc;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzaXm:Lcom/google/android/gms/nearby/messages/internal/zzc;

    invoke-interface {v0}, Lcom/google/android/gms/nearby/messages/internal/zzc;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method zzCM()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzaXL:Lcom/google/android/gms/nearby/messages/internal/zzb;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzaXL:Lcom/google/android/gms/nearby/messages/internal/zzb;

    invoke-interface {v0}, Lcom/google/android/gms/nearby/messages/internal/zzb;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method zzCN()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzaXQ:Lcom/google/android/gms/nearby/messages/internal/zzg;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzaXQ:Lcom/google/android/gms/nearby/messages/internal/zzg;

    invoke-interface {v0}, Lcom/google/android/gms/nearby/messages/internal/zzg;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method
