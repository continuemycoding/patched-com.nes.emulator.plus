.class public abstract Lcom/google/android/gms/internal/zzil;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzir;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzha;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzir",
        "<",
        "Ljava/util/concurrent/Future;",
        ">;"
    }
.end annotation


# instance fields
.field private volatile zzKt:Ljava/lang/Thread;

.field private zzKu:Z

.field private final zzx:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzil$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzil$1;-><init>(Lcom/google/android/gms/internal/zzil;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzil;->zzx:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzil;->zzKu:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzil$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzil$1;-><init>(Lcom/google/android/gms/internal/zzil;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzil;->zzx:Ljava/lang/Runnable;

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzil;->zzKu:Z

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzil;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzil;->zzKt:Ljava/lang/Thread;

    return-object p1
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzil;->onStop()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzil;->zzKt:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzil;->zzKt:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-void
.end method

.method public abstract onStop()V
.end method

.method public abstract zzbp()V
.end method

.method public synthetic zzfR()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzil;->zzgX()Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public final zzgX()Ljava/util/concurrent/Future;
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzil;->zzKu:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzil;->zzx:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzio;->zza(ILjava/lang/Runnable;)Lcom/google/android/gms/internal/zzje;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzil;->zzx:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzio;->zza(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/zzje;

    move-result-object v0

    goto :goto_0
.end method
