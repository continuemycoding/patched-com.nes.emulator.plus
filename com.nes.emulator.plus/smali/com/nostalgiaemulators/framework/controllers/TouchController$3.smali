.class Lcom/nostalgiaemulators/framework/controllers/TouchController$3;
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
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/controllers/TouchController$3;->this$0:Lcom/nostalgiaemulators/framework/controllers/TouchController;

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMultitouchEnter(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;)V
    .locals 4
    .param p1, "btn"    # Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/TouchController$3;->this$0:Lcom/nostalgiaemulators/framework/controllers/TouchController;

    iget-object v1, v0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->emulator:Lcom/nostalgiaemulators/framework/Emulator;

    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/TouchController$3;->this$0:Lcom/nostalgiaemulators/framework/controllers/TouchController;

    iget v2, v0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->port:I

    .line 196
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/TouchController$3;->this$0:Lcom/nostalgiaemulators/framework/controllers/TouchController;

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->mapping:Ljava/util/Map;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x1

    .line 195
    invoke-interface {v1, v2, v0, v3}, Lcom/nostalgiaemulators/framework/Emulator;->setKeyPressed(IIZ)V

    .line 197
    return-void
.end method

.method public onMultitouchExit(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;)V
    .locals 4
    .param p1, "btn"    # Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;

    .prologue
    .line 190
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/TouchController$3;->this$0:Lcom/nostalgiaemulators/framework/controllers/TouchController;

    iget-object v1, v0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->emulator:Lcom/nostalgiaemulators/framework/Emulator;

    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/TouchController$3;->this$0:Lcom/nostalgiaemulators/framework/controllers/TouchController;

    iget v2, v0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->port:I

    .line 191
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/TouchController$3;->this$0:Lcom/nostalgiaemulators/framework/controllers/TouchController;

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->mapping:Ljava/util/Map;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x0

    .line 190
    invoke-interface {v1, v2, v0, v3}, Lcom/nostalgiaemulators/framework/Emulator;->setKeyPressed(IIZ)V

    .line 192
    return-void
.end method
