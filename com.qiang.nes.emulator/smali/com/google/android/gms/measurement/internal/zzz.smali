.class public Lcom/google/android/gms/measurement/internal/zzz;
.super Lcom/google/android/gms/measurement/internal/zzw;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/measurement/internal/zzz$zza;
    }
.end annotation


# instance fields
.field private final zzaUS:Lcom/google/android/gms/measurement/internal/zzz$zza;

.field private zzaUT:Lcom/google/android/gms/measurement/internal/zzl;

.field private zzaUU:Ljava/lang/Boolean;

.field private final zzaUV:Lcom/google/android/gms/measurement/internal/zze;

.field private final zzaUW:Lcom/google/android/gms/measurement/internal/zzaa;

.field private final zzaUX:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaUY:Lcom/google/android/gms/measurement/internal/zze;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/measurement/internal/zzt;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzw;-><init>(Lcom/google/android/gms/measurement/internal/zzt;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzaUX:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzaa;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzt;->zziT()Lcom/google/android/gms/internal/zznl;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/measurement/internal/zzaa;-><init>(Lcom/google/android/gms/internal/zznl;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzaUW:Lcom/google/android/gms/measurement/internal/zzaa;

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzz$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzz$zza;-><init>(Lcom/google/android/gms/measurement/internal/zzz;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzaUS:Lcom/google/android/gms/measurement/internal/zzz$zza;

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzz$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzz$1;-><init>(Lcom/google/android/gms/measurement/internal/zzz;Lcom/google/android/gms/measurement/internal/zzt;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzaUV:Lcom/google/android/gms/measurement/internal/zze;

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzz$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzz$2;-><init>(Lcom/google/android/gms/measurement/internal/zzz;Lcom/google/android/gms/measurement/internal/zzt;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzaUY:Lcom/google/android/gms/measurement/internal/zze;

    return-void
.end method

.method private onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zziS()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzaUT:Lcom/google/android/gms/measurement/internal/zzl;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzaUT:Lcom/google/android/gms/measurement/internal/zzl;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzzz()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzo;->zzBr()Lcom/google/android/gms/measurement/internal/zzo$zza;

    move-result-object v0

    const-string v1, "Disconnected from device MeasurementService"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzo$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzBY()V

    :cond_0
    return-void
.end method

.method private zzBW()Z
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzz;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzz;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/google/android/gms/measurement/AppMeasurementService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private zzBX()Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zziS()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzje()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzAX()Lcom/google/android/gms/measurement/internal/zzc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzc;->zzka()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.google.android.gms.measurement.START"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.google.android.gms"

    const-string v5, "com.google.android.gms.measurement.service.MeasurementBrokerService"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/gms/common/stats/zzb;->zzrz()Lcom/google/android/gms/common/stats/zzb;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzzz()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzo;->zzBr()Lcom/google/android/gms/measurement/internal/zzo$zza;

    move-result-object v4

    const-string v5, "Checking service availability"

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzo$zza;->zzez(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzz;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzz$7;

    invoke-direct {v5, p0}, Lcom/google/android/gms/measurement/internal/zzz$7;-><init>(Lcom/google/android/gms/measurement/internal/zzz;)V

    invoke-virtual {v3, v4, v2, v5, v1}, Lcom/google/android/gms/common/stats/zzb;->zza(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzzz()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzo;->zzBr()Lcom/google/android/gms/measurement/internal/zzo$zza;

    move-result-object v1

    const-string v2, "Service available"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzo$zza;->zzez(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private zzBY()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zziS()V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzjG()V

    return-void
.end method

.method private zzBZ()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zziS()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzzz()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzo;->zzBr()Lcom/google/android/gms/measurement/internal/zzo$zza;

    move-result-object v0

    const-string v1, "Processing queued up service tasks"

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzaUX:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzo$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzaUX:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzAV()Lcom/google/android/gms/measurement/internal/zzs;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/zzs;->zzg(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzaUX:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzaUY:Lcom/google/android/gms/measurement/internal/zze;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zze;->cancel()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzz;)Lcom/google/android/gms/measurement/internal/zzz$zza;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzaUS:Lcom/google/android/gms/measurement/internal/zzz$zza;

    return-object v0
.end method

.method private zza(Lcom/google/android/gms/measurement/internal/zzl;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zziS()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzaUT:Lcom/google/android/gms/measurement/internal/zzl;

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzjr()V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzBZ()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzz;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzz;->onServiceDisconnected(Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzz;Lcom/google/android/gms/measurement/internal/zzl;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzz;->zza(Lcom/google/android/gms/measurement/internal/zzl;)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/measurement/internal/zzz;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzjs()V

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/measurement/internal/zzz;)Lcom/google/android/gms/measurement/internal/zzl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzaUT:Lcom/google/android/gms/measurement/internal/zzl;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/measurement/internal/zzz;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzjr()V

    return-void
.end method

.method private zzi(Ljava/lang/Runnable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zziS()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzz;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzaUX:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzAX()Lcom/google/android/gms/measurement/internal/zzc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzc;->zzAH()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzzz()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzo;->zzBl()Lcom/google/android/gms/measurement/internal/zzo$zza;

    move-result-object v0

    const-string v1, "Discarding data. Max runnable queue size reached"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzo$zza;->zzez(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzaUX:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzaQX:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzt;->zzBI()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzaUY:Lcom/google/android/gms/measurement/internal/zze;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zze;->zzt(J)V

    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzjG()V

    goto :goto_0
.end method

.method private zzjG()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zziS()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzje()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzz;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzaUU:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzAW()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzr;->zzBx()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzaUU:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzaUU:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzzz()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzo;->zzBr()Lcom/google/android/gms/measurement/internal/zzo$zza;

    move-result-object v0

    const-string v1, "State of service unknown"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzo$zza;->zzez(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzBX()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzaUU:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzAW()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzaUU:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzr;->zzap(Z)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzaUU:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzzz()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzo;->zzBr()Lcom/google/android/gms/measurement/internal/zzo$zza;

    move-result-object v0

    const-string v1, "Using measurement service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzo$zza;->zzez(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzaUS:Lcom/google/android/gms/measurement/internal/zzz$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzz$zza;->zzCa()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzBW()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzaQX:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzt;->zzBI()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzzz()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzo;->zzBr()Lcom/google/android/gms/measurement/internal/zzo$zza;

    move-result-object v0

    const-string v1, "Using local app measurement service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzo$zza;->zzez(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.measurement.START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzz;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/google/android/gms/measurement/AppMeasurementService;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzaUS:Lcom/google/android/gms/measurement/internal/zzz$zza;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/zzz$zza;->zzA(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzAX()Lcom/google/android/gms/measurement/internal/zzc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzc;->zzkb()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzzz()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzo;->zzBr()Lcom/google/android/gms/measurement/internal/zzo$zza;

    move-result-object v0

    const-string v1, "Using direct local measurement implementation"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzo$zza;->zzez(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzu;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzaQX:Lcom/google/android/gms/measurement/internal/zzt;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzu;-><init>(Lcom/google/android/gms/measurement/internal/zzt;Z)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzz;->zza(Lcom/google/android/gms/measurement/internal/zzl;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzzz()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzo;->zzBl()Lcom/google/android/gms/measurement/internal/zzo$zza;

    move-result-object v0

    const-string v1, "Not in main process. Unable to use local measurement implementation. Please register the AppMeasurementService service in the app manifest"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzo$zza;->zzez(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private zzjr()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zziS()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzaUW:Lcom/google/android/gms/measurement/internal/zzaa;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaa;->start()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzaQX:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzt;->zzBI()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzaUV:Lcom/google/android/gms/measurement/internal/zze;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzAX()Lcom/google/android/gms/measurement/internal/zzc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzc;->zzkv()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zze;->zzt(J)V

    :cond_0
    return-void
.end method

.method private zzjs()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zziS()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzz;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzzz()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzo;->zzBr()Lcom/google/android/gms/measurement/internal/zzo$zza;

    move-result-object v0

    const-string v1, "Inactivity, disconnecting from AppMeasurementService"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzo$zza;->zzez(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzz;->disconnect()V

    goto :goto_0
.end method


# virtual methods
.method public disconnect()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zziS()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzje()V

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/stats/zzb;->zzrz()Lcom/google/android/gms/common/stats/zzb;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzz;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzaUS:Lcom/google/android/gms/measurement/internal/zzz$zza;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/stats/zzb;->zza(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzaUT:Lcom/google/android/gms/measurement/internal/zzl;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public bridge synthetic getContext()Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzw;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zziS()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzje()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzaUT:Lcom/google/android/gms/measurement/internal/zzl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic zzAR()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzw;->zzAR()V

    return-void
.end method

.method public bridge synthetic zzAS()Lcom/google/android/gms/measurement/internal/zzm;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzw;->zzAS()Lcom/google/android/gms/measurement/internal/zzm;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzAT()Lcom/google/android/gms/measurement/internal/zzz;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzw;->zzAT()Lcom/google/android/gms/measurement/internal/zzz;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzAU()Lcom/google/android/gms/measurement/internal/zzae;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzw;->zzAU()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzAV()Lcom/google/android/gms/measurement/internal/zzs;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzw;->zzAV()Lcom/google/android/gms/measurement/internal/zzs;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzAW()Lcom/google/android/gms/measurement/internal/zzr;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzw;->zzAW()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzAX()Lcom/google/android/gms/measurement/internal/zzc;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzw;->zzAX()Lcom/google/android/gms/measurement/internal/zzc;

    move-result-object v0

    return-object v0
.end method

.method protected zzBS()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zziS()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzje()V

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzz$6;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzz$6;-><init>(Lcom/google/android/gms/measurement/internal/zzz;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzz;->zzi(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected zzBV()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zziS()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzje()V

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzz$3;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzz$3;-><init>(Lcom/google/android/gms/measurement/internal/zzz;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzz;->zzi(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/measurement/internal/UserAttributeParcel;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zziS()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzje()V

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzz$5;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzz$5;-><init>(Lcom/google/android/gms/measurement/internal/zzz;Lcom/google/android/gms/measurement/internal/UserAttributeParcel;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzz;->zzi(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected zzb(Lcom/google/android/gms/measurement/internal/EventParcel;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zziS()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzje()V

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzz$4;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/gms/measurement/internal/zzz$4;-><init>(Lcom/google/android/gms/measurement/internal/zzz;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/EventParcel;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzz;->zzi(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic zziR()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzw;->zziR()V

    return-void
.end method

.method public bridge synthetic zziS()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzw;->zziS()V

    return-void
.end method

.method public bridge synthetic zziT()Lcom/google/android/gms/internal/zznl;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzw;->zziT()Lcom/google/android/gms/internal/zznl;

    move-result-object v0

    return-object v0
.end method

.method protected zzir()V
    .locals 0

    return-void
.end method

.method public bridge synthetic zzzz()Lcom/google/android/gms/measurement/internal/zzo;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzw;->zzzz()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v0

    return-object v0
.end method
