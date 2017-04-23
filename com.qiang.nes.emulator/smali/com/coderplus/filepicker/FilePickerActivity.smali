.class public Lcom/coderplus/filepicker/FilePickerActivity;
.super Landroid/app/ListActivity;
.source "FilePickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coderplus/filepicker/FilePickerActivity$ExtensionFilenameFilter;,
        Lcom/coderplus/filepicker/FilePickerActivity$FileComparator;,
        Lcom/coderplus/filepicker/FilePickerActivity$FilePickerListAdapter;,
        Lcom/coderplus/filepicker/FilePickerActivity$MimeTypes;
    }
.end annotation


# static fields
.field private static final DEFAULT_INITIAL_DIRECTORY:Ljava/lang/String; = "/"

.field public static final EXTRA_ACCEPTED_FILE_EXTENSIONS:Ljava/lang/String; = "accepted_file_extensions"

.field public static final EXTRA_FILE_PATH:Ljava/lang/String; = "file_path"

.field public static final EXTRA_SELECT_DIRECTORIES_ONLY:Ljava/lang/String; = "only_directories"

.field public static final EXTRA_SELECT_FILES_ONLY:Ljava/lang/String; = "only_files"

.field public static final EXTRA_SELECT_MULTIPLE:Ljava/lang/String; = "select_multiple"

.field public static final EXTRA_SHOW_HIDDEN_FILES:Ljava/lang/String; = "show_hidden_files"


# instance fields
.field protected acceptedFileExtensions:[Ljava/lang/String;

.field protected mAdapter:Lcom/coderplus/filepicker/FilePickerActivity$FilePickerListAdapter;

.field protected mDirectory:Ljava/io/File;

.field protected mFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field protected mShowHiddenFiles:Z

.field protected pickType:I

.field protected singleMode:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coderplus/filepicker/FilePickerActivity;->singleMode:Z

    .line 91
    iput v1, p0, Lcom/coderplus/filepicker/FilePickerActivity;->pickType:I

    .line 93
    iput-boolean v1, p0, Lcom/coderplus/filepicker/FilePickerActivity;->mShowHiddenFiles:Z

    .line 48
    return-void
.end method

.method static synthetic access$0(Lcom/coderplus/filepicker/FilePickerActivity;)V
    .locals 0

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/coderplus/filepicker/FilePickerActivity;->returnResults()V

    return-void
.end method

.method private returnResults()V
    .locals 3

    .prologue
    .line 175
    iget-object v1, p0, Lcom/coderplus/filepicker/FilePickerActivity;->mAdapter:Lcom/coderplus/filepicker/FilePickerActivity$FilePickerListAdapter;

    invoke-virtual {v1}, Lcom/coderplus/filepicker/FilePickerActivity$FilePickerListAdapter;->getFiles()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 176
    const-string v1, "Nothing Selected"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 183
    :goto_0
    return-void

    .line 179
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 180
    .local v0, "extra":Landroid/content/Intent;
    const-string v1, "file_path"

    iget-object v2, p0, Lcom/coderplus/filepicker/FilePickerActivity;->mAdapter:Lcom/coderplus/filepicker/FilePickerActivity$FilePickerListAdapter;

    invoke-virtual {v2}, Lcom/coderplus/filepicker/FilePickerActivity$FilePickerListAdapter;->getFiles()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 181
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/coderplus/filepicker/FilePickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 182
    invoke-virtual {p0}, Lcom/coderplus/filepicker/FilePickerActivity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/coderplus/filepicker/FilePickerActivity;->mDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/coderplus/filepicker/FilePickerActivity;->mDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/coderplus/filepicker/FilePickerActivity;->mDirectory:Ljava/io/File;

    .line 230
    invoke-virtual {p0}, Lcom/coderplus/filepicker/FilePickerActivity;->refreshFilesList()V

    .line 235
    :goto_0
    return-void

    .line 234
    :cond_0
    invoke-virtual {p0}, Lcom/coderplus/filepicker/FilePickerActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 98
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    sget v4, Lcom/coderplus/filepicker/R$layout;->list_holder:I

    invoke-virtual {p0, v4}, Lcom/coderplus/filepicker/FilePickerActivity;->setContentView(I)V

    .line 101
    invoke-virtual {p0}, Lcom/coderplus/filepicker/FilePickerActivity;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 102
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/coderplus/filepicker/FilePickerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 103
    .local v2, "inflator":Landroid/view/LayoutInflater;
    sget v4, Lcom/coderplus/filepicker/R$layout;->file_picker_empty_view:I

    const/4 v7, 0x0

    invoke-virtual {v2, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 104
    .local v1, "emptyView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/coderplus/filepicker/FilePickerActivity;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 105
    invoke-virtual {p0}, Lcom/coderplus/filepicker/FilePickerActivity;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 109
    new-instance v4, Ljava/io/File;

    const-string v7, "/"

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/coderplus/filepicker/FilePickerActivity;->mDirectory:Ljava/io/File;

    .line 112
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/coderplus/filepicker/FilePickerActivity;->mFiles:Ljava/util/ArrayList;

    .line 115
    new-instance v4, Lcom/coderplus/filepicker/FilePickerActivity$FilePickerListAdapter;

    iget-object v7, p0, Lcom/coderplus/filepicker/FilePickerActivity;->mFiles:Ljava/util/ArrayList;

    invoke-direct {v4, p0, p0, v7}, Lcom/coderplus/filepicker/FilePickerActivity$FilePickerListAdapter;-><init>(Lcom/coderplus/filepicker/FilePickerActivity;Landroid/content/Context;Ljava/util/List;)V

    iput-object v4, p0, Lcom/coderplus/filepicker/FilePickerActivity;->mAdapter:Lcom/coderplus/filepicker/FilePickerActivity$FilePickerListAdapter;

    .line 116
    iget-object v4, p0, Lcom/coderplus/filepicker/FilePickerActivity;->mAdapter:Lcom/coderplus/filepicker/FilePickerActivity$FilePickerListAdapter;

    invoke-virtual {p0, v4}, Lcom/coderplus/filepicker/FilePickerActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 119
    new-array v4, v5, [Ljava/lang/String;

    iput-object v4, p0, Lcom/coderplus/filepicker/FilePickerActivity;->acceptedFileExtensions:[Ljava/lang/String;

    .line 122
    invoke-virtual {p0}, Lcom/coderplus/filepicker/FilePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v7, "file_path"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 123
    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Lcom/coderplus/filepicker/FilePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "file_path"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/coderplus/filepicker/FilePickerActivity;->mDirectory:Ljava/io/File;

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/coderplus/filepicker/FilePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v7, "show_hidden_files"

    invoke-virtual {v4, v7, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/coderplus/filepicker/FilePickerActivity;->mShowHiddenFiles:Z

    .line 127
    invoke-virtual {p0}, Lcom/coderplus/filepicker/FilePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v7, "accepted_file_extensions"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 128
    invoke-virtual {p0}, Lcom/coderplus/filepicker/FilePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v7, "accepted_file_extensions"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 129
    .local v0, "collection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/coderplus/filepicker/FilePickerActivity;->acceptedFileExtensions:[Ljava/lang/String;

    .line 133
    .end local v0    # "collection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {p0}, Lcom/coderplus/filepicker/FilePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v7, "select_multiple"

    invoke-virtual {v4, v7, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/coderplus/filepicker/FilePickerActivity;->singleMode:Z

    .line 135
    invoke-virtual {p0}, Lcom/coderplus/filepicker/FilePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v7, "only_files"

    invoke-virtual {v4, v7, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 136
    iput v6, p0, Lcom/coderplus/filepicker/FilePickerActivity;->pickType:I

    .line 139
    :cond_2
    invoke-virtual {p0}, Lcom/coderplus/filepicker/FilePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v7, "only_directories"

    invoke-virtual {v4, v7, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 140
    iput v9, p0, Lcom/coderplus/filepicker/FilePickerActivity;->pickType:I

    .line 142
    :cond_3
    sget v4, Lcom/coderplus/filepicker/R$id;->ok:I

    invoke-virtual {p0, v4}, Lcom/coderplus/filepicker/FilePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 143
    .local v3, "ok":Landroid/widget/Button;
    new-instance v4, Lcom/coderplus/filepicker/FilePickerActivity$1;

    invoke-direct {v4, p0}, Lcom/coderplus/filepicker/FilePickerActivity$1;-><init>(Lcom/coderplus/filepicker/FilePickerActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-boolean v4, p0, Lcom/coderplus/filepicker/FilePickerActivity;->singleMode:Z

    if-eqz v4, :cond_4

    .line 149
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 151
    :cond_4
    invoke-virtual {p0}, Lcom/coderplus/filepicker/FilePickerActivity;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->setLongClickable(Z)V

    .line 152
    invoke-virtual {p0}, Lcom/coderplus/filepicker/FilePickerActivity;->getListView()Landroid/widget/ListView;

    move-result-object v4

    new-instance v5, Lcom/coderplus/filepicker/FilePickerActivity$2;

    invoke-direct {v5, p0}, Lcom/coderplus/filepicker/FilePickerActivity$2;-><init>(Lcom/coderplus/filepicker/FilePickerActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 172
    return-void

    .end local v3    # "ok":Landroid/widget/Button;
    :cond_5
    move v4, v6

    .line 133
    goto :goto_0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 240
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 242
    .local v0, "newFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 244
    iget v1, p0, Lcom/coderplus/filepicker/FilePickerActivity;->pickType:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/coderplus/filepicker/FilePickerActivity;->pickType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 245
    :cond_0
    iget-object v1, p0, Lcom/coderplus/filepicker/FilePickerActivity;->mAdapter:Lcom/coderplus/filepicker/FilePickerActivity$FilePickerListAdapter;

    invoke-virtual {v1, v0}, Lcom/coderplus/filepicker/FilePickerActivity$FilePickerListAdapter;->toggleCheckBox(Ljava/io/File;)V

    .line 246
    iget-boolean v1, p0, Lcom/coderplus/filepicker/FilePickerActivity;->singleMode:Z

    if-eqz v1, :cond_1

    .line 247
    invoke-direct {p0}, Lcom/coderplus/filepicker/FilePickerActivity;->returnResults()V

    .line 257
    :cond_1
    :goto_0
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 258
    return-void

    .line 252
    :cond_2
    iput-object v0, p0, Lcom/coderplus/filepicker/FilePickerActivity;->mDirectory:Ljava/io/File;

    .line 254
    invoke-virtual {p0}, Lcom/coderplus/filepicker/FilePickerActivity;->refreshFilesList()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/coderplus/filepicker/FilePickerActivity;->refreshFilesList()V

    .line 187
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 188
    return-void
.end method

.method protected refreshFilesList()V
    .locals 7

    .prologue
    .line 195
    iget-object v3, p0, Lcom/coderplus/filepicker/FilePickerActivity;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 197
    iget-object v3, p0, Lcom/coderplus/filepicker/FilePickerActivity;->mAdapter:Lcom/coderplus/filepicker/FilePickerActivity$FilePickerListAdapter;

    invoke-virtual {v3}, Lcom/coderplus/filepicker/FilePickerActivity$FilePickerListAdapter;->clearBoxes()V

    .line 200
    iget-object v3, p0, Lcom/coderplus/filepicker/FilePickerActivity;->acceptedFileExtensions:[Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/coderplus/filepicker/FilePickerActivity;->acceptedFileExtensions:[Ljava/lang/String;

    array-length v3, v3

    if-lez v3, :cond_1

    .line 202
    new-instance v2, Lcom/coderplus/filepicker/FilePickerActivity$ExtensionFilenameFilter;

    iget-object v3, p0, Lcom/coderplus/filepicker/FilePickerActivity;->acceptedFileExtensions:[Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Lcom/coderplus/filepicker/FilePickerActivity$ExtensionFilenameFilter;-><init>(Lcom/coderplus/filepicker/FilePickerActivity;[Ljava/lang/String;)V

    .line 203
    .local v2, "filter":Lcom/coderplus/filepicker/FilePickerActivity$ExtensionFilenameFilter;
    iget-object v3, p0, Lcom/coderplus/filepicker/FilePickerActivity;->mDirectory:Ljava/io/File;

    invoke-virtual {v3, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 210
    .end local v2    # "filter":Lcom/coderplus/filepicker/FilePickerActivity$ExtensionFilenameFilter;
    .local v1, "files":[Ljava/io/File;
    :goto_0
    if-eqz v1, :cond_0

    array-length v3, v1

    if-lez v3, :cond_0

    .line 211
    array-length v4, v1

    const/4 v3, 0x0

    :goto_1
    if-lt v3, v4, :cond_2

    .line 220
    iget-object v3, p0, Lcom/coderplus/filepicker/FilePickerActivity;->mFiles:Ljava/util/ArrayList;

    new-instance v4, Lcom/coderplus/filepicker/FilePickerActivity$FileComparator;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/coderplus/filepicker/FilePickerActivity$FileComparator;-><init>(Lcom/coderplus/filepicker/FilePickerActivity;Lcom/coderplus/filepicker/FilePickerActivity$FileComparator;)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 222
    :cond_0
    iget-object v3, p0, Lcom/coderplus/filepicker/FilePickerActivity;->mAdapter:Lcom/coderplus/filepicker/FilePickerActivity$FilePickerListAdapter;

    invoke-virtual {v3}, Lcom/coderplus/filepicker/FilePickerActivity$FilePickerListAdapter;->notifyDataSetChanged()V

    .line 223
    return-void

    .line 206
    .end local v1    # "files":[Ljava/io/File;
    :cond_1
    iget-object v3, p0, Lcom/coderplus/filepicker/FilePickerActivity;->mDirectory:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .restart local v1    # "files":[Ljava/io/File;
    goto :goto_0

    .line 211
    :cond_2
    aget-object v0, v1, v3

    .line 212
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isHidden()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lcom/coderplus/filepicker/FilePickerActivity;->mShowHiddenFiles:Z

    if-eqz v5, :cond_4

    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_5

    iget v5, p0, Lcom/coderplus/filepicker/FilePickerActivity;->pickType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_5

    .line 211
    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 217
    :cond_5
    iget-object v5, p0, Lcom/coderplus/filepicker/FilePickerActivity;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method
