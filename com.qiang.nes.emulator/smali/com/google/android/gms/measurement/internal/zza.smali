.class Lcom/google/android/gms/measurement/internal/zza;
.super Ljava/lang/Object;


# instance fields
.field final zzRl:Ljava/lang/String;

.field final zzaRd:Ljava/lang/String;

.field final zzaSe:Ljava/lang/String;

.field final zzaSf:Ljava/lang/String;

.field final zzaSg:Ljava/lang/String;

.field final zzaSh:J

.field final zzaSi:J

.field final zzaSj:Ljava/lang/String;

.field final zzaSk:J

.field final zzaSl:J

.field final zzaSm:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;JJZ)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzcG(Ljava/lang/String;)Ljava/lang/String;

    const-wide/16 v2, 0x0

    cmp-long v2, p5, v2

    if-ltz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzx;->zzab(Z)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaRd:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaSe:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p3, 0x0

    :cond_0
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaSf:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaSg:Ljava/lang/String;

    iput-wide p5, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaSh:J

    iput-wide p7, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaSi:J

    iput-object p9, p0, Lcom/google/android/gms/measurement/internal/zza;->zzRl:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaSj:Ljava/lang/String;

    move-wide/from16 v0, p11

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaSk:J

    move-wide/from16 v0, p13

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaSl:J

    move/from16 v0, p15

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaSm:Z

    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public zzJ(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zza;
    .locals 19

    new-instance v3, Lcom/google/android/gms/measurement/internal/zza;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zza;->zzaRd:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/zza;->zzaSf:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/gms/measurement/internal/zza;->zzaSh:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/gms/measurement/internal/zza;->zzaSi:J

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gms/measurement/internal/zza;->zzRl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gms/measurement/internal/zza;->zzaSj:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/gms/measurement/internal/zza;->zzaSk:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/gms/measurement/internal/zza;->zzaSl:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/gms/measurement/internal/zza;->zzaSm:Z

    move/from16 v18, v0

    move-object/from16 v5, p1

    move-object/from16 v7, p2

    invoke-direct/range {v3 .. v18}, Lcom/google/android/gms/measurement/internal/zza;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;JJZ)V

    return-object v3
.end method

.method public zzK(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zza;
    .locals 19

    new-instance v3, Lcom/google/android/gms/measurement/internal/zza;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zza;->zzaRd:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zza;->zzaSe:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/zza;->zzaSf:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/zza;->zzaSg:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/gms/measurement/internal/zza;->zzaSh:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/gms/measurement/internal/zza;->zzaSi:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/gms/measurement/internal/zza;->zzaSk:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/gms/measurement/internal/zza;->zzaSl:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/gms/measurement/internal/zza;->zzaSm:Z

    move/from16 v18, v0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    invoke-direct/range {v3 .. v18}, Lcom/google/android/gms/measurement/internal/zza;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;JJZ)V

    return-object v3
.end method

.method public zzO(J)Lcom/google/android/gms/measurement/internal/zza;
    .locals 19

    new-instance v3, Lcom/google/android/gms/measurement/internal/zza;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zza;->zzaRd:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zza;->zzaSe:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/zza;->zzaSf:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/zza;->zzaSg:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/gms/measurement/internal/zza;->zzaSh:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/gms/measurement/internal/zza;->zzaSi:J

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gms/measurement/internal/zza;->zzRl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gms/measurement/internal/zza;->zzaSj:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/gms/measurement/internal/zza;->zzaSk:J

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/gms/measurement/internal/zza;->zzaSm:Z

    move/from16 v18, v0

    move-wide/from16 v16, p1

    invoke-direct/range {v3 .. v18}, Lcom/google/android/gms/measurement/internal/zza;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;JJZ)V

    return-object v3
.end method

.method public zza(Lcom/google/android/gms/measurement/internal/zzo;J)Lcom/google/android/gms/measurement/internal/zza;
    .locals 20

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/zzx;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/gms/measurement/internal/zza;->zzaSh:J

    const-wide/16 v4, 0x1

    add-long v8, v2, v4

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v8, v2

    if-lez v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzo;->zzBm()Lcom/google/android/gms/measurement/internal/zzo$zza;

    move-result-object v2

    const-string v3, "Bundle index overflow"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzo$zza;->zzez(Ljava/lang/String;)V

    const-wide/16 v8, 0x0

    :cond_0
    new-instance v3, Lcom/google/android/gms/measurement/internal/zza;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zza;->zzaRd:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zza;->zzaSe:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/zza;->zzaSf:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/zza;->zzaSg:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gms/measurement/internal/zza;->zzRl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gms/measurement/internal/zza;->zzaSj:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/gms/measurement/internal/zza;->zzaSk:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/gms/measurement/internal/zza;->zzaSl:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/gms/measurement/internal/zza;->zzaSm:Z

    move/from16 v18, v0

    move-wide/from16 v10, p2

    invoke-direct/range {v3 .. v18}, Lcom/google/android/gms/measurement/internal/zza;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;JJZ)V

    return-object v3
.end method

.method public zzao(Z)Lcom/google/android/gms/measurement/internal/zza;
    .locals 19

    new-instance v3, Lcom/google/android/gms/measurement/internal/zza;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zza;->zzaRd:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zza;->zzaSe:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/zza;->zzaSf:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/zza;->zzaSg:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/gms/measurement/internal/zza;->zzaSh:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/gms/measurement/internal/zza;->zzaSi:J

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gms/measurement/internal/zza;->zzRl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gms/measurement/internal/zza;->zzaSj:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/gms/measurement/internal/zza;->zzaSk:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/gms/measurement/internal/zza;->zzaSl:J

    move-wide/from16 v16, v0

    move/from16 v18, p1

    invoke-direct/range {v3 .. v18}, Lcom/google/android/gms/measurement/internal/zza;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;JJZ)V

    return-object v3
.end method

.method public zze(Ljava/lang/String;J)Lcom/google/android/gms/measurement/internal/zza;
    .locals 20

    new-instance v3, Lcom/google/android/gms/measurement/internal/zza;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zza;->zzaRd:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zza;->zzaSe:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/zza;->zzaSg:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/gms/measurement/internal/zza;->zzaSh:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/gms/measurement/internal/zza;->zzaSi:J

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gms/measurement/internal/zza;->zzRl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gms/measurement/internal/zza;->zzaSj:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/gms/measurement/internal/zza;->zzaSl:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/gms/measurement/internal/zza;->zzaSm:Z

    move/from16 v18, v0

    move-object/from16 v6, p1

    move-wide/from16 v14, p2

    invoke-direct/range {v3 .. v18}, Lcom/google/android/gms/measurement/internal/zza;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;JJZ)V

    return-object v3
.end method
