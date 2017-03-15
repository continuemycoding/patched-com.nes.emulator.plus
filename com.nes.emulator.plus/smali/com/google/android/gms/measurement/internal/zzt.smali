.class public Lcom/google/android/gms/measurement/internal/zzt;
.super Ljava/lang/Object;


# static fields
.field private static zzaUg:Lcom/google/android/gms/measurement/internal/zzx;

.field private static volatile zzaUh:Lcom/google/android/gms/measurement/internal/zzt;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzOQ:Z

.field private final zzaUi:Lcom/google/android/gms/measurement/internal/zzc;

.field private final zzaUj:Lcom/google/android/gms/measurement/internal/zzr;

.field private final zzaUk:Lcom/google/android/gms/measurement/internal/zzo;

.field private final zzaUl:Lcom/google/android/gms/measurement/internal/zzs;

.field private final zzaUm:Lcom/google/android/gms/measurement/AppMeasurement;

.field private final zzaUn:Lcom/google/android/gms/measurement/internal/zzae;

.field private final zzaUo:Lcom/google/android/gms/measurement/internal/zzd;

.field private final zzaUp:Lcom/google/android/gms/measurement/internal/zzp;

.field private final zzaUq:Lcom/google/android/gms/measurement/internal/zzz;

.field private final zzaUr:Lcom/google/android/gms/measurement/internal/zzf;

.field private final zzaUs:Lcom/google/android/gms/measurement/internal/zzy;

.field private final zzaUt:Lcom/google/android/gms/measurement/internal/zzm;

.field private final zzaUu:Lcom/google/android/gms/measurement/internal/zzq;

.field private final zzaUv:Lcom/google/android/gms/measurement/internal/zzab;

.field private zzaUw:Ljava/lang/Boolean;

.field private zzaUx:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private zzaUy:I

.field private zzaUz:I

.field private final zzqD:Lcom/google/android/gms/internal/zznl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzx;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzx;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/measurement/internal/zzx;->zzj(Lcom/google/android/gms/measurement/internal/zzt;)Lcom/google/android/gms/internal/zznl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzqD:Lcom/google/android/gms/internal/zznl;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/measurement/internal/zzx;->zza(Lcom/google/android/gms/measurement/internal/zzt;)Lcom/google/android/gms/measurement/internal/zzc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaUi:Lcom/google/android/gms/measurement/internal/zzc;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/measurement/internal/zzx;->zzb(Lcom/google/android/gms/measurement/internal/zzt;)Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzr;->zza()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaUj:Lcom/google/android/gms/measurement/internal/zzr;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/measurement/internal/zzx;->zzc(Lcom/google/android/gms/measurement/internal/zzt;)Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzo;->zza()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaUk:Lcom/google/android/gms/measurement/internal/zzo;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/measurement/internal/zzx;->zzg(Lcom/google/android/gms/measurement/internal/zzt;)Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaUn:Lcom/google/android/gms/measurement/internal/zzae;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/measurement/internal/zzx;->zzl(Lcom/google/android/gms/measurement/internal/zzt;)Lcom/google/android/gms/measurement/internal/zzf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzf;->zza()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaUr:Lcom/google/android/gms/measurement/internal/zzf;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/measurement/internal/zzx;->zzm(Lcom/google/android/gms/measurement/internal/zzt;)Lcom/google/android/gms/measurement/internal/zzm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzm;->zza()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaUt:Lcom/google/android/gms/measurement/internal/zzm;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/measurement/internal/zzx;->zzh(Lcom/google/android/gms/measurement/internal/zzt;)Lcom/google/android/gms/measurement/internal/zzd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzd;->zza()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaUo:Lcom/google/android/gms/measurement/internal/zzd;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/measurement/internal/zzx;->zzi(Lcom/google/android/gms/measurement/internal/zzt;)Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzp;->zza()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaUp:Lcom/google/android/gms/measurement/internal/zzp;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/measurement/internal/zzx;->zzk(Lcom/google/android/gms/measurement/internal/zzt;)Lcom/google/android/gms/measurement/internal/zzz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzz;->zza()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaUq:Lcom/google/android/gms/measurement/internal/zzz;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/measurement/internal/zzx;->zzf(Lcom/google/android/gms/measurement/internal/zzt;)Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzy;->zza()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaUs:Lcom/google/android/gms/measurement/internal/zzy;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/measurement/internal/zzx;->zzo(Lcom/google/android/gms/measurement/internal/zzt;)Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzab;->zza()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaUv:Lcom/google/android/gms/measurement/internal/zzab;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/measurement/internal/zzx;->zzn(Lcom/google/android/gms/measurement/internal/zzt;)Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaUu:Lcom/google/android/gms/measurement/internal/zzq;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/measurement/internal/zzx;->zze(Lcom/google/android/gms/measurement/internal/zzt;)Lcom/google/android/gms/measurement/AppMeasurement;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaUm:Lcom/google/android/gms/measurement/AppMeasurement;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/measurement/internal/zzx;->zzd(Lcom/google/android/gms/measurement/internal/zzt;)Lcom/google/android/gms/measurement/internal/zzs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzs;->zza()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaUl:Lcom/google/android/gms/measurement/internal/zzs;

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaUy:I

    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaUz:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzzz()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzo;->zzBl()Lcom/google/android/gms/measurement/internal/zzo$zza;

    move-result-object v0

    const-string v1, "Not all components initialized"

    iget v2, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaUy:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaUz:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzo$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzOQ:Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaUi:Lcom/google/android/gms/measurement/internal/zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzc;->zzka()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzBI()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzBB()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzy;->zzBR()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaUl:Lcom/google/android/gms/measurement/internal/zzs;

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzt$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/zzt$1;-><init>(Lcom/google/android/gms/measurement/internal/zzt;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzs;->zzg(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzzz()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzo;->zzBq()Lcom/google/android/gms/measurement/internal/zzo$zza;

    move-result-object v0

    const-string v1, "Not tracking deep linking pre-ICS"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzo$zza;->zzez(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzzz()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzo;->zzBm()Lcom/google/android/gms/measurement/internal/zzo$zza;

    move-result-object v0

    const-string v1, "Application context is not an Application"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzo$zza;->zzez(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private zzBJ()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zziS()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaUx:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private zzBL()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzBD()Lcom/google/android/gms/measurement/internal/zzd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzd;->zzAY()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private zzBM()V
    .locals 10

    const-wide/16 v8, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zziS()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzje()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzBz()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzBL()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzBG()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzq;->unregister()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzBH()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzab;->cancel()V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzBN()J

    move-result-wide v0

    cmp-long v2, v0, v8

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzBG()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzq;->unregister()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzBH()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzab;->cancel()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzBE()Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzp;->zzlk()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzBG()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzq;->zzlh()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzBH()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzab;->cancel()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzAW()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzr;->zzaTH:Lcom/google/android/gms/measurement/internal/zzr$zza;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzr$zza;->get()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzAX()Lcom/google/android/gms/measurement/internal/zzc;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzc;->zzAL()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzAU()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v6

    invoke-virtual {v6, v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzae;->zzc(JJ)Z

    move-result v6

    if-nez v6, :cond_4

    add-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzBG()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzq;->unregister()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zziT()Lcom/google/android/gms/internal/zznl;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/zznl;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    cmp-long v2, v0, v8

    if-gtz v2, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzBH()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzab;->zzt(J)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzzz()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzo;->zzBr()Lcom/google/android/gms/measurement/internal/zzo$zza;

    move-result-object v2

    const-string v3, "Upload scheduled in approximately ms"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzo$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzBH()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzab;->zzt(J)V

    goto/16 :goto_0
.end method

.method private zzBN()J
    .locals 15

    const-wide/16 v4, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zziT()Lcom/google/android/gms/internal/zznl;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zznl;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzAX()Lcom/google/android/gms/measurement/internal/zzc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzc;->zzAO()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzAX()Lcom/google/android/gms/measurement/internal/zzc;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzc;->zzAM()J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzAW()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v8

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/zzr;->zzaTF:Lcom/google/android/gms/measurement/internal/zzr$zza;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzr$zza;->get()J

    move-result-wide v8

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzAW()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v10

    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/zzr;->zzaTG:Lcom/google/android/gms/measurement/internal/zzr$zza;

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzr$zza;->get()J

    move-result-wide v10

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzBD()Lcom/google/android/gms/measurement/internal/zzd;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzd;->zzBb()J

    move-result-wide v12

    cmp-long v14, v12, v4

    if-nez v14, :cond_1

    move-wide v2, v4

    :cond_0
    :goto_0
    return-wide v2

    :cond_1
    sub-long/2addr v12, v0

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    sub-long/2addr v0, v12

    add-long/2addr v2, v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzAU()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v12

    invoke-virtual {v12, v8, v9, v6, v7}, Lcom/google/android/gms/measurement/internal/zzae;->zzc(JJ)Z

    move-result v12

    if-nez v12, :cond_2

    add-long v2, v8, v6

    :cond_2
    cmp-long v6, v10, v4

    if-eqz v6, :cond_0

    cmp-long v0, v10, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzAX()Lcom/google/android/gms/measurement/internal/zzc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzc;->zzAQ()I

    move-result v1

    if-ge v0, v1, :cond_3

    const/4 v1, 0x1

    shl-int/2addr v1, v0

    int-to-long v6, v1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzAX()Lcom/google/android/gms/measurement/internal/zzc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzc;->zzAP()J

    move-result-wide v8

    mul-long/2addr v6, v8

    add-long/2addr v2, v6

    cmp-long v1, v2, v10

    if-gtz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-wide v2, v4

    goto :goto_0
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzt;ILjava/lang/Throwable;[B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzt;->zzb(ILjava/lang/Throwable;[B)V

    return-void
.end method

.method private zza(Lcom/google/android/gms/measurement/internal/zzv;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Component not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private zza(Lcom/google/android/gms/measurement/internal/zzw;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Component not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzw;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Component not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public static zzaU(Landroid/content/Context;)Lcom/google/android/gms/measurement/internal/zzt;
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzx;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzt;->zzaUh:Lcom/google/android/gms/measurement/internal/zzt;

    if-nez v0, :cond_1

    const-class v1, Lcom/google/android/gms/measurement/internal/zzt;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzt;->zzaUh:Lcom/google/android/gms/measurement/internal/zzt;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzt;->zzaUg:Lcom/google/android/gms/measurement/internal/zzx;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzt;->zzaUg:Lcom/google/android/gms/measurement/internal/zzx;

    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzx;->zzBQ()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzt;->zzaUh:Lcom/google/android/gms/measurement/internal/zzt;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzt;->zzaUh:Lcom/google/android/gms/measurement/internal/zzt;

    return-object v0

    :cond_2
    :try_start_1
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzx;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzx;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private zzb(ILjava/lang/Throwable;[B)V
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zziS()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzje()V

    if-nez p3, :cond_0

    new-array p3, v0, [B

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaUx:Ljava/util/List;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaUx:Ljava/util/List;

    const/16 v2, 0xc8

    if-eq p1, v2, :cond_1

    const/16 v2, 0xcc

    if-ne p1, v2, :cond_4

    :cond_1
    if-nez p2, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzAW()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzr;->zzaTF:Lcom/google/android/gms/measurement/internal/zzr$zza;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zziT()Lcom/google/android/gms/internal/zznl;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/zznl;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzr$zza;->set(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzAW()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzr;->zzaTG:Lcom/google/android/gms/measurement/internal/zzr$zza;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzr$zza;->set(J)V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzBM()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzzz()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzo;->zzBr()Lcom/google/android/gms/measurement/internal/zzo$zza;

    move-result-object v0

    const-string v2, "Successful upload. Got network response. code, size"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    array-length v4, p3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzo$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzBD()Lcom/google/android/gms/measurement/internal/zzd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzd;->beginTransaction()V

    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzBD()Lcom/google/android/gms/measurement/internal/zzd;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/measurement/internal/zzd;->zzP(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzBD()Lcom/google/android/gms/measurement/internal/zzd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzd;->endTransaction()V

    throw v0

    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzBD()Lcom/google/android/gms/measurement/internal/zzd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzd;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzBD()Lcom/google/android/gms/measurement/internal/zzd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzd;->endTransaction()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzBE()Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzp;->zzlk()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzBL()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzBK()V

    :goto_1
    return-void

    :cond_3
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzBM()V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzzz()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzo;->zzBr()Lcom/google/android/gms/measurement/internal/zzo$zza;

    move-result-object v1

    const-string v2, "Network upload failed. Will retry later. code, error"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p2}, Lcom/google/android/gms/measurement/internal/zzo$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzAW()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzr;->zzaTG:Lcom/google/android/gms/measurement/internal/zzr$zza;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zziT()Lcom/google/android/gms/internal/zznl;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/zznl;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzr$zza;->set(J)V

    const/16 v1, 0x1f7

    if-eq p1, v1, :cond_5

    const/16 v1, 0x1ad

    if-ne p1, v1, :cond_6

    :cond_5
    const/4 v0, 0x1

    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzAW()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzr;->zzaTH:Lcom/google/android/gms/measurement/internal/zzr$zza;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zziT()Lcom/google/android/gms/internal/zznl;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/zznl;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzr$zza;->set(J)V

    :cond_7
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzBM()V

    goto :goto_1
.end method

.method private zze(Lcom/google/android/gms/measurement/internal/AppMetadata;)V
    .locals 19

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzt;->zziS()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzje()V

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/zzx;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/AppMetadata;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzx;->zzcG(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzBD()Lcom/google/android/gms/measurement/internal/zzd;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/AppMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzd;->zzew(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zza;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzAW()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzr;->zzBu()Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x0

    if-nez v3, :cond_8

    new-instance v3, Lcom/google/android/gms/measurement/internal/zza;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/AppMetadata;->packageName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzAW()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzr;->zzBv()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/AppMetadata;->zzaSn:Ljava/lang/String;

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/google/android/gms/measurement/internal/AppMetadata;->zzaKi:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/google/android/gms/measurement/internal/AppMetadata;->zzaSo:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/google/android/gms/measurement/internal/AppMetadata;->zzaSp:J

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/google/android/gms/measurement/internal/AppMetadata;->zzaSq:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/google/android/gms/measurement/internal/AppMetadata;->zzaSs:Z

    move/from16 v18, v0

    invoke-direct/range {v3 .. v18}, Lcom/google/android/gms/measurement/internal/zza;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;JJZ)V

    const/4 v2, 0x1

    :cond_0
    :goto_0
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/AppMetadata;->zzaSn:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/AppMetadata;->zzaSn:Ljava/lang/String;

    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zza;->zzaSf:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/google/android/gms/measurement/internal/AppMetadata;->zzaSp:J

    iget-wide v6, v3, Lcom/google/android/gms/measurement/internal/zza;->zzaSk:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    :cond_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/AppMetadata;->zzaSn:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/google/android/gms/measurement/internal/AppMetadata;->zzaSp:J

    invoke-virtual {v3, v2, v4, v5}, Lcom/google/android/gms/measurement/internal/zza;->zze(Ljava/lang/String;J)Lcom/google/android/gms/measurement/internal/zza;

    move-result-object v3

    const/4 v2, 0x1

    :cond_2
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/AppMetadata;->zzaKi:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/AppMetadata;->zzaKi:Ljava/lang/String;

    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zza;->zzRl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/AppMetadata;->zzaSo:Ljava/lang/String;

    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zza;->zzaSj:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/AppMetadata;->zzaKi:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/AppMetadata;->zzaSo:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Lcom/google/android/gms/measurement/internal/zza;->zzK(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zza;

    move-result-object v3

    const/4 v2, 0x1

    :cond_4
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/google/android/gms/measurement/internal/AppMetadata;->zzaSq:J

    iget-wide v6, v3, Lcom/google/android/gms/measurement/internal/zza;->zzaSl:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_5

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/google/android/gms/measurement/internal/AppMetadata;->zzaSq:J

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zza;->zzO(J)Lcom/google/android/gms/measurement/internal/zza;

    move-result-object v3

    const/4 v2, 0x1

    :cond_5
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/google/android/gms/measurement/internal/AppMetadata;->zzaSs:Z

    iget-boolean v5, v3, Lcom/google/android/gms/measurement/internal/zza;->zzaSm:Z

    if-eq v4, v5, :cond_6

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/google/android/gms/measurement/internal/AppMetadata;->zzaSs:Z

    invoke-virtual {v3, v2}, Lcom/google/android/gms/measurement/internal/zza;->zzao(Z)Lcom/google/android/gms/measurement/internal/zza;

    move-result-object v3

    const/4 v2, 0x1

    :cond_6
    if-eqz v2, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzBD()Lcom/google/android/gms/measurement/internal/zzd;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzd;->zza(Lcom/google/android/gms/measurement/internal/zza;)V

    :cond_7
    return-void

    :cond_8
    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zza;->zzaSg:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzAW()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzr;->zzBv()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, v7}, Lcom/google/android/gms/measurement/internal/zza;->zzJ(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zza;

    move-result-object v3

    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method private zzx(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzab(Z)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaUx:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzzz()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzo;->zzBl()Lcom/google/android/gms/measurement/internal/zzo$zza;

    move-result-object v0

    const-string v1, "Set uploading progress before finishing the previous upload"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzo$zza;->zzez(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaUx:Ljava/util/List;

    goto :goto_1
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected start()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zziS()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzzz()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzo;->zzBp()Lcom/google/android/gms/measurement/internal/zzo$zza;

    move-result-object v0

    const-string v1, "App measurement is starting up"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzo$zza;->zzez(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzzz()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzo;->zzBq()Lcom/google/android/gms/measurement/internal/zzo$zza;

    move-result-object v0

    const-string v1, "Debug logging enabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzo$zza;->zzez(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzBI()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaUl:Lcom/google/android/gms/measurement/internal/zzs;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzs;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaUl:Lcom/google/android/gms/measurement/internal/zzs;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzs;->zzBP()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzzz()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzo;->zzBl()Lcom/google/android/gms/measurement/internal/zzo$zza;

    move-result-object v0

    const-string v1, "Scheduler shutting down before Scion.start() called"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzo$zza;->zzez(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzBD()Lcom/google/android/gms/measurement/internal/zzd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzd;->zzAZ()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzBz()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzAU()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    const-string v1, "android.permission.INTERNET"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzae;->zzbh(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzzz()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzo;->zzBl()Lcom/google/android/gms/measurement/internal/zzo$zza;

    move-result-object v0

    const-string v1, "App is missing INTERNET permission"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzo$zza;->zzez(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzAU()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzae;->zzbh(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzzz()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzo;->zzBl()Lcom/google/android/gms/measurement/internal/zzo$zza;

    move-result-object v0

    const-string v1, "App is missing ACCESS_NETWORK_STATE permission"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzo$zza;->zzez(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/measurement/AppMeasurementReceiver;->zzX(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzzz()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzo;->zzBl()Lcom/google/android/gms/measurement/internal/zzo$zza;

    move-result-object v0

    const-string v1, "AppMeasurementReceiver not registered/enabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzo$zza;->zzez(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/measurement/AppMeasurementService;->zzY(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzzz()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzo;->zzBl()Lcom/google/android/gms/measurement/internal/zzo$zza;

    move-result-object v0

    const-string v1, "AppMeasurementService not registered/enabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzo$zza;->zzez(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzzz()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzo;->zzBl()Lcom/google/android/gms/measurement/internal/zzo$zza;

    move-result-object v0

    const-string v1, "Uploading is not possible. App measurement disabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzo$zza;->zzez(Ljava/lang/String;)V

    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzBM()V

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzAX()Lcom/google/android/gms/measurement/internal/zzc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzc;->zzka()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzBI()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzAS()Lcom/google/android/gms/measurement/internal/zzm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzm;->zzBi()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzBB()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzy;->zzBS()V

    goto :goto_1
.end method

.method public zzAS()Lcom/google/android/gms/measurement/internal/zzm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaUt:Lcom/google/android/gms/measurement/internal/zzm;

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzt;->zza(Lcom/google/android/gms/measurement/internal/zzw;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaUt:Lcom/google/android/gms/measurement/internal/zzm;

    return-object v0
.end method

.method public zzAT()Lcom/google/android/gms/measurement/internal/zzz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaUq:Lcom/google/android/gms/measurement/internal/zzz;

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzt;->zza(Lcom/google/android/gms/measurement/internal/zzw;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaUq:Lcom/google/android/gms/measurement/internal/zzz;

    return-object v0
.end method

.method public zzAU()Lcom/google/android/gms/measurement/internal/zzae;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaUn:Lcom/google/android/gms/measurement/internal/zzae;

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzt;->zza(Lcom/google/android/gms/measurement/internal/zzv;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaUn:Lcom/google/android/gms/measurement/internal/zzae;

    return-object v0
.end method

.method public zzAV()Lcom/google/android/gms/measurement/internal/zzs;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaUl:Lcom/google/android/gms/measurement/internal/zzs;

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzt;->zza(Lcom/google/android/gms/measurement/internal/zzw;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaUl:Lcom/google/android/gms/measurement/internal/zzs;

    return-object v0
.end method

.method public zzAW()Lcom/google/android/gms/measurement/internal/zzr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaUj:Lcom/google/android/gms/measurement/internal/zzr;

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzt;->zza(Lcom/google/android/gms/measurement/internal/zzv;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaUj:Lcom/google/android/gms/measurement/internal/zzr;

    return-object v0
.end method

.method public zzAX()Lcom/google/android/gms/measurement/internal/zzc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaUi:Lcom/google/android/gms/measurement/internal/zzc;

    return-object v0
.end method

.method zzBA()Lcom/google/android/gms/measurement/internal/zzs;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaUl:Lcom/google/android/gms/measurement/internal/zzs;

    return-object v0
.end method

.method public zzBB()Lcom/google/android/gms/measurement/internal/zzy;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaUs:Lcom/google/android/gms/measurement/internal/zzy;

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzt;->zza(Lcom/google/android/gms/measurement/internal/zzw;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaUs:Lcom/google/android/gms/measurement/internal/zzy;

    return-object v0
.end method

.method public zzBC()Lcom/google/android/gms/measurement/AppMeasurement;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaUm:Lcom/google/android/gms/measurement/AppMeasurement;

    return-object v0
.end method

.method public zzBD()Lcom/google/android/gms/measurement/internal/zzd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaUo:Lcom/google/android/gms/measurement/internal/zzd;

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzt;->zza(Lcom/google/android/gms/measurement/internal/zzw;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaUo:Lcom/google/android/gms/measurement/internal/zzd;

    return-object v0
.end method

.method public zzBE()Lcom/google/android/gms/measurement/internal/zzp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaUp:Lcom/google/android/gms/measurement/internal/zzp;

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzt;->zza(Lcom/google/android/gms/measurement/internal/zzw;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaUp:Lcom/google/android/gms/measurement/internal/zzp;

    return-object v0
.end method

.method public zzBF()Lcom/google/android/gms/measurement/internal/zzf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaUr:Lcom/google/android/gms/measurement/internal/zzf;

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzt;->zza(Lcom/google/android/gms/measurement/internal/zzw;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaUr:Lcom/google/android/gms/measurement/internal/zzf;

    return-object v0
.end method

.method public zzBG()Lcom/google/android/gms/measurement/internal/zzq;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaUu:Lcom/google/android/gms/measurement/internal/zzq;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Network broadcast receiver not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaUu:Lcom/google/android/gms/measurement/internal/zzq;

    return-object v0
.end method

.method public zzBH()Lcom/google/android/gms/measurement/internal/zzab;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaUv:Lcom/google/android/gms/measurement/internal/zzab;

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzt;->zza(Lcom/google/android/gms/measurement/internal/zzw;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaUv:Lcom/google/android/gms/measurement/internal/zzab;

    return-object v0
.end method

.method protected zzBI()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public zzBK()V
    .locals 10

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zziS()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzje()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzAX()Lcom/google/android/gms/measurement/internal/zzc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzc;->zzka()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzAW()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzr;->zzBx()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzzz()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzo;->zzBm()Lcom/google/android/gms/measurement/internal/zzo$zza;

    move-result-object v0

    const-string v1, "Upload data called on the client side before use of service was decided"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzo$zza;->zzez(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzzz()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzo;->zzBl()Lcom/google/android/gms/measurement/internal/zzo$zza;

    move-result-object v0

    const-string v1, "Upload called in the client side when service should be used"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzo$zza;->zzez(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzBJ()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzzz()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzo;->zzBm()Lcom/google/android/gms/measurement/internal/zzo$zza;

    move-result-object v0

    const-string v1, "Uploading requested multiple times"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzo$zza;->zzez(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzBE()Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzp;->zzlk()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzzz()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzo;->zzBm()Lcom/google/android/gms/measurement/internal/zzo$zza;

    move-result-object v0

    const-string v1, "Network not connected, ignoring upload request"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzo$zza;->zzez(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzBM()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzAW()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzr;->zzaTF:Lcom/google/android/gms/measurement/internal/zzr$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzr$zza;->get()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzzz()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzo;->zzBq()Lcom/google/android/gms/measurement/internal/zzo$zza;

    move-result-object v3

    const-string v4, "Uploading events. Elapsed time since last upload attempt (ms)"

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zziT()Lcom/google/android/gms/internal/zznl;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/internal/zznl;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzo$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzBD()Lcom/google/android/gms/measurement/internal/zzd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzd;->zzAY()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzAX()Lcom/google/android/gms/measurement/internal/zzc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzc;->zzAI()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzAX()Lcom/google/android/gms/measurement/internal/zzc;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzc;->zzAJ()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzBD()Lcom/google/android/gms/measurement/internal/zzd;

    move-result-object v4

    invoke-virtual {v4, v0, v1, v3}, Lcom/google/android/gms/measurement/internal/zzd;->zzn(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/zzqq$zzd;

    iget-object v5, v0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVF:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v0, v0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVF:Ljava/lang/String;

    move-object v4, v0

    :goto_1
    if-eqz v4, :cond_a

    move v1, v2

    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_a

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/zzqq$zzd;

    iget-object v5, v0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVF:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_7
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_8
    iget-object v0, v0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVF:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-interface {v3, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    :goto_3
    new-instance v3, Lcom/google/android/gms/internal/zzqq$zzc;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzqq$zzc;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/internal/zzqq$zzd;

    iput-object v0, v3, Lcom/google/android/gms/internal/zzqq$zzc;->zzaVp:[Lcom/google/android/gms/internal/zzqq$zzd;

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zziT()Lcom/google/android/gms/internal/zznl;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zznl;->currentTimeMillis()J

    move-result-wide v6

    :goto_4
    iget-object v0, v3, Lcom/google/android/gms/internal/zzqq$zzc;->zzaVp:[Lcom/google/android/gms/internal/zzqq$zzd;

    array-length v0, v0

    if-ge v2, v0, :cond_9

    iget-object v5, v3, Lcom/google/android/gms/internal/zzqq$zzc;->zzaVp:[Lcom/google/android/gms/internal/zzqq$zzd;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/zzqq$zzd;

    aput-object v0, v5, v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v3, Lcom/google/android/gms/internal/zzqq$zzc;->zzaVp:[Lcom/google/android/gms/internal/zzqq$zzd;

    aget-object v0, v0, v2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzAX()Lcom/google/android/gms/measurement/internal/zzc;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzc;->zzAE()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVE:Ljava/lang/Long;

    iget-object v0, v3, Lcom/google/android/gms/internal/zzqq$zzc;->zzaVp:[Lcom/google/android/gms/internal/zzqq$zzd;

    aget-object v0, v0, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVu:Ljava/lang/Long;

    iget-object v0, v3, Lcom/google/android/gms/internal/zzqq$zzc;->zzaVp:[Lcom/google/android/gms/internal/zzqq$zzd;

    aget-object v0, v0, v2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzAX()Lcom/google/android/gms/measurement/internal/zzc;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzc;->zzka()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVK:Ljava/lang/Boolean;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzAU()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzae;->zza(Lcom/google/android/gms/internal/zzqq$zzc;)[B

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzAX()Lcom/google/android/gms/measurement/internal/zzc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzc;->zzAK()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/google/android/gms/measurement/internal/zzt;->zzx(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzAW()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzr;->zzaTG:Lcom/google/android/gms/measurement/internal/zzr$zza;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zziT()Lcom/google/android/gms/internal/zznl;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/internal/zznl;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzr$zza;->set(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzBE()Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/measurement/internal/zzt$2;

    invoke-direct {v4, p0}, Lcom/google/android/gms/measurement/internal/zzt$2;-><init>(Lcom/google/android/gms/measurement/internal/zzt;)V

    invoke-virtual {v3, v2, v0, v4}, Lcom/google/android/gms/measurement/internal/zzp;->zza(Ljava/net/URL;[BLcom/google/android/gms/measurement/internal/zzp$zza;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzzz()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzo;->zzBl()Lcom/google/android/gms/measurement/internal/zzo$zza;

    move-result-object v0

    const-string v2, "Failed to parse upload URL. Not uploading"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzo$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_a
    move-object v1, v3

    goto/16 :goto_3

    :cond_b
    move-object v4, v1

    goto/16 :goto_1
.end method

.method zzBO()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaUz:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaUz:I

    return-void
.end method

.method protected zzBz()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzje()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zziS()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaUw:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzAU()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    const-string v3, "android.permission.INTERNET"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzae;->zzbh(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzAU()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzae;->zzbh(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/measurement/AppMeasurementReceiver;->zzX(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/measurement/AppMeasurementService;->zzY(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaUw:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaUw:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzAX()Lcom/google/android/gms/measurement/internal/zzc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzc;->zzka()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzAS()Lcom/google/android/gms/measurement/internal/zzm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzm;->zzBi()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaUw:Ljava/lang/Boolean;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaUw:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public zzJ(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzBM()V

    return-void
.end method

.method zza([Lcom/google/android/gms/measurement/internal/zzg;Lcom/google/android/gms/measurement/internal/AppMetadata;)Lcom/google/android/gms/internal/zzqq$zzd;
    .locals 20

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/zzx;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/zzx;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzt;->zziS()V

    new-instance v19, Lcom/google/android/gms/internal/zzqq$zzd;

    invoke-direct/range {v19 .. v19}, Lcom/google/android/gms/internal/zzqq$zzd;-><init>()V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVr:Ljava/lang/Integer;

    const-string v2, "android"

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVz:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/AppMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/google/android/gms/internal/zzqq$zzd;->appId:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/AppMetadata;->zzaSo:Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaSo:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/AppMetadata;->zzaKi:Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaKi:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/google/android/gms/measurement/internal/AppMetadata;->zzaSp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVD:Ljava/lang/Long;

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/AppMetadata;->zzaSn:Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaSn:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/google/android/gms/measurement/internal/AppMetadata;->zzaSq:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVI:Ljava/lang/Long;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzAW()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzr;->zzBt()Landroid/util/Pair;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVF:Ljava/lang/String;

    iget-object v2, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVG:Ljava/lang/Boolean;

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzBF()Lcom/google/android/gms/measurement/internal/zzf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzhb()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVA:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzBF()Lcom/google/android/gms/measurement/internal/zzf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzBe()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/google/android/gms/internal/zzqq$zzd;->osVersion:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzBF()Lcom/google/android/gms/measurement/internal/zzf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzBf()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVC:Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzBF()Lcom/google/android/gms/measurement/internal/zzf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzBg()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVB:Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVE:Ljava/lang/Long;

    const/4 v2, 0x0

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVu:Ljava/lang/Long;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    iget-wide v2, v2, Lcom/google/android/gms/measurement/internal/zzg;->zzacS:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVv:Ljava/lang/Long;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    iget-wide v2, v2, Lcom/google/android/gms/measurement/internal/zzg;->zzacS:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVw:Ljava/lang/Long;

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p1

    array-length v3, v0

    if-ge v2, v3, :cond_2

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVv:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aget-object v3, p1, v2

    iget-wide v6, v3, Lcom/google/android/gms/measurement/internal/zzg;->zzacS:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v19

    iput-object v3, v0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVv:Ljava/lang/Long;

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVw:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aget-object v3, p1, v2

    iget-wide v6, v3, Lcom/google/android/gms/measurement/internal/zzg;->zzacS:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v19

    iput-object v3, v0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVw:Ljava/lang/Long;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/google/android/gms/measurement/internal/AppMetadata;->zzaSq:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto/16 :goto_0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzBD()Lcom/google/android/gms/measurement/internal/zzd;

    move-result-object v2

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/AppMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzd;->zzew(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zza;

    move-result-object v3

    if-nez v3, :cond_3

    new-instance v3, Lcom/google/android/gms/measurement/internal/zza;

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/AppMetadata;->packageName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzAW()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzr;->zzBv()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/AppMetadata;->zzaSn:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzAW()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzr;->zzBu()Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/google/android/gms/measurement/internal/AppMetadata;->zzaKi:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/google/android/gms/measurement/internal/AppMetadata;->zzaSo:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/google/android/gms/measurement/internal/AppMetadata;->zzaSp:J

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/google/android/gms/measurement/internal/AppMetadata;->zzaSq:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/google/android/gms/measurement/internal/AppMetadata;->zzaSs:Z

    move/from16 v18, v0

    invoke-direct/range {v3 .. v18}, Lcom/google/android/gms/measurement/internal/zza;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;JJZ)V

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzzz()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v2

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVw:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v2, v4, v5}, Lcom/google/android/gms/measurement/internal/zza;->zza(Lcom/google/android/gms/measurement/internal/zzo;J)Lcom/google/android/gms/measurement/internal/zza;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzBD()Lcom/google/android/gms/measurement/internal/zzd;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gms/measurement/internal/zzd;->zza(Lcom/google/android/gms/measurement/internal/zza;)V

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zza;->zzaSe:Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v4, v0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVH:Ljava/lang/String;

    iget-wide v4, v2, Lcom/google/android/gms/measurement/internal/zza;->zzaSh:J

    long-to-int v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVJ:Ljava/lang/Integer;

    iget-wide v4, v3, Lcom/google/android/gms/measurement/internal/zza;->zzaSi:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-nez v2, :cond_4

    const/4 v2, 0x0

    :goto_2
    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVy:Ljava/lang/Long;

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVy:Ljava/lang/Long;

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVx:Ljava/lang/Long;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzBD()Lcom/google/android/gms/measurement/internal/zzd;

    move-result-object v2

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/AppMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzd;->zzev(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/gms/internal/zzqq$zze;

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVt:[Lcom/google/android/gms/internal/zzqq$zze;

    const/4 v2, 0x0

    move v3, v2

    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_5

    new-instance v5, Lcom/google/android/gms/internal/zzqq$zze;

    invoke-direct {v5}, Lcom/google/android/gms/internal/zzqq$zze;-><init>()V

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVt:[Lcom/google/android/gms/internal/zzqq$zze;

    aput-object v5, v2, v3

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/measurement/internal/zzac;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzac;->mName:Ljava/lang/String;

    iput-object v2, v5, Lcom/google/android/gms/internal/zzqq$zze;->name:Ljava/lang/String;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/measurement/internal/zzac;

    iget-wide v6, v2, Lcom/google/android/gms/measurement/internal/zzac;->zzaVf:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v5, Lcom/google/android/gms/internal/zzqq$zze;->zzaVM:Ljava/lang/Long;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzAU()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v6

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/measurement/internal/zzac;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzac;->zzLI:Ljava/lang/Object;

    invoke-virtual {v6, v5, v2}, Lcom/google/android/gms/measurement/internal/zzae;->zza(Lcom/google/android/gms/internal/zzqq$zze;Ljava/lang/Object;)V

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_3

    :cond_4
    iget-wide v2, v3, Lcom/google/android/gms/measurement/internal/zza;->zzaSi:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_2

    :cond_5
    move-object/from16 v0, p1

    array-length v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/zzqq$zza;

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVs:[Lcom/google/android/gms/internal/zzqq$zza;

    const/4 v2, 0x0

    move v3, v2

    :goto_4
    move-object/from16 v0, p1

    array-length v2, v0

    if-ge v3, v2, :cond_7

    new-instance v6, Lcom/google/android/gms/internal/zzqq$zza;

    invoke-direct {v6}, Lcom/google/android/gms/internal/zzqq$zza;-><init>()V

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVs:[Lcom/google/android/gms/internal/zzqq$zza;

    aput-object v6, v2, v3

    aget-object v2, p1, v3

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzg;->mName:Ljava/lang/String;

    iput-object v2, v6, Lcom/google/android/gms/internal/zzqq$zza;->name:Ljava/lang/String;

    aget-object v2, p1, v3

    iget-wide v4, v2, Lcom/google/android/gms/measurement/internal/zzg;->zzacS:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v6, Lcom/google/android/gms/internal/zzqq$zza;->zzaVl:Ljava/lang/Long;

    aget-object v2, p1, v3

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzg;->zzaSE:Lcom/google/android/gms/measurement/internal/EventParams;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/EventParams;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/gms/internal/zzqq$zzb;

    iput-object v2, v6, Lcom/google/android/gms/internal/zzqq$zza;->zzaVk:[Lcom/google/android/gms/internal/zzqq$zzb;

    const/4 v2, 0x0

    aget-object v4, p1, v3

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzg;->zzaSE:Lcom/google/android/gms/measurement/internal/EventParams;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/EventParams;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v4, v2

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v8, Lcom/google/android/gms/internal/zzqq$zzb;

    invoke-direct {v8}, Lcom/google/android/gms/internal/zzqq$zzb;-><init>()V

    iget-object v9, v6, Lcom/google/android/gms/internal/zzqq$zza;->zzaVk:[Lcom/google/android/gms/internal/zzqq$zzb;

    add-int/lit8 v5, v4, 0x1

    aput-object v8, v9, v4

    iput-object v2, v8, Lcom/google/android/gms/internal/zzqq$zzb;->name:Ljava/lang/String;

    aget-object v4, p1, v3

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzg;->zzaSE:Lcom/google/android/gms/measurement/internal/EventParams;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/measurement/internal/EventParams;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzAU()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v4

    invoke-virtual {v4, v8, v2}, Lcom/google/android/gms/measurement/internal/zzae;->zza(Lcom/google/android/gms/internal/zzqq$zzb;Ljava/lang/Object;)V

    move v4, v5

    goto :goto_5

    :cond_6
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_4

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzzz()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzo;->zzBs()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaSr:Ljava/lang/String;

    return-object v19
.end method

.method zza(Lcom/google/android/gms/measurement/internal/EventParcel;Ljava/lang/String;)V
    .locals 12

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzBD()Lcom/google/android/gms/measurement/internal/zzd;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/measurement/internal/zzd;->zzew(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zza;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zza;->zzRl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzzz()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzo;->zzBq()Lcom/google/android/gms/measurement/internal/zzo$zza;

    move-result-object v0

    const-string v1, "No app data available; dropping event"

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/measurement/internal/zzo$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/google/android/gms/measurement/internal/AppMetadata;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zza;->zzaSf:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zza;->zzRl:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zza;->zzaSj:Ljava/lang/String;

    iget-wide v6, v0, Lcom/google/android/gms/measurement/internal/zza;->zzaSk:J

    iget-wide v8, v0, Lcom/google/android/gms/measurement/internal/zza;->zzaSl:J

    const/4 v10, 0x0

    iget-boolean v11, v0, Lcom/google/android/gms/measurement/internal/zza;->zzaSm:Z

    move-object v2, p2

    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/measurement/internal/AppMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Z)V

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/measurement/internal/zzt;->zzb(Lcom/google/android/gms/measurement/internal/EventParcel;Lcom/google/android/gms/measurement/internal/AppMetadata;)V

    goto :goto_0
.end method

.method zzb(Lcom/google/android/gms/measurement/internal/EventParcel;Lcom/google/android/gms/measurement/internal/AppMetadata;)V
    .locals 12

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zziS()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzje()V

    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/AppMetadata;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzcG(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/AppMetadata;->zzaSn:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzzz()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzo;->zzBr()Lcom/google/android/gms/measurement/internal/zzo$zza;

    move-result-object v0

    const-string v1, "Logging event"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzo$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzg;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/EventParcel;->zzaSM:Ljava/lang/String;

    iget-object v4, p2, Lcom/google/android/gms/measurement/internal/AppMetadata;->packageName:Ljava/lang/String;

    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/EventParcel;->name:Ljava/lang/String;

    iget-wide v6, p1, Lcom/google/android/gms/measurement/internal/EventParcel;->zzaSN:J

    const-wide/16 v8, 0x0

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/EventParcel;->zzaSL:Lcom/google/android/gms/measurement/internal/EventParams;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/EventParams;->zzBh()Landroid/os/Bundle;

    move-result-object v10

    move-object v2, p0

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/measurement/internal/zzg;-><init>(Lcom/google/android/gms/measurement/internal/zzt;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzBD()Lcom/google/android/gms/measurement/internal/zzd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzd;->beginTransaction()V

    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzt;->zze(Lcom/google/android/gms/measurement/internal/AppMetadata;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzBD()Lcom/google/android/gms/measurement/internal/zzd;

    move-result-object v0

    iget-object v2, p2, Lcom/google/android/gms/measurement/internal/AppMetadata;->packageName:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzg;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzd;->zzL(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzh;

    iget-object v4, p2, Lcom/google/android/gms/measurement/internal/AppMetadata;->packageName:Ljava/lang/String;

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzg;->mName:Ljava/lang/String;

    const-wide/16 v6, 0x1

    const-wide/16 v8, 0x1

    iget-wide v10, v1, Lcom/google/android/gms/measurement/internal/zzg;->zzacS:J

    invoke-direct/range {v3 .. v11}, Lcom/google/android/gms/measurement/internal/zzh;-><init>(Ljava/lang/String;Ljava/lang/String;JJJ)V

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzBD()Lcom/google/android/gms/measurement/internal/zzd;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzd;->zza(Lcom/google/android/gms/measurement/internal/zzh;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/measurement/internal/zzg;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/measurement/internal/zzt;->zza([Lcom/google/android/gms/measurement/internal/zzg;Lcom/google/android/gms/measurement/internal/AppMetadata;)Lcom/google/android/gms/internal/zzqq$zzd;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzBD()Lcom/google/android/gms/measurement/internal/zzd;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/zzd;->zza(Lcom/google/android/gms/internal/zzqq$zzd;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzBD()Lcom/google/android/gms/measurement/internal/zzd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzd;->setTransactionSuccessful()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzzz()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzo;->zzBq()Lcom/google/android/gms/measurement/internal/zzo$zza;

    move-result-object v0

    const-string v2, "Event logged"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzo$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzBD()Lcom/google/android/gms/measurement/internal/zzd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzd;->endTransaction()V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzBM()V

    goto/16 :goto_0

    :cond_1
    :try_start_1
    iget-wide v2, v0, Lcom/google/android/gms/measurement/internal/zzh;->zzaSH:J

    invoke-virtual {v1, p0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzg;->zza(Lcom/google/android/gms/measurement/internal/zzt;J)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v1

    iget-wide v2, v1, Lcom/google/android/gms/measurement/internal/zzg;->zzacS:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzh;->zzQ(J)Lcom/google/android/gms/measurement/internal/zzh;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzBD()Lcom/google/android/gms/measurement/internal/zzd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzd;->endTransaction()V

    throw v0
.end method

.method zzb(Lcom/google/android/gms/measurement/internal/UserAttributeParcel;Lcom/google/android/gms/measurement/internal/AppMetadata;)V
    .locals 7

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zziS()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzje()V

    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/AppMetadata;->zzaSn:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzAU()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/UserAttributeParcel;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzae;->zzeF(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzAU()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/UserAttributeParcel;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/UserAttributeParcel;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzae;->zzm(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzac;

    iget-object v2, p2, Lcom/google/android/gms/measurement/internal/AppMetadata;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/UserAttributeParcel;->name:Ljava/lang/String;

    iget-wide v4, p1, Lcom/google/android/gms/measurement/internal/UserAttributeParcel;->zzaVg:J

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzac;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzzz()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzo;->zzBq()Lcom/google/android/gms/measurement/internal/zzo$zza;

    move-result-object v0

    const-string v2, "Setting user attribute"

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzac;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v6}, Lcom/google/android/gms/measurement/internal/zzo$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzBD()Lcom/google/android/gms/measurement/internal/zzd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzd;->beginTransaction()V

    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzt;->zze(Lcom/google/android/gms/measurement/internal/AppMetadata;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzBD()Lcom/google/android/gms/measurement/internal/zzd;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzd;->zza(Lcom/google/android/gms/measurement/internal/zzac;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzBD()Lcom/google/android/gms/measurement/internal/zzd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzd;->setTransactionSuccessful()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzzz()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzo;->zzBq()Lcom/google/android/gms/measurement/internal/zzo$zza;

    move-result-object v0

    const-string v2, "User attribute set"

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzac;->mName:Ljava/lang/String;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzac;->zzLI:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzo$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzBD()Lcom/google/android/gms/measurement/internal/zzd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzd;->endTransaction()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzBD()Lcom/google/android/gms/measurement/internal/zzd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzd;->endTransaction()V

    throw v0
.end method

.method zzb(Lcom/google/android/gms/measurement/internal/zzw;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaUy:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaUy:I

    return-void
.end method

.method zzc(Lcom/google/android/gms/measurement/internal/AppMetadata;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zziS()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzje()V

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/AppMetadata;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzcG(Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzt;->zze(Lcom/google/android/gms/measurement/internal/AppMetadata;)V

    return-void
.end method

.method zzc(Lcom/google/android/gms/measurement/internal/UserAttributeParcel;Lcom/google/android/gms/measurement/internal/AppMetadata;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zziS()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzje()V

    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/AppMetadata;->zzaSn:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzzz()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzo;->zzBq()Lcom/google/android/gms/measurement/internal/zzo$zza;

    move-result-object v0

    const-string v1, "Removing user attribute"

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/UserAttributeParcel;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzo$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzBD()Lcom/google/android/gms/measurement/internal/zzd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzd;->beginTransaction()V

    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzt;->zze(Lcom/google/android/gms/measurement/internal/AppMetadata;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzBD()Lcom/google/android/gms/measurement/internal/zzd;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/AppMetadata;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/UserAttributeParcel;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzd;->zzM(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzBD()Lcom/google/android/gms/measurement/internal/zzd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzd;->setTransactionSuccessful()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzzz()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzo;->zzBq()Lcom/google/android/gms/measurement/internal/zzo$zza;

    move-result-object v0

    const-string v1, "User attribute removed"

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/UserAttributeParcel;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzo$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzBD()Lcom/google/android/gms/measurement/internal/zzd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzd;->endTransaction()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzBD()Lcom/google/android/gms/measurement/internal/zzd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzd;->endTransaction()V

    throw v0
.end method

.method public zzd(Lcom/google/android/gms/measurement/internal/AppMetadata;)V
    .locals 10

    const-wide/32 v4, 0x36ee80

    const-wide/16 v6, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zziS()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzje()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/AppMetadata;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzcG(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/AppMetadata;->zzaSn:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzt;->zze(Lcom/google/android/gms/measurement/internal/AppMetadata;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzBD()Lcom/google/android/gms/measurement/internal/zzd;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/AppMetadata;->packageName:Ljava/lang/String;

    const-string v2, "_f"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzd;->zzL(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zziT()Lcom/google/android/gms/internal/zznl;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zznl;->currentTimeMillis()J

    move-result-wide v2

    div-long v0, v2, v4

    add-long/2addr v0, v6

    mul-long/2addr v4, v0

    new-instance v0, Lcom/google/android/gms/measurement/internal/UserAttributeParcel;

    const-string v1, "_fot"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "auto"

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/UserAttributeParcel;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zzt;->zzb(Lcom/google/android/gms/measurement/internal/UserAttributeParcel;Lcom/google/android/gms/measurement/internal/AppMetadata;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "_c"

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v4, Lcom/google/android/gms/measurement/internal/EventParcel;

    const-string v5, "_f"

    new-instance v6, Lcom/google/android/gms/measurement/internal/EventParams;

    invoke-direct {v6, v0}, Lcom/google/android/gms/measurement/internal/EventParams;-><init>(Landroid/os/Bundle;)V

    const-string v7, "auto"

    move-wide v8, v2

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/measurement/internal/EventParcel;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/EventParams;Ljava/lang/String;J)V

    invoke-virtual {p0, v4, p1}, Lcom/google/android/gms/measurement/internal/zzt;->zzb(Lcom/google/android/gms/measurement/internal/EventParcel;Lcom/google/android/gms/measurement/internal/AppMetadata;)V

    goto :goto_0
.end method

.method zziR()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzAX()Lcom/google/android/gms/measurement/internal/zzc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzc;->zzka()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected call on package side"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public zziS()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzAV()Lcom/google/android/gms/measurement/internal/zzs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzs;->zziS()V

    return-void
.end method

.method public zziT()Lcom/google/android/gms/internal/zznl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzqD:Lcom/google/android/gms/internal/zznl;

    return-object v0
.end method

.method zzje()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzOQ:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AppMeasurement is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public zzzz()Lcom/google/android/gms/measurement/internal/zzo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaUk:Lcom/google/android/gms/measurement/internal/zzo;

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzt;->zza(Lcom/google/android/gms/measurement/internal/zzw;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaUk:Lcom/google/android/gms/measurement/internal/zzo;

    return-object v0
.end method
