.class public Lcom/google/android/gms/wearable/Wearable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/wearable/Wearable$WearableOptions;
    }
.end annotation


# static fields
.field public static final API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Lcom/google/android/gms/wearable/Wearable$WearableOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final CapabilityApi:Lcom/google/android/gms/wearable/CapabilityApi;

.field public static final ChannelApi:Lcom/google/android/gms/wearable/ChannelApi;

.field public static final DataApi:Lcom/google/android/gms/wearable/DataApi;

.field public static final MessageApi:Lcom/google/android/gms/wearable/MessageApi;

.field public static final NodeApi:Lcom/google/android/gms/wearable/NodeApi;

.field public static final zzTo:Lcom/google/android/gms/common/api/Api$zzc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<",
            "Lcom/google/android/gms/wearable/internal/zzce;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzTp:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza",
            "<",
            "Lcom/google/android/gms/wearable/internal/zzce;",
            "Lcom/google/android/gms/wearable/Wearable$WearableOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzbma:Lcom/google/android/gms/wearable/LargeAssetApi;

.field public static final zzbmb:Lcom/google/android/gms/wearable/zzc;

.field public static final zzbmc:Lcom/google/android/gms/wearable/zza;

.field public static final zzbmd:Lcom/google/android/gms/wearable/zzf;

.field public static final zzbme:Lcom/google/android/gms/wearable/zzj;

.field public static final zzbmf:Lcom/google/android/gms/wearable/zzl;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzx;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzx;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/Wearable;->DataApi:Lcom/google/android/gms/wearable/DataApi;

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzj;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzj;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/Wearable;->CapabilityApi:Lcom/google/android/gms/wearable/CapabilityApi;

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzbm;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzbm;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/Wearable;->MessageApi:Lcom/google/android/gms/wearable/MessageApi;

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzbo;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzbo;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/Wearable;->NodeApi:Lcom/google/android/gms/wearable/NodeApi;

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzl;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzl;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/Wearable;->ChannelApi:Lcom/google/android/gms/wearable/ChannelApi;

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzbc;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzbc;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/Wearable;->zzbma:Lcom/google/android/gms/wearable/LargeAssetApi;

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzg;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzg;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/Wearable;->zzbmb:Lcom/google/android/gms/wearable/zzc;

    new-instance v0, Lcom/google/android/gms/wearable/internal/zze;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zze;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/Wearable;->zzbmc:Lcom/google/android/gms/wearable/zza;

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzw;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzw;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/Wearable;->zzbmd:Lcom/google/android/gms/wearable/zzf;

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzcb;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzcb;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/Wearable;->zzbme:Lcom/google/android/gms/wearable/zzj;

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzcg;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzcg;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/Wearable;->zzbmf:Lcom/google/android/gms/wearable/zzl;

    new-instance v0, Lcom/google/android/gms/common/api/Api$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/Wearable;->zzTo:Lcom/google/android/gms/common/api/Api$zzc;

    new-instance v0, Lcom/google/android/gms/wearable/Wearable$1;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/Wearable$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/Wearable;->zzTp:Lcom/google/android/gms/common/api/Api$zza;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    const-string v1, "Wearable.API"

    sget-object v2, Lcom/google/android/gms/wearable/Wearable;->zzTp:Lcom/google/android/gms/common/api/Api$zza;

    sget-object v3, Lcom/google/android/gms/wearable/Wearable;->zzTo:Lcom/google/android/gms/common/api/Api$zzc;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zzc;)V

    sput-object v0, Lcom/google/android/gms/wearable/Wearable;->API:Lcom/google/android/gms/common/api/Api;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
