.class public Lcom/google/android/gms/plus/internal/PlusSession;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/plus/internal/zzh;


# instance fields
.field private final mVersionCode:I

.field private final zzTD:Ljava/lang/String;

.field private final zzaZe:[Ljava/lang/String;

.field private final zzaZf:[Ljava/lang/String;

.field private final zzaZg:[Ljava/lang/String;

.field private final zzaZh:Ljava/lang/String;

.field private final zzaZi:Ljava/lang/String;

.field private final zzaZj:Ljava/lang/String;

.field private final zzaZk:Lcom/google/android/gms/plus/internal/PlusCommonExtras;

.field private final zzabt:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/plus/internal/zzh;

    invoke-direct {v0}, Lcom/google/android/gms/plus/internal/zzh;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/internal/PlusSession;->CREATOR:Lcom/google/android/gms/plus/internal/zzh;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/plus/internal/PlusCommonExtras;)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "requestedScopes"    # [Ljava/lang/String;
    .param p4, "visibleActions"    # [Ljava/lang/String;
    .param p5, "requiredFeatures"    # [Ljava/lang/String;
    .param p6, "packageNameForAuth"    # Ljava/lang/String;
    .param p7, "callingPackageName"    # Ljava/lang/String;
    .param p8, "applicationName"    # Ljava/lang/String;
    .param p9, "clientId_DEPRECATED"    # Ljava/lang/String;
    .param p10, "extras"    # Lcom/google/android/gms/plus/internal/PlusCommonExtras;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/plus/internal/PlusSession;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzTD:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzaZe:[Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzaZf:[Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzaZg:[Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzaZh:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzaZi:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzabt:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzaZj:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzaZk:Lcom/google/android/gms/plus/internal/PlusCommonExtras;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/plus/internal/PlusCommonExtras;)V
    .locals 1
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "requestedScopes"    # [Ljava/lang/String;
    .param p3, "visibleActions"    # [Ljava/lang/String;
    .param p4, "requiredFeatures"    # [Ljava/lang/String;
    .param p5, "packageNameForAuth"    # Ljava/lang/String;
    .param p6, "callingPackageName"    # Ljava/lang/String;
    .param p7, "applicationName"    # Ljava/lang/String;
    .param p8, "extra"    # Lcom/google/android/gms/plus/internal/PlusCommonExtras;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/plus/internal/PlusSession;->mVersionCode:I

    iput-object p1, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzTD:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzaZe:[Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzaZf:[Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzaZg:[Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzaZh:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzaZi:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzabt:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzaZj:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzaZk:Lcom/google/android/gms/plus/internal/PlusCommonExtras;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/gms/plus/internal/PlusSession;

    if-nez v1, :cond_1

    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    check-cast p1, Lcom/google/android/gms/plus/internal/PlusSession;

    .end local p1    # "obj":Ljava/lang/Object;
    iget v1, p0, Lcom/google/android/gms/plus/internal/PlusSession;->mVersionCode:I

    iget v2, p1, Lcom/google/android/gms/plus/internal/PlusSession;->mVersionCode:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzTD:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/plus/internal/PlusSession;->zzTD:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzaZe:[Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/plus/internal/PlusSession;->zzaZe:[Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzaZf:[Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/plus/internal/PlusSession;->zzaZf:[Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzaZg:[Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/plus/internal/PlusSession;->zzaZg:[Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzaZh:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/plus/internal/PlusSession;->zzaZh:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzaZi:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/plus/internal/PlusSession;->zzaZi:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzabt:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/plus/internal/PlusSession;->zzabt:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzaZj:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/plus/internal/PlusSession;->zzaZj:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzaZk:Lcom/google/android/gms/plus/internal/PlusCommonExtras;

    iget-object v2, p1, Lcom/google/android/gms/plus/internal/PlusSession;->zzaZk:Lcom/google/android/gms/plus/internal/PlusCommonExtras;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzTD:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/plus/internal/PlusSession;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/plus/internal/PlusSession;->mVersionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzTD:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzaZe:[Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzaZf:[Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzaZg:[Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzaZh:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzaZi:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzabt:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzaZj:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzaZk:Lcom/google/android/gms/plus/internal/PlusCommonExtras;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzw;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzw;->zzx(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string v1, "versionCode"

    iget v2, p0, Lcom/google/android/gms/plus/internal/PlusSession;->mVersionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string v1, "accountName"

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzTD:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string v1, "requestedScopes"

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzaZe:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string v1, "visibleActivities"

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzaZf:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string v1, "requiredFeatures"

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzaZg:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string v1, "packageNameForAuth"

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzaZh:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string v1, "callingPackageName"

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzaZi:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string v1, "applicationName"

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzabt:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string v1, "extra"

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzaZk:Lcom/google/android/gms/plus/internal/PlusCommonExtras;

    invoke-virtual {v2}, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzw$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/plus/internal/zzh;->zza(Lcom/google/android/gms/plus/internal/PlusSession;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzDi()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzaZe:[Ljava/lang/String;

    return-object v0
.end method

.method public zzDj()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzaZf:[Ljava/lang/String;

    return-object v0
.end method

.method public zzDk()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzaZg:[Ljava/lang/String;

    return-object v0
.end method

.method public zzDl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzaZh:Ljava/lang/String;

    return-object v0
.end method

.method public zzDm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzaZi:Ljava/lang/String;

    return-object v0
.end method

.method public zzDn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzaZj:Ljava/lang/String;

    return-object v0
.end method

.method public zzDo()Lcom/google/android/gms/plus/internal/PlusCommonExtras;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzaZk:Lcom/google/android/gms/plus/internal/PlusCommonExtras;

    return-object v0
.end method

.method public zzDp()Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-class v1, Lcom/google/android/gms/plus/internal/PlusCommonExtras;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object v1, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzaZk:Lcom/google/android/gms/plus/internal/PlusCommonExtras;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->zzG(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public zznF()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzabt:Ljava/lang/String;

    return-object v0
.end method
