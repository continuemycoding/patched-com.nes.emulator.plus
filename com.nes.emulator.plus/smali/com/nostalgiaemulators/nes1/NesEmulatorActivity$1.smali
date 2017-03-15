.class Lcom/nostalgiaemulators/nes1/NesEmulatorActivity$1;
.super Ljava/lang/Object;
.source "NesEmulatorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostalgiaemulators/nes1/NesEmulatorActivity;->showFdsToast(Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nostalgiaemulators/nes1/NesEmulatorActivity;

.field private final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/nes1/NesEmulatorActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/nes1/NesEmulatorActivity$1;->this$0:Lcom/nostalgiaemulators/nes1/NesEmulatorActivity;

    iput-object p2, p0, Lcom/nostalgiaemulators/nes1/NesEmulatorActivity$1;->val$msg:Ljava/lang/String;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 153
    iget-object v0, p0, Lcom/nostalgiaemulators/nes1/NesEmulatorActivity$1;->this$0:Lcom/nostalgiaemulators/nes1/NesEmulatorActivity;

    iget-object v1, p0, Lcom/nostalgiaemulators/nes1/NesEmulatorActivity$1;->val$msg:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 155
    return-void
.end method
