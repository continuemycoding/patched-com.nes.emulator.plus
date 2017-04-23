.class public Lcom/qiang/framework/helpers/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static shuffleArray([Ljava/lang/Object;)V
    .locals 5
    .param p0, "array"    # [Ljava/lang/Object;

    .prologue
    .line 19
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 20
    .local v2, "random":Ljava/util/Random;
    array-length v4, p0

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 22
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 24
    .local v1, "index":I
    aget-object v3, p0, v1

    .line 25
    .local v3, "tmp":Ljava/lang/Object;
    aget-object v4, p0, v0

    aput-object v4, p0, v1

    .line 26
    aput-object v3, p0, v0

    .line 20
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 28
    .end local v1    # "index":I
    .end local v3    # "tmp":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public static toString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;

    .prologue
    .line 32
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Lcom/qiang/framework/helpers/Utils;->toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 39
    :try_start_0
    invoke-static {p0, p1}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 46
    :goto_0
    return-object v1

    .line 41
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 46
    const-string v1, ""

    goto :goto_0
.end method
