.class Lcom/google/android/gms/nearby/messages/internal/zzj$zzd;
.super Lcom/google/android/gms/nearby/messages/internal/zzg$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/nearby/messages/internal/zzj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zzd"
.end annotation


# instance fields
.field private final zzaXx:Lcom/google/android/gms/nearby/messages/SubscribeCallback;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/nearby/messages/SubscribeCallback;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/nearby/messages/internal/zzg$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/nearby/messages/internal/zzj$zzd;->zzaXx:Lcom/google/android/gms/nearby/messages/SubscribeCallback;

    return-void
.end method

.method private static zza(Lcom/google/android/gms/nearby/messages/SubscribeCallback;)Lcom/google/android/gms/nearby/messages/internal/zzj$zzd;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzj$zzd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/nearby/messages/internal/zzj$zzd;-><init>(Lcom/google/android/gms/nearby/messages/SubscribeCallback;)V

    goto :goto_0
.end method

.method static synthetic zzb(Lcom/google/android/gms/nearby/messages/SubscribeCallback;)Lcom/google/android/gms/nearby/messages/internal/zzj$zzd;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/nearby/messages/internal/zzj$zzd;->zza(Lcom/google/android/gms/nearby/messages/SubscribeCallback;)Lcom/google/android/gms/nearby/messages/internal/zzj$zzd;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onExpired()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzj$zzd;->zzaXx:Lcom/google/android/gms/nearby/messages/SubscribeCallback;

    invoke-virtual {v0}, Lcom/google/android/gms/nearby/messages/SubscribeCallback;->onExpired()V

    return-void
.end method
