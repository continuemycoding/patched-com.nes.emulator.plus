.class public final Lcom/google/android/gms/internal/zzqq$zzd;
.super Lcom/google/android/gms/internal/zztk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzqq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzd"
.end annotation


# static fields
.field private static volatile zzaVq:[Lcom/google/android/gms/internal/zzqq$zzd;


# instance fields
.field public appId:Ljava/lang/String;

.field public osVersion:Ljava/lang/String;

.field public zzaKi:Ljava/lang/String;

.field public zzaSn:Ljava/lang/String;

.field public zzaSo:Ljava/lang/String;

.field public zzaSr:Ljava/lang/String;

.field public zzaVA:Ljava/lang/String;

.field public zzaVB:Ljava/lang/String;

.field public zzaVC:Ljava/lang/Integer;

.field public zzaVD:Ljava/lang/Long;

.field public zzaVE:Ljava/lang/Long;

.field public zzaVF:Ljava/lang/String;

.field public zzaVG:Ljava/lang/Boolean;

.field public zzaVH:Ljava/lang/String;

.field public zzaVI:Ljava/lang/Long;

.field public zzaVJ:Ljava/lang/Integer;

.field public zzaVK:Ljava/lang/Boolean;

.field public zzaVr:Ljava/lang/Integer;

.field public zzaVs:[Lcom/google/android/gms/internal/zzqq$zza;

.field public zzaVt:[Lcom/google/android/gms/internal/zzqq$zze;

.field public zzaVu:Ljava/lang/Long;

.field public zzaVv:Ljava/lang/Long;

.field public zzaVw:Ljava/lang/Long;

.field public zzaVx:Ljava/lang/Long;

.field public zzaVy:Ljava/lang/Long;

.field public zzaVz:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zztk;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqq$zzd;->zzCh()Lcom/google/android/gms/internal/zzqq$zzd;

    return-void
.end method

.method public static zzCg()[Lcom/google/android/gms/internal/zzqq$zzd;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVq:[Lcom/google/android/gms/internal/zzqq$zzd;

    if-nez v0, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/zzti;->zzbqa:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVq:[Lcom/google/android/gms/internal/zzqq$zzd;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/zzqq$zzd;

    sput-object v0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVq:[Lcom/google/android/gms/internal/zzqq$zzd;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVq:[Lcom/google/android/gms/internal/zzqq$zzd;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/zzqq$zzd;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/zzqq$zzd;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVr:Ljava/lang/Integer;

    if-nez v2, :cond_3

    iget-object v2, p1, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVr:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVr:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVr:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVs:[Lcom/google/android/gms/internal/zzqq$zza;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVs:[Lcom/google/android/gms/internal/zzqq$zza;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzti;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVt:[Lcom/google/android/gms/internal/zzqq$zze;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVt:[Lcom/google/android/gms/internal/zzqq$zze;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzti;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVu:Ljava/lang/Long;

    if-nez v2, :cond_7

    iget-object v2, p1, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVu:Ljava/lang/Long;

    if-eqz v2, :cond_8

    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVu:Ljava/lang/Long;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVu:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move v0, v1

    goto :goto_0

    :cond_8
    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVv:Ljava/lang/Long;

    if-nez v2, :cond_9

    iget-object v2, p1, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVv:Ljava/lang/Long;

    if-eqz v2, :cond_a

    move v0, v1

    goto :goto_0

    :cond_9
    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVv:Ljava/lang/Long;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVv:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    move v0, v1

    goto :goto_0

    :cond_a
    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVw:Ljava/lang/Long;

    if-nez v2, :cond_b

    iget-object v2, p1, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVw:Ljava/lang/Long;

    if-eqz v2, :cond_c

    move v0, v1

    goto :goto_0

    :cond_b
    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVw:Ljava/lang/Long;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVw:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    move v0, v1

    goto :goto_0

    :cond_c
    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVx:Ljava/lang/Long;

    if-nez v2, :cond_d

    iget-object v2, p1, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVx:Ljava/lang/Long;

    if-eqz v2, :cond_e

    move v0, v1

    goto/16 :goto_0

    :cond_d
    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVx:Ljava/lang/Long;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVx:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    move v0, v1

    goto/16 :goto_0

    :cond_e
    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVy:Ljava/lang/Long;

    if-nez v2, :cond_f

    iget-object v2, p1, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVy:Ljava/lang/Long;

    if-eqz v2, :cond_10

    move v0, v1

    goto/16 :goto_0

    :cond_f
    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVy:Ljava/lang/Long;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVy:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    move v0, v1

    goto/16 :goto_0

    :cond_10
    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVz:Ljava/lang/String;

    if-nez v2, :cond_11

    iget-object v2, p1, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVz:Ljava/lang/String;

    if-eqz v2, :cond_12

    move v0, v1

    goto/16 :goto_0

    :cond_11
    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVz:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVz:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    move v0, v1

    goto/16 :goto_0

    :cond_12
    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->osVersion:Ljava/lang/String;

    if-nez v2, :cond_13

    iget-object v2, p1, Lcom/google/android/gms/internal/zzqq$zzd;->osVersion:Ljava/lang/String;

    if-eqz v2, :cond_14

    move v0, v1

    goto/16 :goto_0

    :cond_13
    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->osVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzqq$zzd;->osVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    move v0, v1

    goto/16 :goto_0

    :cond_14
    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVA:Ljava/lang/String;

    if-nez v2, :cond_15

    iget-object v2, p1, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVA:Ljava/lang/String;

    if-eqz v2, :cond_16

    move v0, v1

    goto/16 :goto_0

    :cond_15
    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVA:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVA:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    move v0, v1

    goto/16 :goto_0

    :cond_16
    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVB:Ljava/lang/String;

    if-nez v2, :cond_17

    iget-object v2, p1, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVB:Ljava/lang/String;

    if-eqz v2, :cond_18

    move v0, v1

    goto/16 :goto_0

    :cond_17
    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVB:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVB:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    move v0, v1

    goto/16 :goto_0

    :cond_18
    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVC:Ljava/lang/Integer;

    if-nez v2, :cond_19

    iget-object v2, p1, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVC:Ljava/lang/Integer;

    if-eqz v2, :cond_1a

    move v0, v1

    goto/16 :goto_0

    :cond_19
    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVC:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVC:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    move v0, v1

    goto/16 :goto_0

    :cond_1a
    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaSo:Ljava/lang/String;

    if-nez v2, :cond_1b

    iget-object v2, p1, Lcom/google/android/gms/internal/zzqq$zzd;->zzaSo:Ljava/lang/String;

    if-eqz v2, :cond_1c

    move v0, v1

    goto/16 :goto_0

    :cond_1b
    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaSo:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzqq$zzd;->zzaSo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    move v0, v1

    goto/16 :goto_0

    :cond_1c
    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->appId:Ljava/lang/String;

    if-nez v2, :cond_1d

    iget-object v2, p1, Lcom/google/android/gms/internal/zzqq$zzd;->appId:Ljava/lang/String;

    if-eqz v2, :cond_1e

    move v0, v1

    goto/16 :goto_0

    :cond_1d
    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->appId:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzqq$zzd;->appId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    move v0, v1

    goto/16 :goto_0

    :cond_1e
    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaKi:Ljava/lang/String;

    if-nez v2, :cond_1f

    iget-object v2, p1, Lcom/google/android/gms/internal/zzqq$zzd;->zzaKi:Ljava/lang/String;

    if-eqz v2, :cond_20

    move v0, v1

    goto/16 :goto_0

    :cond_1f
    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaKi:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzqq$zzd;->zzaKi:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    move v0, v1

    goto/16 :goto_0

    :cond_20
    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVD:Ljava/lang/Long;

    if-nez v2, :cond_21

    iget-object v2, p1, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVD:Ljava/lang/Long;

    if-eqz v2, :cond_22

    move v0, v1

    goto/16 :goto_0

    :cond_21
    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVD:Ljava/lang/Long;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVD:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    move v0, v1

    goto/16 :goto_0

    :cond_22
    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVE:Ljava/lang/Long;

    if-nez v2, :cond_23

    iget-object v2, p1, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVE:Ljava/lang/Long;

    if-eqz v2, :cond_24

    move v0, v1

    goto/16 :goto_0

    :cond_23
    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVE:Ljava/lang/Long;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVE:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    move v0, v1

    goto/16 :goto_0

    :cond_24
    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVF:Ljava/lang/String;

    if-nez v2, :cond_25

    iget-object v2, p1, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVF:Ljava/lang/String;

    if-eqz v2, :cond_26

    move v0, v1

    goto/16 :goto_0

    :cond_25
    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVF:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVF:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    move v0, v1

    goto/16 :goto_0

    :cond_26
    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVG:Ljava/lang/Boolean;

    if-nez v2, :cond_27

    iget-object v2, p1, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVG:Ljava/lang/Boolean;

    if-eqz v2, :cond_28

    move v0, v1

    goto/16 :goto_0

    :cond_27
    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVG:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVG:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    move v0, v1

    goto/16 :goto_0

    :cond_28
    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVH:Ljava/lang/String;

    if-nez v2, :cond_29

    iget-object v2, p1, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVH:Ljava/lang/String;

    if-eqz v2, :cond_2a

    move v0, v1

    goto/16 :goto_0

    :cond_29
    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVH:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    move v0, v1

    goto/16 :goto_0

    :cond_2a
    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVI:Ljava/lang/Long;

    if-nez v2, :cond_2b

    iget-object v2, p1, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVI:Ljava/lang/Long;

    if-eqz v2, :cond_2c

    move v0, v1

    goto/16 :goto_0

    :cond_2b
    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVI:Ljava/lang/Long;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVI:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    move v0, v1

    goto/16 :goto_0

    :cond_2c
    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVJ:Ljava/lang/Integer;

    if-nez v2, :cond_2d

    iget-object v2, p1, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVJ:Ljava/lang/Integer;

    if-eqz v2, :cond_2e

    move v0, v1

    goto/16 :goto_0

    :cond_2d
    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVJ:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVJ:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    move v0, v1

    goto/16 :goto_0

    :cond_2e
    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaSr:Ljava/lang/String;

    if-nez v2, :cond_2f

    iget-object v2, p1, Lcom/google/android/gms/internal/zzqq$zzd;->zzaSr:Ljava/lang/String;

    if-eqz v2, :cond_30

    move v0, v1

    goto/16 :goto_0

    :cond_2f
    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaSr:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzqq$zzd;->zzaSr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    move v0, v1

    goto/16 :goto_0

    :cond_30
    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaSn:Ljava/lang/String;

    if-nez v2, :cond_31

    iget-object v2, p1, Lcom/google/android/gms/internal/zzqq$zzd;->zzaSn:Ljava/lang/String;

    if-eqz v2, :cond_32

    move v0, v1

    goto/16 :goto_0

    :cond_31
    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaSn:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzqq$zzd;->zzaSn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    move v0, v1

    goto/16 :goto_0

    :cond_32
    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVK:Ljava/lang/Boolean;

    if-nez v2, :cond_33

    iget-object v2, p1, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVK:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :cond_33
    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVK:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVK:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVr:Ljava/lang/Integer;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVs:[Lcom/google/android/gms/internal/zzqq$zza;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzti;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVt:[Lcom/google/android/gms/internal/zzqq$zze;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzti;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVu:Ljava/lang/Long;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVv:Ljava/lang/Long;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVw:Ljava/lang/Long;

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVx:Ljava/lang/Long;

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVy:Ljava/lang/Long;

    if-nez v0, :cond_5

    move v0, v1

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVz:Ljava/lang/String;

    if-nez v0, :cond_6

    move v0, v1

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->osVersion:Ljava/lang/String;

    if-nez v0, :cond_7

    move v0, v1

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVA:Ljava/lang/String;

    if-nez v0, :cond_8

    move v0, v1

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVB:Ljava/lang/String;

    if-nez v0, :cond_9

    move v0, v1

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVC:Ljava/lang/Integer;

    if-nez v0, :cond_a

    move v0, v1

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaSo:Ljava/lang/String;

    if-nez v0, :cond_b

    move v0, v1

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->appId:Ljava/lang/String;

    if-nez v0, :cond_c

    move v0, v1

    :goto_c
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaKi:Ljava/lang/String;

    if-nez v0, :cond_d

    move v0, v1

    :goto_d
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVD:Ljava/lang/Long;

    if-nez v0, :cond_e

    move v0, v1

    :goto_e
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVE:Ljava/lang/Long;

    if-nez v0, :cond_f

    move v0, v1

    :goto_f
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVF:Ljava/lang/String;

    if-nez v0, :cond_10

    move v0, v1

    :goto_10
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVG:Ljava/lang/Boolean;

    if-nez v0, :cond_11

    move v0, v1

    :goto_11
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVH:Ljava/lang/String;

    if-nez v0, :cond_12

    move v0, v1

    :goto_12
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVI:Ljava/lang/Long;

    if-nez v0, :cond_13

    move v0, v1

    :goto_13
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVJ:Ljava/lang/Integer;

    if-nez v0, :cond_14

    move v0, v1

    :goto_14
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaSr:Ljava/lang/String;

    if-nez v0, :cond_15

    move v0, v1

    :goto_15
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaSn:Ljava/lang/String;

    if-nez v0, :cond_16

    move v0, v1

    :goto_16
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVK:Ljava/lang/Boolean;

    if-nez v2, :cond_17

    :goto_17
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVr:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVu:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto/16 :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVv:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto/16 :goto_2

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVw:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto/16 :goto_3

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVx:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto/16 :goto_4

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVy:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto/16 :goto_5

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVz:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_6

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->osVersion:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_7

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVA:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_8

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVB:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_9

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVC:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto/16 :goto_a

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaSo:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_b

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->appId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_c

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaKi:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_d

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVD:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto/16 :goto_e

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVE:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto/16 :goto_f

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVF:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_10

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto/16 :goto_11

    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVH:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_12

    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVI:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto/16 :goto_13

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVJ:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto/16 :goto_14

    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaSr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_15

    :cond_16
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaSn:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_16

    :cond_17
    iget-object v1, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVK:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto/16 :goto_17
.end method

.method public synthetic mergeFrom(Lcom/google/android/gms/internal/zztc;)Lcom/google/android/gms/internal/zztk;
    .locals 1
    .param p1, "x0"    # Lcom/google/android/gms/internal/zztc;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzqq$zzd;->zzw(Lcom/google/android/gms/internal/zztc;)Lcom/google/android/gms/internal/zzqq$zzd;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/android/gms/internal/zztd;)V
    .locals 4
    .param p1, "output"    # Lcom/google/android/gms/internal/zztd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVr:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVr:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zztd;->zzG(II)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVs:[Lcom/google/android/gms/internal/zzqq$zza;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVs:[Lcom/google/android/gms/internal/zzqq$zza;

    array-length v0, v0

    if-lez v0, :cond_2

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVs:[Lcom/google/android/gms/internal/zzqq$zza;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVs:[Lcom/google/android/gms/internal/zzqq$zza;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/zztd;->zza(ILcom/google/android/gms/internal/zztk;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVt:[Lcom/google/android/gms/internal/zzqq$zze;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVt:[Lcom/google/android/gms/internal/zzqq$zze;

    array-length v0, v0

    if-lez v0, :cond_4

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVt:[Lcom/google/android/gms/internal/zzqq$zze;

    array-length v0, v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVt:[Lcom/google/android/gms/internal/zzqq$zze;

    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/zztd;->zza(ILcom/google/android/gms/internal/zztk;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVu:Ljava/lang/Long;

    if-eqz v0, :cond_5

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVu:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zztd;->zzb(IJ)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVv:Ljava/lang/Long;

    if-eqz v0, :cond_6

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVv:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zztd;->zzb(IJ)V

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVw:Ljava/lang/Long;

    if-eqz v0, :cond_7

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVw:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zztd;->zzb(IJ)V

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVy:Ljava/lang/Long;

    if-eqz v0, :cond_8

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVy:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zztd;->zzb(IJ)V

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVz:Ljava/lang/String;

    if-eqz v0, :cond_9

    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVz:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zztd;->zzb(ILjava/lang/String;)V

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->osVersion:Ljava/lang/String;

    if-eqz v0, :cond_a

    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqq$zzd;->osVersion:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zztd;->zzb(ILjava/lang/String;)V

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVA:Ljava/lang/String;

    if-eqz v0, :cond_b

    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVA:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zztd;->zzb(ILjava/lang/String;)V

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVB:Ljava/lang/String;

    if-eqz v0, :cond_c

    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVB:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zztd;->zzb(ILjava/lang/String;)V

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVC:Ljava/lang/Integer;

    if-eqz v0, :cond_d

    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVC:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zztd;->zzG(II)V

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaSo:Ljava/lang/String;

    if-eqz v0, :cond_e

    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaSo:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zztd;->zzb(ILjava/lang/String;)V

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->appId:Ljava/lang/String;

    if-eqz v0, :cond_f

    const/16 v0, 0xe

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqq$zzd;->appId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zztd;->zzb(ILjava/lang/String;)V

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaKi:Ljava/lang/String;

    if-eqz v0, :cond_10

    const/16 v0, 0x10

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaKi:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zztd;->zzb(ILjava/lang/String;)V

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVD:Ljava/lang/Long;

    if-eqz v0, :cond_11

    const/16 v0, 0x11

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVD:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zztd;->zzb(IJ)V

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVE:Ljava/lang/Long;

    if-eqz v0, :cond_12

    const/16 v0, 0x12

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVE:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zztd;->zzb(IJ)V

    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVF:Ljava/lang/String;

    if-eqz v0, :cond_13

    const/16 v0, 0x13

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVF:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zztd;->zzb(ILjava/lang/String;)V

    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVG:Ljava/lang/Boolean;

    if-eqz v0, :cond_14

    const/16 v0, 0x14

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zztd;->zzb(IZ)V

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVH:Ljava/lang/String;

    if-eqz v0, :cond_15

    const/16 v0, 0x15

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVH:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zztd;->zzb(ILjava/lang/String;)V

    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVI:Ljava/lang/Long;

    if-eqz v0, :cond_16

    const/16 v0, 0x16

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVI:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zztd;->zzb(IJ)V

    :cond_16
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVJ:Ljava/lang/Integer;

    if-eqz v0, :cond_17

    const/16 v0, 0x17

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVJ:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zztd;->zzG(II)V

    :cond_17
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaSr:Ljava/lang/String;

    if-eqz v0, :cond_18

    const/16 v0, 0x18

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaSr:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zztd;->zzb(ILjava/lang/String;)V

    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaSn:Ljava/lang/String;

    if-eqz v0, :cond_19

    const/16 v0, 0x19

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaSn:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zztd;->zzb(ILjava/lang/String;)V

    :cond_19
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVx:Ljava/lang/Long;

    if-eqz v0, :cond_1a

    const/16 v0, 0x1a

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVx:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zztd;->zzb(IJ)V

    :cond_1a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVK:Ljava/lang/Boolean;

    if-eqz v0, :cond_1b

    const/16 v0, 0x1c

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVK:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zztd;->zzb(IZ)V

    :cond_1b
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zztk;->writeTo(Lcom/google/android/gms/internal/zztd;)V

    return-void
.end method

.method public zzCh()Lcom/google/android/gms/internal/zzqq$zzd;
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVr:Ljava/lang/Integer;

    invoke-static {}, Lcom/google/android/gms/internal/zzqq$zza;->zzCb()[Lcom/google/android/gms/internal/zzqq$zza;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVs:[Lcom/google/android/gms/internal/zzqq$zza;

    invoke-static {}, Lcom/google/android/gms/internal/zzqq$zze;->zzCi()[Lcom/google/android/gms/internal/zzqq$zze;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVt:[Lcom/google/android/gms/internal/zzqq$zze;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVu:Ljava/lang/Long;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVv:Ljava/lang/Long;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVw:Ljava/lang/Long;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVx:Ljava/lang/Long;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVy:Ljava/lang/Long;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVz:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzqq$zzd;->osVersion:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVA:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVB:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVC:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaSo:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzqq$zzd;->appId:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaKi:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVD:Ljava/lang/Long;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVE:Ljava/lang/Long;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVF:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVG:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVH:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVI:Ljava/lang/Long;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVJ:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaSr:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaSn:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVK:Ljava/lang/Boolean;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzbqb:I

    return-object p0
.end method

.method public zzw(Lcom/google/android/gms/internal/zztc;)Lcom/google/android/gms/internal/zzqq$zzd;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->zzHi()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zztn;->zzb(Lcom/google/android/gms/internal/zztc;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->zzHl()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVr:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zztn;->zzc(Lcom/google/android/gms/internal/zztc;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVs:[Lcom/google/android/gms/internal/zzqq$zza;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/zzqq$zza;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVs:[Lcom/google/android/gms/internal/zzqq$zza;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    new-instance v3, Lcom/google/android/gms/internal/zzqq$zza;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzqq$zza;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zztc;->zza(Lcom/google/android/gms/internal/zztk;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->zzHi()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVs:[Lcom/google/android/gms/internal/zzqq$zza;

    array-length v0, v0

    goto :goto_1

    :cond_3
    new-instance v3, Lcom/google/android/gms/internal/zzqq$zza;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzqq$zza;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zztc;->zza(Lcom/google/android/gms/internal/zztk;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVs:[Lcom/google/android/gms/internal/zzqq$zza;

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zztn;->zzc(Lcom/google/android/gms/internal/zztc;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVt:[Lcom/google/android/gms/internal/zzqq$zze;

    if-nez v0, :cond_5

    move v0, v1

    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/zzqq$zze;

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVt:[Lcom/google/android/gms/internal/zzqq$zze;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    new-instance v3, Lcom/google/android/gms/internal/zzqq$zze;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzqq$zze;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zztc;->zza(Lcom/google/android/gms/internal/zztk;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->zzHi()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVt:[Lcom/google/android/gms/internal/zzqq$zze;

    array-length v0, v0

    goto :goto_3

    :cond_6
    new-instance v3, Lcom/google/android/gms/internal/zzqq$zze;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzqq$zze;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zztc;->zza(Lcom/google/android/gms/internal/zztk;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVt:[Lcom/google/android/gms/internal/zzqq$zze;

    goto/16 :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->zzHk()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVu:Ljava/lang/Long;

    goto/16 :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->zzHk()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVv:Ljava/lang/Long;

    goto/16 :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->zzHk()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVw:Ljava/lang/Long;

    goto/16 :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->zzHk()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVy:Ljava/lang/Long;

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVz:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->osVersion:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVA:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVB:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->zzHl()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVC:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaSo:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->appId:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaKi:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->zzHk()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVD:Ljava/lang/Long;

    goto/16 :goto_0

    :sswitch_11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->zzHk()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVE:Ljava/lang/Long;

    goto/16 :goto_0

    :sswitch_12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVF:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->zzHm()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVG:Ljava/lang/Boolean;

    goto/16 :goto_0

    :sswitch_14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVH:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->zzHk()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVI:Ljava/lang/Long;

    goto/16 :goto_0

    :sswitch_16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->zzHl()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVJ:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_17
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaSr:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_18
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaSn:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->zzHk()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVx:Ljava/lang/Long;

    goto/16 :goto_0

    :sswitch_1a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->zzHm()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVK:Ljava/lang/Boolean;

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x60 -> :sswitch_c
        0x6a -> :sswitch_d
        0x72 -> :sswitch_e
        0x82 -> :sswitch_f
        0x88 -> :sswitch_10
        0x90 -> :sswitch_11
        0x9a -> :sswitch_12
        0xa0 -> :sswitch_13
        0xaa -> :sswitch_14
        0xb0 -> :sswitch_15
        0xb8 -> :sswitch_16
        0xc2 -> :sswitch_17
        0xca -> :sswitch_18
        0xd0 -> :sswitch_19
        0xe0 -> :sswitch_1a
    .end sparse-switch
.end method

.method protected zzz()I
    .locals 5

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/zztk;->zzz()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVr:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVr:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zztd;->zzI(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVs:[Lcom/google/android/gms/internal/zzqq$zza;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVs:[Lcom/google/android/gms/internal/zzqq$zza;

    array-length v2, v2

    if-lez v2, :cond_3

    move v2, v0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVs:[Lcom/google/android/gms/internal/zzqq$zza;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVs:[Lcom/google/android/gms/internal/zzqq$zza;

    aget-object v3, v3, v0

    if-eqz v3, :cond_1

    const/4 v4, 0x2

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/zztd;->zzc(ILcom/google/android/gms/internal/zztk;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVt:[Lcom/google/android/gms/internal/zzqq$zze;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVt:[Lcom/google/android/gms/internal/zzqq$zze;

    array-length v2, v2

    if-lez v2, :cond_5

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVt:[Lcom/google/android/gms/internal/zzqq$zze;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVt:[Lcom/google/android/gms/internal/zzqq$zze;

    aget-object v2, v2, v1

    if-eqz v2, :cond_4

    const/4 v3, 0x3

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zztd;->zzc(ILcom/google/android/gms/internal/zztk;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVu:Ljava/lang/Long;

    if-eqz v1, :cond_6

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVu:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zztd;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVv:Ljava/lang/Long;

    if-eqz v1, :cond_7

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVv:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zztd;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVw:Ljava/lang/Long;

    if-eqz v1, :cond_8

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVw:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zztd;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVy:Ljava/lang/Long;

    if-eqz v1, :cond_9

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVy:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zztd;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVz:Ljava/lang/String;

    if-eqz v1, :cond_a

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVz:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zztd;->zzp(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/internal/zzqq$zzd;->osVersion:Ljava/lang/String;

    if-eqz v1, :cond_b

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->osVersion:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zztd;->zzp(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVA:Ljava/lang/String;

    if-eqz v1, :cond_c

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVA:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zztd;->zzp(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    iget-object v1, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVB:Ljava/lang/String;

    if-eqz v1, :cond_d

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVB:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zztd;->zzp(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    iget-object v1, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVC:Ljava/lang/Integer;

    if-eqz v1, :cond_e

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVC:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zztd;->zzI(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaSo:Ljava/lang/String;

    if-eqz v1, :cond_f

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaSo:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zztd;->zzp(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_f
    iget-object v1, p0, Lcom/google/android/gms/internal/zzqq$zzd;->appId:Ljava/lang/String;

    if-eqz v1, :cond_10

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->appId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zztd;->zzp(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_10
    iget-object v1, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaKi:Ljava/lang/String;

    if-eqz v1, :cond_11

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaKi:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zztd;->zzp(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_11
    iget-object v1, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVD:Ljava/lang/Long;

    if-eqz v1, :cond_12

    const/16 v1, 0x11

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVD:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zztd;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_12
    iget-object v1, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVE:Ljava/lang/Long;

    if-eqz v1, :cond_13

    const/16 v1, 0x12

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVE:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zztd;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_13
    iget-object v1, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVF:Ljava/lang/String;

    if-eqz v1, :cond_14

    const/16 v1, 0x13

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVF:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zztd;->zzp(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_14
    iget-object v1, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVG:Ljava/lang/Boolean;

    if-eqz v1, :cond_15

    const/16 v1, 0x14

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVG:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zztd;->zzc(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_15
    iget-object v1, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVH:Ljava/lang/String;

    if-eqz v1, :cond_16

    const/16 v1, 0x15

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVH:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zztd;->zzp(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_16
    iget-object v1, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVI:Ljava/lang/Long;

    if-eqz v1, :cond_17

    const/16 v1, 0x16

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVI:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zztd;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_17
    iget-object v1, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVJ:Ljava/lang/Integer;

    if-eqz v1, :cond_18

    const/16 v1, 0x17

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVJ:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zztd;->zzI(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_18
    iget-object v1, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaSr:Ljava/lang/String;

    if-eqz v1, :cond_19

    const/16 v1, 0x18

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaSr:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zztd;->zzp(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_19
    iget-object v1, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaSn:Ljava/lang/String;

    if-eqz v1, :cond_1a

    const/16 v1, 0x19

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaSn:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zztd;->zzp(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1a
    iget-object v1, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVx:Ljava/lang/Long;

    if-eqz v1, :cond_1b

    const/16 v1, 0x1a

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVx:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zztd;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1b
    iget-object v1, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVK:Ljava/lang/Boolean;

    if-eqz v1, :cond_1c

    const/16 v1, 0x1c

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqq$zzd;->zzaVK:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zztd;->zzc(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1c
    return v0
.end method
