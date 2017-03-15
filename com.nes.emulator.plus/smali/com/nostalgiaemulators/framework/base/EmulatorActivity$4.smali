.class Lcom/nostalgiaemulators/framework/base/EmulatorActivity$4;
.super Lcom/google/android/gms/ads/AdListener;
.source "EmulatorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/base/EmulatorActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$4;->this$0:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    .line 263
    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$4;->this$0:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    # invokes: Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->requestNewInterstitial()V
    invoke-static {v0}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->access$2(Lcom/nostalgiaemulators/framework/base/EmulatorActivity;)V

    .line 267
    return-void
.end method
