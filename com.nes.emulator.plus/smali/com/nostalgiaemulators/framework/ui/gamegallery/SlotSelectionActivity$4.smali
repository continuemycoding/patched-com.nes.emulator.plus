.class Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$4;
.super Ljava/lang/Object;
.source "SlotSelectionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$4;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 234
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$4;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;

    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;->showHelpDialog()V

    .line 235
    return-void
.end method
