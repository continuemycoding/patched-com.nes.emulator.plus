.class public abstract Lcom/google/android/gms/internal/zztk;
.super Ljava/lang/Object;


# instance fields
.field protected volatile zzbqb:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zztk;->zzbqb:I

    return-void
.end method

.method public static final mergeFrom(Lcom/google/android/gms/internal/zztk;[B)Lcom/google/android/gms/internal/zztk;
    .locals 2
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/zztk;",
            ">(TT;[B)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zztj;
        }
    .end annotation

    .prologue
    .local p0, "msg":Lcom/google/android/gms/internal/zztk;, "TT;"
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/internal/zztk;->mergeFrom(Lcom/google/android/gms/internal/zztk;[BII)Lcom/google/android/gms/internal/zztk;

    move-result-object v0

    return-object v0
.end method

.method public static final mergeFrom(Lcom/google/android/gms/internal/zztk;[BII)Lcom/google/android/gms/internal/zztk;
    .locals 2
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/zztk;",
            ">(TT;[BII)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zztj;
        }
    .end annotation

    .prologue
    .local p0, "msg":Lcom/google/android/gms/internal/zztk;, "TT;"
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/zztc;->zza([BII)Lcom/google/android/gms/internal/zztc;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zztk;->mergeFrom(Lcom/google/android/gms/internal/zztc;)Lcom/google/android/gms/internal/zztk;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zztc;->zzmk(I)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/zztj; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    return-object p0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final messageNanoEquals(Lcom/google/android/gms/internal/zztk;Lcom/google/android/gms/internal/zztk;)Z
    .locals 4
    .param p0, "a"    # Lcom/google/android/gms/internal/zztk;
    .param p1, "b"    # Lcom/google/android/gms/internal/zztk;

    .prologue
    const/4 v0, 0x0

    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zztk;->getSerializedSize()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztk;->getSerializedSize()I

    move-result v2

    if-ne v2, v1, :cond_0

    new-array v2, v1, [B

    new-array v3, v1, [B

    invoke-static {p0, v2, v0, v1}, Lcom/google/android/gms/internal/zztk;->toByteArray(Lcom/google/android/gms/internal/zztk;[BII)V

    invoke-static {p1, v3, v0, v1}, Lcom/google/android/gms/internal/zztk;->toByteArray(Lcom/google/android/gms/internal/zztk;[BII)V

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    goto :goto_0
.end method

.method public static final toByteArray(Lcom/google/android/gms/internal/zztk;[BII)V
    .locals 3
    .param p0, "msg"    # Lcom/google/android/gms/internal/zztk;
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/zztd;->zzb([BII)Lcom/google/android/gms/internal/zztd;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zztk;->writeTo(Lcom/google/android/gms/internal/zztd;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zztd;->zzHy()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static final toByteArray(Lcom/google/android/gms/internal/zztk;)[B
    .locals 3
    .param p0, "msg"    # Lcom/google/android/gms/internal/zztk;

    .prologue
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zztk;->getSerializedSize()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {p0, v0, v1, v2}, Lcom/google/android/gms/internal/zztk;->toByteArray(Lcom/google/android/gms/internal/zztk;[BII)V

    return-object v0
.end method


# virtual methods
.method public clone()Lcom/google/android/gms/internal/zztk;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zztk;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zztk;->clone()Lcom/google/android/gms/internal/zztk;

    move-result-object v0

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zztk;->zzbqb:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zztk;->getSerializedSize()I

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/zztk;->zzbqb:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zztk;->zzz()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zztk;->zzbqb:I

    return v0
.end method

.method public abstract mergeFrom(Lcom/google/android/gms/internal/zztc;)Lcom/google/android/gms/internal/zztk;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/internal/zztl;->zzf(Lcom/google/android/gms/internal/zztk;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/android/gms/internal/zztd;)V
    .locals 0
    .param p1, "output"    # Lcom/google/android/gms/internal/zztd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    return-void
.end method

.method protected zzz()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
