.class Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3;
.super Ljava/lang/Object;
.source "SlotSelectionActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

.field private final synthetic val$afterEraseClickListener:Landroid/view/View$OnClickListener;

.field private final synthetic val$dateS:Ljava/lang/String;

.field private final synthetic val$labelS:Ljava/lang/String;

.field private final synthetic val$message:Landroid/widget/TextView;

.field private final synthetic val$screenshot:Landroid/widget/ImageView;

.field private final synthetic val$slotInfo:Lcom/nostalgiaemulators/framework/SlotInfo;

.field private final synthetic val$slotView:Landroid/view/View;

.field private final synthetic val$timeS:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;Ljava/lang/String;Landroid/view/View;Lcom/nostalgiaemulators/framework/SlotInfo;Landroid/view/View$OnClickListener;Landroid/widget/TextView;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;

    iput-object p2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3;->val$labelS:Ljava/lang/String;

    iput-object p3, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3;->val$slotView:Landroid/view/View;

    iput-object p4, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3;->val$slotInfo:Lcom/nostalgiaemulators/framework/SlotInfo;

    iput-object p5, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3;->val$afterEraseClickListener:Landroid/view/View$OnClickListener;

    iput-object p6, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3;->val$message:Landroid/widget/TextView;

    iput-object p7, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3;->val$screenshot:Landroid/widget/ImageView;

    iput-object p8, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3;->val$dateS:Ljava/lang/String;

    iput-object p9, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3;->val$timeS:Ljava/lang/String;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3;)Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;

    return-object v0
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x1

    .line 110
    new-instance v9, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;

    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;

    invoke-direct {v9, v0}, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;-><init>(Landroid/content/Context;)V

    .line 111
    .local v9, "menu":Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3;->val$labelS:Ljava/lang/String;

    invoke-virtual {v9, v0}, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;->setHeaderTitle(Ljava/lang/CharSequence;)V

    .line 112
    new-instance v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3$1;

    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3;->val$slotInfo:Lcom/nostalgiaemulators/framework/SlotInfo;

    iget-object v3, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3;->val$slotView:Landroid/view/View;

    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3;->val$afterEraseClickListener:Landroid/view/View$OnClickListener;

    iget-object v5, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3;->val$message:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3;->val$screenshot:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3;->val$dateS:Ljava/lang/String;

    iget-object v8, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3;->val$timeS:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3$1;-><init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3;Lcom/nostalgiaemulators/framework/SlotInfo;Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/widget/TextView;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;->setOnItemSelectedListener(Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu$OnItemSelectedListener;)V

    .line 182
    sget v0, Lcom/nostalgiaemulators/framework/R$string;->act_slot_popup_menu_delete:I

    invoke-virtual {v9, v10, v0}, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;->add(II)Lcom/u1aryz/android/lib/newpopupmenu/MenuItem;

    move-result-object v0

    .line 183
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;

    iget-object v1, v1, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;->clearIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/u1aryz/android/lib/newpopupmenu/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 184
    const/4 v0, 0x0

    sget v1, Lcom/nostalgiaemulators/framework/R$string;->act_slot_popup_menu_send:I

    invoke-virtual {v9, v0, v1}, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;->add(II)Lcom/u1aryz/android/lib/newpopupmenu/MenuItem;

    move-result-object v0

    .line 185
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;

    iget-object v1, v1, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;->sendIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/u1aryz/android/lib/newpopupmenu/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 186
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3;->val$slotView:Landroid/view/View;

    invoke-virtual {v9, v0}, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;->show(Landroid/view/View;)V

    .line 187
    return v10
.end method
