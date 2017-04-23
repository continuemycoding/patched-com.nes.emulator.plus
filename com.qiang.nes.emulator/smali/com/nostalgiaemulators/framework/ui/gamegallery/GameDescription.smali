.class public Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;
.super Ljava/lang/Object;
.source "GameDescription.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation runtime Lcom/nostalgiaemulators/framework/utils/annotations/Table;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x39d38465e94292c6L


# instance fields
.field public _id:J
    .annotation runtime Lcom/nostalgiaemulators/framework/utils/annotations/Column;
        isPrimaryKey = true
    .end annotation
.end field

.field public checksum:Ljava/lang/String;
    .annotation runtime Lcom/nostalgiaemulators/framework/utils/annotations/Column;
        hasIndex = true
    .end annotation
.end field

.field private cleanNameCache:Ljava/lang/String;

.field public inserTime:J
    .annotation runtime Lcom/nostalgiaemulators/framework/utils/annotations/Column;
        hasIndex = true
    .end annotation
.end field

.field public lastGameTime:J
    .annotation runtime Lcom/nostalgiaemulators/framework/utils/annotations/Column;
        hasIndex = true
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/nostalgiaemulators/framework/utils/annotations/Column;
        hasIndex = true
    .end annotation
.end field

.field public path:Ljava/lang/String;
    .annotation runtime Lcom/nostalgiaemulators/framework/utils/annotations/Column;
    .end annotation
.end field

.field public runCount:I
    .annotation runtime Lcom/nostalgiaemulators/framework/utils/annotations/Column;
    .end annotation
.end field

.field private sortNameCache:Ljava/lang/String;

.field public zipfile_id:J
    .annotation runtime Lcom/nostalgiaemulators/framework/utils/annotations/Column;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->name:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->path:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->checksum:Ljava/lang/String;

    .line 49
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->zipfile_id:J

    .line 52
    iput-wide v4, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->inserTime:J

    .line 55
    iput-wide v4, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->lastGameTime:J

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->runCount:I

    .line 90
    iput-object v2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->cleanNameCache:Ljava/lang/String;

    .line 109
    iput-object v2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->sortNameCache:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 64
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 65
    invoke-static {p1}, Lcom/nostalgiaemulators/framework/utils/Utils;->getMD5Checksum(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->checksum:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 6
    .param p1, "file"    # Ljava/io/File;
    .param p2, "checksum"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->name:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->path:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->checksum:Ljava/lang/String;

    .line 49
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->zipfile_id:J

    .line 52
    iput-wide v4, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->inserTime:J

    .line 55
    iput-wide v4, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->lastGameTime:J

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->runCount:I

    .line 90
    iput-object v2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->cleanNameCache:Ljava/lang/String;

    .line 109
    iput-object v2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->sortNameCache:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->name:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->path:Ljava/lang/String;

    .line 71
    iput-object p2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->checksum:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "checksum"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->name:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->path:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->checksum:Ljava/lang/String;

    .line 49
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->zipfile_id:J

    .line 52
    iput-wide v4, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->inserTime:J

    .line 55
    iput-wide v4, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->lastGameTime:J

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->runCount:I

    .line 90
    iput-object v2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->cleanNameCache:Ljava/lang/String;

    .line 109
    iput-object v2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->sortNameCache:Ljava/lang/String;

    .line 75
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->name:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->path:Ljava/lang/String;

    .line 77
    iput-object p3, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->checksum:Ljava/lang/String;

    .line 78
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;)I
    .locals 2
    .param p1, "another"    # Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->checksum:Ljava/lang/String;

    iget-object v1, p1, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->checksum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    invoke-virtual {p0, p1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->compareTo(Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 128
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    if-nez v2, :cond_1

    .line 133
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 132
    check-cast v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    .line 133
    .local v0, "gd":Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;
    iget-object v2, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->checksum:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->checksum:Ljava/lang/String;

    iget-object v2, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->checksum:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getCleanName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 94
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->cleanNameCache:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 95
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->name:Ljava/lang/String;

    invoke-static {v2}, Lcom/nostalgiaemulators/framework/utils/Utils;->removeExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, "name":Ljava/lang/String;
    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 98
    .local v0, "idx":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 99
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->cleanNameCache:Ljava/lang/String;

    .line 106
    .end local v0    # "idx":I
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->cleanNameCache:Ljava/lang/String;

    return-object v2

    .line 102
    .restart local v0    # "idx":I
    .restart local v1    # "name":Ljava/lang/String;
    :cond_1
    iput-object v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->cleanNameCache:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSortName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->sortNameCache:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->getCleanName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->sortNameCache:Ljava/lang/String;

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->sortNameCache:Ljava/lang/String;

    return-object v0
.end method

.method public isInArchive()Z
    .locals 4

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->zipfile_id:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->name:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->checksum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " zipId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->zipfile_id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
