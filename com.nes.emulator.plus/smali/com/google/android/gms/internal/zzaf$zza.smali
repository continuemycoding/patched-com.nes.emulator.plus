.class public final Lcom/google/android/gms/internal/zzaf$zza;
.super Lcom/google/android/gms/internal/zzte;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzaf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzte",
        "<",
        "Lcom/google/android/gms/internal/zzaf$zza;",
        ">;"
    }
.end annotation


# instance fields
.field public level:I

.field public zzih:I

.field public zzii:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzte;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaf$zza;->zzB()Lcom/google/android/gms/internal/zzaf$zza;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    if-ne p1, p0, :cond_1

    move v0, v1

    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/zzaf$zza;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/zzaf$zza;

    .end local p1    # "o":Ljava/lang/Object;
    iget v2, p0, Lcom/google/android/gms/internal/zzaf$zza;->level:I

    iget v3, p1, Lcom/google/android/gms/internal/zzaf$zza;->level:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/google/android/gms/internal/zzaf$zza;->zzih:I

    iget v3, p1, Lcom/google/android/gms/internal/zzaf$zza;->zzih:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/google/android/gms/internal/zzaf$zza;->zzii:I

    iget v3, p1, Lcom/google/android/gms/internal/zzaf$zza;->zzii:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zza;->zzbpQ:Lcom/google/android/gms/internal/zztg;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zza;->zzbpQ:Lcom/google/android/gms/internal/zztg;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zztg;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    iget-object v2, p1, Lcom/google/android/gms/internal/zzaf$zza;->zzbpQ:Lcom/google/android/gms/internal/zztg;

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/google/android/gms/internal/zzaf$zza;->zzbpQ:Lcom/google/android/gms/internal/zztg;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zztg;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zza;->zzbpQ:Lcom/google/android/gms/internal/zztg;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzaf$zza;->zzbpQ:Lcom/google/android/gms/internal/zztg;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zztg;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/zzaf$zza;->level:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/zzaf$zza;->zzih:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/zzaf$zza;->zzii:I

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zza;->zzbpQ:Lcom/google/android/gms/internal/zztg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zza;->zzbpQ:Lcom/google/android/gms/internal/zztg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zztg;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zza;->zzbpQ:Lcom/google/android/gms/internal/zztg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zztg;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public synthetic mergeFrom(Lcom/google/android/gms/internal/zztc;)Lcom/google/android/gms/internal/zztk;
    .locals 1
    .param p1, "x0"    # Lcom/google/android/gms/internal/zztc;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzaf$zza;->zza(Lcom/google/android/gms/internal/zztc;)Lcom/google/android/gms/internal/zzaf$zza;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/android/gms/internal/zztd;)V
    .locals 2
    .param p1, "output"    # Lcom/google/android/gms/internal/zztd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    iget v0, p0, Lcom/google/android/gms/internal/zzaf$zza;->level:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/zzaf$zza;->level:I

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/zztd;->zzG(II)V

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/zzaf$zza;->zzih:I

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/gms/internal/zzaf$zza;->zzih:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zztd;->zzG(II)V

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/zzaf$zza;->zzii:I

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget v1, p0, Lcom/google/android/gms/internal/zzaf$zza;->zzii:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zztd;->zzG(II)V

    :cond_2
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzte;->writeTo(Lcom/google/android/gms/internal/zztd;)V

    return-void
.end method

.method public zzB()Lcom/google/android/gms/internal/zzaf$zza;
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzaf$zza;->level:I

    iput v1, p0, Lcom/google/android/gms/internal/zzaf$zza;->zzih:I

    iput v1, p0, Lcom/google/android/gms/internal/zzaf$zza;->zzii:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zza;->zzbpQ:Lcom/google/android/gms/internal/zztg;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzaf$zza;->zzbqb:I

    return-object p0
.end method

.method public zza(Lcom/google/android/gms/internal/zztc;)Lcom/google/android/gms/internal/zzaf$zza;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->zzHi()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzaf$zza;->zza(Lcom/google/android/gms/internal/zztc;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->zzHl()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput v0, p0, Lcom/google/android/gms/internal/zzaf$zza;->level:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->zzHl()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzaf$zza;->zzih:I

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->zzHl()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzaf$zza;->zzii:I

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected zzz()I
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzte;->zzz()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/zzaf$zza;->level:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/zzaf$zza;->level:I

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zztd;->zzI(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/zzaf$zza;->zzih:I

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/internal/zzaf$zza;->zzih:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zztd;->zzI(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/google/android/gms/internal/zzaf$zza;->zzii:I

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/internal/zzaf$zza;->zzii:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zztd;->zzI(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    return v0
.end method
