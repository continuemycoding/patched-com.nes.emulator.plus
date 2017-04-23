.class Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter$3;
.super Ljava/lang/Object;
.source "GalleryAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter$3;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;)I
    .locals 8
    .param p1, "lhs"    # Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;
    .param p2, "rhs"    # Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    .prologue
    const-wide/16 v6, 0x0

    .line 229
    iget-wide v2, p1, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->lastGameTime:J

    iget-wide v4, p2, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->lastGameTime:J

    sub-long v0, v2, v4

    .line 231
    .local v0, "dif":J
    cmp-long v2, v0, v6

    if-nez v2, :cond_0

    .line 232
    const/4 v2, 0x0

    .line 238
    :goto_0
    return v2

    .line 234
    :cond_0
    cmp-long v2, v0, v6

    if-gez v2, :cond_1

    .line 235
    const/4 v2, 0x1

    goto :goto_0

    .line 238
    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    check-cast p2, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    invoke-virtual {p0, p1, p2}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter$3;->compare(Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;)I

    move-result v0

    return v0
.end method
