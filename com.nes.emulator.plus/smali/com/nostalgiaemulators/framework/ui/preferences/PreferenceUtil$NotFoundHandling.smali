.class public final enum Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$NotFoundHandling;
.super Ljava/lang/Enum;
.source "PreferenceUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NotFoundHandling"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$NotFoundHandling;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$NotFoundHandling;

.field public static final enum FAIL:Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$NotFoundHandling;

.field public static final enum IGNORE:Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$NotFoundHandling;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 56
    new-instance v0, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$NotFoundHandling;

    const-string v1, "IGNORE"

    invoke-direct {v0, v1, v2}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$NotFoundHandling;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$NotFoundHandling;->IGNORE:Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$NotFoundHandling;

    new-instance v0, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$NotFoundHandling;

    const-string v1, "FAIL"

    invoke-direct {v0, v1, v3}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$NotFoundHandling;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$NotFoundHandling;->FAIL:Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$NotFoundHandling;

    .line 55
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$NotFoundHandling;

    sget-object v1, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$NotFoundHandling;->IGNORE:Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$NotFoundHandling;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$NotFoundHandling;->FAIL:Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$NotFoundHandling;

    aput-object v1, v0, v3

    sput-object v0, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$NotFoundHandling;->ENUM$VALUES:[Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$NotFoundHandling;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$NotFoundHandling;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$NotFoundHandling;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$NotFoundHandling;

    return-object v0
.end method

.method public static values()[Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$NotFoundHandling;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$NotFoundHandling;->ENUM$VALUES:[Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$NotFoundHandling;

    array-length v1, v0

    new-array v2, v1, [Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$NotFoundHandling;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
