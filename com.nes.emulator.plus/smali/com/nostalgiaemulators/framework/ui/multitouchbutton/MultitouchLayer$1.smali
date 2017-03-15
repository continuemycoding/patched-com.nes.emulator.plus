.class Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$1;
.super Ljava/lang/Object;
.source "MultitouchLayer.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$1;->this$0:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;

    iput-object p2, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$1;->val$context:Landroid/content/Context;

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 6

    .prologue
    .line 364
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$1;->this$0:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;

    invoke-virtual {v4}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->getMeasuredWidth()I

    move-result v1

    .line 365
    .local v1, "w":I
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$1;->this$0:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;

    invoke-virtual {v4}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->getMeasuredHeight()I

    move-result v0

    .line 367
    .local v0, "h":I
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$1;->val$context:Landroid/content/Context;

    invoke-static {v4}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->getControllerLayoutTimestamp(Landroid/content/Context;)J

    move-result-wide v2

    .line 369
    .local v2, "timestamp":J
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$1;->this$0:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;

    iget v4, v4, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->lastW:I

    if-ne v1, v4, :cond_0

    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$1;->this$0:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;

    iget v4, v4, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->lastH:I

    if-ne v0, v4, :cond_0

    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$1;->this$0:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;

    iget-wide v4, v4, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->lastTimestamp:J

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    .line 370
    :cond_0
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$1;->this$0:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;

    iput-wide v2, v4, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->lastTimestamp:J

    .line 371
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$1;->this$0:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;

    iput v1, v4, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->lastW:I

    .line 372
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$1;->this$0:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;

    iput v0, v4, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->lastH:I

    .line 373
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$1;->this$0:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;

    iget-object v5, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$1;->this$0:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;

    # invokes: Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->initMultiTouchMap()Z
    invoke-static {v5}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->access$3(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;)Z

    move-result v5

    invoke-static {v4, v5}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->access$4(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;Z)V

    .line 375
    :cond_1
    return-void
.end method
