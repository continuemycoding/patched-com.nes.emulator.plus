.class Lorg/acra/CrashReportDialog$3;
.super Ljava/lang/Object;
.source "CrashReportDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/acra/CrashReportDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/acra/CrashReportDialog;

.field final synthetic val$scroll:Landroid/widget/ScrollView;


# direct methods
.method constructor <init>(Lorg/acra/CrashReportDialog;Landroid/widget/ScrollView;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lorg/acra/CrashReportDialog$3;->this$0:Lorg/acra/CrashReportDialog;

    iput-object p2, p0, Lorg/acra/CrashReportDialog$3;->val$scroll:Landroid/widget/ScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 223
    iget-object v0, p0, Lorg/acra/CrashReportDialog$3;->val$scroll:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1, v1}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 224
    return-void
.end method
