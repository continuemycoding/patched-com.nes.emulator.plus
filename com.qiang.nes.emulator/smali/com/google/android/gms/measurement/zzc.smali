.class public final Lcom/google/android/gms/measurement/zzc;
.super Ljava/lang/Object;


# instance fields
.field private final zzaRk:Lcom/google/android/gms/measurement/zzf;

.field private zzaRl:Z

.field private zzaRm:J

.field private zzaRn:J

.field private zzaRo:J

.field private zzaRp:J

.field private zzaRq:J

.field private zzaRr:Z

.field private final zzaRs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/measurement/zze;",
            ">;",
            "Lcom/google/android/gms/measurement/zze;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaRt:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/measurement/zzi;",
            ">;"
        }
    .end annotation
.end field

.field private final zzqD:Lcom/google/android/gms/internal/zznl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/zzc;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/android/gms/measurement/zzc;->zzaRk:Lcom/google/android/gms/measurement/zzf;

    iput-object v0, p0, Lcom/google/android/gms/measurement/zzc;->zzaRk:Lcom/google/android/gms/measurement/zzf;

    iget-object v0, p1, Lcom/google/android/gms/measurement/zzc;->zzqD:Lcom/google/android/gms/internal/zznl;

    iput-object v0, p0, Lcom/google/android/gms/measurement/zzc;->zzqD:Lcom/google/android/gms/internal/zznl;

    iget-wide v0, p1, Lcom/google/android/gms/measurement/zzc;->zzaRm:J

    iput-wide v0, p0, Lcom/google/android/gms/measurement/zzc;->zzaRm:J

    iget-wide v0, p1, Lcom/google/android/gms/measurement/zzc;->zzaRn:J

    iput-wide v0, p0, Lcom/google/android/gms/measurement/zzc;->zzaRn:J

    iget-wide v0, p1, Lcom/google/android/gms/measurement/zzc;->zzaRo:J

    iput-wide v0, p0, Lcom/google/android/gms/measurement/zzc;->zzaRo:J

    iget-wide v0, p1, Lcom/google/android/gms/measurement/zzc;->zzaRp:J

    iput-wide v0, p0, Lcom/google/android/gms/measurement/zzc;->zzaRp:J

    iget-wide v0, p1, Lcom/google/android/gms/measurement/zzc;->zzaRq:J

    iput-wide v0, p0, Lcom/google/android/gms/measurement/zzc;->zzaRq:J

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/google/android/gms/measurement/zzc;->zzaRt:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/zzc;->zzaRt:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lcom/google/android/gms/measurement/zzc;->zzaRs:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/zzc;->zzaRs:Ljava/util/Map;

    iget-object v0, p1, Lcom/google/android/gms/measurement/zzc;->zzaRs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-static {v1}, Lcom/google/android/gms/measurement/zzc;->zzf(Ljava/lang/Class;)Lcom/google/android/gms/measurement/zze;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/measurement/zze;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/zze;->zza(Lcom/google/android/gms/measurement/zze;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/zzc;->zzaRs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/measurement/zzf;Lcom/google/android/gms/internal/zznl;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzx;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/zzc;->zzaRk:Lcom/google/android/gms/measurement/zzf;

    iput-object p2, p0, Lcom/google/android/gms/measurement/zzc;->zzqD:Lcom/google/android/gms/internal/zznl;

    const-wide/32 v0, 0x1b7740

    iput-wide v0, p0, Lcom/google/android/gms/measurement/zzc;->zzaRp:J

    const-wide v0, 0xb43e9400L

    iput-wide v0, p0, Lcom/google/android/gms/measurement/zzc;->zzaRq:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/zzc;->zzaRs:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/zzc;->zzaRt:Ljava/util/List;

    return-void
.end method

.method private static zzf(Ljava/lang/Class;)Lcom/google/android/gms/measurement/zze;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/measurement/zze;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/zze;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "dataType doesn\'t have default constructor"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "dataType default constructor is not accessible"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public zzM(J)V
    .locals 1

    iput-wide p1, p0, Lcom/google/android/gms/measurement/zzc;->zzaRn:J

    return-void
.end method

.method public zzb(Lcom/google/android/gms/measurement/zze;)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/google/android/gms/measurement/zze;

    if-eq v1, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/zzc;->zze(Ljava/lang/Class;)Lcom/google/android/gms/measurement/zze;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/zze;->zza(Lcom/google/android/gms/measurement/zze;)V

    return-void
.end method

.method public zzd(Ljava/lang/Class;)Lcom/google/android/gms/measurement/zze;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/measurement/zze;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/zzc;->zzaRs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/zze;

    return-object v0
.end method

.method public zze(Ljava/lang/Class;)Lcom/google/android/gms/measurement/zze;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/measurement/zze;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/zzc;->zzaRs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/zze;

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/measurement/zzc;->zzf(Ljava/lang/Class;)Lcom/google/android/gms/measurement/zze;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/zzc;->zzaRs:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public zzzE()Lcom/google/android/gms/measurement/zzc;
    .locals 1

    new-instance v0, Lcom/google/android/gms/measurement/zzc;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/zzc;-><init>(Lcom/google/android/gms/measurement/zzc;)V

    return-object v0
.end method

.method public zzzF()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gms/measurement/zze;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/zzc;->zzaRs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public zzzG()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/measurement/zzi;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/zzc;->zzaRt:Ljava/util/List;

    return-object v0
.end method

.method public zzzH()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/measurement/zzc;->zzaRm:J

    return-wide v0
.end method

.method public zzzI()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/zzc;->zzzM()Lcom/google/android/gms/measurement/zzg;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/measurement/zzg;->zze(Lcom/google/android/gms/measurement/zzc;)V

    return-void
.end method

.method public zzzJ()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/zzc;->zzaRl:Z

    return v0
.end method

.method zzzK()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/zzc;->zzqD:Lcom/google/android/gms/internal/zznl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zznl;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/zzc;->zzaRo:J

    iget-wide v0, p0, Lcom/google/android/gms/measurement/zzc;->zzaRn:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/measurement/zzc;->zzaRn:J

    iput-wide v0, p0, Lcom/google/android/gms/measurement/zzc;->zzaRm:J

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/zzc;->zzaRl:Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/zzc;->zzqD:Lcom/google/android/gms/internal/zznl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zznl;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/zzc;->zzaRm:J

    goto :goto_0
.end method

.method zzzL()Lcom/google/android/gms/measurement/zzf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/zzc;->zzaRk:Lcom/google/android/gms/measurement/zzf;

    return-object v0
.end method

.method zzzM()Lcom/google/android/gms/measurement/zzg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/zzc;->zzaRk:Lcom/google/android/gms/measurement/zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/zzf;->zzzM()Lcom/google/android/gms/measurement/zzg;

    move-result-object v0

    return-object v0
.end method

.method zzzN()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/zzc;->zzaRr:Z

    return v0
.end method

.method zzzO()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/zzc;->zzaRr:Z

    return-void
.end method
