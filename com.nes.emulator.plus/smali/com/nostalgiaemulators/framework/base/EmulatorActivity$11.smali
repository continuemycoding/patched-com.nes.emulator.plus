.class Lcom/nostalgiaemulators/framework/base/EmulatorActivity$11;
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

.field private final synthetic val$fNumCheats:I


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/base/EmulatorActivity;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$11;->this$0:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    iput p2, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$11;->val$fNumCheats:I

    .line 795
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 798
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$11;->this$0:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    .line 800
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$11;->this$0:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    sget v2, Lcom/nostalgiaemulators/framework/R$string;->toast_cheats_enabled:I

    invoke-virtual {v1, v2}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 801
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$11;->val$fNumCheats:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 799
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 797
    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 802
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 803
    return-void
.end method
