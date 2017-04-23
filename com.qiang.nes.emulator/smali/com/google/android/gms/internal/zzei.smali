.class public Lcom/google/android/gms/internal/zzei;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzha;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzei$zza;,
        Lcom/google/android/gms/internal/zzei$zzd;,
        Lcom/google/android/gms/internal/zzei$zze;,
        Lcom/google/android/gms/internal/zzei$zzc;,
        Lcom/google/android/gms/internal/zzei$zzb;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzAg:Ljava/lang/String;

.field private zzAh:Lcom/google/android/gms/internal/zzei$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzei$zzb",
            "<",
            "Lcom/google/android/gms/internal/zzbb;",
            ">;"
        }
    .end annotation
.end field

.field private zzAi:Lcom/google/android/gms/internal/zzei$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzei$zzb",
            "<",
            "Lcom/google/android/gms/internal/zzbb;",
            ">;"
        }
    .end annotation
.end field

.field private zzAj:Lcom/google/android/gms/internal/zzei$zze;

.field private zzAk:I

.field private final zzpI:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzpK:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzei;->zzpK:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzei;->zzAk:I

    iput-object p3, p0, Lcom/google/android/gms/internal/zzei;->zzAg:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzei;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzei;->zzpI:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    new-instance v0, Lcom/google/android/gms/internal/zzei$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzei$zzc;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzei;->zzAh:Lcom/google/android/gms/internal/zzei$zzb;

    new-instance v0, Lcom/google/android/gms/internal/zzei$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzei$zzc;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzei;->zzAi:Lcom/google/android/gms/internal/zzei$zzb;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzei$zzb;Lcom/google/android/gms/internal/zzei$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzei$zzb",
            "<",
            "Lcom/google/android/gms/internal/zzbb;",
            ">;",
            "Lcom/google/android/gms/internal/zzei$zzb",
            "<",
            "Lcom/google/android/gms/internal/zzbb;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzei;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/google/android/gms/internal/zzei;->zzAh:Lcom/google/android/gms/internal/zzei$zzb;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzei;->zzAi:Lcom/google/android/gms/internal/zzei$zzb;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzei;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzei;->zzAk:I

    return p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzei;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzei;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzei;Lcom/google/android/gms/internal/zzei$zze;)Lcom/google/android/gms/internal/zzei$zze;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzei;->zzAj:Lcom/google/android/gms/internal/zzei$zze;

    return-object p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzei;)Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzei;->zzpI:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzei;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzei;->zzpK:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzei;)Lcom/google/android/gms/internal/zzei$zzb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzei;->zzAh:Lcom/google/android/gms/internal/zzei$zzb;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzei;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzei;->zzAk:I

    return v0
.end method

.method private zzeg()Lcom/google/android/gms/internal/zzei$zze;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzei$zze;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzei;->zzAi:Lcom/google/android/gms/internal/zzei$zzb;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzei$zze;-><init>(Lcom/google/android/gms/internal/zzei$zzb;)V

    new-instance v1, Lcom/google/android/gms/internal/zzei$1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzei$1;-><init>(Lcom/google/android/gms/internal/zzei;Lcom/google/android/gms/internal/zzei$zze;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/zzip;->runOnUiThread(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/zzei;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzei;->zzAg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/zzei;)Lcom/google/android/gms/internal/zzei$zze;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzei;->zzAj:Lcom/google/android/gms/internal/zzei$zze;

    return-object v0
.end method


# virtual methods
.method protected zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)Lcom/google/android/gms/internal/zzbb;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzbd;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/gms/internal/zzbd;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzan;)V

    return-object v0
.end method

.method protected zzeh()Lcom/google/android/gms/internal/zzei$zze;
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzei;->zzeg()Lcom/google/android/gms/internal/zzei$zze;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzei$2;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzei$2;-><init>(Lcom/google/android/gms/internal/zzei;Lcom/google/android/gms/internal/zzei$zze;)V

    new-instance v2, Lcom/google/android/gms/internal/zzei$3;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/zzei$3;-><init>(Lcom/google/android/gms/internal/zzei;Lcom/google/android/gms/internal/zzei$zze;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzei$zze;->zza(Lcom/google/android/gms/internal/zzjg$zzc;Lcom/google/android/gms/internal/zzjg$zza;)V

    return-object v0
.end method

.method public zzei()Lcom/google/android/gms/internal/zzei$zzd;
    .locals 4

    const/4 v3, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzei;->zzpK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzei;->zzAj:Lcom/google/android/gms/internal/zzei$zze;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzei;->zzAj:Lcom/google/android/gms/internal/zzei$zze;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzei$zze;->getStatus()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/zzei;->zzAk:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzei;->zzeh()Lcom/google/android/gms/internal/zzei$zze;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzei;->zzAj:Lcom/google/android/gms/internal/zzei$zze;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzei;->zzAj:Lcom/google/android/gms/internal/zzei$zze;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzei$zze;->zzej()Lcom/google/android/gms/internal/zzei$zzd;

    move-result-object v0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/zzei;->zzAk:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzei;->zzAj:Lcom/google/android/gms/internal/zzei$zze;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzei$zze;->zzej()Lcom/google/android/gms/internal/zzei$zzd;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/zzei;->zzAk:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/zzei;->zzAk:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzei;->zzeh()Lcom/google/android/gms/internal/zzei$zze;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzei;->zzAj:Lcom/google/android/gms/internal/zzei$zze;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzei$zze;->zzej()Lcom/google/android/gms/internal/zzei$zzd;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/zzei;->zzAk:I

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzei;->zzAj:Lcom/google/android/gms/internal/zzei$zze;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzei$zze;->zzej()Lcom/google/android/gms/internal/zzei$zzd;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzei;->zzAj:Lcom/google/android/gms/internal/zzei$zze;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzei$zze;->zzej()Lcom/google/android/gms/internal/zzei$zzd;

    move-result-object v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
