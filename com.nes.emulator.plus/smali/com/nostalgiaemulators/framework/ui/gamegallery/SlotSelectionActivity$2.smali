.class Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$2;
.super Ljava/lang/Object;
.source "SlotSelectionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;->initSlot(Lcom/nostalgiaemulators/framework/SlotInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;

.field private final synthetic val$idx:I

.field private final synthetic val$isUsed:Z


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;IZ)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$2;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;

    iput p2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$2;->val$idx:I

    iput-boolean p3, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$2;->val$isUsed:Z

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$2;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;

    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$2;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;

    iget-object v1, v1, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;->game:Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    iget v2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$2;->val$idx:I

    add-int/lit8 v2, v2, 0x1

    iget-boolean v3, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$2;->val$isUsed:Z

    # invokes: Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;->onSelected(Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;IZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;->access$0(Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;IZ)V

    .line 103
    return-void
.end method
