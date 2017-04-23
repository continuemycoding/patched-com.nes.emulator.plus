.class Lcom/db/android/api/type/TitleAd$9;
.super Lcom/db/android/api/callback/b;


# instance fields
.field final synthetic this$0:Lcom/db/android/api/type/TitleAd;

.field final synthetic val$entity:Lcom/db/android/api/entity/InfoEntity;


# direct methods
.method constructor <init>(Lcom/db/android/api/type/TitleAd;Lcom/db/android/api/entity/InfoEntity;)V
    .locals 0

    iput-object p1, p0, Lcom/db/android/api/type/TitleAd$9;->this$0:Lcom/db/android/api/type/TitleAd;

    iput-object p2, p0, Lcom/db/android/api/type/TitleAd$9;->val$entity:Lcom/db/android/api/entity/InfoEntity;

    invoke-direct {p0}, Lcom/db/android/api/callback/b;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "appkey not exist"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/type/TitleAd$9;->this$0:Lcom/db/android/api/type/TitleAd;

    iget-object v0, v0, Lcom/db/android/api/type/TitleAd;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/db/android/api/q;->d(Landroid/content/Context;)Lcom/db/android/api/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/db/android/api/q;->f()V

    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "postDatatoNet failcode:"

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

    iget-object v0, p0, Lcom/db/android/api/type/TitleAd$9;->this$0:Lcom/db/android/api/type/TitleAd;

    iget-object v0, v0, Lcom/db/android/api/type/TitleAd;->mContext:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "adId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/db/android/api/type/TitleAd$9;->val$entity:Lcom/db/android/api/entity/InfoEntity;

    invoke-virtual {v2}, Lcom/db/android/api/entity/InfoEntity;->getAdId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "postDatatoNet failcode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

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
    iget-object v0, p0, Lcom/db/android/api/type/TitleAd$9;->this$0:Lcom/db/android/api/type/TitleAd;

    iget-object v0, v0, Lcom/db/android/api/type/TitleAd;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/db/android/api/q;->d(Landroid/content/Context;)Lcom/db/android/api/q;

    move-result-object v0

    iget-object v1, p0, Lcom/db/android/api/type/TitleAd$9;->val$entity:Lcom/db/android/api/entity/InfoEntity;

    invoke-virtual {v0, v1}, Lcom/db/android/api/q;->a(Lcom/db/android/api/entity/InfoEntity;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/db/android/api/type/TitleAd$9;->this$0:Lcom/db/android/api/type/TitleAd;

    iget-object v0, v0, Lcom/db/android/api/type/TitleAd;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/db/android/api/q;->d(Landroid/content/Context;)Lcom/db/android/api/q;

    move-result-object v0

    iget-object v1, p0, Lcom/db/android/api/type/TitleAd$9;->val$entity:Lcom/db/android/api/entity/InfoEntity;

    invoke-virtual {v0, v1}, Lcom/db/android/api/q;->a(Lcom/db/android/api/entity/InfoEntity;)V

    goto :goto_0
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "postDatatoNet success"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/db/android/api/bitmap/core/g;->n(Ljava/lang/String;)V

    sget-boolean v0, Lcom/db/android/api/a;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/type/TitleAd$9;->this$0:Lcom/db/android/api/type/TitleAd;

    iget-object v0, v0, Lcom/db/android/api/type/TitleAd;->mContext:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "adId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/db/android/api/type/TitleAd$9;->val$entity:Lcom/db/android/api/entity/InfoEntity;

    invoke-virtual {v2}, Lcom/db/android/api/entity/InfoEntity;->getAdId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "postDatatoNet success"

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

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "msg"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "available"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/db/android/api/type/TitleAd$9;->val$entity:Lcom/db/android/api/entity/InfoEntity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/db/android/api/entity/InfoEntity;->setShowTimes(I)V

    iget-object v0, p0, Lcom/db/android/api/type/TitleAd$9;->val$entity:Lcom/db/android/api/entity/InfoEntity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/db/android/api/entity/InfoEntity;->setClicktimes(I)V

    iget-object v0, p0, Lcom/db/android/api/type/TitleAd$9;->this$0:Lcom/db/android/api/type/TitleAd;

    iget-object v0, v0, Lcom/db/android/api/type/TitleAd;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/db/android/api/q;->d(Landroid/content/Context;)Lcom/db/android/api/q;

    move-result-object v0

    iget-object v1, p0, Lcom/db/android/api/type/TitleAd$9;->val$entity:Lcom/db/android/api/entity/InfoEntity;

    invoke-virtual {v0, v1}, Lcom/db/android/api/q;->a(Lcom/db/android/api/entity/InfoEntity;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/db/android/api/type/TitleAd$9;->this$0:Lcom/db/android/api/type/TitleAd;

    iget-object v0, v0, Lcom/db/android/api/type/TitleAd;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/db/android/api/q;->d(Landroid/content/Context;)Lcom/db/android/api/q;

    move-result-object v0

    iget-object v1, p0, Lcom/db/android/api/type/TitleAd$9;->val$entity:Lcom/db/android/api/entity/InfoEntity;

    invoke-virtual {v0, v1}, Lcom/db/android/api/q;->g(Lcom/db/android/api/entity/InfoEntity;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
