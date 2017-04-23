.class final Lcom/db/android/api/view/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# instance fields
.field private synthetic fu:Lcom/db/android/api/view/DBVideoView;


# direct methods
.method constructor <init>(Lcom/db/android/api/view/DBVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/db/android/api/view/e;->fu:Lcom/db/android/api/view/DBVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 1

    iget-object v0, p0, Lcom/db/android/api/view/e;->fu:Lcom/db/android/api/view/DBVideoView;

    invoke-static {v0, p2}, Lcom/db/android/api/view/DBVideoView;->f(Lcom/db/android/api/view/DBVideoView;I)I

    return-void
.end method
