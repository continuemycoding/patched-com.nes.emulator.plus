.class Lcom/coderplus/filepicker/FilePickerActivity$FileComparator;
.super Ljava/lang/Object;
.source "FilePickerActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coderplus/filepicker/FilePickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coderplus/filepicker/FilePickerActivity;


# direct methods
.method private constructor <init>(Lcom/coderplus/filepicker/FilePickerActivity;)V
    .locals 0

    .prologue
    .line 359
    iput-object p1, p0, Lcom/coderplus/filepicker/FilePickerActivity$FileComparator;->this$0:Lcom/coderplus/filepicker/FilePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coderplus/filepicker/FilePickerActivity;Lcom/coderplus/filepicker/FilePickerActivity$FileComparator;)V
    .locals 0

    .prologue
    .line 359
    invoke-direct {p0, p1}, Lcom/coderplus/filepicker/FilePickerActivity$FileComparator;-><init>(Lcom/coderplus/filepicker/FilePickerActivity;)V

    return-void
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .locals 2
    .param p1, "f1"    # Ljava/io/File;
    .param p2, "f2"    # Ljava/io/File;

    .prologue
    .line 361
    if-ne p1, p2, :cond_0

    .line 362
    const/4 v0, 0x0

    .line 373
    :goto_0
    return v0

    .line 364
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 366
    const/4 v0, -0x1

    goto :goto_0

    .line 368
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 370
    const/4 v0, 0x1

    goto :goto_0

    .line 373
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/coderplus/filepicker/FilePickerActivity$FileComparator;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method
