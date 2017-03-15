.class Lcom/nostalgiaemulators/framework/base/EmulatorActivity$6$1;
.super Ljava/lang/Object;
.source "EmulatorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostalgiaemulators/framework/base/EmulatorActivity$6;->onDismiss(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nostalgiaemulators/framework/base/EmulatorActivity$6;


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/base/EmulatorActivity$6;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$6$1;->this$1:Lcom/nostalgiaemulators/framework/base/EmulatorActivity$6;

    .line 554
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$6$1;->this$1:Lcom/nostalgiaemulators/framework/base/EmulatorActivity$6;

    # getter for: Lcom/nostalgiaemulators/framework/base/EmulatorActivity$6;->this$0:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;
    invoke-static {v0}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$6;->access$0(Lcom/nostalgiaemulators/framework/base/EmulatorActivity$6;)Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->finish()V

    .line 557
    return-void
.end method
