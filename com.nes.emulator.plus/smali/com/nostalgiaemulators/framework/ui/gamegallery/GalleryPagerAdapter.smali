.class public Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "GalleryPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter$OnItemClickListener;
    }
.end annotation


# static fields
.field public static final EXTRA_POSITIONS:Ljava/lang/String; = "EXTRA_POSITIONS"

.field private static final LABELS_RID:[I

.field private static final SORT_TYPES:[I


# instance fields
.field private activity:Landroid/app/Activity;

.field private listAdapters:[Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;

.field private listener:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter$OnItemClickListener;

.field private lists:[Landroid/widget/ListView;

.field private yOffsets:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 47
    new-array v0, v6, [I

    const/4 v1, 0x0

    .line 48
    sget v2, Lcom/nostalgiaemulators/framework/R$string;->gallery_page_byname:I

    aput v2, v0, v1

    sget v1, Lcom/nostalgiaemulators/framework/R$string;->gallery_page_most:I

    aput v1, v0, v3

    .line 49
    sget v1, Lcom/nostalgiaemulators/framework/R$string;->gallery_page_last_played:I

    aput v1, v0, v4

    sget v1, Lcom/nostalgiaemulators/framework/R$string;->gallery_page_last:I

    aput v1, v0, v5

    .line 47
    sput-object v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter;->LABELS_RID:[I

    .line 52
    new-array v0, v6, [I

    .line 53
    aput v4, v0, v3

    .line 54
    aput v5, v0, v4

    .line 55
    aput v3, v0, v5

    .line 52
    sput-object v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter;->SORT_TYPES:[I

    .line 171
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter$OnItemClickListener;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter$OnItemClickListener;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 66
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 58
    sget-object v3, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter;->LABELS_RID:[I

    array-length v3, v3

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter;->yOffsets:[I

    .line 59
    sget-object v3, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter;->LABELS_RID:[I

    array-length v3, v3

    new-array v3, v3, [Landroid/widget/ListView;

    iput-object v3, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter;->lists:[Landroid/widget/ListView;

    .line 61
    sget-object v3, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter;->LABELS_RID:[I

    array-length v3, v3

    new-array v3, v3, [Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;

    iput-object v3, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter;->listAdapters:[Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;

    .line 67
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter;->activity:Landroid/app/Activity;

    .line 68
    iput-object p2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter;->listener:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter$OnItemClickListener;

    .line 69
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    check-cast v3, Lcom/nostalgiaemulators/framework/EmulatorApplication;

    .line 70
    invoke-virtual {v3}, Lcom/nostalgiaemulators/framework/EmulatorApplication;->getAdProvider()Lcom/nostalgiaemulators/framework/AdProvider;

    move-result-object v3

    sget-object v6, Lcom/nostalgiaemulators/framework/AdProvider;->LEADBOLT:Lcom/nostalgiaemulators/framework/AdProvider;

    .line 69
    if-ne v3, v6, :cond_0

    move v2, v4

    .line 72
    .local v2, "isLeadbolt":Z
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget-object v3, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter;->LABELS_RID:[I

    array-length v3, v3

    if-lt v1, v3, :cond_1

    .line 78
    return-void

    .end local v1    # "i":I
    .end local v2    # "isLeadbolt":Z
    :cond_0
    move v2, v5

    .line 69
    goto :goto_0

    .line 73
    .restart local v1    # "i":I
    .restart local v2    # "isLeadbolt":Z
    :cond_1
    iget-object v6, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter;->listAdapters:[Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;

    new-instance v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;

    .line 74
    invoke-static {p1}, Lcom/nostalgiaemulators/framework/utils/Utils;->isAdvertisingVersion(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 75
    if-eqz v2, :cond_2

    move v3, v4

    :goto_2
    invoke-direct {v0, p1, v3}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;-><init>(Landroid/content/Context;Z)V

    .line 73
    aput-object v0, v6, v1

    .line 76
    .local v0, "adapter":Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;
    sget-object v3, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter;->SORT_TYPES:[I

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->setSortType(I)V

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "adapter":Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;
    :cond_2
    move v3, v5

    .line 75
    goto :goto_2
.end method

.method static synthetic access$0(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter;)[Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter;->listAdapters:[Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;

    return-object v0
.end method

.method static synthetic access$1(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter;)Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter$OnItemClickListener;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter;->listener:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$2(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter;)[I
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter;->yOffsets:[I

    return-object v0
.end method


# virtual methods
.method public addGames(Ljava/util/ArrayList;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 143
    .local p1, "newGames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;>;"
    const/4 v1, 0x0

    .line 145
    .local v1, "result":I
    iget-object v3, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter;->listAdapters:[Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_0

    .line 149
    return v1

    .line 145
    :cond_0
    aget-object v0, v3, v2

    .line 146
    .local v0, "adapter":Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v5}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->addGames(Ljava/util/ArrayList;)I

    move-result v1

    .line 145
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 132
    check-cast p3, Landroid/view/View;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 133
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter;->LABELS_RID:[I

    array-length v0, v0

    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 87
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter;->activity:Landroid/app/Activity;

    sget-object v1, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter;->LABELS_RID:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 97
    new-instance v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 98
    .local v0, "list":Landroid/widget/ListView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 99
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 100
    sget v1, Lcom/nostalgiaemulators/framework/R$drawable;->row_game_item_list_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(I)V

    .line 101
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter;->listAdapters:[Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 102
    new-instance v1, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter$1;

    invoke-direct {v1, p0, p2}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter$1;-><init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 110
    new-instance v1, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter$2;

    invoke-direct {v1, p0, p2, v0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter$2;-><init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter;ILandroid/widget/ListView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 124
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter;->yOffsets:[I

    aget v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 125
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter;->lists:[Landroid/widget/ListView;

    aput-object v0, v1, p2

    .line 126
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 127
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 92
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 4

    .prologue
    .line 160
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter;->LABELS_RID:[I

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 168
    invoke-super {p0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 169
    return-void

    .line 161
    :cond_0
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter;->listAdapters:[Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;

    aget-object v0, v2, v1

    .line 162
    .local v0, "adapter":Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;
    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->notifyDataSetChanged()V

    .line 164
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter;->lists:[Landroid/widget/ListView;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    .line 165
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter;->lists:[Landroid/widget/ListView;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter;->yOffsets:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelection(I)V

    .line 160
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "inState"    # Landroid/os/Bundle;

    .prologue
    .line 178
    if-eqz p1, :cond_0

    .line 179
    const-string v0, "EXTRA_POSITIONS"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter;->yOffsets:[I

    .line 181
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter;->yOffsets:[I

    if-nez v0, :cond_0

    .line 182
    sget-object v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter;->LABELS_RID:[I

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter;->yOffsets:[I

    .line 184
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 174
    const-string v0, "EXTRA_POSITIONS"

    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter;->yOffsets:[I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 175
    return-void
.end method

.method public setFilter(Ljava/lang/String;)V
    .locals 4
    .param p1, "filter"    # Ljava/lang/String;

    .prologue
    .line 153
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter;->listAdapters:[Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 156
    return-void

    .line 153
    :cond_0
    aget-object v0, v2, v1

    .line 154
    .local v0, "adapter":Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;
    invoke-virtual {v0, p1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->setFilter(Ljava/lang/String;)V

    .line 153
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setGames(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p1, "games":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;>;"
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter;->listAdapters:[Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 139
    return-void

    .line 136
    :cond_0
    aget-object v0, v2, v1

    .line 137
    .local v0, "adapter":Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v4}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->setGames(Ljava/util/ArrayList;)V

    .line 136
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
