.class Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog$1;
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


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog$1;->this$0:Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog$1;->this$0:Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog;

    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog;->cancel()V

    .line 75
    return-void
.end method
