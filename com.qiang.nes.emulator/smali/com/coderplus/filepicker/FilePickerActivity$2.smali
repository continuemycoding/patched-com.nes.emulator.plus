.class Lcom/coderplus/filepicker/FilePickerActivity$2;
.super Ljava/lang/Object;
.source "FilePickerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coderplus/filepicker/FilePickerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coderplus/filepicker/FilePickerActivity;


# direct methods
.method constructor <init>(Lcom/coderplus/filepicker/FilePickerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/coderplus/filepicker/FilePickerActivity$2;->this$0:Lcom/coderplus/filepicker/FilePickerActivity;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x1

    .line 154
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 156
    .local v0, "newFile":Ljava/io/File;
    iget-object v1, p0, Lcom/coderplus/filepicker/FilePickerActivity$2;->this$0:Lcom/coderplus/filepicker/FilePickerActivity;

    iget v1, v1, Lcom/coderplus/filepicker/FilePickerActivity;->pickType:I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/coderplus/filepicker/FilePickerActivity$2;->this$0:Lcom/coderplus/filepicker/FilePickerActivity;

    iget v1, v1, Lcom/coderplus/filepicker/FilePickerActivity;->pickType:I

    if-ne v1, v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/coderplus/filepicker/FilePickerActivity$2;->this$0:Lcom/coderplus/filepicker/FilePickerActivity;

    iget v1, v1, Lcom/coderplus/filepicker/FilePickerActivity;->pickType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 157
    :cond_1
    iget-object v1, p0, Lcom/coderplus/filepicker/FilePickerActivity$2;->this$0:Lcom/coderplus/filepicker/FilePickerActivity;

    iget-object v1, v1, Lcom/coderplus/filepicker/FilePickerActivity;->mAdapter:Lcom/coderplus/filepicker/FilePickerActivity$FilePickerListAdapter;

    invoke-virtual {v1, v0}, Lcom/coderplus/filepicker/FilePickerActivity$FilePickerListAdapter;->toggleCheckBox(Ljava/io/File;)V

    .line 158
    iget-object v1, p0, Lcom/coderplus/filepicker/FilePickerActivity$2;->this$0:Lcom/coderplus/filepicker/FilePickerActivity;

    iget-boolean v1, v1, Lcom/coderplus/filepicker/FilePickerActivity;->singleMode:Z

    if-eqz v1, :cond_3

    .line 159
    iget-object v1, p0, Lcom/coderplus/filepicker/FilePickerActivity$2;->this$0:Lcom/coderplus/filepicker/FilePickerActivity;

    # invokes: Lcom/coderplus/filepicker/FilePickerActivity;->returnResults()V
    invoke-static {v1}, Lcom/coderplus/filepicker/FilePickerActivity;->access$0(Lcom/coderplus/filepicker/FilePickerActivity;)V

    .line 169
    :cond_2
    :goto_0
    return v3

    .line 162
    :cond_3
    iget-object v1, p0, Lcom/coderplus/filepicker/FilePickerActivity$2;->this$0:Lcom/coderplus/filepicker/FilePickerActivity;

    iget-object v1, v1, Lcom/coderplus/filepicker/FilePickerActivity;->mAdapter:Lcom/coderplus/filepicker/FilePickerActivity$FilePickerListAdapter;

    invoke-virtual {v1}, Lcom/coderplus/filepicker/FilePickerActivity$FilePickerListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 163
    :cond_4
    iget-object v1, p0, Lcom/coderplus/filepicker/FilePickerActivity$2;->this$0:Lcom/coderplus/filepicker/FilePickerActivity;

    iget v1, v1, Lcom/coderplus/filepicker/FilePickerActivity;->pickType:I

    if-ne v1, v3, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 165
    iget-object v1, p0, Lcom/coderplus/filepicker/FilePickerActivity$2;->this$0:Lcom/coderplus/filepicker/FilePickerActivity;

    iput-object v0, v1, Lcom/coderplus/filepicker/FilePickerActivity;->mDirectory:Ljava/io/File;

    .line 166
    iget-object v1, p0, Lcom/coderplus/filepicker/FilePickerActivity$2;->this$0:Lcom/coderplus/filepicker/FilePickerActivity;

    invoke-virtual {v1}, Lcom/coderplus/filepicker/FilePickerActivity;->refreshFilesList()V

    goto :goto_0
.end method
