.class public Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;
.super Ljava/lang/Object;
.source "PopupMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu$MenuItemAdapter;,
        Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu$OnItemSelectedListener;,
        Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu$ViewHolder;
    }
.end annotation


# instance fields
.field font:Landroid/graphics/Typeface;

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mHeaderTitleView:Landroid/widget/TextView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/u1aryz/android/lib/newpopupmenu/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mItemsView:Landroid/widget/ListView;

.field private mListener:Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu$OnItemSelectedListener;

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mScale:F

.field private mWidth:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/16 v1, 0xf0

    iput v1, p0, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;->mWidth:I

    .line 49
    invoke-static {p1}, Lcom/nostalgiaemulators/framework/utils/FontUtil;->createFontFace(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;->font:Landroid/graphics/Typeface;

    .line 50
    iput-object p1, p0, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;->mContext:Landroid/content/Context;

    .line 52
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 51
    iput-object v1, p0, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;->mInflater:Landroid/view/LayoutInflater;

    .line 54
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 53
    iput-object v1, p0, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;->mWindowManager:Landroid/view/WindowManager;

    .line 55
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 56
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 57
    iget v1, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput v1, p0, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;->mScale:F

    .line 59
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;->mItems:Ljava/util/List;

    .line 61
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 62
    iget-object v1, p0, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v2, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu$1;

    invoke-direct {v2, p0}, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu$1;-><init>(Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 74
    iget-object v1, p0, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/nostalgiaemulators/framework/R$layout;->popup_menu:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;->setContentView(Landroid/view/View;)V

    .line 75
    return-void
.end method

.method static synthetic access$0(Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;)Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$1(Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$2(Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;)Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu$OnItemSelectedListener;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;->mListener:Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu$OnItemSelectedListener;

    return-object v0
.end method

.method static synthetic access$3(Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;)Ljava/util/List;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;->mItems:Ljava/util/List;

    return-object v0
.end method

.method private preShow()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 188
    iget v1, p0, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;->mWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 189
    .local v0, "width":I
    iget-object v1, p0, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 190
    iget-object v1, p0, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 191
    iget-object v1, p0, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 192
    iget-object v1, p0, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 193
    iget-object v1, p0, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 194
    iget-object v1, p0, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    const v2, 0x1030002

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 195
    iget-object v1, p0, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 196
    sget v3, Lcom/nostalgiaemulators/framework/R$drawable;->panel_background:I

    .line 195
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 197
    return-void
.end method

.method private setContentView(Landroid/view/View;)V
    .locals 1
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;->mContentView:Landroid/view/View;

    .line 84
    sget v0, Lcom/nostalgiaemulators/framework/R$id;->items:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;->mItemsView:Landroid/widget/ListView;

    .line 86
    sget v0, Lcom/nostalgiaemulators/framework/R$id;->header_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 85
    iput-object v0, p0, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;->mHeaderTitleView:Landroid/widget/TextView;

    .line 88
    iget-object v0, p0, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 89
    return-void
.end method


# virtual methods
.method public add(II)Lcom/u1aryz/android/lib/newpopupmenu/MenuItem;
    .locals 2
    .param p1, "itemId"    # I
    .param p2, "titleRes"    # I

    .prologue
    .line 101
    new-instance v0, Lcom/u1aryz/android/lib/newpopupmenu/MenuItem;

    invoke-direct {v0}, Lcom/u1aryz/android/lib/newpopupmenu/MenuItem;-><init>()V

    .line 102
    .local v0, "item":Lcom/u1aryz/android/lib/newpopupmenu/MenuItem;
    invoke-virtual {v0, p1}, Lcom/u1aryz/android/lib/newpopupmenu/MenuItem;->setItemId(I)V

    .line 103
    iget-object v1, p0, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/u1aryz/android/lib/newpopupmenu/MenuItem;->setTitle(Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;->mItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    return-object v0
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 206
    :cond_0
    return-void
.end method

.method public setHeaderTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;->mHeaderTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v0, p0, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;->mHeaderTitleView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;->mHeaderTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 217
    iget-object v0, p0, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;->mHeaderTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;->font:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 218
    return-void
.end method

.method public setOnItemSelectedListener(Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu$OnItemSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu$OnItemSelectedListener;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;->mListener:Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu$OnItemSelectedListener;

    .line 237
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 226
    iput p1, p0, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;->mWidth:I

    .line 227
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;->show(Landroid/view/View;)V

    .line 114
    return-void
.end method

.method public show(Landroid/view/View;)V
    .locals 17
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    .line 123
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;->mItems:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-nez v12, :cond_0

    .line 124
    new-instance v12, Ljava/lang/IllegalStateException;

    .line 125
    const-string v13, "PopupMenu#add was not called with a menu item to display."

    .line 124
    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 128
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;->preShow()V

    .line 130
    new-instance v1, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu$MenuItemAdapter;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;->mItems:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v12, v13}, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu$MenuItemAdapter;-><init>(Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;Landroid/content/Context;Ljava/util/List;)V

    .line 131
    .local v1, "adapter":Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu$MenuItemAdapter;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;->mItemsView:Landroid/widget/ListView;

    invoke-virtual {v12, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 132
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;->mItemsView:Landroid/widget/ListView;

    new-instance v13, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu$2;-><init>(Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;)V

    invoke-virtual {v12, v13}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 144
    if-nez p1, :cond_1

    .line 145
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;->mContext:Landroid/content/Context;

    check-cast v12, Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    .line 146
    .local v7, "parent":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    const/16 v13, 0x11

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12, v7, v13, v14, v15}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 185
    :goto_0
    return-void

    .line 151
    .end local v7    # "parent":Landroid/view/View;
    :cond_1
    const/4 v12, 0x2

    new-array v5, v12, [I

    .line 152
    .local v5, "location":[I
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 154
    new-instance v2, Landroid/graphics/Rect;

    const/4 v12, 0x0

    aget v12, v5, v12

    const/4 v13, 0x1

    aget v13, v5, v13

    const/4 v14, 0x0

    aget v14, v5, v14

    .line 155
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v15

    add-int/2addr v14, v15

    const/4 v15, 0x1

    aget v15, v5, v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v16

    add-int v15, v15, v16

    .line 154
    invoke-direct {v2, v12, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 157
    .local v2, "anchorRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;->mContentView:Landroid/view/View;

    new-instance v13, Landroid/view/ViewGroup$LayoutParams;

    .line 158
    const/4 v14, -0x2

    const/4 v15, -0x2

    invoke-direct {v13, v14, v15}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 157
    invoke-virtual {v12, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;->mContentView:Landroid/view/View;

    const/4 v13, -0x2

    .line 160
    const/4 v14, -0x2

    .line 159
    invoke-virtual {v12, v13, v14}, Landroid/view/View;->measure(II)V

    .line 162
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;->mContentView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 163
    .local v8, "rootHeight":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/Display;->getHeight()I

    move-result v9

    .line 166
    .local v9, "screenHeight":I
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v13}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    sub-int v10, v12, v13

    .line 168
    .local v10, "xPos":I
    iget v4, v2, Landroid/graphics/Rect;->top:I

    .line 169
    .local v4, "dyTop":I
    add-int v3, v9, v8

    .line 170
    .local v3, "dyBottom":I
    if-le v4, v3, :cond_2

    const/4 v6, 0x1

    .line 173
    .local v6, "onTop":Z
    :goto_1
    if-eqz v6, :cond_3

    .line 174
    iget v12, v2, Landroid/graphics/Rect;->top:I

    sub-int v11, v12, v8

    .line 182
    .local v11, "yPos":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;->mContext:Landroid/content/Context;

    check-cast v12, Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    .line 184
    .restart local v7    # "parent":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v13, 0x0

    invoke-virtual {v12, v7, v13, v10, v11}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_0

    .line 170
    .end local v6    # "onTop":Z
    .end local v7    # "parent":Landroid/view/View;
    .end local v11    # "yPos":I
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 176
    .restart local v6    # "onTop":Z
    :cond_3
    iget v12, v2, Landroid/graphics/Rect;->bottom:I

    if-le v12, v4, :cond_4

    .line 177
    iget v12, v2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v11, v12, -0x14

    .line 178
    .restart local v11    # "yPos":I
    goto :goto_2

    .line 179
    .end local v11    # "yPos":I
    :cond_4
    iget v12, v2, Landroid/graphics/Rect;->top:I

    iget v13, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v12, v13

    add-int/lit8 v11, v12, 0x14

    .restart local v11    # "yPos":I
    goto :goto_2
.end method
