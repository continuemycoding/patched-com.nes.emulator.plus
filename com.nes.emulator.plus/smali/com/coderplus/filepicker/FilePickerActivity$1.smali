.class Lcom/coderplus/filepicker/FilePickerActivity$1;
.super Ljava/lang/Object;
.source "FilePickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coderplus/filepicker/FilePickerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coderplus/filepicker/FilePickerActivity;


# direct methods
.method constructor <init>(Lcom/coderplus/filepicker/FilePickerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/coderplus/filepicker/FilePickerActivity$1;->this$0:Lcom/coderplus/filepicker/FilePickerActivity;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/coderplus/filepicker/FilePickerActivity$1;->this$0:Lcom/coderplus/filepicker/FilePickerActivity;

    # invokes: Lcom/coderplus/filepicker/FilePickerActivity;->returnResults()V
    invoke-static {v0}, Lcom/coderplus/filepicker/FilePickerActivity;->access$0(Lcom/coderplus/filepicker/FilePickerActivity;)V

    .line 146
    return-void
.end method
