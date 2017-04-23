.class Lcom/google/android/gms/internal/zziu$zzc;
.super Lcom/google/android/gms/internal/zzjb;

# interfaces
.implements Lcom/google/android/gms/internal/zzm$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zziu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/zzjb",
        "<TT;>;",
        "Lcom/google/android/gms/internal/zzm$zzb",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic zzLn:Lcom/google/android/gms/internal/zziu;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zziu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zziu$zzc;->zzLn:Lcom/google/android/gms/internal/zziu;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzjb;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zziu;Lcom/google/android/gms/internal/zziu$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zziu$zzc;-><init>(Lcom/google/android/gms/internal/zziu;)V

    return-void
.end method


# virtual methods
.method public zzb(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzjb;->zzf(Ljava/lang/Object;)V

    return-void
.end method
