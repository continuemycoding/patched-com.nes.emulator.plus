.class Lcom/coderplus/filepicker/FilePickerActivity$FilePickerListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "FilePickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coderplus/filepicker/FilePickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilePickerListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private checkedObjects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/coderplus/filepicker/FilePickerActivity;


# direct methods
.method public constructor <init>(Lcom/coderplus/filepicker/FilePickerActivity;Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 264
    .local p3, "objects":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    iput-object p1, p0, Lcom/coderplus/filepicker/FilePickerActivity$FilePickerListAdapter;->this$0:Lcom/coderplus/filepicker/FilePickerActivity;

    .line 265
    sget v0, Lcom/coderplus/filepicker/R$layout;->file_picker_list_item:I

    const v1, 0x1020014

    invoke-direct {p0, p2, v0, v1, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coderplus/filepicker/FilePickerActivity$FilePickerListAdapter;->checkedObjects:Ljava/util/ArrayList;

    .line 266
    iput-object p3, p0, Lcom/coderplus/filepicker/FilePickerActivity$FilePickerListAdapter;->mObjects:Ljava/util/List;

    .line 267
    return-void
.end method

.method static synthetic access$0(Lcom/coderplus/filepicker/FilePickerActivity$FilePickerListAdapter;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/coderplus/filepicker/FilePickerActivity$FilePickerListAdapter;->checkedObjects:Ljava/util/ArrayList;

    return-object v0
.end method

.method private getFileIcon(Ljava/lang/String;)I
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 344
    const-string v0, "(?si).+\\.(mp[2-3]+|wav|aiff|au|m4a|ogg|raw|flac|mid|amr|aac|alac|atrac|awb|m4p|mmf|mpc|ra|rm|tta|vox|wma)"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    sget v0, Lcom/coderplus/filepicker/R$drawable;->file_audio:I

    .line 354
    :goto_0
    return v0

    .line 346
    :cond_0
    const-string v0, "(?si).+\\.(mp[4]+|flv|wmv|webm|m4v|3gp|mkv|mov|mpe?g|rmv?|ogv)"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 347
    sget v0, Lcom/coderplus/filepicker/R$drawable;->file_video:I

    goto :goto_0

    .line 348
    :cond_1
    const-string v0, "(?si).+\\.(gif|jpe?g|png|tiff?|wmf|emf|jfif|exif|raw|bmp|ppm|pgm|pbm|pnm|webp|riff|tga|ilbm|img|pcx|ecw|sid|cd5|fits|pgf|xcf|svg|pns|jps|icon?|jp2|mng|xpm|djvu)"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 349
    sget v0, Lcom/coderplus/filepicker/R$drawable;->file_image:I

    goto :goto_0

    .line 350
    :cond_2
    const-string v0, "(?si).+\\.(zip|7z|lz?|[jrt]ar|gz|gzip|bzip|xz|cab|sfx|z|iso|bz?|rz|s7z|apk|dmg)"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 351
    sget v0, Lcom/coderplus/filepicker/R$drawable;->file_compressed:I

    goto :goto_0

    .line 352
    :cond_3
    const-string v0, "(?si).+\\.(txt|html?|json|csv|java|pas|php.+|c|cpp|bas|python|js|javascript|scala|xml|kml|css|ps|xslt?|tpl|tsv|bash|cmd|pl|pm|ps1|ps1xml|psc1|psd1|psm1|py|pyc|pyo|r|rb|sdl|sh|tcl|vbs|xpl|ada|adb|ads|clj|cls|cob|cbl|cxx|cs|csproj|d|e|el|go|h|hpp|hxx|l|m)"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 353
    sget v0, Lcom/coderplus/filepicker/R$drawable;->file_plain_text:I

    goto :goto_0

    .line 354
    :cond_4
    sget v0, Lcom/coderplus/filepicker/R$drawable;->file:I

    goto :goto_0
.end method


# virtual methods
.method public clearBoxes()V
    .locals 1

    .prologue
    .line 270
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coderplus/filepicker/FilePickerActivity$FilePickerListAdapter;->checkedObjects:Ljava/util/ArrayList;

    .line 271
    return-void
.end method

.method public getFiles()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 275
    iget-object v0, p0, Lcom/coderplus/filepicker/FilePickerActivity$FilePickerListAdapter;->checkedObjects:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 287
    const/4 v4, 0x0

    .line 289
    .local v4, "row":Landroid/view/View;
    if-nez p2, :cond_0

    .line 290
    invoke-virtual {p0}, Lcom/coderplus/filepicker/FilePickerActivity$FilePickerListAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 291
    .local v2, "inflater":Landroid/view/LayoutInflater;
    sget v6, Lcom/coderplus/filepicker/R$layout;->file_picker_list_item:I

    invoke-virtual {v2, v6, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 296
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    iget-object v6, p0, Lcom/coderplus/filepicker/FilePickerActivity$FilePickerListAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 298
    .local v3, "object":Ljava/io/File;
    sget v6, Lcom/coderplus/filepicker/R$id;->file_picker_image:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 299
    .local v1, "imageView":Landroid/widget/ImageView;
    sget v6, Lcom/coderplus/filepicker/R$id;->file_picker_text:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 300
    .local v5, "textView":Landroid/widget/TextView;
    sget v6, Lcom/coderplus/filepicker/R$id;->file_picker_checkbox:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 301
    .local v0, "checkBox":Landroid/widget/CheckBox;
    new-instance v6, Lcom/coderplus/filepicker/FilePickerActivity$FilePickerListAdapter$1;

    invoke-direct {v6, p0, v3}, Lcom/coderplus/filepicker/FilePickerActivity$FilePickerListAdapter$1;-><init>(Lcom/coderplus/filepicker/FilePickerActivity$FilePickerListAdapter;Ljava/io/File;)V

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 315
    iget-object v6, p0, Lcom/coderplus/filepicker/FilePickerActivity$FilePickerListAdapter;->this$0:Lcom/coderplus/filepicker/FilePickerActivity;

    iget-boolean v6, v6, Lcom/coderplus/filepicker/FilePickerActivity;->singleMode:Z

    if-eqz v6, :cond_1

    .line 316
    invoke-virtual {v0, v10}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 326
    :goto_1
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 327
    iget-object v6, p0, Lcom/coderplus/filepicker/FilePickerActivity$FilePickerListAdapter;->checkedObjects:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 328
    invoke-virtual {v0, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 331
    :goto_2
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 334
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/coderplus/filepicker/FilePickerActivity$FilePickerListAdapter;->getFileIcon(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 340
    :goto_3
    return-object v4

    .line 293
    .end local v0    # "checkBox":Landroid/widget/CheckBox;
    .end local v1    # "imageView":Landroid/widget/ImageView;
    .end local v3    # "object":Ljava/io/File;
    .end local v5    # "textView":Landroid/widget/TextView;
    :cond_0
    move-object v4, p2

    goto :goto_0

    .line 320
    .restart local v0    # "checkBox":Landroid/widget/CheckBox;
    .restart local v1    # "imageView":Landroid/widget/ImageView;
    .restart local v3    # "object":Ljava/io/File;
    .restart local v5    # "textView":Landroid/widget/TextView;
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/coderplus/filepicker/FilePickerActivity$FilePickerListAdapter;->this$0:Lcom/coderplus/filepicker/FilePickerActivity;

    iget v6, v6, Lcom/coderplus/filepicker/FilePickerActivity;->pickType:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_3

    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/coderplus/filepicker/FilePickerActivity$FilePickerListAdapter;->this$0:Lcom/coderplus/filepicker/FilePickerActivity;

    iget v6, v6, Lcom/coderplus/filepicker/FilePickerActivity;->pickType:I

    if-ne v6, v9, :cond_4

    .line 321
    :cond_3
    invoke-virtual {v0, v10}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_1

    .line 323
    :cond_4
    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_1

    .line 330
    :cond_5
    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    .line 337
    :cond_6
    sget v6, Lcom/coderplus/filepicker/R$drawable;->folder:I

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3
.end method

.method public toggleCheckBox(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/coderplus/filepicker/FilePickerActivity$FilePickerListAdapter;->checkedObjects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/coderplus/filepicker/FilePickerActivity$FilePickerListAdapter;->checkedObjects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 283
    :goto_0
    return-void

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/coderplus/filepicker/FilePickerActivity$FilePickerListAdapter;->checkedObjects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
