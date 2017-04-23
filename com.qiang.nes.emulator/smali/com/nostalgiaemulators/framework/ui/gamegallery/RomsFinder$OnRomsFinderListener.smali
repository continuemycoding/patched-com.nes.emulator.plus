.class public interface abstract Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder$OnRomsFinderListener;
.super Ljava/lang/Object;
.source "RomsFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnRomsFinderListener"
.end annotation


# virtual methods
.method public abstract onRomsFinderCancel(Z)V
.end method

.method public abstract onRomsFinderEnd(Z)V
.end method

.method public abstract onRomsFinderFoundFile(Ljava/lang/String;)V
.end method

.method public abstract onRomsFinderFoundGamesInCache(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onRomsFinderFoundZipEntry(Ljava/lang/String;I)V
.end method

.method public abstract onRomsFinderNewGames(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onRomsFinderStart(Z)V
.end method

.method public abstract onRomsFinderZipPartStart(I)V
.end method
