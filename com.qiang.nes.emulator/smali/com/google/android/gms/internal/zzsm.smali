.class public Lcom/google/android/gms/internal/zzsm;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method zzEc()I
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public zzGf()Lcom/google/android/gms/internal/zzsl;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsm;->zzEc()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzsj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzsj;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzsk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzsk;-><init>()V

    goto :goto_0
.end method
