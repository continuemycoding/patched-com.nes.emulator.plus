.class Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$7;
.super Ljava/lang/Object;
.source "KeyboardSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$7;->this$0:Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;

    iput p2, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$7;->val$position:I

    .line 459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 463
    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    .line 464
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 465
    const p2, 0x7b523eaa

    .line 469
    :cond_0
    invoke-static {p2}, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->getKeyLabel(I)Ljava/lang/String;

    move-result-object v0

    .line 471
    .local v0, "txt":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 472
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$7;->this$0:Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;

    iget v2, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$7;->val$position:I

    # invokes: Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->proccessKeyEvent(Ljava/lang/String;Landroid/content/DialogInterface;II)Z
    invoke-static {v1, v0, p1, p2, v2}, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->access$6(Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;Ljava/lang/String;Landroid/content/DialogInterface;II)Z

    move-result v1

    .line 475
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
