.class final Lcom/google/android/gms/wearable/internal/zzcd;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/wearable/internal/zzcd$zzb;,
        Lcom/google/android/gms/wearable/internal/zzcd$zzo;,
        Lcom/google/android/gms/wearable/internal/zzcd$zzs;,
        Lcom/google/android/gms/wearable/internal/zzcd$zza;,
        Lcom/google/android/gms/wearable/internal/zzcd$zzf;,
        Lcom/google/android/gms/wearable/internal/zzcd$zzg;,
        Lcom/google/android/gms/wearable/internal/zzcd$zzr;,
        Lcom/google/android/gms/wearable/internal/zzcd$zzu;,
        Lcom/google/android/gms/wearable/internal/zzcd$zzi;,
        Lcom/google/android/gms/wearable/internal/zzcd$zzh;,
        Lcom/google/android/gms/wearable/internal/zzcd$zzd;,
        Lcom/google/android/gms/wearable/internal/zzcd$zzc;,
        Lcom/google/android/gms/wearable/internal/zzcd$zzp;,
        Lcom/google/android/gms/wearable/internal/zzcd$zzt;,
        Lcom/google/android/gms/wearable/internal/zzcd$zzq;,
        Lcom/google/android/gms/wearable/internal/zzcd$zzn;,
        Lcom/google/android/gms/wearable/internal/zzcd$zzm;,
        Lcom/google/android/gms/wearable/internal/zzcd$zzl;,
        Lcom/google/android/gms/wearable/internal/zzcd$zzk;,
        Lcom/google/android/gms/wearable/internal/zzcd$zzj;,
        Lcom/google/android/gms/wearable/internal/zzcd$zze;
    }
.end annotation


# direct methods
.method private static zzD(Ljava/util/List;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/wearable/internal/CapabilityInfoParcelable;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/wearable/CapabilityInfo;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/CapabilityInfoParcelable;

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/internal/CapabilityInfoParcelable;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/wearable/internal/zzj$zzc;

    invoke-direct {v4, v0}, Lcom/google/android/gms/wearable/internal/zzj$zzc;-><init>(Lcom/google/android/gms/wearable/CapabilityInfo;)V

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method static synthetic zzE(Ljava/util/List;)Ljava/util/Map;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/wearable/internal/zzcd;->zzD(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
