.class Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder$DirInfo;
.super Ljava/lang/Object;
.source "RomsFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DirInfo"
.end annotation


# instance fields
.field public file:Ljava/io/File;

.field public level:I

.field final synthetic this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;


# direct methods
.method public constructor <init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;Ljava/io/File;I)V
    .locals 0
    .param p2, "f"    # Ljava/io/File;
    .param p3, "level"    # I

    .prologue
    .line 125
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder$DirInfo;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput p3, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder$DirInfo;->level:I

    .line 127
    iput-object p2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder$DirInfo;->file:Ljava/io/File;

    .line 128
    return-void
.end method
