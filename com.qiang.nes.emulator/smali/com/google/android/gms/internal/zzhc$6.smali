.class Lcom/google/android/gms/internal/zzhc$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzei$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzhc;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzbs;Lcom/google/android/gms/internal/zzhb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzei$zzb",
        "<",
        "Lcom/google/android/gms/internal/zzbb;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzHS:Lcom/google/android/gms/internal/zzhc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzhc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhc$6;->zzHS:Lcom/google/android/gms/internal/zzhc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzbb;)V
    .locals 2

    const-string v0, "/log"

    sget-object v1, Lcom/google/android/gms/internal/zzdk;->zzyG:Lcom/google/android/gms/internal/zzdl;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzbb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzdl;)V

    return-void
.end method

.method public synthetic zzc(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzbb;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzhc$6;->zza(Lcom/google/android/gms/internal/zzbb;)V

    return-void
.end method
