.class Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu$MenuItemAdapter;
.super Landroid/widget/ArrayAdapter;
.source "PopupMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/u1aryz/android/lib/newpopupmenu/MenuItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;


# direct methods
.method public constructor <init>(Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/u1aryz/android/lib/newpopupmenu/MenuItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 254
    .local p3, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/u1aryz/android/lib/newpopupmenu/MenuItem;>;"
    iput-object p1, p0, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu$MenuItemAdapter;->this$0:Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;

    .line 255
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 256
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 261
    if-nez p2, :cond_0

    .line 262
    iget-object v2, p0, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu$MenuItemAdapter;->this$0:Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;

    # getter for: Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v2}, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;->access$0(Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/nostalgiaemulators/framework/R$layout;->menu_list_item:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 263
    new-instance v0, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu$ViewHolder;

    invoke-direct {v0}, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu$ViewHolder;-><init>()V

    .line 264
    .local v0, "holder":Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu$ViewHolder;
    sget v2, Lcom/nostalgiaemulators/framework/R$id;->icon:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 265
    sget v2, Lcom/nostalgiaemulators/framework/R$id;->title:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu$ViewHolder;->title:Landroid/widget/TextView;

    .line 266
    iget-object v2, v0, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu$MenuItemAdapter;->this$0:Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;

    iget-object v3, v3, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;->font:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 267
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 272
    :goto_0
    invoke-virtual {p0, p1}, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu$MenuItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/u1aryz/android/lib/newpopupmenu/MenuItem;

    .line 273
    .local v1, "item":Lcom/u1aryz/android/lib/newpopupmenu/MenuItem;
    invoke-virtual {v1}, Lcom/u1aryz/android/lib/newpopupmenu/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 274
    iget-object v2, v0, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/u1aryz/android/lib/newpopupmenu/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 275
    iget-object v2, v0, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu$ViewHolder;->icon:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 279
    :goto_1
    iget-object v2, v0, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/u1aryz/android/lib/newpopupmenu/MenuItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    return-object p2

    .line 269
    .end local v0    # "holder":Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu$ViewHolder;
    .end local v1    # "item":Lcom/u1aryz/android/lib/newpopupmenu/MenuItem;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu$ViewHolder;

    .restart local v0    # "holder":Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu$ViewHolder;
    goto :goto_0

    .line 277
    .restart local v1    # "item":Lcom/u1aryz/android/lib/newpopupmenu/MenuItem;
    :cond_1
    iget-object v2, v0, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu$ViewHolder;->icon:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method
