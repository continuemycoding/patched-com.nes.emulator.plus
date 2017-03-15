.class Lorg/acra/util/HttpRequest$SocketTimeOutRetryHandler;
.super Ljava/lang/Object;
.source "HttpRequest.java"

# interfaces
.implements Lorg/apache/http/client/HttpRequestRetryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/acra/util/HttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SocketTimeOutRetryHandler"
.end annotation


# instance fields
.field private final httpParams:Lorg/apache/http/params/HttpParams;

.field private final maxNrRetries:I


# direct methods
.method private constructor <init>(Lorg/apache/http/params/HttpParams;I)V
    .locals 0
    .param p1, "httpParams"    # Lorg/apache/http/params/HttpParams;
    .param p2, "maxNrRetries"    # I

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lorg/acra/util/HttpRequest$SocketTimeOutRetryHandler;->httpParams:Lorg/apache/http/params/HttpParams;

    .line 55
    iput p2, p0, Lorg/acra/util/HttpRequest$SocketTimeOutRetryHandler;->maxNrRetries:I

    .line 56
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/http/params/HttpParams;ILorg/acra/util/HttpRequest$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/http/params/HttpParams;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lorg/acra/util/HttpRequest$1;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lorg/acra/util/HttpRequest$SocketTimeOutRetryHandler;-><init>(Lorg/apache/http/params/HttpParams;I)V

    return-void
.end method


# virtual methods
.method public retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z
    .locals 5
    .param p1, "exception"    # Ljava/io/IOException;
    .param p2, "executionCount"    # I
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;

    .prologue
    .line 60
    instance-of v1, p1, Ljava/net/SocketTimeoutException;

    if-eqz v1, :cond_2

    .line 61
    iget v1, p0, Lorg/acra/util/HttpRequest$SocketTimeOutRetryHandler;->maxNrRetries:I

    if-gt p2, v1, :cond_1

    .line 63
    iget-object v1, p0, Lorg/acra/util/HttpRequest$SocketTimeOutRetryHandler;->httpParams:Lorg/apache/http/params/HttpParams;

    if-eqz v1, :cond_0

    .line 64
    iget-object v1, p0, Lorg/acra/util/HttpRequest$SocketTimeOutRetryHandler;->httpParams:Lorg/apache/http/params/HttpParams;

    invoke-static {v1}, Lorg/apache/http/params/HttpConnectionParams;->getSoTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result v1

    mul-int/lit8 v0, v1, 0x2

    .line 65
    .local v0, "newSocketTimeOut":I
    iget-object v1, p0, Lorg/acra/util/HttpRequest$SocketTimeOutRetryHandler;->httpParams:Lorg/apache/http/params/HttpParams;

    invoke-static {v1, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 66
    sget-object v1, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SocketTimeOut - increasing time out to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " millis and trying again"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .end local v0    # "newSocketTimeOut":I
    :goto_0
    const/4 v1, 0x1

    .line 77
    :goto_1
    return v1

    .line 68
    :cond_0
    sget-object v1, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v3, "SocketTimeOut - no HttpParams, cannot increase time out. Trying again with current settings"

    invoke-interface {v1, v2, v3}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 74
    :cond_1
    sget-object v1, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SocketTimeOut but exceeded max number of retries : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/acra/util/HttpRequest$SocketTimeOutRetryHandler;->maxNrRetries:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method
