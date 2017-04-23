.class public final enum Lcom/google/android/gms/auth/api/signin/zze;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gms/auth/api/signin/zze;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zzVJ:Lcom/google/android/gms/auth/api/signin/zze;

.field public static final enum zzVK:Lcom/google/android/gms/auth/api/signin/zze;

.field private static final synthetic zzVN:[Lcom/google/android/gms/auth/api/signin/zze;


# instance fields
.field private final zzUB:Ljava/lang/String;

.field private final zzVL:Ljava/lang/String;

.field private final zzVM:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/auth/api/signin/zze;

    const-string v1, "GOOGLE"

    const-string v3, "google.com"

    sget v4, Lcom/google/android/gms/R$string;->auth_google_play_services_client_google_display_name:I

    const-string v5, "https://accounts.google.com"

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/auth/api/signin/zze;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/api/signin/zze;->zzVJ:Lcom/google/android/gms/auth/api/signin/zze;

    new-instance v3, Lcom/google/android/gms/auth/api/signin/zze;

    const-string v4, "FACEBOOK"

    const-string v6, "facebook.com"

    sget v7, Lcom/google/android/gms/R$string;->auth_google_play_services_client_facebook_display_name:I

    const-string v8, "https://www.facebook.com"

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/auth/api/signin/zze;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/google/android/gms/auth/api/signin/zze;->zzVK:Lcom/google/android/gms/auth/api/signin/zze;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/gms/auth/api/signin/zze;

    sget-object v1, Lcom/google/android/gms/auth/api/signin/zze;->zzVJ:Lcom/google/android/gms/auth/api/signin/zze;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/auth/api/signin/zze;->zzVK:Lcom/google/android/gms/auth/api/signin/zze;

    aput-object v1, v0, v9

    sput-object v0, Lcom/google/android/gms/auth/api/signin/zze;->zzVN:[Lcom/google/android/gms/auth/api/signin/zze;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/android/gms/auth/api/signin/zze;->zzVL:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/auth/api/signin/zze;->zzVM:I

    iput-object p5, p0, Lcom/google/android/gms/auth/api/signin/zze;->zzUB:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/zze;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/google/android/gms/auth/api/signin/zze;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/api/signin/zze;

    return-object v0
.end method

.method public static values()[Lcom/google/android/gms/auth/api/signin/zze;
    .locals 1

    sget-object v0, Lcom/google/android/gms/auth/api/signin/zze;->zzVN:[Lcom/google/android/gms/auth/api/signin/zze;

    invoke-virtual {v0}, [Lcom/google/android/gms/auth/api/signin/zze;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/auth/api/signin/zze;

    return-object v0
.end method

.method public static zzbI(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/zze;
    .locals 5

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/google/android/gms/auth/api/signin/zze;->values()[Lcom/google/android/gms/auth/api/signin/zze;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/zze;->zzmC()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const-string v0, "IdProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized providerId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/zze;->zzVL:Ljava/lang/String;

    return-object v0
.end method

.method public zzad(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/auth/api/signin/zze;->zzVM:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzmC()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/zze;->zzVL:Ljava/lang/String;

    return-object v0
.end method
