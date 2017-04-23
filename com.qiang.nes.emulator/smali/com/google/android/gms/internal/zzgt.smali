.class public Lcom/google/android/gms/internal/zzgt;
.super Lcom/google/android/gms/internal/zzgp;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzha;
.end annotation


# instance fields
.field private zzBf:Lcom/google/android/gms/internal/zzen;

.field private zzFx:Lcom/google/android/gms/internal/zzel;

.field protected zzFy:Lcom/google/android/gms/internal/zzer;

.field private final zzoU:Lcom/google/android/gms/internal/zzch;

.field private zzpd:Lcom/google/android/gms/internal/zzew;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzie$zza;Lcom/google/android/gms/internal/zzew;Lcom/google/android/gms/internal/zzgq$zza;Lcom/google/android/gms/internal/zzch;)V
    .locals 1

    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/gms/internal/zzgp;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzie$zza;Lcom/google/android/gms/internal/zzgq$zza;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/zzgt;->zzpd:Lcom/google/android/gms/internal/zzew;

    iget-object v0, p2, Lcom/google/android/gms/internal/zzie$zza;->zzJF:Lcom/google/android/gms/internal/zzen;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgt;->zzBf:Lcom/google/android/gms/internal/zzen;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzgt;->zzoU:Lcom/google/android/gms/internal/zzch;

    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgt;->zzFf:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/zzgp;->onStop()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgt;->zzFx:Lcom/google/android/gms/internal/zzel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgt;->zzFx:Lcom/google/android/gms/internal/zzel;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzel;->cancel()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected zzD(I)Lcom/google/android/gms/internal/zzie;
    .locals 31

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/zzgt;->zzFc:Lcom/google/android/gms/internal/zzie$zza;

    iget-object v6, v2, Lcom/google/android/gms/internal/zzie$zza;->zzJK:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    new-instance v2, Lcom/google/android/gms/internal/zzie;

    iget-object v3, v6, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzGq:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/zzgt;->zzFd:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzAQ:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/zzgt;->zzFd:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v7, v7, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzAR:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/zzgt;->zzFd:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v8, v8, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzGP:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gms/internal/zzgt;->zzFd:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget v9, v9, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->orientation:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gms/internal/zzgt;->zzFd:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v10, v10, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzAU:J

    iget-object v12, v6, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzGt:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgt;->zzFd:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v13, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzGN:Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgt;->zzFy:Lcom/google/android/gms/internal/zzer;

    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgt;->zzFy:Lcom/google/android/gms/internal/zzer;

    iget-object v14, v6, Lcom/google/android/gms/internal/zzer;->zzBp:Lcom/google/android/gms/internal/zzem;

    :goto_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgt;->zzFy:Lcom/google/android/gms/internal/zzer;

    if-eqz v6, :cond_1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgt;->zzFy:Lcom/google/android/gms/internal/zzer;

    iget-object v15, v6, Lcom/google/android/gms/internal/zzer;->zzBq:Lcom/google/android/gms/internal/zzex;

    :goto_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgt;->zzFy:Lcom/google/android/gms/internal/zzer;

    if-eqz v6, :cond_2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgt;->zzFy:Lcom/google/android/gms/internal/zzer;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzer;->zzBr:Ljava/lang/String;

    move-object/from16 v16, v0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzgt;->zzBf:Lcom/google/android/gms/internal/zzen;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgt;->zzFy:Lcom/google/android/gms/internal/zzer;

    if-eqz v6, :cond_3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgt;->zzFy:Lcom/google/android/gms/internal/zzer;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzer;->zzBs:Lcom/google/android/gms/internal/zzep;

    move-object/from16 v18, v0

    :goto_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgt;->zzFd:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzGO:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgt;->zzFc:Lcom/google/android/gms/internal/zzie$zza;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzie$zza;->zzqV:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgt;->zzFd:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzGM:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgt;->zzFc:Lcom/google/android/gms/internal/zzie$zza;

    iget-wide v0, v6, Lcom/google/android/gms/internal/zzie$zza;->zzJH:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgt;->zzFd:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzGR:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgt;->zzFd:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzGS:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgt;->zzFc:Lcom/google/android/gms/internal/zzie$zza;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzie$zza;->zzJE:Lorg/json/JSONObject;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move/from16 v6, p1

    invoke-direct/range {v2 .. v30}, Lcom/google/android/gms/internal/zzie;-><init>(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/zzjn;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/zzem;Lcom/google/android/gms/internal/zzex;Ljava/lang/String;Lcom/google/android/gms/internal/zzen;Lcom/google/android/gms/internal/zzep;JLcom/google/android/gms/ads/internal/client/AdSizeParcel;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/ads/internal/formats/zzh$zza;)V

    return-object v2

    :cond_0
    const/4 v14, 0x0

    goto :goto_0

    :cond_1
    const/4 v15, 0x0

    goto :goto_1

    :cond_2
    const-class v6, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    goto :goto_2

    :cond_3
    const/16 v18, 0x0

    goto :goto_3
.end method

.method protected zzh(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzgp$zza;
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgt;->zzFf:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzgt;->zzi(J)Lcom/google/android/gms/internal/zzel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgt;->zzFx:Lcom/google/android/gms/internal/zzel;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgt;->zzFx:Lcom/google/android/gms/internal/zzel;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgt;->zzBf:Lcom/google/android/gms/internal/zzen;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzen;->zzAO:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzel;->zzc(Ljava/util/List;)Lcom/google/android/gms/internal/zzer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgt;->zzFy:Lcom/google/android/gms/internal/zzer;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgt;->zzFy:Lcom/google/android/gms/internal/zzer;

    iget v0, v0, Lcom/google/android/gms/internal/zzer;->zzBo:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/google/android/gms/internal/zzgp$zza;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected mediation result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzgt;->zzFy:Lcom/google/android/gms/internal/zzer;

    iget v2, v2, Lcom/google/android/gms/internal/zzer;->zzBo:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzgp$zza;-><init>(Ljava/lang/String;I)V

    throw v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/zzgp$zza;

    const-string v1, "No fill from any mediation ad networks."

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzgp$zza;-><init>(Ljava/lang/String;I)V

    throw v0

    :pswitch_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method zzi(J)Lcom/google/android/gms/internal/zzel;
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgt;->zzBf:Lcom/google/android/gms/internal/zzen;

    iget v0, v0, Lcom/google/android/gms/internal/zzen;->zzAX:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzet;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgt;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzgt;->zzFc:Lcom/google/android/gms/internal/zzie$zza;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzie$zza;->zzJK:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzgt;->zzpd:Lcom/google/android/gms/internal/zzew;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzgt;->zzBf:Lcom/google/android/gms/internal/zzen;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzgt;->zzFd:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v5, v5, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zztY:Z

    sget-object v6, Lcom/google/android/gms/internal/zzbz;->zzwC:Lcom/google/android/gms/internal/zzbv;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzbv;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const/4 v10, 0x2

    move-wide v6, p1

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/zzet;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/internal/zzew;Lcom/google/android/gms/internal/zzen;ZJJI)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzeu;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgt;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzgt;->zzFc:Lcom/google/android/gms/internal/zzie$zza;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzie$zza;->zzJK:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzgt;->zzpd:Lcom/google/android/gms/internal/zzew;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzgt;->zzBf:Lcom/google/android/gms/internal/zzen;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzgt;->zzFd:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v5, v5, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zztY:Z

    sget-object v6, Lcom/google/android/gms/internal/zzbz;->zzwC:Lcom/google/android/gms/internal/zzbv;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzbv;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v10, p0, Lcom/google/android/gms/internal/zzgt;->zzoU:Lcom/google/android/gms/internal/zzch;

    move-wide v6, p1

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/zzeu;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/internal/zzew;Lcom/google/android/gms/internal/zzen;ZJJLcom/google/android/gms/internal/zzch;)V

    goto :goto_0
.end method
