.class final Lcom/db/android/api/utils/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic en:Ljava/lang/String;

.field private synthetic eo:I

.field private synthetic ep:Lcom/db/android/api/utils/e;


# direct methods
.method constructor <init>(Ljava/lang/String;ILcom/db/android/api/utils/e;)V
    .locals 0

    iput-object p1, p0, Lcom/db/android/api/utils/c;->en:Ljava/lang/String;

    iput p2, p0, Lcom/db/android/api/utils/c;->eo:I

    iput-object p3, p0, Lcom/db/android/api/utils/c;->ep:Lcom/db/android/api/utils/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    iget-object v2, p0, Lcom/db/android/api/utils/c;->en:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    const-string v5, "utf-8"

    invoke-direct {v3, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    iget v4, p0, Lcom/db/android/api/utils/c;->eo:I

    sget v5, Lcom/db/android/api/utils/f;->eq:I

    if-ne v4, v5, :cond_5

    const-string v4, "Processor"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "processor"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_1
    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v1, v1, v5

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v1, v2

    :goto_1
    :try_start_3
    iget-object v2, p0, Lcom/db/android/api/utils/c;->ep:Lcom/db/android/api/utils/e;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/db/android/api/utils/c;->ep:Lcom/db/android/api/utils/e;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/db/android/api/utils/e;->d(Ljava/util/Map;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_2
    if-eqz v0, :cond_3

    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Process;->exitValue()I
    :try_end_5
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_5 .. :try_end_5} :catch_7

    :cond_4
    :goto_3
    return-void

    :cond_5
    :try_start_6
    iget v4, p0, Lcom/db/android/api/utils/c;->eo:I

    sget v5, Lcom/db/android/api/utils/f;->er:I

    if-ne v4, v5, :cond_0

    const-string v4, "MemTotal"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "MemFree"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_6
    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x1

    aget-object v1, v4, v1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    const-string v6, "kb"

    invoke-virtual {v1, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    div-int/lit16 v1, v1, 0x400

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result-object v1

    :goto_4
    const/4 v5, 0x1

    :try_start_8
    aput-object v1, v4, v5

    const/4 v1, 0x0

    aget-object v1, v4, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto/16 :goto_0

    :catch_1
    move-exception v1

    :goto_5
    :try_start_9
    iget-object v1, p0, Lcom/db/android/api/utils/c;->ep:Lcom/db/android/api/utils/e;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/db/android/api/utils/c;->ep:Lcom/db/android/api/utils/e;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/db/android/api/utils/e;->d(Ljava/util/Map;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :cond_7
    if-eqz v0, :cond_8

    :try_start_a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    :cond_8
    :goto_6
    if-eqz v2, :cond_4

    :try_start_b
    invoke-virtual {v2}, Ljava/lang/Process;->exitValue()I
    :try_end_b
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    goto :goto_3

    :catch_3
    move-exception v1

    :try_start_c
    const-string v1, "\u03b4\u05aa"

    goto :goto_4

    :cond_9
    iget-object v1, p0, Lcom/db/android/api/utils/c;->ep:Lcom/db/android/api/utils/e;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/db/android/api/utils/c;->ep:Lcom/db/android/api/utils/e;

    invoke-virtual {v1, v3}, Lcom/db/android/api/utils/e;->d(Ljava/util/Map;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :cond_a
    :try_start_d
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    :goto_7
    if-eqz v2, :cond_4

    :try_start_e
    invoke-virtual {v2}, Ljava/lang/Process;->exitValue()I
    :try_end_e
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_e .. :try_end_e} :catch_4

    goto/16 :goto_3

    :catch_4
    move-exception v0

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    goto/16 :goto_3

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    :catch_7
    move-exception v0

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    goto/16 :goto_3

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_8
    if-eqz v1, :cond_b

    :try_start_f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    :cond_b
    :goto_9
    if-eqz v2, :cond_c

    :try_start_10
    invoke-virtual {v2}, Ljava/lang/Process;->exitValue()I
    :try_end_10
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_10 .. :try_end_10} :catch_a

    :cond_c
    :goto_a
    throw v0

    :catch_9
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    :catch_a
    move-exception v1

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    goto :goto_a

    :catchall_1
    move-exception v0

    goto :goto_8

    :catchall_2
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_8

    :catchall_3
    move-exception v2

    move-object v7, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_8

    :catch_b
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    goto :goto_5

    :catch_c
    move-exception v0

    move-object v0, v1

    goto :goto_5

    :catch_d
    move-exception v0

    move-object v0, v1

    goto/16 :goto_1

    :catch_e
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    goto/16 :goto_1
.end method
