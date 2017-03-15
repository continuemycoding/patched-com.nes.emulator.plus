.class Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$2;
.super Ljava/lang/Object;
.source "MultitouchLayer.java"

# interfaces
.implements Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$OnEditItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->initMultiTouchMap()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$2;->this$0:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;

    .line 550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 2

    .prologue
    .line 553
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$2;->this$0:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->editMode:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;

    sget-object v1, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;->NONE:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;

    if-eq v0, v1, :cond_0

    .line 554
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$2;->this$0:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;

    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->openOptionsMenu()V

    .line 556
    :cond_0
    return-void
.end method
