.class final Lcom/google/android/gms/internal/zzrf$3;
.super Lcom/google/android/gms/internal/zzrd$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzrf;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzre;Lcom/google/android/gms/internal/zzrd;Landroid/net/Uri;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic zzaYf:Landroid/net/Uri;

.field final synthetic zzaYh:Lcom/google/android/gms/internal/zzrd;

.field final synthetic zzsm:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/google/android/gms/internal/zzrd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrf$3;->zzsm:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzrf$3;->zzaYf:Landroid/net/Uri;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzrf$3;->zzaYh:Lcom/google/android/gms/internal/zzrd;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzrd$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(ILandroid/os/Bundle;ILandroid/content/Intent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrf$3;->zzsm:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrf$3;->zzaYf:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzrf;->zzb(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrf$3;->zzaYh:Lcom/google/android/gms/internal/zzrd;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzrd;->zza(ILandroid/os/Bundle;ILandroid/content/Intent;)V

    return-void
.end method
