.class Lcom/nostalgiaemulators/framework/base/EmulatorActivity$10;
.super Ljava/lang/Object;
.source "EmulatorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->enableCheats()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

.field private final synthetic val$e:Lcom/nostalgiaemulators/framework/EmulatorException;


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/base/EmulatorActivity;Lcom/nostalgiaemulators/framework/EmulatorException;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$10;->this$0:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    iput-object p2, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$10;->val$e:Lcom/nostalgiaemulators/framework/EmulatorException;

    .line 784
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 786
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$10;->this$0:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    .line 787
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$10;->val$e:Lcom/nostalgiaemulators/framework/EmulatorException;

    iget-object v2, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$10;->this$0:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    invoke-virtual {v1, v2}, Lcom/nostalgiaemulators/framework/EmulatorException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 788
    const/4 v2, 0x0

    .line 786
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 788
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 789
    return-void
.end method
