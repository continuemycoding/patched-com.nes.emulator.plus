.class public Lcom/nostalgiaemulators/framework/controllers/RemoteController;
.super Ljava/lang/Object;
.source "RemoteController.java"

# interfaces
.implements Lcom/nostalgiaemulators/framework/EmulatorController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostalgiaemulators/framework/controllers/RemoteController$Dispatcher;,
        Lcom/nostalgiaemulators/framework/controllers/RemoteController$OnRemoteControllerWarningListener;
    }
.end annotation


# static fields
.field public static final KEY_BACK:I = 0xa

.field public static final KEY_MENU:I = 0xb

.field private static eventDispatcher:Lcom/nostalgiaemulators/framework/controllers/RemoteController$Dispatcher;


# instance fields
.field private emulator:Lcom/nostalgiaemulators/framework/Emulator;

.field emulatorActivity:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

.field inputConnection:Landroid/view/inputmethod/InputConnection;

.field private mapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private port:I

.field private server:Lcom/nostalgiaemulators/framework/remote/ControllerEventSource;

.field private specialKeys:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private systemKeyMapping:Landroid/util/SparseIntArray;

.field wakeLock:Landroid/os/PowerManager$WakeLock;

.field warningListener:Lcom/nostalgiaemulators/framework/controllers/RemoteController$OnRemoteControllerWarningListener;

.field private zapperWarningShow:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 225
    new-instance v0, Lcom/nostalgiaemulators/framework/controllers/RemoteController$Dispatcher;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nostalgiaemulators/framework/controllers/RemoteController$Dispatcher;-><init>(Lcom/nostalgiaemulators/framework/controllers/RemoteController$Dispatcher;)V

    sput-object v0, Lcom/nostalgiaemulators/framework/controllers/RemoteController;->eventDispatcher:Lcom/nostalgiaemulators/framework/controllers/RemoteController$Dispatcher;

    return-void
.end method

.method public constructor <init>(Lcom/nostalgiaemulators/framework/base/EmulatorActivity;)V
    .locals 3
    .param p1, "activity"    # Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    .prologue
    const/4 v2, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/RemoteController;->warningListener:Lcom/nostalgiaemulators/framework/controllers/RemoteController$OnRemoteControllerWarningListener;

    .line 129
    iput-boolean v2, p0, Lcom/nostalgiaemulators/framework/controllers/RemoteController;->zapperWarningShow:Z

    .line 169
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/RemoteController;->specialKeys:Ljava/util/HashSet;

    .line 56
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/controllers/RemoteController;->emulatorActivity:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    .line 57
    invoke-direct {p0}, Lcom/nostalgiaemulators/framework/controllers/RemoteController;->start()V

    .line 58
    new-instance v0, Landroid/view/inputmethod/BaseInputConnection;

    invoke-virtual {p1}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 59
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    .line 58
    iput-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/RemoteController;->inputConnection:Landroid/view/inputmethod/InputConnection;

    .line 60
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/RemoteController;->systemKeyMapping:Landroid/util/SparseIntArray;

    .line 61
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/RemoteController;->systemKeyMapping:Landroid/util/SparseIntArray;

    const/16 v1, 0xb

    const/16 v2, 0x52

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 62
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/RemoteController;->systemKeyMapping:Landroid/util/SparseIntArray;

    const/16 v1, 0xa

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 63
    return-void
.end method

.method static synthetic access$0(Lcom/nostalgiaemulators/framework/controllers/RemoteController;Lcom/nostalgiaemulators/framework/remote/ControllerKeyEvent;)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/nostalgiaemulators/framework/controllers/RemoteController;->processEmulatorKeyEvent(Lcom/nostalgiaemulators/framework/remote/ControllerKeyEvent;)V

    return-void
.end method

.method static synthetic access$1(Lcom/nostalgiaemulators/framework/controllers/RemoteController;Landroid/view/KeyEvent;)V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/nostalgiaemulators/framework/controllers/RemoteController;->processAndroidKeyEvent(Landroid/view/KeyEvent;)V

    return-void
.end method

.method static synthetic access$2(Lcom/nostalgiaemulators/framework/controllers/RemoteController;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/nostalgiaemulators/framework/controllers/RemoteController;->processTextEvent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lcom/nostalgiaemulators/framework/controllers/RemoteController;III)V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0, p1, p2, p3}, Lcom/nostalgiaemulators/framework/controllers/RemoteController;->processCommandEvent(III)V

    return-void
.end method

.method private processAndroidKeyEvent(Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 151
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/RemoteController;->specialKeys:Ljava/util/HashSet;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/RemoteController;->specialKeys:Ljava/util/HashSet;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 154
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/RemoteController;->inputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 157
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/RemoteController;->specialKeys:Ljava/util/HashSet;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/RemoteController;->specialKeys:Ljava/util/HashSet;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 159
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/RemoteController;->inputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_0
.end method

.method private processCommandEvent(III)V
    .locals 0
    .param p1, "command"    # I
    .param p2, "param0"    # I
    .param p3, "param1"    # I

    .prologue
    .line 167
    return-void
.end method

.method private processEmulatorKeyEvent(Lcom/nostalgiaemulators/framework/remote/ControllerKeyEvent;)V
    .locals 6
    .param p1, "event"    # Lcom/nostalgiaemulators/framework/remote/ControllerKeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 132
    iget v1, p1, Lcom/nostalgiaemulators/framework/remote/ControllerKeyEvent;->port:I

    iget v3, p0, Lcom/nostalgiaemulators/framework/controllers/RemoteController;->port:I

    if-ne v1, v3, :cond_0

    .line 133
    iget-object v3, p0, Lcom/nostalgiaemulators/framework/controllers/RemoteController;->emulator:Lcom/nostalgiaemulators/framework/Emulator;

    iget v4, p1, Lcom/nostalgiaemulators/framework/remote/ControllerKeyEvent;->port:I

    iget-object v1, p0, Lcom/nostalgiaemulators/framework/controllers/RemoteController;->mapping:Ljava/util/Map;

    iget v5, p1, Lcom/nostalgiaemulators/framework/remote/ControllerKeyEvent;->keyCode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 134
    iget v1, p1, Lcom/nostalgiaemulators/framework/remote/ControllerKeyEvent;->action:I

    if-nez v1, :cond_3

    move v1, v2

    .line 133
    :goto_0
    invoke-interface {v3, v4, v5, v1}, Lcom/nostalgiaemulators/framework/Emulator;->setKeyPressed(IIZ)V

    .line 135
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/controllers/RemoteController;->emulatorActivity:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    invoke-virtual {v1}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->hideTouchController()V

    .line 138
    :cond_0
    iget v1, p1, Lcom/nostalgiaemulators/framework/remote/ControllerKeyEvent;->port:I

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nostalgiaemulators/framework/controllers/RemoteController;->warningListener:Lcom/nostalgiaemulators/framework/controllers/RemoteController$OnRemoteControllerWarningListener;

    if-eqz v1, :cond_2

    .line 139
    iget-boolean v1, p0, Lcom/nostalgiaemulators/framework/controllers/RemoteController;->zapperWarningShow:Z

    if-nez v1, :cond_2

    .line 140
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/controllers/RemoteController;->emulator:Lcom/nostalgiaemulators/framework/Emulator;

    invoke-interface {v1}, Lcom/nostalgiaemulators/framework/Emulator;->getLoadedGame()Lcom/nostalgiaemulators/framework/GameInfo;

    move-result-object v1

    iget-object v0, v1, Lcom/nostalgiaemulators/framework/GameInfo;->md5:Ljava/lang/String;

    .line 142
    .local v0, "hash":Ljava/lang/String;
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/controllers/RemoteController;->emulatorActivity:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    invoke-static {v1, v0}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->isZapperEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/controllers/RemoteController;->warningListener:Lcom/nostalgiaemulators/framework/controllers/RemoteController$OnRemoteControllerWarningListener;

    invoke-interface {v1}, Lcom/nostalgiaemulators/framework/controllers/RemoteController$OnRemoteControllerWarningListener;->onZapperCollision()V

    .line 146
    :cond_1
    iput-boolean v2, p0, Lcom/nostalgiaemulators/framework/controllers/RemoteController;->zapperWarningShow:Z

    .line 148
    .end local v0    # "hash":Ljava/lang/String;
    :cond_2
    return-void

    .line 134
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private processTextEvent(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 164
    return-void
.end method

.method private start()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 76
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/RemoteController;->emulatorActivity:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer;

    move-result-object v0

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/RemoteController;->server:Lcom/nostalgiaemulators/framework/remote/ControllerEventSource;

    .line 77
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/RemoteController;->server:Lcom/nostalgiaemulators/framework/remote/ControllerEventSource;

    sget-object v1, Lcom/nostalgiaemulators/framework/controllers/RemoteController;->eventDispatcher:Lcom/nostalgiaemulators/framework/controllers/RemoteController$Dispatcher;

    invoke-interface {v0, v1}, Lcom/nostalgiaemulators/framework/remote/ControllerEventSource;->setControllerEventListener(Lcom/nostalgiaemulators/framework/remote/OnControllerEventListener;)V

    .line 78
    sget-object v0, Lcom/nostalgiaemulators/framework/controllers/RemoteController;->eventDispatcher:Lcom/nostalgiaemulators/framework/controllers/RemoteController$Dispatcher;

    invoke-virtual {v0, p0}, Lcom/nostalgiaemulators/framework/controllers/RemoteController$Dispatcher;->addController(Lcom/nostalgiaemulators/framework/controllers/RemoteController;)V

    .line 80
    sget-object v0, Lcom/nostalgiaemulators/framework/controllers/RemoteController;->eventDispatcher:Lcom/nostalgiaemulators/framework/controllers/RemoteController$Dispatcher;

    invoke-virtual {v0, v2}, Lcom/nostalgiaemulators/framework/controllers/RemoteController$Dispatcher;->getController(I)Lcom/nostalgiaemulators/framework/EmulatorController;

    move-result-object v0

    if-ne p0, v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/RemoteController;->server:Lcom/nostalgiaemulators/framework/remote/ControllerEventSource;

    invoke-interface {v0}, Lcom/nostalgiaemulators/framework/remote/ControllerEventSource;->onResume()V

    .line 84
    :cond_0
    iput-boolean v2, p0, Lcom/nostalgiaemulators/framework/controllers/RemoteController;->zapperWarningShow:Z

    .line 85
    return-void
.end method


# virtual methods
.method public connectToEmulator(ILcom/nostalgiaemulators/framework/Emulator;)V
    .locals 1
    .param p1, "port"    # I
    .param p2, "emulator"    # Lcom/nostalgiaemulators/framework/Emulator;

    .prologue
    .line 101
    iput-object p2, p0, Lcom/nostalgiaemulators/framework/controllers/RemoteController;->emulator:Lcom/nostalgiaemulators/framework/Emulator;

    .line 102
    iput p1, p0, Lcom/nostalgiaemulators/framework/controllers/RemoteController;->port:I

    .line 103
    invoke-interface {p2}, Lcom/nostalgiaemulators/framework/Emulator;->getInfo()Lcom/nostalgiaemulators/framework/EmulatorInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/nostalgiaemulators/framework/EmulatorInfo;->getKeyMapping()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/RemoteController;->mapping:Ljava/util/Map;

    .line 104
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 120
    iput-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/RemoteController;->emulator:Lcom/nostalgiaemulators/framework/Emulator;

    .line 121
    iput-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/RemoteController;->emulatorActivity:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    .line 122
    return-void
.end method

.method public onGamePaused(Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;)V
    .locals 0
    .param p1, "game"    # Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    .prologue
    .line 233
    return-void
.end method

.method public onGameStarted(Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;)V
    .locals 0
    .param p1, "game"    # Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    .prologue
    .line 229
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/RemoteController;->server:Lcom/nostalgiaemulators/framework/remote/ControllerEventSource;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/RemoteController;->server:Lcom/nostalgiaemulators/framework/remote/ControllerEventSource;

    invoke-interface {v0}, Lcom/nostalgiaemulators/framework/remote/ControllerEventSource;->onPause()V

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/RemoteController;->server:Lcom/nostalgiaemulators/framework/remote/ControllerEventSource;

    .line 94
    :cond_0
    sget-object v0, Lcom/nostalgiaemulators/framework/controllers/RemoteController;->eventDispatcher:Lcom/nostalgiaemulators/framework/controllers/RemoteController$Dispatcher;

    invoke-virtual {v0, p0}, Lcom/nostalgiaemulators/framework/controllers/RemoteController$Dispatcher;->removeController(Lcom/nostalgiaemulators/framework/controllers/RemoteController;)V

    .line 95
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/nostalgiaemulators/framework/controllers/RemoteController;->start()V

    .line 68
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/RemoteController;->emulator:Lcom/nostalgiaemulators/framework/Emulator;

    invoke-interface {v0}, Lcom/nostalgiaemulators/framework/Emulator;->resetKeys()V

    .line 69
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 73
    return-void
.end method

.method public setOnRemoteControllerWarningListener(Lcom/nostalgiaemulators/framework/controllers/RemoteController$OnRemoteControllerWarningListener;)V
    .locals 0
    .param p1, "list"    # Lcom/nostalgiaemulators/framework/controllers/RemoteController$OnRemoteControllerWarningListener;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/controllers/RemoteController;->warningListener:Lcom/nostalgiaemulators/framework/controllers/RemoteController$OnRemoteControllerWarningListener;

    .line 116
    return-void
.end method
