.class Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter$2;
.super Ljava/lang/Object;
.source "GalleryPagerAdapter.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter;

.field private final synthetic val$list:Landroid/widget/ListView;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter;ILandroid/widget/ListView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter$2;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter;

    iput p2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter$2;->val$position:I

    iput-object p3, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter$2;->val$list:Landroid/widget/ListView;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 122
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 113
    const-string v0, "list"

    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter$2;->val$position:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    if-nez p2, :cond_0

    .line 116
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter$2;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter;

    # getter for: Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter;->yOffsets:[I
    invoke-static {v0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter;->access$2(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter;)[I

    move-result-object v0

    iget v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter$2;->val$position:I

    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter$2;->val$list:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    aput v2, v0, v1

    .line 118
    :cond_0
    return-void
.end method
