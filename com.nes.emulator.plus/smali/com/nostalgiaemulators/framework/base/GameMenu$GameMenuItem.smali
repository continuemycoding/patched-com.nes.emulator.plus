.class public Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;
.super Ljava/lang/Object;
.source "GameMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostalgiaemulators/framework/base/GameMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GameMenuItem"
.end annotation


# instance fields
.field enable:Z

.field iconRID:I

.field id:I

.field final synthetic this$0:Lcom/nostalgiaemulators/framework/base/GameMenu;

.field title:Ljava/lang/String;

.field visible:Z


# direct methods
.method public constructor <init>(Lcom/nostalgiaemulators/framework/base/GameMenu;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 51
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;->this$0:Lcom/nostalgiaemulators/framework/base/GameMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;->title:Ljava/lang/String;

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;->iconRID:I

    .line 55
    iput-boolean v1, p0, Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;->enable:Z

    .line 56
    iput-boolean v1, p0, Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;->visible:Z

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;->id:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public set(Ljava/lang/String;I)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 75
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;->title:Ljava/lang/String;

    .line 76
    iput p2, p0, Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;->id:I

    .line 77
    return-void
.end method

.method public setEnable(Z)V
    .locals 0
    .param p1, "en"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;->enable:Z

    .line 68
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;->visible:Z

    .line 72
    return-void
.end method
