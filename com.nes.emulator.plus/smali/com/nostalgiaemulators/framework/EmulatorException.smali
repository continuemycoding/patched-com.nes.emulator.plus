.class public Lcom/nostalgiaemulators/framework/EmulatorException;
.super Ljava/lang/RuntimeException;
.source "EmulatorException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private formatArg:Ljava/lang/String;

.field private stringResId:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "stringResId"    # I

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/nostalgiaemulators/framework/EmulatorException;->stringResId:I

    .line 30
    iput p1, p0, Lcom/nostalgiaemulators/framework/EmulatorException;->stringResId:I

    .line 31
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "stringResId"    # I
    .param p2, "t"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/nostalgiaemulators/framework/EmulatorException;->stringResId:I

    .line 34
    iput p1, p0, Lcom/nostalgiaemulators/framework/EmulatorException;->stringResId:I

    .line 35
    iput-object p2, p0, Lcom/nostalgiaemulators/framework/EmulatorException;->formatArg:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/nostalgiaemulators/framework/EmulatorException;->stringResId:I

    .line 27
    return-void
.end method


# virtual methods
.method public getMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    iget v1, p0, Lcom/nostalgiaemulators/framework/EmulatorException;->stringResId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/nostalgiaemulators/framework/EmulatorException;->stringResId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "resource":Ljava/lang/String;
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/EmulatorException;->formatArg:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 43
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nostalgiaemulators/framework/EmulatorException;->formatArg:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 50
    .end local v0    # "resource":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/EmulatorException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
