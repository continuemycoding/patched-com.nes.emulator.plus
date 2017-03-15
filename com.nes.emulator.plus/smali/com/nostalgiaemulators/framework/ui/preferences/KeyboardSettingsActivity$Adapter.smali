.class Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$Adapter;
.super Landroid/widget/BaseAdapter;
.source "KeyboardSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation


# instance fields
.field private heightCache:I

.field inflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;


# direct methods
.method public constructor <init>(Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;)V
    .locals 1

    .prologue
    .line 224
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$Adapter;->this$0:Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 293
    const/4 v0, -0x1

    iput v0, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$Adapter;->heightCache:I

    .line 225
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$Adapter;->inflater:Landroid/view/LayoutInflater;

    .line 226
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 289
    invoke-static {}, Lcom/nostalgiaemulators/framework/KeyboardProfile;->getButtonNames()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    .line 290
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$Adapter;->this$0:Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;

    # getter for: Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->newProfile:Z
    invoke-static {v0}, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->access$2(Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 289
    :goto_0
    add-int/2addr v0, v1

    return v0

    .line 290
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 284
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 279
    int-to-long v0, p1

    return-wide v0
.end method

.method public getPlayersOffset()[I
    .locals 7

    .prologue
    .line 310
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 311
    .local v5, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v3, ""

    .line 312
    .local v3, "lastDesc":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$Adapter;->getRowHeight()I

    move-result v1

    .line 314
    .local v1, "h":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-static {}, Lcom/nostalgiaemulators/framework/KeyboardProfile;->getButtonNames()[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    if-lt v2, v6, :cond_0

    .line 323
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v4, v6, [I

    .line 324
    .local v4, "res":[I
    const/4 v2, 0x0

    .line 326
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v2, v6, :cond_2

    .line 329
    return-object v4

    .line 315
    .end local v4    # "res":[I
    :cond_0
    invoke-static {}, Lcom/nostalgiaemulators/framework/KeyboardProfile;->getButtonDescriptions()[Ljava/lang/String;

    move-result-object v6

    aget-object v0, v6, v2

    .line 317
    .local v0, "desc":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 318
    mul-int v6, v2, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    move-object v3, v0

    .line 314
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 327
    .end local v0    # "desc":Ljava/lang/String;
    .restart local v4    # "res":[I
    :cond_2
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v4, v2

    .line 326
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public getRowHeight()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 296
    iget v1, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$Adapter;->heightCache:I

    if-gez v1, :cond_0

    .line 297
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$Adapter;->inflater:Landroid/view/LayoutInflater;

    .line 298
    sget v2, Lcom/nostalgiaemulators/framework/R$layout;->row_keyboard_settings:I

    const/4 v3, 0x0

    .line 297
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 300
    .local v0, "convertView":Landroid/view/View;
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 302
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 300
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 303
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$Adapter;->heightCache:I

    .line 306
    .end local v0    # "convertView":Landroid/view/View;
    :cond_0
    iget v1, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$Adapter;->heightCache:I

    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 230
    if-nez p2, :cond_0

    .line 231
    iget-object v6, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$Adapter;->inflater:Landroid/view/LayoutInflater;

    sget v7, Lcom/nostalgiaemulators/framework/R$layout;->row_keyboard_settings:I

    .line 232
    const/4 v8, 0x0

    .line 231
    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 236
    :cond_0
    sget v6, Lcom/nostalgiaemulators/framework/R$id;->row_keyboard_name:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 235
    check-cast v4, Landroid/widget/TextView;

    .line 238
    .local v4, "name":Landroid/widget/TextView;
    sget v6, Lcom/nostalgiaemulators/framework/R$id;->row_keyboard_desc:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 237
    check-cast v0, Landroid/widget/TextView;

    .line 240
    .local v0, "desc":Landroid/widget/TextView;
    sget v6, Lcom/nostalgiaemulators/framework/R$id;->row_keyboard_key_name:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 239
    check-cast v2, Landroid/widget/TextView;

    .line 241
    .local v2, "keyName":Landroid/widget/TextView;
    const/4 v6, 0x1

    invoke-virtual {p2, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 243
    invoke-static {}, Lcom/nostalgiaemulators/framework/KeyboardProfile;->getButtonNames()[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    if-ge p1, v6, :cond_3

    .line 244
    invoke-static {}, Lcom/nostalgiaemulators/framework/KeyboardProfile;->getButtonNames()[Ljava/lang/String;

    move-result-object v6

    aget-object v5, v6, p1

    .line 246
    .local v5, "nameStr":Ljava/lang/String;
    const-string v6, "REWIND"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 247
    iget-object v6, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$Adapter;->this$0:Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;

    invoke-static {v6}, Lcom/nostalgiaemulators/framework/utils/Utils;->isAdvertisingVersion(Landroid/app/Activity;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 248
    const-string v5, "REWIND (Pro Version Only)"

    .line 249
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 255
    :goto_0
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    iget-object v6, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$Adapter;->this$0:Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;

    # getter for: Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->inverseMap:Landroid/util/SparseIntArray;
    invoke-static {v6}, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->access$0(Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;)Landroid/util/SparseIntArray;

    move-result-object v6

    .line 257
    invoke-static {}, Lcom/nostalgiaemulators/framework/KeyboardProfile;->getButtonKeyEventCodes()[I

    move-result-object v7

    .line 256
    aget v7, v7, p1

    invoke-virtual {v6, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 259
    .local v1, "keyCode":I
    const v6, 0x186a0

    if-lt v1, v6, :cond_1

    .line 260
    const v6, 0x186a0

    sub-int/2addr v1, v6

    .line 263
    :cond_1
    invoke-static {v1}, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->getKeyLabel(I)Ljava/lang/String;

    move-result-object v3

    .line 264
    .local v3, "label":Ljava/lang/String;
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 274
    .end local v1    # "keyCode":I
    .end local v3    # "label":Ljava/lang/String;
    .end local v5    # "nameStr":Ljava/lang/String;
    :goto_1
    return-object p2

    .line 252
    .restart local v5    # "nameStr":Ljava/lang/String;
    :cond_2
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 268
    .end local v5    # "nameStr":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$Adapter;->this$0:Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;

    # getter for: Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->profile:Lcom/nostalgiaemulators/framework/KeyboardProfile;
    invoke-static {v6}, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->access$1(Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;)Lcom/nostalgiaemulators/framework/KeyboardProfile;

    move-result-object v6

    iget-object v6, v6, Lcom/nostalgiaemulators/framework/KeyboardProfile;->name:Ljava/lang/String;

    invoke-static {v6}, Lcom/nostalgiaemulators/framework/KeyboardProfile;->isDefaultProfile(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$Adapter;->this$0:Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;

    sget v7, Lcom/nostalgiaemulators/framework/R$string;->pref_keyboard_settings_restore_def:I

    invoke-virtual {v6, v7}, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    :goto_2
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 271
    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 269
    :cond_4
    iget-object v6, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$Adapter;->this$0:Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;

    sget v7, Lcom/nostalgiaemulators/framework/R$string;->pref_keyboard_settings_delete_prof:I

    invoke-virtual {v6, v7}, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    goto :goto_2
.end method
