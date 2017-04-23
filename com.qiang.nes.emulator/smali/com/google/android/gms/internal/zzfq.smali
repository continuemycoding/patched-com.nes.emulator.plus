.class public Lcom/google/android/gms/internal/zzfq;
.super Lcom/google/android/gms/internal/zzfr;

# interfaces
.implements Lcom/google/android/gms/internal/zzdl;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzha;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field zzCA:Landroid/util/DisplayMetrics;

.field private zzCB:F

.field zzCC:I

.field zzCD:I

.field private zzCE:I

.field zzCF:I

.field zzCG:I

.field zzCH:I

.field zzCI:I

.field private final zzCz:Lcom/google/android/gms/internal/zzbr;

.field private final zzps:Lcom/google/android/gms/internal/zzjn;

.field private final zzrR:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzjn;Landroid/content/Context;Lcom/google/android/gms/internal/zzbr;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzfr;-><init>(Lcom/google/android/gms/internal/zzjn;)V

    iput v0, p0, Lcom/google/android/gms/internal/zzfq;->zzCC:I

    iput v0, p0, Lcom/google/android/gms/internal/zzfq;->zzCD:I

    iput v0, p0, Lcom/google/android/gms/internal/zzfq;->zzCF:I

    iput v0, p0, Lcom/google/android/gms/internal/zzfq;->zzCG:I

    iput v0, p0, Lcom/google/android/gms/internal/zzfq;->zzCH:I

    iput v0, p0, Lcom/google/android/gms/internal/zzfq;->zzCI:I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfq;->zzps:Lcom/google/android/gms/internal/zzjn;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzfq;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzfq;->zzCz:Lcom/google/android/gms/internal/zzbr;

    const-string v0, "window"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfq;->zzrR:Landroid/view/WindowManager;

    return-void
.end method

.method private zzeF()V
    .locals 2

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfq;->zzCA:Landroid/util/DisplayMetrics;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfq;->zzrR:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfq;->zzCA:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfq;->zzCA:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/google/android/gms/internal/zzfq;->zzCB:F

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzfq;->zzCE:I

    return-void
.end method

.method private zzeK()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfq;->zzps:Lcom/google/android/gms/internal/zzjn;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzjn;->getLocationOnScreen([I)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzl;->zzcN()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfq;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzc(Landroid/content/Context;I)I

    move-result v1

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzl;->zzcN()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzfq;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    aget v0, v0, v4

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzc(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzfq;->zzf(II)V

    return-void
.end method

.method private zzeN()Lcom/google/android/gms/internal/zzfp;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzfp$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzfp$zza;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfq;->zzCz:Lcom/google/android/gms/internal/zzbr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbr;->zzdd()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzfp$zza;->zzr(Z)Lcom/google/android/gms/internal/zzfp$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfq;->zzCz:Lcom/google/android/gms/internal/zzbr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbr;->zzde()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzfp$zza;->zzq(Z)Lcom/google/android/gms/internal/zzfp$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfq;->zzCz:Lcom/google/android/gms/internal/zzbr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbr;->zzdi()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzfp$zza;->zzs(Z)Lcom/google/android/gms/internal/zzfp$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfq;->zzCz:Lcom/google/android/gms/internal/zzbr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbr;->zzdf()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzfp$zza;->zzt(Z)Lcom/google/android/gms/internal/zzfp$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfq;->zzCz:Lcom/google/android/gms/internal/zzbr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbr;->zzdg()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzfp$zza;->zzu(Z)Lcom/google/android/gms/internal/zzfp$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfp$zza;->zzeE()Lcom/google/android/gms/internal/zzfp;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzjn;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzjn;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfq;->zzeI()V

    return-void
.end method

.method zzeG()V
    .locals 4

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzl;->zzcN()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfq;->zzCA:Landroid/util/DisplayMetrics;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfq;->zzCA:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzfq;->zzCC:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzl;->zzcN()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfq;->zzCA:Landroid/util/DisplayMetrics;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfq;->zzCA:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzfq;->zzCD:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfq;->zzps:Lcom/google/android/gms/internal/zzjn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzjn;->zzhx()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/zzfq;->zzCC:I

    iput v0, p0, Lcom/google/android/gms/internal/zzfq;->zzCF:I

    iget v0, p0, Lcom/google/android/gms/internal/zzfq;->zzCD:I

    iput v0, p0, Lcom/google/android/gms/internal/zzfq;->zzCG:I

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbx()Lcom/google/android/gms/internal/zzip;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzip;->zzg(Landroid/app/Activity;)[I

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzl;->zzcN()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfq;->zzCA:Landroid/util/DisplayMetrics;

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/zzfq;->zzCF:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzl;->zzcN()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfq;->zzCA:Landroid/util/DisplayMetrics;

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzfq;->zzCG:I

    goto :goto_0
.end method

.method zzeH()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfq;->zzps:Lcom/google/android/gms/internal/zzjn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzjn;->zzaP()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zztW:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/zzfq;->zzCC:I

    iput v0, p0, Lcom/google/android/gms/internal/zzfq;->zzCH:I

    iget v0, p0, Lcom/google/android/gms/internal/zzfq;->zzCD:I

    iput v0, p0, Lcom/google/android/gms/internal/zzfq;->zzCI:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfq;->zzps:Lcom/google/android/gms/internal/zzjn;

    invoke-interface {v0, v1, v1}, Lcom/google/android/gms/internal/zzjn;->measure(II)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzl;->zzcN()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfq;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfq;->zzps:Lcom/google/android/gms/internal/zzjn;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzjn;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzc(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzfq;->zzCH:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzl;->zzcN()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfq;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfq;->zzps:Lcom/google/android/gms/internal/zzjn;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzjn;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzc(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzfq;->zzCI:I

    goto :goto_0
.end method

.method public zzeI()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzfq;->zzeF()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfq;->zzeG()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfq;->zzeH()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfq;->zzeL()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfq;->zzeM()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzfq;->zzeK()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfq;->zzeJ()V

    return-void
.end method

.method zzeJ()V
    .locals 1

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzQ(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Dispatching Ready Event."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaG(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfq;->zzps:Lcom/google/android/gms/internal/zzjn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzjn;->zzhF()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzfq;->zzam(Ljava/lang/String;)V

    return-void
.end method

.method zzeL()V
    .locals 7

    iget v1, p0, Lcom/google/android/gms/internal/zzfq;->zzCC:I

    iget v2, p0, Lcom/google/android/gms/internal/zzfq;->zzCD:I

    iget v3, p0, Lcom/google/android/gms/internal/zzfq;->zzCF:I

    iget v4, p0, Lcom/google/android/gms/internal/zzfq;->zzCG:I

    iget v5, p0, Lcom/google/android/gms/internal/zzfq;->zzCB:F

    iget v6, p0, Lcom/google/android/gms/internal/zzfq;->zzCE:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/zzfq;->zza(IIIIFI)V

    return-void
.end method

.method zzeM()V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzfq;->zzeN()Lcom/google/android/gms/internal/zzfp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfq;->zzps:Lcom/google/android/gms/internal/zzjn;

    const-string v2, "onDeviceFeaturesReceived"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfp;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/zzjn;->zzb(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public zzf(II)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfq;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbx()Lcom/google/android/gms/internal/zzip;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfq;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzip;->zzj(Landroid/app/Activity;)[I

    move-result-object v0

    aget v0, v0, v1

    :goto_0
    sub-int v0, p2, v0

    iget v1, p0, Lcom/google/android/gms/internal/zzfq;->zzCH:I

    iget v2, p0, Lcom/google/android/gms/internal/zzfq;->zzCI:I

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzfq;->zzc(IIII)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfq;->zzps:Lcom/google/android/gms/internal/zzjn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzjn;->zzhC()Lcom/google/android/gms/internal/zzjo;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzjo;->zze(II)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method
