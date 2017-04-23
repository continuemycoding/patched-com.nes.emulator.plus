.class public Lcom/db/android/api/view/DBVideoView;
.super Landroid/view/SurfaceView;

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;


# static fields
.field private static STATE_ERROR:I = -0x1

.field private static STATE_IDLE:I = 0x0

.field private static STATE_PAUSED:I = 0x4

.field private static STATE_PLAYING:I = 0x3

.field private static eM:I = 0x1

.field private static eN:I = 0x2

.field private static eO:I = 0x5

.field private static eP:I = 0x6

.field private static eQ:I = 0x7


# instance fields
.field private TAG:Ljava/lang/String;

.field private eK:Landroid/net/Uri;

.field private eL:I

.field private eR:I

.field private eS:I

.field private final eT:I

.field private final eU:I

.field private eV:Landroid/view/SurfaceHolder;

.field private eW:Landroid/media/MediaPlayer;

.field private eX:I

.field private eY:I

.field private eZ:I

.field private fa:I

.field private fb:Landroid/widget/MediaController;

.field private fc:Landroid/media/MediaPlayer$OnCompletionListener;

.field private fd:Lcom/db/android/api/bitmap/core/k;

.field private fe:I

.field private ff:Z

.field private fg:I

.field private fh:Z

.field private fi:Z

.field private fj:Z

.field private fk:Z

.field protected fl:I

.field private fm:Z

.field private fn:Z

.field private fo:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private fp:Landroid/media/MediaPlayer$OnPreparedListener;

.field private fq:Landroid/media/MediaPlayer$OnCompletionListener;

.field private fr:Landroid/media/MediaPlayer$OnErrorListener;

.field private fs:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private ft:Landroid/view/SurfaceHolder$Callback;

.field private mContext:Landroid/content/Context;

.field private mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const-string v0, "VideoView"

    iput-object v0, p0, Lcom/db/android/api/view/DBVideoView;->TAG:Ljava/lang/String;

    iput v1, p0, Lcom/db/android/api/view/DBVideoView;->eR:I

    iput v1, p0, Lcom/db/android/api/view/DBVideoView;->eS:I

    iput-object v2, p0, Lcom/db/android/api/view/DBVideoView;->eV:Landroid/view/SurfaceHolder;

    iput-object v2, p0, Lcom/db/android/api/view/DBVideoView;->eW:Landroid/media/MediaPlayer;

    iput v1, p0, Lcom/db/android/api/view/DBVideoView;->fl:I

    iput-boolean v1, p0, Lcom/db/android/api/view/DBVideoView;->fm:Z

    iput-boolean v1, p0, Lcom/db/android/api/view/DBVideoView;->fn:Z

    new-instance v0, Lcom/db/android/api/view/a;

    invoke-direct {v0, p0}, Lcom/db/android/api/view/a;-><init>(Lcom/db/android/api/view/DBVideoView;)V

    iput-object v0, p0, Lcom/db/android/api/view/DBVideoView;->fo:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    new-instance v0, Lcom/db/android/api/view/b;

    invoke-direct {v0, p0}, Lcom/db/android/api/view/b;-><init>(Lcom/db/android/api/view/DBVideoView;)V

    iput-object v0, p0, Lcom/db/android/api/view/DBVideoView;->fp:Landroid/media/MediaPlayer$OnPreparedListener;

    new-instance v0, Lcom/db/android/api/view/c;

    invoke-direct {v0, p0}, Lcom/db/android/api/view/c;-><init>(Lcom/db/android/api/view/DBVideoView;)V

    iput-object v0, p0, Lcom/db/android/api/view/DBVideoView;->fq:Landroid/media/MediaPlayer$OnCompletionListener;

    new-instance v0, Lcom/db/android/api/view/d;

    invoke-direct {v0, p0}, Lcom/db/android/api/view/d;-><init>(Lcom/db/android/api/view/DBVideoView;)V

    iput-object v0, p0, Lcom/db/android/api/view/DBVideoView;->fr:Landroid/media/MediaPlayer$OnErrorListener;

    new-instance v0, Lcom/db/android/api/view/e;

    invoke-direct {v0, p0}, Lcom/db/android/api/view/e;-><init>(Lcom/db/android/api/view/DBVideoView;)V

    iput-object v0, p0, Lcom/db/android/api/view/DBVideoView;->fs:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    new-instance v0, Lcom/db/android/api/view/f;

    invoke-direct {v0, p0}, Lcom/db/android/api/view/f;-><init>(Lcom/db/android/api/view/DBVideoView;)V

    iput-object v0, p0, Lcom/db/android/api/view/DBVideoView;->ft:Landroid/view/SurfaceHolder$Callback;

    iput-object p1, p0, Lcom/db/android/api/view/DBVideoView;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/db/android/api/view/DBVideoView;->aV()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/db/android/api/view/DBVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/db/android/api/view/DBVideoView;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/db/android/api/view/DBVideoView;->aV()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, "VideoView"

    iput-object v0, p0, Lcom/db/android/api/view/DBVideoView;->TAG:Ljava/lang/String;

    iput v1, p0, Lcom/db/android/api/view/DBVideoView;->eR:I

    iput v1, p0, Lcom/db/android/api/view/DBVideoView;->eS:I

    iput-object v2, p0, Lcom/db/android/api/view/DBVideoView;->eV:Landroid/view/SurfaceHolder;

    iput-object v2, p0, Lcom/db/android/api/view/DBVideoView;->eW:Landroid/media/MediaPlayer;

    iput v1, p0, Lcom/db/android/api/view/DBVideoView;->fl:I

    iput-boolean v1, p0, Lcom/db/android/api/view/DBVideoView;->fm:Z

    iput-boolean v1, p0, Lcom/db/android/api/view/DBVideoView;->fn:Z

    new-instance v0, Lcom/db/android/api/view/a;

    invoke-direct {v0, p0}, Lcom/db/android/api/view/a;-><init>(Lcom/db/android/api/view/DBVideoView;)V

    iput-object v0, p0, Lcom/db/android/api/view/DBVideoView;->fo:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    new-instance v0, Lcom/db/android/api/view/b;

    invoke-direct {v0, p0}, Lcom/db/android/api/view/b;-><init>(Lcom/db/android/api/view/DBVideoView;)V

    iput-object v0, p0, Lcom/db/android/api/view/DBVideoView;->fp:Landroid/media/MediaPlayer$OnPreparedListener;

    new-instance v0, Lcom/db/android/api/view/c;

    invoke-direct {v0, p0}, Lcom/db/android/api/view/c;-><init>(Lcom/db/android/api/view/DBVideoView;)V

    iput-object v0, p0, Lcom/db/android/api/view/DBVideoView;->fq:Landroid/media/MediaPlayer$OnCompletionListener;

    new-instance v0, Lcom/db/android/api/view/d;

    invoke-direct {v0, p0}, Lcom/db/android/api/view/d;-><init>(Lcom/db/android/api/view/DBVideoView;)V

    iput-object v0, p0, Lcom/db/android/api/view/DBVideoView;->fr:Landroid/media/MediaPlayer$OnErrorListener;

    new-instance v0, Lcom/db/android/api/view/e;

    invoke-direct {v0, p0}, Lcom/db/android/api/view/e;-><init>(Lcom/db/android/api/view/DBVideoView;)V

    iput-object v0, p0, Lcom/db/android/api/view/DBVideoView;->fs:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    new-instance v0, Lcom/db/android/api/view/f;

    invoke-direct {v0, p0}, Lcom/db/android/api/view/f;-><init>(Lcom/db/android/api/view/DBVideoView;)V

    iput-object v0, p0, Lcom/db/android/api/view/DBVideoView;->ft:Landroid/view/SurfaceHolder$Callback;

    iput-object p1, p0, Lcom/db/android/api/view/DBVideoView;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/db/android/api/view/DBVideoView;->aV()V

    return-void
.end method

.method static synthetic a(Lcom/db/android/api/view/DBVideoView;)I
    .locals 1

    iget v0, p0, Lcom/db/android/api/view/DBVideoView;->eX:I

    return v0
.end method

.method static synthetic a(Lcom/db/android/api/view/DBVideoView;I)I
    .locals 0

    iput p1, p0, Lcom/db/android/api/view/DBVideoView;->eX:I

    return p1
.end method

.method static synthetic a(Lcom/db/android/api/view/DBVideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0

    iput-object p1, p0, Lcom/db/android/api/view/DBVideoView;->eV:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method static synthetic a(Lcom/db/android/api/view/DBVideoView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/db/android/api/view/DBVideoView;->fh:Z

    return p1
.end method

.method private aU()V
    .locals 1

    iget-boolean v0, p0, Lcom/db/android/api/view/DBVideoView;->ff:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/db/android/api/view/DBVideoView;->ff:Z

    invoke-virtual {p0}, Lcom/db/android/api/view/DBVideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v0}, Lcom/db/android/api/view/DBVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private aV()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput v2, p0, Lcom/db/android/api/view/DBVideoView;->eX:I

    iput v2, p0, Lcom/db/android/api/view/DBVideoView;->eY:I

    invoke-virtual {p0}, Lcom/db/android/api/view/DBVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/db/android/api/view/DBVideoView;->ft:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    invoke-virtual {p0, v3}, Lcom/db/android/api/view/DBVideoView;->setFocusable(Z)V

    invoke-virtual {p0, v3}, Lcom/db/android/api/view/DBVideoView;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0}, Lcom/db/android/api/view/DBVideoView;->requestFocus()Z

    iput v2, p0, Lcom/db/android/api/view/DBVideoView;->eR:I

    iput v2, p0, Lcom/db/android/api/view/DBVideoView;->eS:I

    return-void
.end method

.method private aW()V
    .locals 7

    const/4 v1, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    iget-object v0, p0, Lcom/db/android/api/view/DBVideoView;->eK:Landroid/net/Uri;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/db/android/api/view/DBVideoView;->eV:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/db/android/api/view/DBVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    invoke-virtual {p0, v5}, Lcom/db/android/api/view/DBVideoView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/db/android/api/view/DBVideoView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0, v5}, Lcom/db/android/api/view/DBVideoView;->k(Z)V

    :try_start_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/db/android/api/view/DBVideoView;->eW:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/db/android/api/view/DBVideoView;->eW:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/db/android/api/view/DBVideoView;->fp:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/db/android/api/view/DBVideoView;->eW:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/db/android/api/view/DBVideoView;->fo:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/db/android/api/view/DBVideoView;->eL:I

    iget-object v0, p0, Lcom/db/android/api/view/DBVideoView;->eW:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/db/android/api/view/DBVideoView;->fq:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/db/android/api/view/DBVideoView;->eW:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/db/android/api/view/DBVideoView;->fr:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/db/android/api/view/DBVideoView;->eW:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/db/android/api/view/DBVideoView;->fs:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/db/android/api/view/DBVideoView;->fe:I

    iget-object v0, p0, Lcom/db/android/api/view/DBVideoView;->eW:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/db/android/api/view/DBVideoView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/db/android/api/view/DBVideoView;->eK:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/db/android/api/view/DBVideoView;->eW:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/db/android/api/view/DBVideoView;->eV:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    iget-object v0, p0, Lcom/db/android/api/view/DBVideoView;->eW:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v0, p0, Lcom/db/android/api/view/DBVideoView;->eW:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    iget-object v0, p0, Lcom/db/android/api/view/DBVideoView;->eW:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/db/android/api/view/DBVideoView;->eR:I

    invoke-direct {p0}, Lcom/db/android/api/view/DBVideoView;->aX()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/db/android/api/view/DBVideoView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to open content: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/db/android/api/view/DBVideoView;->eK:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput v4, p0, Lcom/db/android/api/view/DBVideoView;->eR:I

    iput v4, p0, Lcom/db/android/api/view/DBVideoView;->eS:I

    iget-object v0, p0, Lcom/db/android/api/view/DBVideoView;->fr:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v1, p0, Lcom/db/android/api/view/DBVideoView;->eW:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1, v6, v5}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/db/android/api/view/DBVideoView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to open content: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/db/android/api/view/DBVideoView;->eK:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput v4, p0, Lcom/db/android/api/view/DBVideoView;->eR:I

    iput v4, p0, Lcom/db/android/api/view/DBVideoView;->eS:I

    iget-object v0, p0, Lcom/db/android/api/view/DBVideoView;->fr:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v1, p0, Lcom/db/android/api/view/DBVideoView;->eW:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1, v6, v5}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0
.end method

.method private aX()V
    .locals 2

    iget-object v0, p0, Lcom/db/android/api/view/DBVideoView;->eW:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/view/DBVideoView;->fb:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/view/DBVideoView;->fb:Landroid/widget/MediaController;

    invoke-virtual {v0, p0}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    invoke-virtual {p0}, Lcom/db/android/api/view/DBVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/db/android/api/view/DBVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    iget-object v1, p0, Lcom/db/android/api/view/DBVideoView;->fb:Landroid/widget/MediaController;

    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/db/android/api/view/DBVideoView;->fb:Landroid/widget/MediaController;

    invoke-direct {p0}, Lcom/db/android/api/view/DBVideoView;->bc()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setEnabled(Z)V

    :cond_0
    return-void

    :cond_1
    move-object v0, p0

    goto :goto_0
.end method

.method private aY()I
    .locals 1

    iget v0, p0, Lcom/db/android/api/view/DBVideoView;->fl:I

    return v0
.end method

.method private aZ()V
    .locals 1

    iget-object v0, p0, Lcom/db/android/api/view/DBVideoView;->fb:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/view/DBVideoView;->fb:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/db/android/api/view/DBVideoView;->fb:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/db/android/api/view/DBVideoView;)I
    .locals 1

    iget v0, p0, Lcom/db/android/api/view/DBVideoView;->eY:I

    return v0
.end method

.method static synthetic b(Lcom/db/android/api/view/DBVideoView;I)I
    .locals 0

    iput p1, p0, Lcom/db/android/api/view/DBVideoView;->eY:I

    return p1
.end method

.method static synthetic b(Lcom/db/android/api/view/DBVideoView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/db/android/api/view/DBVideoView;->fi:Z

    return p1
.end method

.method private ba()Z
    .locals 1

    iget-boolean v0, p0, Lcom/db/android/api/view/DBVideoView;->ff:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/db/android/api/view/DBVideoView;->ff:Z

    invoke-virtual {p0}, Lcom/db/android/api/view/DBVideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v0}, Lcom/db/android/api/view/DBVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v0, p0, Lcom/db/android/api/view/DBVideoView;->ff:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private bb()V
    .locals 1

    invoke-virtual {p0}, Lcom/db/android/api/view/DBVideoView;->getCurrentPosition()I

    move-result v0

    add-int/lit16 v0, v0, 0x3a98

    invoke-virtual {p0, v0}, Lcom/db/android/api/view/DBVideoView;->seekTo(I)V

    return-void
.end method

.method private bc()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/db/android/api/view/DBVideoView;->eW:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/db/android/api/view/DBVideoView;->eR:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/db/android/api/view/DBVideoView;->eR:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/db/android/api/view/DBVideoView;->eR:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private bd()Lcom/db/android/api/bitmap/core/k;
    .locals 1

    iget-object v0, p0, Lcom/db/android/api/view/DBVideoView;->fd:Lcom/db/android/api/bitmap/core/k;

    return-object v0
.end method

.method private be()Z
    .locals 1

    iget-boolean v0, p0, Lcom/db/android/api/view/DBVideoView;->fm:Z

    return v0
.end method

.method private bf()Z
    .locals 1

    iget-boolean v0, p0, Lcom/db/android/api/view/DBVideoView;->fn:Z

    return v0
.end method

.method static synthetic c(Lcom/db/android/api/view/DBVideoView;)I
    .locals 1

    iget v0, p0, Lcom/db/android/api/view/DBVideoView;->eR:I

    return v0
.end method

.method static synthetic c(Lcom/db/android/api/view/DBVideoView;I)I
    .locals 0

    iput p1, p0, Lcom/db/android/api/view/DBVideoView;->eR:I

    return p1
.end method

.method static synthetic c(Lcom/db/android/api/view/DBVideoView;Z)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/db/android/api/view/DBVideoView;->fj:Z

    return v0
.end method

.method static synthetic d(Lcom/db/android/api/view/DBVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 1

    iget-object v0, p0, Lcom/db/android/api/view/DBVideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic d(Lcom/db/android/api/view/DBVideoView;I)V
    .locals 0

    return-void
.end method

.method static synthetic e(Lcom/db/android/api/view/DBVideoView;I)I
    .locals 0

    iput p1, p0, Lcom/db/android/api/view/DBVideoView;->eS:I

    return p1
.end method

.method static synthetic e(Lcom/db/android/api/view/DBVideoView;)Landroid/media/MediaPlayer;
    .locals 1

    iget-object v0, p0, Lcom/db/android/api/view/DBVideoView;->eW:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic f(Lcom/db/android/api/view/DBVideoView;I)I
    .locals 0

    iput p1, p0, Lcom/db/android/api/view/DBVideoView;->fe:I

    return p1
.end method

.method static synthetic f(Lcom/db/android/api/view/DBVideoView;)Landroid/widget/MediaController;
    .locals 1

    iget-object v0, p0, Lcom/db/android/api/view/DBVideoView;->fb:Landroid/widget/MediaController;

    return-object v0
.end method

.method static synthetic g(Lcom/db/android/api/view/DBVideoView;)I
    .locals 1

    iget v0, p0, Lcom/db/android/api/view/DBVideoView;->fg:I

    return v0
.end method

.method static synthetic g(Lcom/db/android/api/view/DBVideoView;I)I
    .locals 0

    iput p1, p0, Lcom/db/android/api/view/DBVideoView;->eZ:I

    return p1
.end method

.method private g(Lcom/db/android/api/bitmap/core/k;)V
    .locals 0

    iput-object p1, p0, Lcom/db/android/api/view/DBVideoView;->fd:Lcom/db/android/api/bitmap/core/k;

    return-void
.end method

.method static synthetic h(Lcom/db/android/api/view/DBVideoView;)I
    .locals 1

    iget v0, p0, Lcom/db/android/api/view/DBVideoView;->eZ:I

    return v0
.end method

.method static synthetic h(Lcom/db/android/api/view/DBVideoView;I)I
    .locals 0

    iput p1, p0, Lcom/db/android/api/view/DBVideoView;->fa:I

    return p1
.end method

.method static synthetic i(Lcom/db/android/api/view/DBVideoView;)I
    .locals 1

    iget v0, p0, Lcom/db/android/api/view/DBVideoView;->fa:I

    return v0
.end method

.method private isPaused()Z
    .locals 2

    iget v0, p0, Lcom/db/android/api/view/DBVideoView;->eR:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic j(Lcom/db/android/api/view/DBVideoView;)I
    .locals 1

    iget v0, p0, Lcom/db/android/api/view/DBVideoView;->eS:I

    return v0
.end method

.method static synthetic k(Lcom/db/android/api/view/DBVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1

    iget-object v0, p0, Lcom/db/android/api/view/DBVideoView;->fc:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic l(Lcom/db/android/api/view/DBVideoView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/db/android/api/view/DBVideoView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private l(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/db/android/api/view/DBVideoView;->fm:Z

    return-void
.end method

.method static synthetic m(Lcom/db/android/api/view/DBVideoView;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1

    iget-object v0, p0, Lcom/db/android/api/view/DBVideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method private m(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/db/android/api/view/DBVideoView;->fn:Z

    return-void
.end method

.method static synthetic n(Lcom/db/android/api/view/DBVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/db/android/api/view/DBVideoView;->aW()V

    return-void
.end method

.method private static resolveAdjustedSize(II)I
    .locals 2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    sparse-switch v1, :sswitch_data_0

    :goto_0
    :sswitch_0
    return p0

    :sswitch_1
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    goto :goto_0

    :sswitch_2
    move p0, v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method private rewind()V
    .locals 1

    invoke-virtual {p0}, Lcom/db/android/api/view/DBVideoView;->getCurrentPosition()I

    move-result v0

    add-int/lit16 v0, v0, -0x3a98

    invoke-virtual {p0, v0}, Lcom/db/android/api/view/DBVideoView;->seekTo(I)V

    return-void
.end method

.method private setMediaController(Landroid/widget/MediaController;)V
    .locals 1

    iget-object v0, p0, Lcom/db/android/api/view/DBVideoView;->fb:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/view/DBVideoView;->fb:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    :cond_0
    iput-object p1, p0, Lcom/db/android/api/view/DBVideoView;->fb:Landroid/widget/MediaController;

    invoke-direct {p0}, Lcom/db/android/api/view/DBVideoView;->aX()V

    return-void
.end method

.method private setVideoURI(Landroid/net/Uri;)V
    .locals 3

    iget-object v0, p0, Lcom/db/android/api/view/DBVideoView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "URI : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/db/android/api/view/DBVideoView;->eK:Landroid/net/Uri;

    const/4 v0, 0x0

    iput v0, p0, Lcom/db/android/api/view/DBVideoView;->fg:I

    invoke-direct {p0}, Lcom/db/android/api/view/DBVideoView;->aW()V

    invoke-virtual {p0}, Lcom/db/android/api/view/DBVideoView;->requestLayout()V

    invoke-virtual {p0}, Lcom/db/android/api/view/DBVideoView;->invalidate()V

    return-void
.end method

.method private x(I)V
    .locals 0

    return-void
.end method


# virtual methods
.method public canPause()Z
    .locals 1

    iget-boolean v0, p0, Lcom/db/android/api/view/DBVideoView;->fh:Z

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    iget-boolean v0, p0, Lcom/db/android/api/view/DBVideoView;->fi:Z

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    iget-boolean v0, p0, Lcom/db/android/api/view/DBVideoView;->fj:Z

    return v0
.end method

.method public getAudioSessionId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    iget-object v0, p0, Lcom/db/android/api/view/DBVideoView;->eW:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/db/android/api/view/DBVideoView;->fe:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 1

    invoke-direct {p0}, Lcom/db/android/api/view/DBVideoView;->bc()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/view/DBVideoView;->eW:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 1

    invoke-direct {p0}, Lcom/db/android/api/view/DBVideoView;->bc()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/db/android/api/view/DBVideoView;->eL:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/db/android/api/view/DBVideoView;->eL:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/db/android/api/view/DBVideoView;->eW:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/db/android/api/view/DBVideoView;->eL:I

    iget v0, p0, Lcom/db/android/api/view/DBVideoView;->eL:I

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/db/android/api/view/DBVideoView;->eL:I

    iget v0, p0, Lcom/db/android/api/view/DBVideoView;->eL:I

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    invoke-direct {p0}, Lcom/db/android/api/view/DBVideoView;->bc()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/view/DBVideoView;->eW:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k(Z)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/db/android/api/view/DBVideoView;->eW:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/view/DBVideoView;->eW:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Lcom/db/android/api/view/DBVideoView;->eW:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/db/android/api/view/DBVideoView;->eW:Landroid/media/MediaPlayer;

    iput v1, p0, Lcom/db/android/api/view/DBVideoView;->eR:I

    if-eqz p1, :cond_0

    iput v1, p0, Lcom/db/android/api/view/DBVideoView;->eS:I

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x18

    if-eq p1, v0, :cond_1

    const/16 v0, 0x19

    if-eq p1, v0, :cond_1

    const/16 v0, 0x52

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    move v0, v1

    :goto_0
    invoke-direct {p0}, Lcom/db/android/api/view/DBVideoView;->bc()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/db/android/api/view/DBVideoView;->fb:Landroid/widget/MediaController;

    if-eqz v0, :cond_4

    const/16 v0, 0x4f

    if-eq p1, v0, :cond_0

    const/16 v0, 0x55

    if-ne p1, v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/db/android/api/view/DBVideoView;->eW:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/db/android/api/view/DBVideoView;->pause()V

    iget-object v0, p0, Lcom/db/android/api/view/DBVideoView;->fb:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    :goto_1
    return v1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/db/android/api/view/DBVideoView;->start()V

    iget-object v0, p0, Lcom/db/android/api/view/DBVideoView;->fb:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    goto :goto_1

    :cond_3
    const/16 v0, 0x56

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lcom/db/android/api/view/DBVideoView;->eW:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/db/android/api/view/DBVideoView;->pause()V

    iget-object v0, p0, Lcom/db/android/api/view/DBVideoView;->fb:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    :cond_4
    :goto_2
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/db/android/api/view/DBVideoView;->aZ()V

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 5

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    if-ne v1, v4, :cond_0

    if-ne v3, v4, :cond_0

    invoke-virtual {p0, v0, v2}, Lcom/db/android/api/view/DBVideoView;->setMeasuredDimension(II)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onMeasure(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0}, Lcom/db/android/api/view/DBVideoView;->bc()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/view/DBVideoView;->fb:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/db/android/api/view/DBVideoView;->aZ()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0}, Lcom/db/android/api/view/DBVideoView;->bc()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/view/DBVideoView;->fb:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/db/android/api/view/DBVideoView;->aZ()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 2

    const/4 v1, 0x4

    invoke-direct {p0}, Lcom/db/android/api/view/DBVideoView;->bc()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/view/DBVideoView;->eW:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/view/DBVideoView;->eW:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    iput v1, p0, Lcom/db/android/api/view/DBVideoView;->eR:I

    :cond_0
    iput v1, p0, Lcom/db/android/api/view/DBVideoView;->eS:I

    return-void
.end method

.method public seekTo(I)V
    .locals 2

    const/16 v0, 0x3e8

    const/4 v1, 0x0

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    invoke-direct {p0}, Lcom/db/android/api/view/DBVideoView;->bc()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/db/android/api/view/DBVideoView;->eW:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    iput v1, p0, Lcom/db/android/api/view/DBVideoView;->fg:I

    iput v1, p0, Lcom/db/android/api/view/DBVideoView;->fl:I

    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/db/android/api/view/DBVideoView;->fg:I

    iput v1, p0, Lcom/db/android/api/view/DBVideoView;->fl:I

    goto :goto_0
.end method

.method public final setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/db/android/api/view/DBVideoView;->fc:Landroid/media/MediaPlayer$OnCompletionListener;

    return-void
.end method

.method public final setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/db/android/api/view/DBVideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-void
.end method

.method public final setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/db/android/api/view/DBVideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-void
.end method

.method public final setVideoPath(Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/db/android/api/view/DBVideoView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "URI : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, p0, Lcom/db/android/api/view/DBVideoView;->eK:Landroid/net/Uri;

    const/4 v0, 0x0

    iput v0, p0, Lcom/db/android/api/view/DBVideoView;->fg:I

    invoke-direct {p0}, Lcom/db/android/api/view/DBVideoView;->aW()V

    invoke-virtual {p0}, Lcom/db/android/api/view/DBVideoView;->requestLayout()V

    invoke-virtual {p0}, Lcom/db/android/api/view/DBVideoView;->invalidate()V

    return-void
.end method

.method public start()V
    .locals 2

    const/4 v1, 0x3

    iget-boolean v0, p0, Lcom/db/android/api/view/DBVideoView;->fm:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/db/android/api/view/DBVideoView;->fn:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/db/android/api/view/DBVideoView;->bc()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/view/DBVideoView;->eW:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    iput v1, p0, Lcom/db/android/api/view/DBVideoView;->eR:I

    :cond_0
    iput v1, p0, Lcom/db/android/api/view/DBVideoView;->eS:I

    return-void
.end method

.method public final stopPlayback()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/db/android/api/view/DBVideoView;->eW:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/view/DBVideoView;->eW:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/db/android/api/view/DBVideoView;->eW:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/db/android/api/view/DBVideoView;->eW:Landroid/media/MediaPlayer;

    iput v1, p0, Lcom/db/android/api/view/DBVideoView;->eR:I

    iput v1, p0, Lcom/db/android/api/view/DBVideoView;->eS:I

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/db/android/api/view/DBVideoView;->setVisibility(I)V

    :cond_0
    return-void
.end method
