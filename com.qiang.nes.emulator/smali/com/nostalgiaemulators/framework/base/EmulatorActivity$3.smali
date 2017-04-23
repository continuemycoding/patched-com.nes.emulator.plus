.class Lcom/nostalgiaemulators/framework/base/EmulatorActivity$3;
.super Landroid/view/View;
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
.method constructor <init>(Lcom/nostalgiaemulators/framework/base/EmulatorActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$3;->this$0:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    .line 239
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 242
    const/4 v0, 0x1

    return v0
.end method
