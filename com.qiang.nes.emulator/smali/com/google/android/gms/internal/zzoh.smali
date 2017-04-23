.class public Lcom/google/android/gms/internal/zzoh;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzoh$zze;,
        Lcom/google/android/gms/internal/zzoh$zzf;,
        Lcom/google/android/gms/internal/zzoh$zzc;,
        Lcom/google/android/gms/internal/zzoh$zzd;,
        Lcom/google/android/gms/internal/zzoh$zzb;,
        Lcom/google/android/gms/internal/zzoh$zza;
    }
.end annotation


# static fields
.field public static final zzarG:Lcom/google/android/gms/internal/zzoh$zza;

.field public static final zzarH:Lcom/google/android/gms/internal/zzoh$zzb;

.field public static final zzarI:Lcom/google/android/gms/internal/zzoh$zzd;

.field public static final zzarJ:Lcom/google/android/gms/internal/zzoh$zzc;

.field public static final zzarK:Lcom/google/android/gms/internal/zzoh$zzf;

.field public static final zzarL:Lcom/google/android/gms/internal/zzoh$zze;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const v3, 0x3e8fa0

    new-instance v0, Lcom/google/android/gms/internal/zzoh$zza;

    const-string v1, "created"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/zzoh$zza;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzoh;->zzarG:Lcom/google/android/gms/internal/zzoh$zza;

    new-instance v0, Lcom/google/android/gms/internal/zzoh$zzb;

    const-string v1, "lastOpenedTime"

    const v2, 0x419ce0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzoh$zzb;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzoh;->zzarH:Lcom/google/android/gms/internal/zzoh$zzb;

    new-instance v0, Lcom/google/android/gms/internal/zzoh$zzd;

    const-string v1, "modified"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/zzoh$zzd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzoh;->zzarI:Lcom/google/android/gms/internal/zzoh$zzd;

    new-instance v0, Lcom/google/android/gms/internal/zzoh$zzc;

    const-string v1, "modifiedByMe"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/zzoh$zzc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzoh;->zzarJ:Lcom/google/android/gms/internal/zzoh$zzc;

    new-instance v0, Lcom/google/android/gms/internal/zzoh$zzf;

    const-string v1, "sharedWithMe"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/zzoh$zzf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzoh;->zzarK:Lcom/google/android/gms/internal/zzoh$zzf;

    new-instance v0, Lcom/google/android/gms/internal/zzoh$zze;

    const-string v1, "recency"

    const v2, 0x7a1200

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzoh$zze;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzoh;->zzarL:Lcom/google/android/gms/internal/zzoh$zze;

    return-void
.end method
