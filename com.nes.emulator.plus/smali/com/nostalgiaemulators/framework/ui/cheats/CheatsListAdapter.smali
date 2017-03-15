.class public Lcom/nostalgiaemulators/framework/ui/cheats/CheatsListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "CheatsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/nostalgiaemulators/framework/ui/cheats/Cheat;",
        ">;"
    }
.end annotation


# instance fields
.field cheatsActivity:Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;

.field font:Landroid/graphics/Typeface;

.field inflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;Ljava/util/List;Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "context"    # Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;
    .param p3, "font"    # Landroid/graphics/Typeface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;",
            "Ljava/util/List",
            "<",
            "Lcom/nostalgiaemulators/framework/ui/cheats/Cheat;",
            ">;",
            "Landroid/graphics/Typeface;",
            ")V"
        }
    .end annotation

    .prologue
    .line 46
    .local p2, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/nostalgiaemulators/framework/ui/cheats/Cheat;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 48
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 47
    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 49
    iput-object p3, p0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsListAdapter;->font:Landroid/graphics/Typeface;

    .line 50
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsListAdapter;->cheatsActivity:Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;

    .line 51
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, 0x0

    .line 55
    const/4 v0, 0x0

    .line 56
    .local v0, "chars":Landroid/widget/TextView;
    const/4 v2, 0x0

    .line 58
    .local v2, "desc":Landroid/widget/TextView;
    if-nez p2, :cond_0

    .line 59
    iget-object v6, p0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsListAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v7, Lcom/nostalgiaemulators/framework/R$layout;->row_cheat_list_item:I

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 60
    sget v6, Lcom/nostalgiaemulators/framework/R$id;->row_cheat_chars:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "chars":Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 61
    .restart local v0    # "chars":Landroid/widget/TextView;
    sget v6, Lcom/nostalgiaemulators/framework/R$id;->row_cheat_desc:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "desc":Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 62
    .restart local v2    # "desc":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsListAdapter;->font:Landroid/graphics/Typeface;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 63
    iget-object v6, p0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsListAdapter;->font:Landroid/graphics/Typeface;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 70
    :goto_0
    invoke-virtual {p0, p1}, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nostalgiaemulators/framework/ui/cheats/Cheat;

    .line 72
    .local v1, "cheat":Lcom/nostalgiaemulators/framework/ui/cheats/Cheat;
    sget v6, Lcom/nostalgiaemulators/framework/R$id;->row_cheat_enable:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 71
    check-cast v4, Landroid/widget/CheckBox;

    .line 74
    .local v4, "enable":Landroid/widget/CheckBox;
    sget v6, Lcom/nostalgiaemulators/framework/R$id;->row_cheat_edit:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 73
    check-cast v3, Landroid/widget/ImageButton;

    .line 76
    .local v3, "edit":Landroid/widget/ImageButton;
    sget v6, Lcom/nostalgiaemulators/framework/R$id;->row_cheat_remove:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 75
    check-cast v5, Landroid/widget/ImageButton;

    .line 77
    .local v5, "remove":Landroid/widget/ImageButton;
    iget-object v6, v1, Lcom/nostalgiaemulators/framework/ui/cheats/Cheat;->chars:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v6, v1, Lcom/nostalgiaemulators/framework/ui/cheats/Cheat;->desc:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    invoke-virtual {v4, v8}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 80
    iget-boolean v6, v1, Lcom/nostalgiaemulators/framework/ui/cheats/Cheat;->enable:Z

    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 81
    new-instance v6, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsListAdapter$1;

    invoke-direct {v6, p0, v1}, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsListAdapter$1;-><init>(Lcom/nostalgiaemulators/framework/ui/cheats/CheatsListAdapter;Lcom/nostalgiaemulators/framework/ui/cheats/Cheat;)V

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    new-instance v6, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsListAdapter$2;

    invoke-direct {v6, p0, v1}, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsListAdapter$2;-><init>(Lcom/nostalgiaemulators/framework/ui/cheats/CheatsListAdapter;Lcom/nostalgiaemulators/framework/ui/cheats/Cheat;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    new-instance v6, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsListAdapter$3;

    invoke-direct {v6, p0, p1, v1}, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsListAdapter$3;-><init>(Lcom/nostalgiaemulators/framework/ui/cheats/CheatsListAdapter;ILcom/nostalgiaemulators/framework/ui/cheats/Cheat;)V

    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 105
    return-object p2

    .line 66
    .end local v1    # "cheat":Lcom/nostalgiaemulators/framework/ui/cheats/Cheat;
    .end local v3    # "edit":Landroid/widget/ImageButton;
    .end local v4    # "enable":Landroid/widget/CheckBox;
    .end local v5    # "remove":Landroid/widget/ImageButton;
    :cond_0
    sget v6, Lcom/nostalgiaemulators/framework/R$id;->row_cheat_chars:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "chars":Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 67
    .restart local v0    # "chars":Landroid/widget/TextView;
    sget v6, Lcom/nostalgiaemulators/framework/R$id;->row_cheat_desc:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "desc":Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .restart local v2    # "desc":Landroid/widget/TextView;
    goto :goto_0
.end method
