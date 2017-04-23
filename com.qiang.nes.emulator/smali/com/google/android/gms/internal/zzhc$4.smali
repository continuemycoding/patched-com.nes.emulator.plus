.class final Lcom/google/android/gms/internal/zzhc$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzhc;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzei;Lcom/google/android/gms/internal/zzbs;Lcom/google/android/gms/internal/zzhb;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic zzHI:Lcom/google/android/gms/internal/zzhb;

.field final synthetic zzHJ:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

.field final synthetic zzHM:Lcom/google/android/gms/internal/zzhe;

.field final synthetic zzsm:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzhb;Landroid/content/Context;Lcom/google/android/gms/internal/zzhe;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhc$4;->zzHI:Lcom/google/android/gms/internal/zzhb;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzhc$4;->zzsm:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzhc$4;->zzHM:Lcom/google/android/gms/internal/zzhe;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzhc$4;->zzHJ:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhc$4;->zzHI:Lcom/google/android/gms/internal/zzhb;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzhb;->zzHy:Lcom/google/android/gms/internal/zzhk;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhc$4;->zzsm:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhc$4;->zzHM:Lcom/google/android/gms/internal/zzhe;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzhc$4;->zzHJ:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzqR:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzhk;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzhe;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V

    return-void
.end method
