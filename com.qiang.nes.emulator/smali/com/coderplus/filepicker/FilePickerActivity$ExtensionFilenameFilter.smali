.class Lcom/coderplus/filepicker/FilePickerActivity$ExtensionFilenameFilter;
.super Ljava/lang/Object;
.source "FilePickerActivity.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coderplus/filepicker/FilePickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExtensionFilenameFilter"
.end annotation


# instance fields
.field private mExtensions:[Ljava/lang/String;

.field final synthetic this$0:Lcom/coderplus/filepicker/FilePickerActivity;


# direct methods
.method public constructor <init>(Lcom/coderplus/filepicker/FilePickerActivity;[Ljava/lang/String;)V
    .locals 0
    .param p2, "extensions"    # [Ljava/lang/String;

    .prologue
    .line 380
    iput-object p1, p0, Lcom/coderplus/filepicker/FilePickerActivity$ExtensionFilenameFilter;->this$0:Lcom/coderplus/filepicker/FilePickerActivity;

    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 382
    iput-object p2, p0, Lcom/coderplus/filepicker/FilePickerActivity$ExtensionFilenameFilter;->mExtensions:[Ljava/lang/String;

    .line 383
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 4
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 386
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 402
    :cond_0
    :goto_0
    return v1

    .line 391
    :cond_1
    iget-object v2, p0, Lcom/coderplus/filepicker/FilePickerActivity$ExtensionFilenameFilter;->mExtensions:[Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/coderplus/filepicker/FilePickerActivity$ExtensionFilenameFilter;->mExtensions:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_0

    .line 392
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/coderplus/filepicker/FilePickerActivity$ExtensionFilenameFilter;->mExtensions:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_2

    .line 399
    const/4 v1, 0x0

    goto :goto_0

    .line 393
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/coderplus/filepicker/FilePickerActivity$ExtensionFilenameFilter;->mExtensions:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 392
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
