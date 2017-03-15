.class Lcom/nostalgiaemulators/framework/base/EmulatorActivity$13;
.super Ljava/lang/Object;
.source "EmulatorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->openGameMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/base/EmulatorActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$13;->this$0:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    .line 872
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 874
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$13;->this$0:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->game:Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    if-eqz v0, :cond_0

    .line 875
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$13;->this$0:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    # getter for: Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->gameMenu:Lcom/nostalgiaemulators/framework/base/GameMenu;
    invoke-static {v0}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->access$4(Lcom/nostalgiaemulators/framework/base/EmulatorActivity;)Lcom/nostalgiaemulators/framework/base/GameMenu;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/base/GameMenu;->open(Z)V

    .line 877
    :cond_0
    return-void
.end method
