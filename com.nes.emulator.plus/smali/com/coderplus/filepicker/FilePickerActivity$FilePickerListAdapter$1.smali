.class Lcom/coderplus/filepicker/FilePickerActivity$FilePickerListAdapter$1;
.super Ljava/lang/Object;
.source "FilePickerActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coderplus/filepicker/FilePickerActivity$FilePickerListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/coderplus/filepicker/FilePickerActivity$FilePickerListAdapter;

.field private final synthetic val$object:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/coderplus/filepicker/FilePickerActivity$FilePickerListAdapter;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/coderplus/filepicker/FilePickerActivity$FilePickerListAdapter$1;->this$1:Lcom/coderplus/filepicker/FilePickerActivity$FilePickerListAdapter;

    iput-object p2, p0, Lcom/coderplus/filepicker/FilePickerActivity$FilePickerListAdapter$1;->val$object:Ljava/io/File;

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 305
    if-eqz p2, :cond_1

    .line 306
    iget-object v0, p0, Lcom/coderplus/filepicker/FilePickerActivity$FilePickerListAdapter$1;->this$1:Lcom/coderplus/filepicker/FilePickerActivity$FilePickerListAdapter;

    # getter for: Lcom/coderplus/filepicker/FilePickerActivity$FilePickerListAdapter;->checkedObjects:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/coderplus/filepicker/FilePickerActivity$FilePickerListAdapter;->access$0(Lcom/coderplus/filepicker/FilePickerActivity$FilePickerListAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/coderplus/filepicker/FilePickerActivity$FilePickerListAdapter$1;->val$object:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/coderplus/filepicker/FilePickerActivity$FilePickerListAdapter$1;->this$1:Lcom/coderplus/filepicker/FilePickerActivity$FilePickerListAdapter;

    # getter for: Lcom/coderplus/filepicker/FilePickerActivity$FilePickerListAdapter;->checkedObjects:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/coderplus/filepicker/FilePickerActivity$FilePickerListAdapter;->access$0(Lcom/coderplus/filepicker/FilePickerActivity$FilePickerListAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/coderplus/filepicker/FilePickerActivity$FilePickerListAdapter$1;->val$object:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    iget-object v0, p0, Lcom/coderplus/filepicker/FilePickerActivity$FilePickerListAdapter$1;->this$1:Lcom/coderplus/filepicker/FilePickerActivity$FilePickerListAdapter;

    # getter for: Lcom/coderplus/filepicker/FilePickerActivity$FilePickerListAdapter;->checkedObjects:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/coderplus/filepicker/FilePickerActivity$FilePickerListAdapter;->access$0(Lcom/coderplus/filepicker/FilePickerActivity$FilePickerListAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/coderplus/filepicker/FilePickerActivity$FilePickerListAdapter$1;->val$object:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
