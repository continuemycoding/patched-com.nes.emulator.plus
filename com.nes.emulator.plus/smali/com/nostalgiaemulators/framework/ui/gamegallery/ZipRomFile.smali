.class public Lcom/nostalgiaemulators/framework/ui/gamegallery/ZipRomFile;
.super Ljava/lang/Object;
.source "ZipRomFile.java"


# annotations
.annotation runtime Lcom/nostalgiaemulators/framework/utils/annotations/Table;
.end annotation


# instance fields
.field public _id:J
    .annotation runtime Lcom/nostalgiaemulators/framework/utils/annotations/Column;
        isPrimaryKey = true
    .end annotation
.end field

.field public games:Ljava/util/ArrayList;
    .annotation runtime Lcom/nostalgiaemulators/framework/utils/annotations/ObjectFromOtherTable;
        columnName = "zipfile_id"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;",
            ">;"
        }
    .end annotation
.end field

.field public hash:Ljava/lang/String;
    .annotation runtime Lcom/nostalgiaemulators/framework/utils/annotations/Column;
    .end annotation
.end field

.field public path:Ljava/lang/String;
    .annotation runtime Lcom/nostalgiaemulators/framework/utils/annotations/Column;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/ZipRomFile;->games:Ljava/util/ArrayList;

    .line 44
    return-void
.end method

.method public static computeZipHash(Ljava/io/File;)Ljava/lang/String;
    .locals 6
    .param p0, "zipFile"    # Ljava/io/File;

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
