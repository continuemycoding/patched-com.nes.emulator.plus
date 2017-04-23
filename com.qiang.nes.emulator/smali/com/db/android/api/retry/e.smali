.class public final Lcom/db/android/api/retry/e;
.super Ljava/lang/Object;


# static fields
.field private static dX:I = 0x1388

.field private static dY:I = 0x2710


# instance fields
.field private U:Landroid/content/Context;

.field private dZ:Lcom/db/android/api/entity/DescriptorEntity;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/db/android/api/entity/DescriptorEntity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/db/android/api/retry/e;->U:Landroid/content/Context;

    iput-object p2, p0, Lcom/db/android/api/retry/e;->dZ:Lcom/db/android/api/entity/DescriptorEntity;

    return-void
.end method

.method private aG()Ljava/net/HttpURLConnection;
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/db/android/api/retry/e;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iget-object v1, p0, Lcom/db/android/api/retry/e;->U:Landroid/content/Context;

    invoke-static {v1}, Lcom/db/android/api/utils/b;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x1388

    :goto_0
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    return-object v0

    :cond_0
    const/16 v1, 0x2710

    goto :goto_0
.end method

.method private getURL()Ljava/net/URL;
    .locals 3

    iget-object v0, p0, Lcom/db/android/api/retry/e;->dZ:Lcom/db/android/api/entity/DescriptorEntity;

    invoke-virtual {v0}, Lcom/db/android/api/entity/DescriptorEntity;->getURLTrackingCode()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    const-string v1, "__mac__"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "__mac__"

    iget-object v2, p0, Lcom/db/android/api/retry/e;->U:Landroid/content/Context;

    invoke-static {v2}, Lcom/db/android/api/bitmap/core/m;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/db/android/api/bitmap/core/j;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "__MAC__"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "__MAC__"

    iget-object v2, p0, Lcom/db/android/api/retry/e;->U:Landroid/content/Context;

    invoke-static {v2}, Lcom/db/android/api/bitmap/core/m;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/db/android/api/bitmap/core/j;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v1, "_mac_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "_mac_"

    iget-object v2, p0, Lcom/db/android/api/retry/e;->U:Landroid/content/Context;

    invoke-static {v2}, Lcom/db/android/api/bitmap/core/m;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/db/android/api/bitmap/core/j;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    const-string v1, "_MAC_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "_MAC_"

    iget-object v2, p0, Lcom/db/android/api/retry/e;->U:Landroid/content/Context;

    invoke-static {v2}, Lcom/db/android/api/bitmap/core/m;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/db/android/api/bitmap/core/j;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    const-string v1, "%MAC%"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "%MAC%"

    iget-object v2, p0, Lcom/db/android/api/retry/e;->U:Landroid/content/Context;

    invoke-static {v2}, Lcom/db/android/api/bitmap/core/m;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/db/android/api/bitmap/core/j;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    const-string v1, "%mac%"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "%mac%"

    iget-object v2, p0, Lcom/db/android/api/retry/e;->U:Landroid/content/Context;

    invoke-static {v2}, Lcom/db/android/api/bitmap/core/m;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/db/android/api/bitmap/core/j;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_5
    const-string v1, "%dm%"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "%dm%"

    iget-object v2, p0, Lcom/db/android/api/retry/e;->U:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_6
    const-string v1, "__ANDROID__"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "__ANDROID__"

    iget-object v2, p0, Lcom/db/android/api/retry/e;->U:Landroid/content/Context;

    invoke-static {v2}, Lcom/db/android/api/bitmap/core/m;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/db/android/api/bitmap/core/j;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_7
    const-string v1, "__ANDROIDID__"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "__ANDROIDID__"

    iget-object v2, p0, Lcom/db/android/api/retry/e;->U:Landroid/content/Context;

    invoke-static {v2}, Lcom/db/android/api/bitmap/core/m;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/db/android/api/bitmap/core/j;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_8
    const-string v1, "__android__"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "__android__"

    iget-object v2, p0, Lcom/db/android/api/retry/e;->U:Landroid/content/Context;

    invoke-static {v2}, Lcom/db/android/api/bitmap/core/m;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/db/android/api/bitmap/core/j;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_9
    const-string v1, "_ANDROID_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "_ANDROID_"

    iget-object v2, p0, Lcom/db/android/api/retry/e;->U:Landroid/content/Context;

    invoke-static {v2}, Lcom/db/android/api/bitmap/core/m;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/db/android/api/bitmap/core/j;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_a
    const-string v1, "__IMEI__"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "__IMEI__"

    iget-object v2, p0, Lcom/db/android/api/retry/e;->U:Landroid/content/Context;

    invoke-static {v2}, Lcom/db/android/api/bitmap/core/m;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/db/android/api/bitmap/core/j;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "retry after url:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/db/android/api/bitmap/core/g;->n(Ljava/lang/String;)V

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_1

    :cond_b
    move-object v1, v0

    goto :goto_0
.end method


# virtual methods
.method public final send()V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/db/android/api/retry/e;->U:Landroid/content/Context;

    invoke-static {v0}, Lcom/db/android/api/retry/a;->m(Landroid/content/Context;)Lcom/db/android/api/retry/a;

    move-result-object v3

    :try_start_0
    invoke-direct {p0}, Lcom/db/android/api/retry/e;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iget-object v2, p0, Lcom/db/android/api/retry/e;->U:Landroid/content/Context;

    invoke-static {v2}, Lcom/db/android/api/utils/b;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x1388

    :goto_0
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    if-ltz v1, :cond_3

    const/16 v2, 0x190

    if-ge v1, v2, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "retry  status: ok ,times"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/db/android/api/retry/e;->dZ:Lcom/db/android/api/entity/DescriptorEntity;

    invoke-virtual {v2}, Lcom/db/android/api/entity/DescriptorEntity;->getTimes()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/db/android/api/bitmap/core/g;->n(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/db/android/api/retry/e;->dZ:Lcom/db/android/api/entity/DescriptorEntity;

    const/4 v2, 0x1

    invoke-virtual {v3, v1, v2}, Lcom/db/android/api/retry/a;->a(Lcom/db/android/api/entity/DescriptorEntity;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    :goto_2
    return-void

    :cond_2
    const/16 v2, 0x2710

    goto :goto_0

    :cond_3
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "retry status: fail ,times"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/db/android/api/retry/e;->dZ:Lcom/db/android/api/entity/DescriptorEntity;

    invoke-virtual {v2}, Lcom/db/android/api/entity/DescriptorEntity;->getTimes()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/db/android/api/bitmap/core/g;->n(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/db/android/api/retry/e;->dZ:Lcom/db/android/api/entity/DescriptorEntity;

    const/4 v2, 0x0

    invoke-virtual {v3, v1, v2}, Lcom/db/android/api/retry/a;->a(Lcom/db/android/api/entity/DescriptorEntity;Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_3
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "retry  status: fail,times"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/db/android/api/retry/e;->dZ:Lcom/db/android/api/entity/DescriptorEntity;

    invoke-virtual {v2}, Lcom/db/android/api/entity/DescriptorEntity;->getTimes()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/db/android/api/bitmap/core/g;->n(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/db/android/api/retry/e;->dZ:Lcom/db/android/api/entity/DescriptorEntity;

    const/4 v2, 0x0

    invoke-virtual {v3, v0, v2}, Lcom/db/android/api/retry/a;->a(Lcom/db/android/api/entity/DescriptorEntity;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2

    :catch_1
    move-exception v0

    :goto_4
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2

    :catchall_0
    move-exception v0

    :goto_5
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    throw v0

    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_5

    :catch_2
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_3
.end method
