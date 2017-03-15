.class Lcom/nostalgiaemulators/framework/base/EmulatorActivity$8;
.super Ljava/lang/Object;
.source "EmulatorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->quickSave()V
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
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$8;->this$0:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    .line 608
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 611
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$8;->this$0:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    const-string v1, "state saved"

    .line 612
    const/4 v2, 0x0

    .line 611
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 612
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 613
    return-void
.end method
