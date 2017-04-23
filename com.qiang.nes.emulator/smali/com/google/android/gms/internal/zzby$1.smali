.class Lcom/google/android/gms/internal/zzby$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzby;->zzd(Lcom/google/android/gms/internal/zzbv;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic zzvd:Lcom/google/android/gms/internal/zzbv;

.field final synthetic zzve:Lcom/google/android/gms/internal/zzby;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzby;Lcom/google/android/gms/internal/zzbv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzby$1;->zzve:Lcom/google/android/gms/internal/zzby;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzby$1;->zzvd:Lcom/google/android/gms/internal/zzbv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzby$1;->zzvd:Lcom/google/android/gms/internal/zzbv;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzby$1;->zzve:Lcom/google/android/gms/internal/zzby;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzby;->zza(Lcom/google/android/gms/internal/zzby;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbv;->zza(Landroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
