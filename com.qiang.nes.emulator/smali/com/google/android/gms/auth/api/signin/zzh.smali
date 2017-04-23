.class public Lcom/google/android/gms/auth/api/signin/zzh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/api/signin/zzh$1;,
        Lcom/google/android/gms/auth/api/signin/zzh$zza;
    }
.end annotation


# instance fields
.field private final zzVQ:Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/zzh;->zzVQ:Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;Lcom/google/android/gms/auth/api/signin/zzh$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/api/signin/zzh;-><init>(Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;)V

    return-void
.end method


# virtual methods
.method public zzmF()Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/zzh;->zzVQ:Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;

    return-object v0
.end method
