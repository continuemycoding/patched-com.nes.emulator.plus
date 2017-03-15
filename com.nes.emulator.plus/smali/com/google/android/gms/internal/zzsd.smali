.class public final Lcom/google/android/gms/internal/zzsd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Api$ApiOptions$Optional;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzsd$1;,
        Lcom/google/android/gms/internal/zzsd$zza;
    }
.end annotation


# static fields
.field public static final zzbbH:Lcom/google/android/gms/internal/zzsd;


# instance fields
.field private final zzVD:Z

.field private final zzVF:Z

.field private final zzVG:Ljava/lang/String;

.field private final zzbbI:Z

.field private final zzbbJ:Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks;

.field private final zzbbK:Z

.field private final zzbbL:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzsd$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzsd$zza;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsd$zza;->zzDQ()Lcom/google/android/gms/internal/zzsd;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzsd;->zzbbH:Lcom/google/android/gms/internal/zzsd;

    return-void
.end method

.method private constructor <init>(ZZLjava/lang/String;Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks;ZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzsd;->zzbbI:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzsd;->zzVD:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/zzsd;->zzVG:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzsd;->zzbbJ:Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/zzsd;->zzbbK:Z

    iput-boolean p6, p0, Lcom/google/android/gms/internal/zzsd;->zzVF:Z

    iput-boolean p7, p0, Lcom/google/android/gms/internal/zzsd;->zzbbL:Z

    return-void
.end method

.method synthetic constructor <init>(ZZLjava/lang/String;Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks;ZZZLcom/google/android/gms/internal/zzsd$1;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/google/android/gms/internal/zzsd;-><init>(ZZLjava/lang/String;Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks;ZZZ)V

    return-void
.end method


# virtual methods
.method public zzDM()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzsd;->zzbbI:Z

    return v0
.end method

.method public zzDN()Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsd;->zzbbJ:Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks;

    return-object v0
.end method

.method public zzDO()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzsd;->zzbbK:Z

    return v0
.end method

.method public zzDP()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzsd;->zzbbL:Z

    return v0
.end method

.method public zzmA()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzsd;->zzVF:Z

    return v0
.end method

.method public zzmB()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsd;->zzVG:Ljava/lang/String;

    return-object v0
.end method

.method public zzmy()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzsd;->zzVD:Z

    return v0
.end method
