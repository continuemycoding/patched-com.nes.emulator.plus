.class public final Lcom/google/android/gms/internal/zztn;
.super Ljava/lang/Object;


# static fields
.field public static final zzboC:[J

.field public static final zzboD:[I

.field public static final zzbqd:[F

.field public static final zzbqe:[D

.field public static final zzbqf:[Z

.field public static final zzbqg:[Ljava/lang/String;

.field public static final zzbqh:[[B

.field public static final zzbqi:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-array v0, v1, [I

    sput-object v0, Lcom/google/android/gms/internal/zztn;->zzboD:[I

    new-array v0, v1, [J

    sput-object v0, Lcom/google/android/gms/internal/zztn;->zzboC:[J

    new-array v0, v1, [F

    sput-object v0, Lcom/google/android/gms/internal/zztn;->zzbqd:[F

    new-array v0, v1, [D

    sput-object v0, Lcom/google/android/gms/internal/zztn;->zzbqe:[D

    new-array v0, v1, [Z

    sput-object v0, Lcom/google/android/gms/internal/zztn;->zzbqf:[Z

    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/internal/zztn;->zzbqg:[Ljava/lang/String;

    new-array v0, v1, [[B

    sput-object v0, Lcom/google/android/gms/internal/zztn;->zzbqh:[[B

    new-array v0, v1, [B

    sput-object v0, Lcom/google/android/gms/internal/zztn;->zzbqi:[B

    return-void
.end method

.method static zzL(II)I
    .locals 1

    shl-int/lit8 v0, p0, 0x3

    or-int/2addr v0, p1

    return v0
.end method

.method public static zzb(Lcom/google/android/gms/internal/zztc;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zztc;->zzml(I)Z

    move-result v0

    return v0
.end method

.method public static final zzc(Lcom/google/android/gms/internal/zztc;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zztc;->getPosition()I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zztc;->zzml(I)Z

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zztc;->zzHi()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zztc;->zzml(I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zztc;->zzmp(I)V

    return v0
.end method

.method static zzmF(I)I
    .locals 1

    and-int/lit8 v0, p0, 0x7

    return v0
.end method

.method public static zzmG(I)I
    .locals 1

    ushr-int/lit8 v0, p0, 0x3

    return v0
.end method
