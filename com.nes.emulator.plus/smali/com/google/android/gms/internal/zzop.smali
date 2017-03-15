.class public Lcom/google/android/gms/internal/zzop;
.super Ljava/lang/Object;


# static fields
.field private static final zzaxk:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/android/gms/internal/zzom;->zzavz:Lcom/google/android/gms/internal/zzto$zzb;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzto$zzb;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/google/android/gms/internal/zzom;->zzavL:Lcom/google/android/gms/internal/zzto$zzb;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzto$zzb;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzop;->zzaxk:Ljava/util/Set;

    return-void
.end method

.method public static zzd(Lcom/google/android/gms/fitness/data/DataPoint;)Ljava/lang/String;
    .locals 10

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/DataPoint;->getDataType()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/fitness/data/DataType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzon;->zzdp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v4}, Lcom/google/android/gms/fitness/data/DataType;->getFields()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/Field;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/fitness/data/DataPoint;->getValue(Lcom/google/android/gms/fitness/data/Field;)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/Value;->isSet()Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v2, Lcom/google/android/gms/internal/zzop;->zzaxk:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not set"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Field;->getFormat()I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_3

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/Value;->asInt()I

    move-result v2

    int-to-double v2, v2

    :goto_1
    invoke-static {}, Lcom/google/android/gms/internal/zzoq;->zzud()Lcom/google/android/gms/internal/zzoq;

    move-result-object v6

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/zzoq;->zzdq(Ljava/lang/String;)Lcom/google/android/gms/internal/zzoq$zza;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v6, v2, v3}, Lcom/google/android/gms/internal/zzoq$zza;->zzh(D)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v0, "Field out of range"

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Field;->getFormat()I

    move-result v3

    const/4 v6, 0x2

    if-ne v3, v6, :cond_1

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/Value;->asFloat()F

    move-result v2

    float-to-double v2, v2

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/zzoq;->zzud()Lcom/google/android/gms/internal/zzoq;

    move-result-object v6

    invoke-virtual {v4}, Lcom/google/android/gms/fitness/data/DataType;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Lcom/google/android/gms/internal/zzoq;->zzD(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzoq$zza;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/DataPoint;->getTimestampNanos()J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/DataPoint;->zztH()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-nez v8, :cond_6

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-nez v0, :cond_5

    move-object v0, v1

    goto/16 :goto_0

    :cond_5
    const-string v0, "DataPoint out of range"

    goto/16 :goto_0

    :cond_6
    long-to-double v6, v6

    div-double/2addr v2, v6

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzoq$zza;->zzh(D)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "DataPoint out of range"

    goto/16 :goto_0

    :cond_7
    move-object v0, v1

    goto/16 :goto_0
.end method
