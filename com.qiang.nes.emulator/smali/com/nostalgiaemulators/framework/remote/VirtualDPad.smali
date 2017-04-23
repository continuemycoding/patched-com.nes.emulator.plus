.class public Lcom/nostalgiaemulators/framework/remote/VirtualDPad;
.super Ljava/lang/Object;
.source "VirtualDPad.java"

# interfaces
.implements Lcom/nostalgiaemulators/framework/remote/OnControllerEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostalgiaemulators/framework/remote/VirtualDPad$OnVirtualDPEventsListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.nostalgiaemulators.framework.remote.VirtualDPad"

.field private static instance:Lcom/nostalgiaemulators/framework/remote/VirtualDPad;


# instance fields
.field private connection:Landroid/view/inputmethod/InputConnection;

.field public downTime:J

.field longPresHandlers:Ljava/util/HashMap;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/TimerTask;",
            ">;"
        }
    .end annotation
.end field

.field private server:Lcom/nostalgiaemulators/framework/remote/ControllerEventSource;

.field private textListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/nostalgiaemulators/framework/remote/VirtualDPad$OnVirtualDPEventsListener;",
            ">;"
        }
    .end annotation
.end field

.field timer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 193
    new-instance v0, Lcom/nostalgiaemulators/framework/remote/VirtualDPad;

    invoke-direct {v0}, Lcom/nostalgiaemulators/framework/remote/VirtualDPad;-><init>()V

    sput-object v0, Lcom/nostalgiaemulators/framework/remote/VirtualDPad;->instance:Lcom/nostalgiaemulators/framework/remote/VirtualDPad;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/remote/VirtualDPad;->longPresHandlers:Ljava/util/HashMap;

    .line 196
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/remote/VirtualDPad;->textListeners:Ljava/util/HashSet;

    .line 47
    return-void
.end method

.method static synthetic access$0(Lcom/nostalgiaemulators/framework/remote/VirtualDPad;Landroid/view/KeyEvent;)V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/nostalgiaemulators/framework/remote/VirtualDPad;->sendKeyEvent(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public static getInstance()Lcom/nostalgiaemulators/framework/remote/VirtualDPad;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/nostalgiaemulators/framework/remote/VirtualDPad;->instance:Lcom/nostalgiaemulators/framework/remote/VirtualDPad;

    return-object v0
.end method

.method private sendKeyEvent(Landroid/view/KeyEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/remote/VirtualDPad;->connection:Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/remote/VirtualDPad;->connection:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 161
    :cond_0
    return-void
.end method

.method private setInputConnection(Landroid/view/inputmethod/InputConnection;)V
    .locals 0
    .param p1, "connection"    # Landroid/view/inputmethod/InputConnection;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/remote/VirtualDPad;->connection:Landroid/view/inputmethod/InputConnection;

    .line 191
    return-void
.end method


# virtual methods
.method public addOnTextChangeListener(Lcom/nostalgiaemulators/framework/remote/VirtualDPad$OnVirtualDPEventsListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/nostalgiaemulators/framework/remote/VirtualDPad$OnVirtualDPEventsListener;

    .prologue
    .line 199
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/remote/VirtualDPad;->textListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 200
    return-void
.end method

.method public attachToWindow(Landroid/view/Window;)V
    .locals 3
    .param p1, "window"    # Landroid/view/Window;

    .prologue
    .line 54
    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer;

    move-result-object v0

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/remote/VirtualDPad;->server:Lcom/nostalgiaemulators/framework/remote/ControllerEventSource;

    .line 55
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/remote/VirtualDPad;->server:Lcom/nostalgiaemulators/framework/remote/ControllerEventSource;

    invoke-interface {v0, p0}, Lcom/nostalgiaemulators/framework/remote/ControllerEventSource;->setControllerEventListener(Lcom/nostalgiaemulators/framework/remote/OnControllerEventListener;)V

    .line 56
    new-instance v0, Landroid/view/inputmethod/BaseInputConnection;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    invoke-direct {p0, v0}, Lcom/nostalgiaemulators/framework/remote/VirtualDPad;->setInputConnection(Landroid/view/inputmethod/InputConnection;)V

    .line 57
    return-void
.end method

.method public detachFromWindow()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/remote/VirtualDPad;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/remote/VirtualDPad;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 64
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nostalgiaemulators/framework/remote/VirtualDPad;->setInputConnection(Landroid/view/inputmethod/InputConnection;)V

    .line 65
    return-void
.end method

.method public onControllerAndroidKeyEvent(Landroid/view/KeyEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 165
    const-string v0, "com.nostalgiaemulators.framework.remote.VirtualDPad"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "android event:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-direct {p0, p1}, Lcom/nostalgiaemulators/framework/remote/VirtualDPad;->sendKeyEvent(Landroid/view/KeyEvent;)V

    .line 167
    return-void
.end method

.method public onControllerCommandEvent(III)V
    .locals 5
    .param p1, "command"    # I
    .param p2, "param0"    # I
    .param p3, "param1"    # I

    .prologue
    .line 178
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/remote/VirtualDPad;->textListeners:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 182
    return-void

    .line 178
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nostalgiaemulators/framework/remote/VirtualDPad$OnVirtualDPEventsListener;

    .line 179
    .local v0, "listener":Lcom/nostalgiaemulators/framework/remote/VirtualDPad$OnVirtualDPEventsListener;
    const-string v2, "com.nostalgiaemulators.framework.remote.VirtualDPad"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "command "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-interface {v0, p1, p2, p3}, Lcom/nostalgiaemulators/framework/remote/VirtualDPad$OnVirtualDPEventsListener;->onVirtualDPadCommandEvent(III)V

    goto :goto_0
.end method

.method public onControllerEmulatorKeyEvent(Lcom/nostalgiaemulators/framework/remote/ControllerKeyEvent;)V
    .locals 10
    .param p1, "event"    # Lcom/nostalgiaemulators/framework/remote/ControllerKeyEvent;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/remote/VirtualDPad;->connection:Landroid/view/inputmethod/InputConnection;

    if-nez v0, :cond_0

    .line 155
    :goto_0
    return-void

    .line 96
    :cond_0
    const/4 v9, 0x0

    .line 97
    .local v9, "pressJustOnce":Z
    const/4 v7, -0x1

    .line 99
    .local v7, "kc":I
    iget v0, p1, Lcom/nostalgiaemulators/framework/remote/ControllerKeyEvent;->keyCode:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 116
    :pswitch_1
    const/16 v7, 0x17

    .line 125
    :goto_1
    iget v0, p1, Lcom/nostalgiaemulators/framework/remote/ControllerKeyEvent;->action:I

    if-nez v0, :cond_2

    const/4 v6, 0x0

    .line 127
    .local v6, "action":I
    :goto_2
    new-instance v8, Landroid/view/KeyEvent;

    invoke-direct {v8, v6, v7}, Landroid/view/KeyEvent;-><init>(II)V

    .line 129
    .local v8, "keyEvent":Landroid/view/KeyEvent;
    if-nez v6, :cond_3

    .line 130
    if-nez v9, :cond_1

    .line 131
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/remote/VirtualDPad;->longPresHandlers:Ljava/util/HashMap;

    iget v2, p1, Lcom/nostalgiaemulators/framework/remote/ControllerKeyEvent;->keyCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/TimerTask;

    .line 133
    .local v1, "task":Ljava/util/TimerTask;
    if-nez v1, :cond_1

    .line 134
    new-instance v1, Lcom/nostalgiaemulators/framework/remote/VirtualDPad$1;

    .end local v1    # "task":Ljava/util/TimerTask;
    invoke-direct {v1, p0, v8}, Lcom/nostalgiaemulators/framework/remote/VirtualDPad$1;-><init>(Lcom/nostalgiaemulators/framework/remote/VirtualDPad;Landroid/view/KeyEvent;)V

    .line 140
    .restart local v1    # "task":Ljava/util/TimerTask;
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/remote/VirtualDPad;->longPresHandlers:Ljava/util/HashMap;

    iget v2, p1, Lcom/nostalgiaemulators/framework/remote/ControllerKeyEvent;->keyCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/remote/VirtualDPad;->timer:Ljava/util/Timer;

    const-wide/16 v2, 0x320

    const-wide/16 v4, 0x64

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 145
    .end local v1    # "task":Ljava/util/TimerTask;
    :cond_1
    invoke-direct {p0, v8}, Lcom/nostalgiaemulators/framework/remote/VirtualDPad;->sendKeyEvent(Landroid/view/KeyEvent;)V

    goto :goto_0

    .line 101
    .end local v6    # "action":I
    .end local v8    # "keyEvent":Landroid/view/KeyEvent;
    :pswitch_2
    const/16 v7, 0x15

    .line 102
    goto :goto_1

    .line 104
    :pswitch_3
    const/16 v7, 0x16

    .line 105
    goto :goto_1

    .line 107
    :pswitch_4
    const/16 v7, 0x13

    .line 108
    goto :goto_1

    .line 110
    :pswitch_5
    const/16 v7, 0x14

    .line 111
    goto :goto_1

    .line 113
    :pswitch_6
    const/16 v7, 0x17

    .line 114
    goto :goto_1

    .line 119
    :pswitch_7
    const/16 v7, 0x17

    .line 120
    goto :goto_1

    .line 126
    :cond_2
    const/4 v6, 0x1

    goto :goto_2

    .line 148
    .restart local v6    # "action":I
    .restart local v8    # "keyEvent":Landroid/view/KeyEvent;
    :cond_3
    if-nez v9, :cond_4

    .line 149
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/remote/VirtualDPad;->longPresHandlers:Ljava/util/HashMap;

    iget v2, p1, Lcom/nostalgiaemulators/framework/remote/ControllerKeyEvent;->keyCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 150
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/remote/VirtualDPad;->longPresHandlers:Ljava/util/HashMap;

    iget v2, p1, Lcom/nostalgiaemulators/framework/remote/ControllerKeyEvent;->keyCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_4
    invoke-direct {p0, v8}, Lcom/nostalgiaemulators/framework/remote/VirtualDPad;->sendKeyEvent(Landroid/view/KeyEvent;)V

    goto :goto_0

    .line 99
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onControllerTextEvent(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 171
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/remote/VirtualDPad;->textListeners:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 174
    return-void

    .line 171
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nostalgiaemulators/framework/remote/VirtualDPad$OnVirtualDPEventsListener;

    .line 172
    .local v0, "listener":Lcom/nostalgiaemulators/framework/remote/VirtualDPad$OnVirtualDPEventsListener;
    invoke-interface {v0, p1}, Lcom/nostalgiaemulators/framework/remote/VirtualDPad$OnVirtualDPEventsListener;->onVirtualDPadTextEvent(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/remote/VirtualDPad;->server:Lcom/nostalgiaemulators/framework/remote/ControllerEventSource;

    invoke-interface {v0}, Lcom/nostalgiaemulators/framework/remote/ControllerEventSource;->onPause()V

    .line 84
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/remote/VirtualDPad;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 85
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/remote/VirtualDPad;->longPresHandlers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 86
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/remote/VirtualDPad;->server:Lcom/nostalgiaemulators/framework/remote/ControllerEventSource;

    invoke-interface {v0}, Lcom/nostalgiaemulators/framework/remote/ControllerEventSource;->onResume()V

    .line 75
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/remote/VirtualDPad;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/remote/VirtualDPad;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 79
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/remote/VirtualDPad;->timer:Ljava/util/Timer;

    .line 80
    return-void
.end method

.method public onResume(Landroid/view/Window;)V
    .locals 0
    .param p1, "window"    # Landroid/view/Window;

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/nostalgiaemulators/framework/remote/VirtualDPad;->attachToWindow(Landroid/view/Window;)V

    .line 69
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/remote/VirtualDPad;->onResume()V

    .line 70
    return-void
.end method

.method public removeOnTextChangeListener(Lcom/nostalgiaemulators/framework/remote/VirtualDPad$OnVirtualDPEventsListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/nostalgiaemulators/framework/remote/VirtualDPad$OnVirtualDPEventsListener;

    .prologue
    .line 203
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/remote/VirtualDPad;->textListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 204
    return-void
.end method
