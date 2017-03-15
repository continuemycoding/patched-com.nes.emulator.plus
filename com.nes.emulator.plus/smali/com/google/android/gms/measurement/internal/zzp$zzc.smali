.class Lcom/google/android/gms/measurement/internal/zzp$zzc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/measurement/internal/zzp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zzc"
.end annotation


# instance fields
.field final synthetic zzaTA:Lcom/google/android/gms/measurement/internal/zzp;

.field private final zzaTy:[B

.field private final zzaTz:Lcom/google/android/gms/measurement/internal/zzp$zza;

.field private final zzyR:Ljava/net/URL;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzp;Ljava/net/URL;[BLcom/google/android/gms/measurement/internal/zzp$zza;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzp$zzc;->zzaTA:Lcom/google/android/gms/measurement/internal/zzp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzp$zzc;->zzyR:Ljava/net/URL;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzp$zzc;->zzaTy:[B

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzp$zzc;->zzaTz:Lcom/google/android/gms/measurement/internal/zzp$zza;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzp$zzc;->zzaTA:Lcom/google/android/gms/measurement/internal/zzp;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzp;->zzAR()V

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzp$zzc;->zzaTA:Lcom/google/android/gms/measurement/internal/zzp;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzp;->zzAU()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzp$zzc;->zzaTy:[B

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzae;->zzg([B)[B

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzp$zzc;->zzaTA:Lcom/google/android/gms/measurement/internal/zzp;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzp$zzc;->zzyR:Ljava/net/URL;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzp;->zzc(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v0, "Content-Encoding"

    const-string v5, "gzip"

    invoke-virtual {v1, v0, v5}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    array-length v0, v4

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    :try_start_2
    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v0, 0x0

    :try_start_3
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzp$zzc;->zzaTA:Lcom/google/android/gms/measurement/internal/zzp;

    invoke-static {v4, v1}, Lcom/google/android/gms/measurement/internal/zzp;->zza(Lcom/google/android/gms/measurement/internal/zzp;Ljava/net/HttpURLConnection;)[B
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v4

    if-eqz v3, :cond_0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzp$zzc;->zzaTA:Lcom/google/android/gms/measurement/internal/zzp;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzp;->zzAV()Lcom/google/android/gms/measurement/internal/zzs;

    move-result-object v6

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzp$zzb;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzp$zzc;->zzaTz:Lcom/google/android/gms/measurement/internal/zzp$zza;

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzp$zzb;-><init>(Lcom/google/android/gms/measurement/internal/zzp$zza;ILjava/lang/Throwable;[BLcom/google/android/gms/measurement/internal/zzp$1;)V

    invoke-virtual {v6, v0}, Lcom/google/android/gms/measurement/internal/zzs;->zzg(Ljava/lang/Runnable;)V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzp$zzc;->zzaTA:Lcom/google/android/gms/measurement/internal/zzp;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzp;->zzzz()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzo;->zzBl()Lcom/google/android/gms/measurement/internal/zzo$zza;

    move-result-object v5

    const-string v6, "Error closing HTTP compressed POST connection output stream"

    invoke-virtual {v5, v6, v0}, Lcom/google/android/gms/measurement/internal/zzo$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v7

    move v6, v2

    move-object v0, v3

    move-object v1, v3

    :goto_2
    if-eqz v0, :cond_2

    :try_start_5
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_2
    :goto_3
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzp$zzc;->zzaTA:Lcom/google/android/gms/measurement/internal/zzp;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzp;->zzAV()Lcom/google/android/gms/measurement/internal/zzs;

    move-result-object v0

    new-instance v4, Lcom/google/android/gms/measurement/internal/zzp$zzb;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzp$zzc;->zzaTz:Lcom/google/android/gms/measurement/internal/zzp$zza;

    move-object v8, v3

    move-object v9, v3

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/measurement/internal/zzp$zzb;-><init>(Lcom/google/android/gms/measurement/internal/zzp$zza;ILjava/lang/Throwable;[BLcom/google/android/gms/measurement/internal/zzp$1;)V

    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzs;->zzg(Ljava/lang/Runnable;)V

    goto :goto_1

    :catch_2
    move-exception v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzp$zzc;->zzaTA:Lcom/google/android/gms/measurement/internal/zzp;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzp;->zzzz()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzo;->zzBl()Lcom/google/android/gms/measurement/internal/zzo$zza;

    move-result-object v2

    const-string v4, "Error closing HTTP compressed POST connection output stream"

    invoke-virtual {v2, v4, v0}, Lcom/google/android/gms/measurement/internal/zzo$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v6, v0

    move-object v1, v3

    move-object v0, v3

    :goto_4
    if-eqz v0, :cond_4

    :try_start_6
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_4
    :goto_5
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzp$zzc;->zzaTA:Lcom/google/android/gms/measurement/internal/zzp;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzp;->zzAV()Lcom/google/android/gms/measurement/internal/zzs;

    move-result-object v7

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzp$zzb;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzp$zzc;->zzaTz:Lcom/google/android/gms/measurement/internal/zzp$zza;

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzp$zzb;-><init>(Lcom/google/android/gms/measurement/internal/zzp$zza;ILjava/lang/Throwable;[BLcom/google/android/gms/measurement/internal/zzp$1;)V

    invoke-virtual {v7, v0}, Lcom/google/android/gms/measurement/internal/zzs;->zzg(Ljava/lang/Runnable;)V

    throw v6

    :catch_3
    move-exception v0

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzp$zzc;->zzaTA:Lcom/google/android/gms/measurement/internal/zzp;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzp;->zzzz()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzo;->zzBl()Lcom/google/android/gms/measurement/internal/zzo$zza;

    move-result-object v4

    const-string v5, "Error closing HTTP compressed POST connection output stream"

    invoke-virtual {v4, v5, v0}, Lcom/google/android/gms/measurement/internal/zzo$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v6, v0

    move-object v0, v3

    goto :goto_4

    :catchall_2
    move-exception v4

    move-object v6, v4

    goto :goto_4

    :catch_4
    move-exception v7

    move v6, v2

    move-object v0, v3

    goto :goto_2

    :catch_5
    move-exception v7

    move v6, v2

    goto :goto_2
.end method
