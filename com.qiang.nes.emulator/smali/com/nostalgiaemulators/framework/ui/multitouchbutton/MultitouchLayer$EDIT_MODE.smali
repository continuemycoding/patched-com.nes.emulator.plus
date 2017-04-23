.class public final enum Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;
.super Ljava/lang/Enum;
.source "MultitouchLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EDIT_MODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;

.field public static final enum NONE:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;

.field public static final enum SCREEN:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;

.field public static final enum TOUCH:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1329
    new-instance v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;->NONE:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;

    new-instance v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;

    const-string v1, "TOUCH"

    invoke-direct {v0, v1, v3}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;->TOUCH:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;

    new-instance v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;

    const-string v1, "SCREEN"

    invoke-direct {v0, v1, v4}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;->SCREEN:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;

    .line 1328
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;

    sget-object v1, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;->NONE:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;->TOUCH:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;->SCREEN:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;->ENUM$VALUES:[Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1328
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;

    return-object v0
.end method

.method public static values()[Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;->ENUM$VALUES:[Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;

    array-length v1, v0

    new-array v2, v1, [Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
