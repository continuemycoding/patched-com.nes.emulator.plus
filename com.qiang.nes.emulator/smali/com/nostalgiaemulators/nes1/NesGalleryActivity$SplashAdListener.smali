.class Lcom/nostalgiaemulators/nes1/NesGalleryActivity$SplashAdListener;
.super Lcom/db/android/api/listener/AdListener;
.source "NesGalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostalgiaemulators/nes1/NesGalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SplashAdListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nostalgiaemulators/nes1/NesGalleryActivity;


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/nes1/NesGalleryActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nostalgiaemulators/nes1/NesGalleryActivity;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/nostalgiaemulators/nes1/NesGalleryActivity$SplashAdListener;->this$0:Lcom/nostalgiaemulators/nes1/NesGalleryActivity;

    invoke-direct {p0}, Lcom/db/android/api/listener/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdCloseed()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/nostalgiaemulators/nes1/NesGalleryActivity$SplashAdListener;->this$0:Lcom/nostalgiaemulators/nes1/NesGalleryActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/nostalgiaemulators/nes1/NesGalleryActivity;->isAdOpening:Z

    .line 72
    iget-object v0, p0, Lcom/nostalgiaemulators/nes1/NesGalleryActivity$SplashAdListener;->this$0:Lcom/nostalgiaemulators/nes1/NesGalleryActivity;

    invoke-virtual {v0}, Lcom/nostalgiaemulators/nes1/NesGalleryActivity;->startNesEmulatorActivity()V

    .line 73
    return-void
.end method

.method public onAdOpened(Z)V
    .locals 2
    .param p1, "isSuccess"    # Z

    .prologue
    .line 62
    if-eqz p1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/nostalgiaemulators/nes1/NesGalleryActivity$SplashAdListener;->this$0:Lcom/nostalgiaemulators/nes1/NesGalleryActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/nostalgiaemulators/nes1/NesGalleryActivity;->isAdOpening:Z

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/nostalgiaemulators/nes1/NesGalleryActivity$SplashAdListener;->this$0:Lcom/nostalgiaemulators/nes1/NesGalleryActivity;

    invoke-virtual {v0}, Lcom/nostalgiaemulators/nes1/NesGalleryActivity;->startNesEmulatorActivity()V

    goto :goto_0
.end method
