.class Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter$1;
.super Ljava/lang/Object;
.source "GalleryPagerAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter$1;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter;

    iput p2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter$1;->val$position:I

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 106
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter$1;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter;

    # getter for: Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter;->listAdapters:[Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;
    invoke-static {v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter;->access$0(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter;)[Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;

    move-result-object v1

    iget v2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter$1;->val$position:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p3}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter$RowItem;

    .line 107
    .local v0, "item":Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter$RowItem;
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter$1;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter;

    # getter for: Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter;->listener:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter$OnItemClickListener;
    invoke-static {v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter;->access$1(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter;)Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter$OnItemClickListener;

    move-result-object v2

    iget-object v3, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter$RowItem;->game:Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    iget-object v1, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter$RowItem;->type:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter$ROW_TYPE;

    sget-object v4, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter$ROW_TYPE;->ADDS:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter$ROW_TYPE;

    if-ne v1, v4, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v2, v3, v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter$OnItemClickListener;->onItemClick(Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;Z)V

    .line 108
    return-void

    .line 107
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
