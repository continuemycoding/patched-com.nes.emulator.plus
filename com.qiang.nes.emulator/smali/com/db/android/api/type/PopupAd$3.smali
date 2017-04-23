.class Lcom/db/android/api/type/PopupAd$3;
.super Lcom/db/android/api/callback/b;


# instance fields
.field final synthetic this$0:Lcom/db/android/api/type/PopupAd;


# direct methods
.method constructor <init>(Lcom/db/android/api/type/PopupAd;)V
    .locals 0

    iput-object p1, p0, Lcom/db/android/api/type/PopupAd$3;->this$0:Lcom/db/android/api/type/PopupAd;

    invoke-direct {p0}, Lcom/db/android/api/callback/b;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "appkey not exist"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/type/PopupAd$3;->this$0:Lcom/db/android/api/type/PopupAd;

    iget-object v0, v0, Lcom/db/android/api/type/PopupAd;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/db/android/api/q;->d(Landroid/content/Context;)Lcom/db/android/api/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/db/android/api/q;->f()V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onfail: code:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/db/android/api/bitmap/core/g;->n(Ljava/lang/String;)V

    sget-boolean v0, Lcom/db/android/api/a;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/db/android/api/type/PopupAd$3;->this$0:Lcom/db/android/api/type/PopupAd;

    iget-object v0, v0, Lcom/db/android/api/type/PopupAd;->mContext:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onfail: code:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/4 v8, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rawJson:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/db/android/api/bitmap/core/g;->n(Ljava/lang/String;)V

    sget-boolean v0, Lcom/db/android/api/a;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/type/PopupAd$3;->this$0:Lcom/db/android/api/type/PopupAd;

    iget-object v0, v0, Lcom/db/android/api/type/PopupAd;->mContext:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "rawJson:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "ads"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const-string v1, "adkey"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_3

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "adid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/db/android/api/type/PopupAd$3;->this$0:Lcom/db/android/api/type/PopupAd;

    iget-object v1, v1, Lcom/db/android/api/type/PopupAd;->mContext:Landroid/app/Activity;

    invoke-static {v1}, Lcom/db/android/api/q;->d(Landroid/content/Context;)Lcom/db/android/api/q;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/db/android/api/q;->f(Ljava/lang/String;)Lcom/db/android/api/entity/InfoEntity;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/db/android/api/entity/InfoEntity;

    invoke-direct {v1}, Lcom/db/android/api/entity/InfoEntity;-><init>()V

    :cond_1
    invoke-virtual {v1, v5}, Lcom/db/android/api/entity/InfoEntity;->setAdId(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "adid:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/db/android/api/bitmap/core/g;->n(Ljava/lang/String;)V

    const/4 v5, 0x5

    invoke-virtual {v1, v0, v4, v5}, Lcom/db/android/api/entity/InfoEntity;->parser(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/db/android/api/type/PopupAd$3;->this$0:Lcom/db/android/api/type/PopupAd;

    iget-object v0, v0, Lcom/db/android/api/type/PopupAd;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/db/android/api/q;->d(Landroid/content/Context;)Lcom/db/android/api/q;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/db/android/api/q;->a(Lcom/db/android/api/entity/InfoEntity;)V

    invoke-virtual {v1}, Lcom/db/android/api/entity/InfoEntity;->getAdType()I

    move-result v0

    if-ne v0, v8, :cond_2

    iget-object v0, p0, Lcom/db/android/api/type/PopupAd$3;->this$0:Lcom/db/android/api/type/PopupAd;

    iget-object v0, v0, Lcom/db/android/api/type/PopupAd;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/db/android/api/l;->c(Landroid/content/Context;)Lcom/db/android/api/l;

    move-result-object v0

    iget-object v5, p0, Lcom/db/android/api/type/PopupAd$3;->this$0:Lcom/db/android/api/type/PopupAd;

    iget-object v5, v5, Lcom/db/android/api/type/PopupAd;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Lcom/db/android/api/entity/InfoEntity;->getAdId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lcom/db/android/api/l;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/db/android/api/type/PopupAd$3;->this$0:Lcom/db/android/api/type/PopupAd;

    iget-object v0, v0, Lcom/db/android/api/type/PopupAd;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/db/android/api/b;->a(Landroid/content/Context;)Lcom/db/android/api/b;

    move-result-object v0

    iget-object v5, p0, Lcom/db/android/api/type/PopupAd$3;->this$0:Lcom/db/android/api/type/PopupAd;

    iget-object v5, v5, Lcom/db/android/api/type/PopupAd;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Lcom/db/android/api/entity/InfoEntity;->getAdMediaUrls()Ljava/lang/String;

    invoke-virtual {v1}, Lcom/db/android/api/entity/InfoEntity;->getAdMediaUrls()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/db/android/api/utils/k;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6, v1}, Lcom/db/android/api/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/db/android/api/entity/InfoEntity;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_3
    return-void
.end method
