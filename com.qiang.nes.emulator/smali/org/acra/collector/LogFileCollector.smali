.class Lorg/acra/collector/LogFileCollector;
.super Ljava/lang/Object;
.source "LogFileCollector.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static collectLogFile(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "numberOfLines"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x400

    .line 56
    new-instance v2, Lorg/acra/util/BoundedLinkedList;

    invoke-direct {v2, p2}, Lorg/acra/util/BoundedLinkedList;-><init>(I)V

    .line 58
    .local v2, "resultBuffer":Lorg/acra/util/BoundedLinkedList;, "Lorg/acra/util/BoundedLinkedList<Ljava/lang/String;>;"
    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 59
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 63
    .local v1, "reader":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "line":Ljava/lang/String;
    :goto_1
    if-eqz v0, :cond_1

    .line 65
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/acra/util/BoundedLinkedList;->add(Ljava/lang/Object;)Z

    .line 66
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 61
    .end local v0    # "line":Ljava/lang/String;
    .end local v1    # "reader":Ljava/io/BufferedReader;
    :cond_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .restart local v1    # "reader":Ljava/io/BufferedReader;
    goto :goto_0

    .line 68
    .restart local v0    # "line":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Lorg/acra/util/BoundedLinkedList;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
