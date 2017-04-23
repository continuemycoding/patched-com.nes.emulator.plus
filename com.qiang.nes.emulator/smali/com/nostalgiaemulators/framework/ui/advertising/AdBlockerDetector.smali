.class public Lcom/nostalgiaemulators/framework/ui/advertising/AdBlockerDetector;
.super Ljava/lang/Object;
.source "AdBlockerDetector.java"


# static fields
.field private static final BLOCKER_PACKAGE_NAMES:[Ljava/lang/String;

.field private static result:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/nostalgiaemulators/framework/ui/advertising/AdBlockerDetector;->result:Ljava/lang/Boolean;

    .line 58
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 59
    const-string v2, "pl.adblocker.free"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.pasvante.adblocker"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 60
    const-string v2, "de.ub0r.android.adBlock"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "org.adblockplus.android"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 61
    const-string v2, "com.bigtincan.android.adfree"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "org.adaway"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 62
    const-string v2, "org.czzsunset.adblock"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.jrummy.apps.ad.blocker"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 63
    const-string v2, "com.perlapps.MyInternetSecurity"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "net.xdevelop.adblocker_t"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 64
    const-string v2, "net.xdevelop.adblocker"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.atejapps.advanishlite"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 65
    const-string v2, "com.atejapps.advanish"

    aput-object v2, v0, v1

    .line 58
    sput-object v0, Lcom/nostalgiaemulators/framework/ui/advertising/AdBlockerDetector;->BLOCKER_PACKAGE_NAMES:[Ljava/lang/String;

    .line 66
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 30
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 33
    .local v1, "installed":Z
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    const/4 v1, 0x1

    .line 40
    :goto_0
    return v1

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isBlockerInstalled(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 44
    sget-object v2, Lcom/nostalgiaemulators/framework/ui/advertising/AdBlockerDetector;->result:Ljava/lang/Boolean;

    if-nez v2, :cond_0

    .line 45
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/nostalgiaemulators/framework/ui/advertising/AdBlockerDetector;->result:Ljava/lang/Boolean;

    .line 47
    sget-object v2, Lcom/nostalgiaemulators/framework/ui/advertising/AdBlockerDetector;->BLOCKER_PACKAGE_NAMES:[Ljava/lang/String;

    array-length v3, v2

    :goto_0
    if-lt v1, v3, :cond_1

    .line 55
    :cond_0
    :goto_1
    sget-object v1, Lcom/nostalgiaemulators/framework/ui/advertising/AdBlockerDetector;->result:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 47
    :cond_1
    aget-object v0, v2, v1

    .line 48
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/nostalgiaemulators/framework/ui/advertising/AdBlockerDetector;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 49
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/nostalgiaemulators/framework/ui/advertising/AdBlockerDetector;->result:Ljava/lang/Boolean;

    goto :goto_1

    .line 47
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
