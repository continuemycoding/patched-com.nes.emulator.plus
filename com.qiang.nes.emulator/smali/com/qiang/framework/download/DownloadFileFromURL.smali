.class public Lcom/qiang/framework/download/DownloadFileFromURL;
.super Landroid/os/AsyncTask;
.source "DownloadFileFromURL.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/qiang/framework/download/DownloadItem;",
        "Ljava/lang/Integer;",
        "[",
        "Lcom/qiang/framework/download/DownloadItem;",
        ">;"
    }
.end annotation


# instance fields
.field downloadDirectory:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/qiang/framework/MyApplication;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/cache/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qiang/framework/download/DownloadFileFromURL;->downloadDirectory:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    check-cast p1, [Lcom/qiang/framework/download/DownloadItem;

    invoke-virtual {p0, p1}, Lcom/qiang/framework/download/DownloadFileFromURL;->doInBackground([Lcom/qiang/framework/download/DownloadItem;)[Lcom/qiang/framework/download/DownloadItem;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/qiang/framework/download/DownloadItem;)[Lcom/qiang/framework/download/DownloadItem;
    .locals 11
    .param p1, "downloadItems"    # [Lcom/qiang/framework/download/DownloadItem;

    .prologue
    const/4 v7, 0x0

    .line 43
    array-length v8, p1

    :goto_0
    if-ge v7, v8, :cond_1

    aget-object v4, p1, v7

    .line 47
    .local v4, "item":Lcom/qiang/framework/download/DownloadItem;
    :try_start_0
    iget-boolean v9, v4, Lcom/qiang/framework/download/DownloadItem;->cached:Z

    if-eqz v9, :cond_0

    iget-object v9, v4, Lcom/qiang/framework/download/DownloadItem;->url:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/qiang/framework/download/DownloadFileFromURL;->getCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/qiang/framework/helpers/FileHelper;->isFileExists(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 43
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 50
    :cond_0
    new-instance v6, Ljava/net/URL;

    iget-object v9, v4, Lcom/qiang/framework/download/DownloadItem;->url:Ljava/lang/String;

    invoke-direct {v6, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 52
    .local v6, "url":Ljava/net/URL;
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {v6}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v9

    const/16 v10, 0x2000

    invoke-direct {v3, v9, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 54
    .local v3, "inputStream":Ljava/io/InputStream;
    new-instance v5, Ljava/io/FileOutputStream;

    iget-object v9, v4, Lcom/qiang/framework/download/DownloadItem;->url:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/qiang/framework/download/DownloadFileFromURL;->getCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 55
    .local v5, "outputStream":Ljava/io/OutputStream;
    const/16 v9, 0x400

    new-array v1, v9, [B

    .line 58
    .local v1, "data":[B
    :goto_2
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .local v0, "count":I
    const/4 v9, -0x1

    if-eq v0, v9, :cond_2

    .line 60
    const/4 v9, 0x0

    invoke-virtual {v5, v1, v9, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 68
    .end local v0    # "count":I
    .end local v1    # "data":[B
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .end local v6    # "url":Ljava/net/URL;
    :catch_0
    move-exception v2

    .line 70
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 71
    const/4 p1, 0x0

    .line 75
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "item":Lcom/qiang/framework/download/DownloadItem;
    .end local p1    # "downloadItems":[Lcom/qiang/framework/download/DownloadItem;
    :cond_1
    return-object p1

    .line 63
    .restart local v0    # "count":I
    .restart local v1    # "data":[B
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "item":Lcom/qiang/framework/download/DownloadItem;
    .restart local v5    # "outputStream":Ljava/io/OutputStream;
    .restart local v6    # "url":Ljava/net/URL;
    .restart local p1    # "downloadItems":[Lcom/qiang/framework/download/DownloadItem;
    :cond_2
    :try_start_1
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 65
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 66
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method getCachePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/qiang/framework/download/DownloadFileFromURL;->downloadDirectory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 19
    check-cast p1, [Lcom/qiang/framework/download/DownloadItem;

    invoke-virtual {p0, p1}, Lcom/qiang/framework/download/DownloadFileFromURL;->onPostExecute([Lcom/qiang/framework/download/DownloadItem;)V

    return-void
.end method

.method protected varargs onPostExecute([Lcom/qiang/framework/download/DownloadItem;)V
    .locals 4
    .param p1, "downloadItems"    # [Lcom/qiang/framework/download/DownloadItem;

    .prologue
    .line 84
    if-nez p1, :cond_1

    .line 94
    :cond_0
    return-void

    .line 87
    :cond_1
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 89
    .local v0, "item":Lcom/qiang/framework/download/DownloadItem;
    if-nez v0, :cond_2

    .line 87
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 92
    :cond_2
    iget-object v3, v0, Lcom/qiang/framework/download/DownloadItem;->url:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/qiang/framework/download/DownloadFileFromURL;->getCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/qiang/framework/download/DownloadItem;->onDownloadCompleted(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method
