.class final Lcom/db/android/api/d;
.super Lcom/db/android/api/callback/b;


# instance fields
.field private synthetic y:Lcom/db/android/api/callback/b;

.field private synthetic z:Lcom/db/android/api/b;


# direct methods
.method constructor <init>(Lcom/db/android/api/b;Lcom/db/android/api/callback/b;)V
    .locals 0

    iput-object p2, p0, Lcom/db/android/api/d;->y:Lcom/db/android/api/callback/b;

    invoke-direct {p0}, Lcom/db/android/api/callback/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFail(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/db/android/api/d;->y:Lcom/db/android/api/callback/b;

    const/16 v1, 0x2711

    invoke-virtual {v0, v1, p2}, Lcom/db/android/api/callback/b;->onFail(ILjava/lang/String;)V

    return-void
.end method

.method public final onSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "msg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/db/android/api/d;->y:Lcom/db/android/api/callback/b;

    invoke-virtual {v0, p1, p2}, Lcom/db/android/api/callback/b;->onSuccess(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    iget-object v0, p0, Lcom/db/android/api/d;->y:Lcom/db/android/api/callback/b;

    const/16 v1, 0x2713

    const-string v2, "JSON_ERROR"

    invoke-virtual {v0, v1, v2}, Lcom/db/android/api/callback/b;->onFail(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/db/android/api/d;->y:Lcom/db/android/api/callback/b;

    const/16 v2, 0x2712

    invoke-virtual {v1, v2, v0}, Lcom/db/android/api/callback/b;->onFail(ILjava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
