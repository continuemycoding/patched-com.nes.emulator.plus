.class public final Lcom/google/android/gms/internal/zzqj;
.super Lcom/google/android/gms/measurement/zze;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/measurement/zze",
        "<",
        "Lcom/google/android/gms/internal/zzqj;",
        ">;"
    }
.end annotation


# instance fields
.field public zzCC:I

.field public zzCD:I

.field private zzZe:Ljava/lang/String;

.field public zzaRN:I

.field public zzaRO:I

.field public zzaRP:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/measurement/zze;-><init>()V

    return-void
.end method


# virtual methods
.method public getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqj;->zzZe:Ljava/lang/String;

    return-object v0
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/internal/zzqj;->zzZe:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "language"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqj;->zzZe:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "screenColors"

    iget v2, p0, Lcom/google/android/gms/internal/zzqj;->zzaRN:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "screenWidth"

    iget v2, p0, Lcom/google/android/gms/internal/zzqj;->zzCC:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "screenHeight"

    iget v2, p0, Lcom/google/android/gms/internal/zzqj;->zzCD:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "viewportWidth"

    iget v2, p0, Lcom/google/android/gms/internal/zzqj;->zzaRO:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "viewportHeight"

    iget v2, p0, Lcom/google/android/gms/internal/zzqj;->zzaRP:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqj;->zzE(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzAa()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzqj;->zzaRN:I

    return v0
.end method

.method public zzAb()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzqj;->zzCC:I

    return v0
.end method

.method public zzAc()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzqj;->zzCD:I

    return v0
.end method

.method public zzAd()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzqj;->zzaRO:I

    return v0
.end method

.method public zzAe()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzqj;->zzaRP:I

    return v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzqj;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzqj;->zzaRN:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/zzqj;->zzaRN:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzqj;->zzio(I)V

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/zzqj;->zzCC:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/zzqj;->zzCC:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzqj;->zzip(I)V

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/zzqj;->zzCD:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/zzqj;->zzCD:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzqj;->zziq(I)V

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/zzqj;->zzaRO:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/android/gms/internal/zzqj;->zzaRO:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzqj;->zzir(I)V

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/zzqj;->zzaRP:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/google/android/gms/internal/zzqj;->zzaRP:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzqj;->zzis(I)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqj;->zzZe:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqj;->zzZe:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzqj;->setLanguage(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public bridge synthetic zza(Lcom/google/android/gms/measurement/zze;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzqj;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzqj;->zza(Lcom/google/android/gms/internal/zzqj;)V

    return-void
.end method

.method public zzio(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzqj;->zzaRN:I

    return-void
.end method

.method public zzip(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzqj;->zzCC:I

    return-void
.end method

.method public zziq(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzqj;->zzCD:I

    return-void
.end method

.method public zzir(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzqj;->zzaRO:I

    return-void
.end method

.method public zzis(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzqj;->zzaRP:I

    return-void
.end method
