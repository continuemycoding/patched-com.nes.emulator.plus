.class Lcom/google/android/gms/internal/zzef$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zza"
.end annotation


# instance fields
.field zzAa:Z

.field zzAb:Z

.field final synthetic zzAc:Lcom/google/android/gms/internal/zzef;

.field zzzX:Lcom/google/android/gms/ads/internal/zzk;

.field zzzY:Lcom/google/android/gms/internal/zzeb;

.field zzzZ:J

.field zzzz:Landroid/content/MutableContextWrapper;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzef;Lcom/google/android/gms/internal/zzea;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzef$zza;->zzAc:Lcom/google/android/gms/internal/zzef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzea;->zzdV()Lcom/google/android/gms/internal/zzea;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzea;->zzdW()Landroid/content/MutableContextWrapper;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzef$zza;->zzzz:Landroid/content/MutableContextWrapper;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzef;->zza(Lcom/google/android/gms/internal/zzef;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzea;->zzac(Ljava/lang/String;)Lcom/google/android/gms/ads/internal/zzk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzef$zza;->zzzX:Lcom/google/android/gms/ads/internal/zzk;

    new-instance v0, Lcom/google/android/gms/internal/zzeb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzeb;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzef$zza;->zzzY:Lcom/google/android/gms/internal/zzeb;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzef$zza;->zzzY:Lcom/google/android/gms/internal/zzeb;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzef$zza;->zzzX:Lcom/google/android/gms/ads/internal/zzk;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzeb;->zzc(Lcom/google/android/gms/ads/internal/zzk;)V

    return-void
.end method

.method private zzed()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzef$zza;->zzAa:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzef$zza;->zzAc:Lcom/google/android/gms/internal/zzef;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzef;->zzc(Lcom/google/android/gms/internal/zzef;)Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzef$zza;->zzzX:Lcom/google/android/gms/ads/internal/zzk;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzef$zza;->zzAc:Lcom/google/android/gms/internal/zzef;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzef;->zzc(Lcom/google/android/gms/internal/zzef;)Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzk;->zzb(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzef$zza;->zzAb:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzef$zza;->zzAa:Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbB()Lcom/google/android/gms/internal/zznl;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zznl;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzef$zza;->zzzZ:J

    :cond_0
    return-void
.end method


# virtual methods
.method zzc(Lcom/google/android/gms/internal/zzea;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzea;->zzdW()Landroid/content/MutableContextWrapper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/MutableContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzef$zza;->zzzz:Landroid/content/MutableContextWrapper;

    invoke-virtual {v1, v0}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method zzh(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzef$zza;->zzAc:Lcom/google/android/gms/internal/zzef;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzef;->zza(Lcom/google/android/gms/internal/zzef;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzef$zza;->zzed()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzef$zza;->zzAc:Lcom/google/android/gms/internal/zzef;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzef;->zzb(Lcom/google/android/gms/internal/zzef;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzef$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzef$zza;->zzed()V

    goto :goto_0

    :cond_1
    return-void
.end method
