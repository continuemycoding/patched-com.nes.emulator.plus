.class public Lcom/google/android/gms/internal/zzot;
.super Lcom/google/android/gms/internal/zzor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzot$zzb;,
        Lcom/google/android/gms/internal/zzot$zzc;,
        Lcom/google/android/gms/internal/zzot$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzor",
        "<",
        "Lcom/google/android/gms/internal/zzpe;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 7

    const/16 v3, 0x3c

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzor;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Lcom/google/android/gms/common/internal/zzf;)V

    return-void
.end method


# virtual methods
.method protected synthetic zzW(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzot;->zzbv(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzpe;

    move-result-object v0

    return-object v0
.end method

.method protected zzbv(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzpe;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzpe$zza;->zzbG(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzpe;

    move-result-object v0

    return-object v0
.end method

.method protected zzgh()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.fitness.ConfigApi"

    return-object v0
.end method

.method protected zzgi()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.fitness.internal.IGoogleFitConfigApi"

    return-object v0
.end method
