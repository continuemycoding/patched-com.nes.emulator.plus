.class public Lcom/db/android/api/entity/DescriptorEntity;
.super Ljava/lang/Object;


# instance fields
.field private URLTrackingCode:Ljava/lang/String;

.field private cacheId:Ljava/lang/String;

.field private times:I

.field private timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/db/android/api/entity/DescriptorEntity;->URLTrackingCode:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/db/android/api/entity/DescriptorEntity;->timestamp:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/db/android/api/entity/DescriptorEntity;->times:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/db/android/api/entity/DescriptorEntity;->URLTrackingCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/db/android/api/entity/DescriptorEntity;->timestamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/db/android/api/utils/k;->aR()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/db/android/api/bitmap/core/j;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/db/android/api/entity/DescriptorEntity;->cacheId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCacheId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/db/android/api/entity/DescriptorEntity;->cacheId:Ljava/lang/String;

    return-object v0
.end method

.method public getTimes()I
    .locals 1

    iget v0, p0, Lcom/db/android/api/entity/DescriptorEntity;->times:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/db/android/api/entity/DescriptorEntity;->timestamp:J

    return-wide v0
.end method

.method public getTimestampInSeconds()J
    .locals 4

    iget-wide v0, p0, Lcom/db/android/api/entity/DescriptorEntity;->timestamp:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getURLTrackingCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/db/android/api/entity/DescriptorEntity;->URLTrackingCode:Ljava/lang/String;

    return-object v0
.end method

.method public resetCacheId()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/db/android/api/entity/DescriptorEntity;->URLTrackingCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/db/android/api/entity/DescriptorEntity;->timestamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/db/android/api/utils/k;->aR()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/db/android/api/bitmap/core/j;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/db/android/api/entity/DescriptorEntity;->cacheId:Ljava/lang/String;

    return-void
.end method

.method public setCahceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/db/android/api/entity/DescriptorEntity;->cacheId:Ljava/lang/String;

    return-void
.end method

.method public setTimes(I)V
    .locals 0

    iput p1, p0, Lcom/db/android/api/entity/DescriptorEntity;->times:I

    return-void
.end method

.method public setTimestamp(J)V
    .locals 1

    iput-wide p1, p0, Lcom/db/android/api/entity/DescriptorEntity;->timestamp:J

    return-void
.end method

.method public setURLTrackingCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/db/android/api/entity/DescriptorEntity;->URLTrackingCode:Ljava/lang/String;

    return-void
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "cacheId"

    iget-object v2, p0, Lcom/db/android/api/entity/DescriptorEntity;->cacheId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "url"

    iget-object v2, p0, Lcom/db/android/api/entity/DescriptorEntity;->URLTrackingCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "timestamp"

    iget-wide v2, p0, Lcom/db/android/api/entity/DescriptorEntity;->timestamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "times"

    iget v2, p0, Lcom/db/android/api/entity/DescriptorEntity;->times:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method
