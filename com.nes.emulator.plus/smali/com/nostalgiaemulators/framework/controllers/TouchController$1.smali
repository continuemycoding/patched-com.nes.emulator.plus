.class Lcom/nostalgiaemulators/framework/controllers/TouchController$1;
.super Ljava/lang/Object;
.source "TouchController.java"

# interfaces
.implements Lcom/nostalgiaemulators/framework/ui/multitouchbutton/OnMultitouchEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostalgiaemulators/framework/controllers/TouchController;->createView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nostalgiaemulators/framework/controllers/TouchController;


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/controllers/TouchController;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/controllers/TouchController$1;->this$0:Lcom/nostalgiaemulators/framework/controllers/TouchController;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMultitouchEnter(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;)V
    .locals 1
    .param p1, "btn"    # Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/TouchController$1;->this$0:Lcom/nostalgiaemulators/framework/controllers/TouchController;

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->emulatorActivity:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->onFastForwardDown()V

    .line 162
    return-void
.end method

.method public onMultitouchExit(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;)V
    .locals 1
    .param p1, "btn"    # Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/TouchController$1;->this$0:Lcom/nostalgiaemulators/framework/controllers/TouchController;

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->emulatorActivity:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->onFastForwardUp()V

    .line 158
    return-void
.end method
