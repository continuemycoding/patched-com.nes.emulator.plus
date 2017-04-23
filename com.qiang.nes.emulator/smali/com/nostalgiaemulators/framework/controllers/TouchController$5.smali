.class Lcom/nostalgiaemulators/framework/controllers/TouchController$5;
.super Ljava/lang/Object;
.source "TouchController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostalgiaemulators/framework/controllers/TouchController;->hide()V
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
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/controllers/TouchController$5;->this$0:Lcom/nostalgiaemulators/framework/controllers/TouchController;

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/TouchController$5;->this$0:Lcom/nostalgiaemulators/framework/controllers/TouchController;

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->view:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 305
    return-void
.end method
