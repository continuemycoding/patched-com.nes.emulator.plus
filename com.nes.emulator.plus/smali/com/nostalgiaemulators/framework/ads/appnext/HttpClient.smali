.class public Lcom/nostalgiaemulators/framework/ads/appnext/HttpClient;
.super Lorg/apache/http/impl/client/DefaultHttpClient;
.source "HttpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostalgiaemulators/framework/ads/appnext/HttpClient$MySSLSocketFactory;
    }
.end annotation


# instance fields
.field easyTrustManager:Ljavax/net/ssl/TrustManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 45
    new-instance v0, Lcom/nostalgiaemulators/framework/ads/appnext/HttpClient$1;

    invoke-direct {v0, p0}, Lcom/nostalgiaemulators/framework/ads/appnext/HttpClient$1;-><init>(Lcom/nostalgiaemulators/framework/ads/appnext/HttpClient;)V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ads/appnext/HttpClient;->easyTrustManager:Ljavax/net/ssl/TrustManager;

    .line 44
    return-void
.end method

.method private newSslSocketFactory()Lcom/nostalgiaemulators/framework/ads/appnext/HttpClient$MySSLSocketFactory;
    .locals 5

    .prologue
    .line 71
    :try_start_0
    const-string v3, "BKS"

    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    .line 74
    .local v2, "trusted":Ljava/security/KeyStore;
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 79
    new-instance v1, Lcom/nostalgiaemulators/framework/ads/appnext/HttpClient$MySSLSocketFactory;

    invoke-direct {v1, p0, v2}, Lcom/nostalgiaemulators/framework/ads/appnext/HttpClient$MySSLSocketFactory;-><init>(Lcom/nostalgiaemulators/framework/ads/appnext/HttpClient;Ljava/security/KeyStore;)V

    .line 81
    .local v1, "sslfactory":Lcom/nostalgiaemulators/framework/ads/appnext/HttpClient$MySSLSocketFactory;
    sget-object v3, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v1, v3}, Lcom/nostalgiaemulators/framework/ads/appnext/HttpClient$MySSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    return-object v1

    .line 84
    .end local v1    # "sslfactory":Lcom/nostalgiaemulators/framework/ads/appnext/HttpClient$MySSLSocketFactory;
    .end local v2    # "trusted":Ljava/security/KeyStore;
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method


# virtual methods
.method protected createClientConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
    .locals 5

    .prologue
    .line 62
    new-instance v0, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 63
    .local v0, "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v2, "http"

    .line 64
    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v3

    const/16 v4, 0x50

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 63
    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 65
    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v2, "https"

    invoke-direct {p0}, Lcom/nostalgiaemulators/framework/ads/appnext/HttpClient;->newSslSocketFactory()Lcom/nostalgiaemulators/framework/ads/appnext/HttpClient$MySSLSocketFactory;

    move-result-object v3

    const/16 v4, 0x1bb

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 66
    new-instance v1, Lorg/apache/http/impl/conn/SingleClientConnManager;

    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ads/appnext/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/http/impl/conn/SingleClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    return-object v1
.end method
