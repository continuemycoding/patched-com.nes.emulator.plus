.class final Lcom/google/android/gms/internal/zzhc$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzjo$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzhc;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzch;Lcom/google/android/gms/internal/zzcf;)Lcom/google/android/gms/internal/zzjo$zza;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic zzHO:Ljava/lang/String;

.field final synthetic zzHP:Lcom/google/android/gms/internal/zzcf;

.field final synthetic zzpj:Lcom/google/android/gms/internal/zzch;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzch;Lcom/google/android/gms/internal/zzcf;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhc$5;->zzpj:Lcom/google/android/gms/internal/zzch;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzhc$5;->zzHP:Lcom/google/android/gms/internal/zzcf;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzhc$5;->zzHO:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzjn;Z)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhc$5;->zzpj:Lcom/google/android/gms/internal/zzch;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhc$5;->zzHP:Lcom/google/android/gms/internal/zzcf;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "jsf"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzch;->zza(Lcom/google/android/gms/internal/zzcf;[Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhc$5;->zzpj:Lcom/google/android/gms/internal/zzch;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzch;->zzdv()V

    const-string v0, "AFMA_buildAdURL"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhc$5;->zzHO:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzjn;->zza(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
