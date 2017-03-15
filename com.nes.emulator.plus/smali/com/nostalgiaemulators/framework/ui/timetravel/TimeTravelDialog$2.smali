.class Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog$2;
.super Ljava/lang/Object;
.source "TimeTravelDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog;-><init>(Landroid/content/Context;Lcom/nostalgiaemulators/framework/base/Manager;Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$seekBar:Landroid/widget/SeekBar;


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog;Landroid/widget/SeekBar;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog$2;->this$0:Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog;

    iput-object p2, p0, Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog$2;->val$seekBar:Landroid/widget/SeekBar;

    iput-object p3, p0, Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog$2;->val$context:Landroid/content/Context;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog$2;->this$0:Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog;

    # getter for: Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog;->manager:Lcom/nostalgiaemulators/framework/base/Manager;
    invoke-static {v0}, Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog;->access$0(Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog;)Lcom/nostalgiaemulators/framework/base/Manager;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog$2;->this$0:Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog;

    # getter for: Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog;->game:Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;
    invoke-static {v1}, Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog;->access$1(Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog;)Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/base/Manager;->startGame(Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;)V

    .line 89
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog$2;->this$0:Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog;

    # getter for: Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog;->manager:Lcom/nostalgiaemulators/framework/base/Manager;
    invoke-static {v0}, Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog;->access$0(Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog;)Lcom/nostalgiaemulators/framework/base/Manager;

    move-result-object v0

    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog$2;->this$0:Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog;

    # getter for: Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog;->max:I
    invoke-static {v1}, Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog;->access$2(Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog;)I

    move-result v1

    .line 90
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog$2;->val$seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    sub-int/2addr v1, v2

    .line 89
    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/base/Manager;->loadHistoryState(I)V

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog$2;->this$0:Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog;

    # getter for: Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog;->manager:Lcom/nostalgiaemulators/framework/base/Manager;
    invoke-static {v0}, Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog;->access$0(Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog;)Lcom/nostalgiaemulators/framework/base/Manager;

    move-result-object v0

    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog$2;->val$context:Landroid/content/Context;

    .line 94
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog$2;->this$0:Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog;

    # getter for: Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog;->game:Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;
    invoke-static {v2}, Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog;->access$1(Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog;)Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    move-result-object v2

    .line 93
    invoke-virtual {v0, v1, v2}, Lcom/nostalgiaemulators/framework/base/Manager;->enableCheats(Landroid/content/Context;Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;)I
    :try_end_0
    .catch Lcom/nostalgiaemulators/framework/EmulatorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog$2;->this$0:Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog;

    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog;->dismiss()V

    .line 100
    return-void

    .line 96
    :catch_0
    move-exception v0

    goto :goto_0
.end method
