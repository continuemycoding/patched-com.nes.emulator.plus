.class Lcom/nostalgiaemulators/framework/base/EmulatorActivity$9;
.super Ljava/lang/Object;
.source "EmulatorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->showToast(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

.field private final synthetic val$toast:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/base/EmulatorActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$9;->this$0:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    iput-object p2, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$9;->val$toast:Ljava/lang/String;

    .line 618
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 621
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$9;->this$0:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    iget-object v1, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$9;->val$toast:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 622
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 623
    return-void
.end method
