.class Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$5;
.super Ljava/lang/Object;
.source "GalleryActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$5;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 339
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 335
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 329
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$5;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->setFilter(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->access$2(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;Ljava/lang/String;)V

    .line 330
    return-void
.end method
