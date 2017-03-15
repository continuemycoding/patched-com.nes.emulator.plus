.class Lcom/google/android/gms/internal/zzil$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzKv:Lcom/google/android/gms/internal/zzil;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzil;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzil$1;->zzKv:Lcom/google/android/gms/internal/zzil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzil$1;->zzKv:Lcom/google/android/gms/internal/zzil;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzil;->zza(Lcom/google/android/gms/internal/zzil;Ljava/lang/Thread;)Ljava/lang/Thread;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzil$1;->zzKv:Lcom/google/android/gms/internal/zzil;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzil;->zzbp()V

    return-void
.end method
