.class Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder$BiosFilter;
.super Ljava/lang/Object;
.source "RomsFinder.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BiosFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;


# direct methods
.method private constructor <init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder$BiosFilter;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder$BiosFilter;)V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder$BiosFilter;-><init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;)V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 2
    .param p1, "pathname"    # Ljava/io/File;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder$BiosFilter;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;

    # getter for: Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->biosName:Ljava/lang/String;
    invoke-static {v0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->access$0(Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder$BiosFilter;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;

    # getter for: Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->biosName:Ljava/lang/String;
    invoke-static {v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->access$0(Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    const/4 v0, 0x1

    .line 113
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
