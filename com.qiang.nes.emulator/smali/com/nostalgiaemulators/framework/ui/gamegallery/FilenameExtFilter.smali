.class public Lcom/nostalgiaemulators/framework/ui/gamegallery/FilenameExtFilter;
.super Ljava/lang/Object;
.source "FilenameExtFilter.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field exts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field showDir:Z

.field showHiden:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "ext"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 54
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    aput-object p1, v0, v1

    invoke-direct {p0, v0, v1, v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/FilenameExtFilter;-><init>([Ljava/lang/String;ZZ)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/util/Set;ZZ)V
    .locals 1
    .param p2, "showDirs"    # Z
    .param p3, "showHiden"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .local p1, "exts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/FilenameExtFilter;->showDir:Z

    .line 29
    iput-boolean v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/FilenameExtFilter;->showHiden:Z

    .line 44
    iput-boolean p2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/FilenameExtFilter;->showDir:Z

    .line 45
    iput-boolean p3, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/FilenameExtFilter;->showHiden:Z

    .line 46
    invoke-direct {p0, p1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/FilenameExtFilter;->addDots(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/FilenameExtFilter;->exts:Ljava/util/Set;

    .line 47
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 1
    .param p1, "exts"    # [Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, v0, v0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/FilenameExtFilter;-><init>([Ljava/lang/String;ZZ)V

    .line 51
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;ZZ)V
    .locals 4
    .param p1, "exts"    # [Ljava/lang/String;
    .param p2, "showDirs"    # Z
    .param p3, "showHiden"    # Z

    .prologue
    const/4 v2, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean v2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/FilenameExtFilter;->showDir:Z

    .line 29
    iput-boolean v2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/FilenameExtFilter;->showHiden:Z

    .line 32
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 34
    .local v1, "tmp":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    array-length v3, p1

    :goto_0
    if-lt v2, v3, :cond_0

    .line 37
    iput-boolean p2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/FilenameExtFilter;->showDir:Z

    .line 38
    iput-boolean p3, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/FilenameExtFilter;->showHiden:Z

    .line 39
    invoke-direct {p0, v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/FilenameExtFilter;->addDots(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/FilenameExtFilter;->exts:Ljava/util/Set;

    .line 40
    return-void

    .line 34
    :cond_0
    aget-object v0, p1, v2

    .line 35
    .local v0, "ext":Ljava/lang/String;
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 34
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private addDots(Ljava/util/Set;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "exts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 60
    .local v1, "temp":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 64
    return-object v1

    .line 60
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 61
    .local v0, "ext":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 7
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 68
    iget-boolean v5, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/FilenameExtFilter;->showHiden:Z

    if-nez v5, :cond_1

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_1

    .line 86
    :cond_0
    :goto_0
    return v3

    .line 71
    :cond_1
    iget-boolean v5, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/FilenameExtFilter;->showDir:Z

    if-eqz v5, :cond_2

    .line 72
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 74
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    move v3, v4

    .line 75
    goto :goto_0

    .line 78
    .end local v1    # "f":Ljava/io/File;
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, "fnLower":Ljava/lang/String;
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/FilenameExtFilter;->exts:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 81
    .local v0, "ext":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v3, v4

    .line 82
    goto :goto_0
.end method
