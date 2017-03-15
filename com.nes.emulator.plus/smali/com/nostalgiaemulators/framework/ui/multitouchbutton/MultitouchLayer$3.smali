.class Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$3;
.super Ljava/util/TimerTask;
.source "MultitouchLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->setEditMode(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;)V
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
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$3;->this$0:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;

    .line 1339
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1342
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$3;->this$0:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;

    iget v1, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->counter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->counter:I

    .line 1343
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$3;->this$0:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;

    # getter for: Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->editElementPaint:Landroid/graphics/Paint;
    invoke-static {v0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->access$5(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;)Landroid/graphics/Paint;

    move-result-object v0

    new-instance v1, Landroid/graphics/DashPathEffect;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    .line 1345
    iget-object v3, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$3;->this$0:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;

    iget v3, v3, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->counter:I

    rem-int/lit8 v3, v3, 0x8

    int-to-float v3, v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 1343
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 1346
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$3;->this$0:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->updateHandler:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$UpdateHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$UpdateHandler;->sendEmptyMessage(I)Z

    .line 1347
    return-void

    .line 1343
    :array_0
    .array-data 4
        0x40800000    # 4.0f
        0x40800000    # 4.0f
    .end array-data
.end method
