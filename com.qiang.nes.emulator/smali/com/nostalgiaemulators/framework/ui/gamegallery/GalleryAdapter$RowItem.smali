.class public Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter$RowItem;
.super Ljava/lang/Object;
.source "GalleryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RowItem"
.end annotation


# instance fields
.field firstLetter:C

.field game:Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

.field final synthetic this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;

.field type:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter$ROW_TYPE;


# direct methods
.method public constructor <init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;)V
    .locals 1

    .prologue
    .line 54
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter$RowItem;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    sget-object v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter$ROW_TYPE;->NORMAL:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter$ROW_TYPE;

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter$RowItem;->type:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter$ROW_TYPE;

    return-void
.end method
