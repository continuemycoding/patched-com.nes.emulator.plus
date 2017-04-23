.class public abstract Lcom/qiang/framework/download/DownloadItem;
.super Ljava/lang/Object;
.source "DownloadItem.java"


# instance fields
.field public cached:Z

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qiang/framework/download/DownloadItem;->cached:Z

    return-void
.end method


# virtual methods
.method public abstract onDownloadCompleted(Ljava/lang/String;)V
.end method
