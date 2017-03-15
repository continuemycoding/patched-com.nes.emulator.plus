.class public Lcom/nostalgiaemulators/framework/base/LiteExportActivity;
.super Landroid/app/Activity;
.source "LiteExportActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.nostalgiaemulators.framework.base.LiteExportActivity"


# instance fields
.field exportTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    new-instance v0, Lcom/nostalgiaemulators/framework/base/LiteExportActivity$1;

    invoke-direct {v0, p0}, Lcom/nostalgiaemulators/framework/base/LiteExportActivity$1;-><init>(Lcom/nostalgiaemulators/framework/base/LiteExportActivity;)V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/base/LiteExportActivity;->exportTask:Landroid/os/AsyncTask;

    .line 34
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const-string v0, "com.nostalgiaemulators.framework.base.LiteExportActivity"

    const-string v1, "Start exporting"

    invoke-static {v0, v1}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/LiteExportActivity;->exportTask:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 43
    return-void
.end method
