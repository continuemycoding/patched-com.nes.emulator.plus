.class public Lcom/db/android/api/entity/InfoEntity;
.super Ljava/lang/Object;


# instance fields
.field public adId:Ljava/lang/String;

.field public adMediaUrls:Ljava/lang/String;

.field public adPosition:I

.field public adType:I

.field public afterSeconds:I

.field public cipherkey:Ljava/lang/String;

.field public clickUrls:Ljava/lang/String;

.field public clickparams:Ljava/lang/String;

.field public clicktimes:I

.field public closedate:Ljava/lang/String;

.field public ctime:Ljava/lang/String;

.field public dailyfreq:I

.field public id:I

.field public isDownloading:I

.field public isSave:I

.field public iscloseadtag:I

.field public md5s:Ljava/lang/String;

.field public onposeUrls:Ljava/lang/String;

.field public opendate:Ljava/lang/String;

.field public seconds:I

.field public showTimes:I

.field public times:I

.field public totalfreq:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parJSONArray(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_1

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getAdId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/db/android/api/entity/InfoEntity;->adId:Ljava/lang/String;

    return-object v0
.end method

.method public getAdMediaUrls()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/db/android/api/entity/InfoEntity;->adMediaUrls:Ljava/lang/String;

    return-object v0
.end method

.method public getAdPosition()I
    .locals 1

    iget v0, p0, Lcom/db/android/api/entity/InfoEntity;->adPosition:I

    return v0
.end method

.method public getAdType()I
    .locals 1

    iget v0, p0, Lcom/db/android/api/entity/InfoEntity;->adType:I

    return v0
.end method

.method public getAfterSeconds()I
    .locals 1

    iget v0, p0, Lcom/db/android/api/entity/InfoEntity;->afterSeconds:I

    return v0
.end method

.method public getCipherkey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/db/android/api/entity/InfoEntity;->cipherkey:Ljava/lang/String;

    return-object v0
.end method

.method public getClickUrls()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/db/android/api/entity/InfoEntity;->clickUrls:Ljava/lang/String;

    return-object v0
.end method

.method public getClickparams()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/db/android/api/entity/InfoEntity;->clickparams:Ljava/lang/String;

    return-object v0
.end method

.method public getClicktimes()I
    .locals 1

    iget v0, p0, Lcom/db/android/api/entity/InfoEntity;->clicktimes:I

    return v0
.end method

.method public getClosedate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/db/android/api/entity/InfoEntity;->closedate:Ljava/lang/String;

    return-object v0
.end method

.method public getCtime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/db/android/api/entity/InfoEntity;->ctime:Ljava/lang/String;

    return-object v0
.end method

.method public getDailyfreq()I
    .locals 1

    iget v0, p0, Lcom/db/android/api/entity/InfoEntity;->dailyfreq:I

    return v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/db/android/api/entity/InfoEntity;->id:I

    return v0
.end method

.method public getIsDownloading()I
    .locals 1

    iget v0, p0, Lcom/db/android/api/entity/InfoEntity;->isDownloading:I

    return v0
.end method

.method public getIsSave()I
    .locals 1

    iget v0, p0, Lcom/db/android/api/entity/InfoEntity;->isSave:I

    return v0
.end method

.method public getIscloseadtag()I
    .locals 1

    iget v0, p0, Lcom/db/android/api/entity/InfoEntity;->iscloseadtag:I

    return v0
.end method

.method public getMd5s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/db/android/api/entity/InfoEntity;->md5s:Ljava/lang/String;

    return-object v0
.end method

.method public getOnposeUrls()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/db/android/api/entity/InfoEntity;->onposeUrls:Ljava/lang/String;

    return-object v0
.end method

.method public getOpendate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/db/android/api/entity/InfoEntity;->opendate:Ljava/lang/String;

    return-object v0
.end method

.method public getSeconds()I
    .locals 1

    iget v0, p0, Lcom/db/android/api/entity/InfoEntity;->seconds:I

    return v0
.end method

.method public getShowTimes()I
    .locals 1

    iget v0, p0, Lcom/db/android/api/entity/InfoEntity;->showTimes:I

    return v0
.end method

.method public getTimes()I
    .locals 1

    iget v0, p0, Lcom/db/android/api/entity/InfoEntity;->times:I

    return v0
.end method

.method public getTotalfreq()I
    .locals 1

    iget v0, p0, Lcom/db/android/api/entity/InfoEntity;->totalfreq:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/db/android/api/entity/InfoEntity;->type:I

    return v0
.end method

.method public parser(Lorg/json/JSONObject;Ljava/lang/String;I)V
    .locals 4

    const-string v0, "admediaurls"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/db/android/api/entity/InfoEntity;->setAdMediaUrls(Ljava/lang/String;)V

    const-string v0, "viewurls"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/db/android/api/entity/InfoEntity;->setOnposeUrls(Ljava/lang/String;)V

    const-string v0, "clickurls"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/db/android/api/entity/InfoEntity;->setClickUrls(Ljava/lang/String;)V

    const-string v0, "md5s"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/db/android/api/entity/InfoEntity;->setMd5s(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/db/android/api/entity/InfoEntity;->getAdMediaUrls()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/db/android/api/utils/k;->A(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/db/android/api/entity/InfoEntity;->setAdType(I)V

    const-string v0, "seconds"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/db/android/api/entity/InfoEntity;->setSeconds(I)V

    invoke-virtual {p0, p3}, Lcom/db/android/api/entity/InfoEntity;->setAdPosition(I)V

    const-string v0, "isshowad"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/db/android/api/entity/InfoEntity;->setIscloseadtag(I)V

    const-string v0, "dailyfreq"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/db/android/api/entity/InfoEntity;->setDailyfreq(I)V

    const-string v0, "totalfreq"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/db/android/api/entity/InfoEntity;->setTotalfreq(I)V

    invoke-virtual {p0, p2}, Lcom/db/android/api/entity/InfoEntity;->setCipherkey(Ljava/lang/String;)V

    const-string v0, "afterseconds"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/db/android/api/entity/InfoEntity;->setAfterSeconds(I)V

    const-string v0, "opendate"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/db/android/api/entity/InfoEntity;->setOpendate(Ljava/lang/String;)V

    const-string v0, "closedate"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/db/android/api/entity/InfoEntity;->setClosedate(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/db/android/api/entity/InfoEntity;->setCtime(Ljava/lang/String;)V

    const-string v0, "clickparams"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/db/android/api/entity/InfoEntity;->setClickparams(Ljava/lang/String;)V

    return-void
.end method

.method public setAdId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/db/android/api/entity/InfoEntity;->adId:Ljava/lang/String;

    return-void
.end method

.method public setAdMediaUrls(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/db/android/api/entity/InfoEntity;->adMediaUrls:Ljava/lang/String;

    return-void
.end method

.method public setAdPosition(I)V
    .locals 0

    iput p1, p0, Lcom/db/android/api/entity/InfoEntity;->adPosition:I

    return-void
.end method

.method public setAdType(I)V
    .locals 0

    iput p1, p0, Lcom/db/android/api/entity/InfoEntity;->adType:I

    return-void
.end method

.method public setAfterSeconds(I)V
    .locals 0

    iput p1, p0, Lcom/db/android/api/entity/InfoEntity;->afterSeconds:I

    return-void
.end method

.method public setCipherkey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/db/android/api/entity/InfoEntity;->cipherkey:Ljava/lang/String;

    return-void
.end method

.method public setClickUrls(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/db/android/api/entity/InfoEntity;->clickUrls:Ljava/lang/String;

    return-void
.end method

.method public setClickparams(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/db/android/api/entity/InfoEntity;->clickparams:Ljava/lang/String;

    return-void
.end method

.method public setClicktimes(I)V
    .locals 0

    iput p1, p0, Lcom/db/android/api/entity/InfoEntity;->clicktimes:I

    return-void
.end method

.method public setClosedate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/db/android/api/entity/InfoEntity;->closedate:Ljava/lang/String;

    return-void
.end method

.method public setCtime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/db/android/api/entity/InfoEntity;->ctime:Ljava/lang/String;

    return-void
.end method

.method public setDailyfreq(I)V
    .locals 0

    iput p1, p0, Lcom/db/android/api/entity/InfoEntity;->dailyfreq:I

    return-void
.end method

.method public setData(Landroid/database/Cursor;)V
    .locals 1

    const-string v0, "adId"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/db/android/api/entity/InfoEntity;->adId:Ljava/lang/String;

    const-string v0, "adMediaUrls"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/db/android/api/entity/InfoEntity;->adMediaUrls:Ljava/lang/String;

    const-string v0, "cipherkey"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/db/android/api/entity/InfoEntity;->cipherkey:Ljava/lang/String;

    const-string v0, "clickparams"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/db/android/api/entity/InfoEntity;->clickparams:Ljava/lang/String;

    const-string v0, "clickUrls"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/db/android/api/entity/InfoEntity;->clickUrls:Ljava/lang/String;

    const-string v0, "closedate"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/db/android/api/entity/InfoEntity;->closedate:Ljava/lang/String;

    const-string v0, "ctime"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/db/android/api/entity/InfoEntity;->ctime:Ljava/lang/String;

    const-string v0, "md5s"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/db/android/api/entity/InfoEntity;->md5s:Ljava/lang/String;

    const-string v0, "onposeUrls"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/db/android/api/entity/InfoEntity;->onposeUrls:Ljava/lang/String;

    const-string v0, "opendate"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/db/android/api/entity/InfoEntity;->opendate:Ljava/lang/String;

    const-string v0, "adPosition"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/db/android/api/entity/InfoEntity;->adPosition:I

    const-string v0, "adType"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/db/android/api/entity/InfoEntity;->adType:I

    const-string v0, "afterSeconds"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/db/android/api/entity/InfoEntity;->afterSeconds:I

    const-string v0, "clicktimes"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/db/android/api/entity/InfoEntity;->clicktimes:I

    const-string v0, "dailyfreq"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/db/android/api/entity/InfoEntity;->dailyfreq:I

    const-string v0, "id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/db/android/api/entity/InfoEntity;->id:I

    const-string v0, "iscloseadtag"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/db/android/api/entity/InfoEntity;->iscloseadtag:I

    const-string v0, "isDownloading"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/db/android/api/entity/InfoEntity;->isDownloading:I

    const-string v0, "isSave"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/db/android/api/entity/InfoEntity;->isSave:I

    const-string v0, "seconds"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/db/android/api/entity/InfoEntity;->seconds:I

    const-string v0, "showTimes"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/db/android/api/entity/InfoEntity;->showTimes:I

    const-string v0, "times"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/db/android/api/entity/InfoEntity;->times:I

    const-string v0, "totalfreq"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/db/android/api/entity/InfoEntity;->totalfreq:I

    const-string v0, "type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/db/android/api/entity/InfoEntity;->type:I

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/db/android/api/entity/InfoEntity;->id:I

    return-void
.end method

.method public setIsDownloading(I)V
    .locals 0

    iput p1, p0, Lcom/db/android/api/entity/InfoEntity;->isDownloading:I

    return-void
.end method

.method public setIsSave(I)V
    .locals 0

    iput p1, p0, Lcom/db/android/api/entity/InfoEntity;->isSave:I

    return-void
.end method

.method public setIscloseadtag(I)V
    .locals 0

    iput p1, p0, Lcom/db/android/api/entity/InfoEntity;->iscloseadtag:I

    return-void
.end method

.method public setMd5s(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/db/android/api/entity/InfoEntity;->md5s:Ljava/lang/String;

    return-void
.end method

.method public setOnposeUrls(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/db/android/api/entity/InfoEntity;->onposeUrls:Ljava/lang/String;

    return-void
.end method

.method public setOpendate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/db/android/api/entity/InfoEntity;->opendate:Ljava/lang/String;

    return-void
.end method

.method public setSeconds(I)V
    .locals 0

    iput p1, p0, Lcom/db/android/api/entity/InfoEntity;->seconds:I

    return-void
.end method

.method public setShowTimes(I)V
    .locals 1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lcom/db/android/api/entity/InfoEntity;->getTimes()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/db/android/api/entity/InfoEntity;->times:I

    :cond_0
    iput p1, p0, Lcom/db/android/api/entity/InfoEntity;->showTimes:I

    return-void
.end method

.method public setTimes(I)V
    .locals 0

    iput p1, p0, Lcom/db/android/api/entity/InfoEntity;->times:I

    return-void
.end method

.method public setTotalfreq(I)V
    .locals 0

    iput p1, p0, Lcom/db/android/api/entity/InfoEntity;->totalfreq:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/db/android/api/entity/InfoEntity;->type:I

    return-void
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "isSave"

    iget v2, p0, Lcom/db/android/api/entity/InfoEntity;->isSave:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "showTimes"

    iget v2, p0, Lcom/db/android/api/entity/InfoEntity;->showTimes:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "dailyfreq"

    iget v2, p0, Lcom/db/android/api/entity/InfoEntity;->dailyfreq:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "closedate"

    iget-object v2, p0, Lcom/db/android/api/entity/InfoEntity;->closedate:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "clickparams"

    iget-object v2, p0, Lcom/db/android/api/entity/InfoEntity;->clickparams:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "type"

    iget v2, p0, Lcom/db/android/api/entity/InfoEntity;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "isDownloading"

    iget v2, p0, Lcom/db/android/api/entity/InfoEntity;->isDownloading:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "ctime"

    iget-object v2, p0, Lcom/db/android/api/entity/InfoEntity;->ctime:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "md5s"

    iget-object v2, p0, Lcom/db/android/api/entity/InfoEntity;->md5s:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "totalfreq"

    iget v2, p0, Lcom/db/android/api/entity/InfoEntity;->totalfreq:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "clickUrls"

    iget-object v2, p0, Lcom/db/android/api/entity/InfoEntity;->clickUrls:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "afterSeconds"

    iget v2, p0, Lcom/db/android/api/entity/InfoEntity;->afterSeconds:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "clicktimes"

    iget v2, p0, Lcom/db/android/api/entity/InfoEntity;->clicktimes:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "times"

    iget v2, p0, Lcom/db/android/api/entity/InfoEntity;->times:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "seconds"

    iget v2, p0, Lcom/db/android/api/entity/InfoEntity;->seconds:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "cipherkey"

    iget-object v2, p0, Lcom/db/android/api/entity/InfoEntity;->cipherkey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "adId"

    iget-object v2, p0, Lcom/db/android/api/entity/InfoEntity;->adId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "adPosition"

    iget v2, p0, Lcom/db/android/api/entity/InfoEntity;->adPosition:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "opendate"

    iget-object v2, p0, Lcom/db/android/api/entity/InfoEntity;->opendate:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "iscloseadtag"

    iget v2, p0, Lcom/db/android/api/entity/InfoEntity;->iscloseadtag:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "adType"

    iget v2, p0, Lcom/db/android/api/entity/InfoEntity;->adType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "adMediaUrls"

    iget-object v2, p0, Lcom/db/android/api/entity/InfoEntity;->adMediaUrls:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "onposeUrls"

    iget-object v2, p0, Lcom/db/android/api/entity/InfoEntity;->onposeUrls:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
