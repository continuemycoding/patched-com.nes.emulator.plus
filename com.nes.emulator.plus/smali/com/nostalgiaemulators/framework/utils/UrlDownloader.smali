.class public Lcom/nostalgiaemulators/framework/utils/UrlDownloader;
.super Ljava/lang/Object;
.source "UrlDownloader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "urldownloader"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static download(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 38
    const/4 v4, 0x0

    .line 39
    .local v4, "httpResponse":Lorg/apache/http/HttpResponse;
    const/4 v6, 0x0

    .line 40
    .local v6, "os":Ljava/io/OutputStream;
    const/4 v2, 0x0

    .line 43
    .local v2, "data":Ljava/lang/String;
    :try_start_0
    new-instance v0, Lcom/nostalgiaemulators/framework/ads/appnext/HttpClient;

    invoke-direct {v0}, Lcom/nostalgiaemulators/framework/ads/appnext/HttpClient;-><init>()V

    .line 44
    .local v0, "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    const-string v8, "urldownloader"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "downloading: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v5, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 46
    .local v5, "httpget":Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v0, v5}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 47
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 49
    .local v1, "code":I
    const/16 v8, 0xc8

    if-ne v1, v8, :cond_1

    .line 50
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .end local v6    # "os":Ljava/io/OutputStream;
    .local v7, "os":Ljava/io/OutputStream;
    :try_start_1
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    invoke-interface {v8, v7}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 52
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    move-object v6, v7

    .line 62
    .end local v7    # "os":Ljava/io/OutputStream;
    .restart local v6    # "os":Ljava/io/OutputStream;
    :goto_0
    if-eqz v6, :cond_0

    .line 64
    :try_start_2
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 72
    .end local v0    # "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v1    # "code":I
    .end local v5    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    :cond_0
    :goto_1
    return-object v2

    .line 55
    .restart local v0    # "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v1    # "code":I
    .restart local v5    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    :cond_1
    :try_start_3
    const-string v8, "urldownloader"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "error code: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 58
    .end local v0    # "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v1    # "code":I
    .end local v5    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    :catch_0
    move-exception v3

    .line 59
    .local v3, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    const-string v8, "urldownloader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 62
    if-eqz v6, :cond_0

    .line 64
    :try_start_5
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 66
    :catch_1
    move-exception v3

    .line 67
    .local v3, "e":Ljava/io/IOException;
    const-string v8, "urldownloader"

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 61
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 62
    :goto_3
    if-eqz v6, :cond_2

    .line 64
    :try_start_6
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 70
    :cond_2
    :goto_4
    throw v8

    .line 66
    :catch_2
    move-exception v3

    .line 67
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v9, "urldownloader"

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 66
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v0    # "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v1    # "code":I
    .restart local v5    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    :catch_3
    move-exception v3

    .line 67
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v8, "urldownloader"

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 61
    .end local v3    # "e":Ljava/io/IOException;
    .end local v6    # "os":Ljava/io/OutputStream;
    .restart local v7    # "os":Ljava/io/OutputStream;
    :catchall_1
    move-exception v8

    move-object v6, v7

    .end local v7    # "os":Ljava/io/OutputStream;
    .restart local v6    # "os":Ljava/io/OutputStream;
    goto :goto_3

    .line 58
    .end local v6    # "os":Ljava/io/OutputStream;
    .restart local v7    # "os":Ljava/io/OutputStream;
    :catch_4
    move-exception v3

    move-object v6, v7

    .end local v7    # "os":Ljava/io/OutputStream;
    .restart local v6    # "os":Ljava/io/OutputStream;
    goto :goto_2
.end method
