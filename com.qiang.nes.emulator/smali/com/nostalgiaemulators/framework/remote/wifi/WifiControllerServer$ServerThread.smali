.class Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$ServerThread;
.super Ljava/lang/Thread;
.source "WifiControllerServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServerThread"
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$nostalgiaemulators$framework$remote$wifi$WifiControllerServer$PACKET_TYPE:[I


# instance fields
.field private buffer:[B

.field private eventListener:Lcom/nostalgiaemulators/framework/remote/OnControllerEventListener;

.field private listenerLock:Ljava/lang/Object;

.field protected running:Ljava/util/concurrent/atomic/AtomicBoolean;

.field serverSocket:Ljava/net/DatagramSocket;

.field socketInitLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static synthetic $SWITCH_TABLE$com$nostalgiaemulators$framework$remote$wifi$WifiControllerServer$PACKET_TYPE()[I
    .locals 3

    .prologue
    .line 108
    sget-object v0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$ServerThread;->$SWITCH_TABLE$com$nostalgiaemulators$framework$remote$wifi$WifiControllerServer$PACKET_TYPE:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;->values()[Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;->ANDROID_KEY_PACKET:Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;

    invoke-virtual {v1}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;->COMMAND_PACKET:Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;

    invoke-virtual {v1}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;->EMULATOR_KEY_PACKET:Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;

    invoke-virtual {v1}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;->PING_PACKET:Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;

    invoke-virtual {v1}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;->TEXT_PACKET:Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;

    invoke-virtual {v1}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$ServerThread;->$SWITCH_TABLE$com$nostalgiaemulators$framework$remote$wifi$WifiControllerServer$PACKET_TYPE:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 117
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$ServerThread;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 118
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$ServerThread;->buffer:[B

    .line 119
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$ServerThread;->listenerLock:Ljava/lang/Object;

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$ServerThread;->serverSocket:Ljava/net/DatagramSocket;

    .line 152
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$ServerThread;->socketInitLatch:Ljava/util/concurrent/CountDownLatch;

    .line 108
    return-void
.end method

.method synthetic constructor <init>(Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$ServerThread;)V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$ServerThread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 36

    .prologue
    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$ServerThread;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    invoke-virtual/range {v32 .. v33}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 156
    const-string v32, "com.nostalgiaemulators.framework.remote.wifi.WifiControllerServer"

    new-instance v33, Ljava/lang/StringBuilder;

    const-string v34, "Starting remote controller SERVER THREAD "

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$ServerThread;->getName()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/nostalgiaemulators/framework/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    new-instance v18, Landroid/util/SparseIntArray;

    invoke-direct/range {v18 .. v18}, Landroid/util/SparseIntArray;-><init>()V

    .line 160
    .local v18, "lastKeyStates":Landroid/util/SparseIntArray;
    :try_start_0
    invoke-static {}, Ljava/nio/channels/DatagramChannel;->open()Ljava/nio/channels/DatagramChannel;

    move-result-object v7

    .line 161
    .local v7, "channel":Ljava/nio/channels/DatagramChannel;
    invoke-virtual {v7}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$ServerThread;->serverSocket:Ljava/net/DatagramSocket;

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$ServerThread;->serverSocket:Ljava/net/DatagramSocket;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    invoke-virtual/range {v32 .. v33}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$ServerThread;->serverSocket:Ljava/net/DatagramSocket;

    move-object/from16 v32, v0

    new-instance v33, Ljava/net/InetSocketAddress;

    const v34, 0xcfe0

    invoke-direct/range {v33 .. v34}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual/range {v32 .. v33}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$ServerThread;->serverSocket:Ljava/net/DatagramSocket;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 165
    const-string v32, "com.nostalgiaemulators.framework.remote.wifi.WifiControllerServer"

    const-string v33, "Start listening on"

    invoke-static/range {v32 .. v33}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$ServerThread;->socketInitLatch:Ljava/util/concurrent/CountDownLatch;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 168
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$ServerThread;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v32

    if-nez v32, :cond_2

    .line 283
    const-string v32, "com.nostalgiaemulators.framework.remote.wifi.WifiControllerServer"

    new-instance v33, Ljava/lang/StringBuilder;

    const-string v34, "Stopping remote controller SERVER THREAD "

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 284
    invoke-virtual/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$ServerThread;->getName()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .line 283
    invoke-static/range {v32 .. v33}, Lcom/nostalgiaemulators/framework/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$ServerThread;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    const/16 v34, 0x0

    invoke-virtual/range {v32 .. v34}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v32

    if-eqz v32, :cond_1

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$ServerThread;->serverSocket:Ljava/net/DatagramSocket;

    move-object/from16 v32, v0

    if-eqz v32, :cond_1

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$ServerThread;->serverSocket:Ljava/net/DatagramSocket;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/net/DatagramSocket;->close()V

    .line 297
    .end local v7    # "channel":Ljava/nio/channels/DatagramChannel;
    :cond_1
    :goto_1
    return-void

    .line 169
    .restart local v7    # "channel":Ljava/nio/channels/DatagramChannel;
    :cond_2
    :try_start_1
    new-instance v21, Ljava/net/DatagramPacket;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$ServerThread;->buffer:[B

    move-object/from16 v32, v0

    .line 170
    const/16 v33, 0x20

    .line 169
    move-object/from16 v0, v21

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Ljava/net/DatagramPacket;-><init>([BI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 173
    .local v21, "packet":Ljava/net/DatagramPacket;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$ServerThread;->serverSocket:Ljava/net/DatagramSocket;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 174
    invoke-virtual/range {v21 .. v21}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v9

    .line 175
    .local v9, "data":[B
    invoke-static {v9}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 176
    .local v6, "bb":Ljava/nio/ByteBuffer;
    invoke-static {}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;->values()[Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;

    move-result-object v32

    .line 177
    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v33

    .line 176
    aget-object v22, v32, v33

    .line 179
    .local v22, "packetType":Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;
    invoke-static {}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$ServerThread;->$SWITCH_TABLE$com$nostalgiaemulators$framework$remote$wifi$WifiControllerServer$PACKET_TYPE()[I

    move-result-object v32

    invoke-virtual/range {v22 .. v22}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;->ordinal()I

    move-result v33

    aget v32, v32, v33

    packed-switch v32, :pswitch_data_0

    goto/16 :goto_0

    .line 181
    :pswitch_0
    new-instance v27, Ljava/net/DatagramPacket;

    .line 182
    const/16 v32, 0x4

    move/from16 v0, v32

    new-array v0, v0, [B

    move-object/from16 v32, v0

    fill-array-data v32, :array_0

    const/16 v33, 0x4

    .line 183
    invoke-virtual/range {v21 .. v21}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v34

    invoke-virtual/range {v21 .. v21}, Ljava/net/DatagramPacket;->getPort()I

    move-result v35

    .line 181
    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move/from16 v2, v33

    move-object/from16 v3, v34

    move/from16 v4, v35

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 184
    .local v27, "responsePacket":Ljava/net/DatagramPacket;
    const-string v32, "com.nostalgiaemulators.framework.remote.wifi.WifiControllerServer"

    const-string v33, "sending response packet"

    invoke-static/range {v32 .. v33}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$ServerThread;->serverSocket:Ljava/net/DatagramSocket;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_0

    .line 267
    .end local v6    # "bb":Ljava/nio/ByteBuffer;
    .end local v9    # "data":[B
    .end local v22    # "packetType":Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;
    .end local v27    # "responsePacket":Ljava/net/DatagramPacket;
    :catch_0
    move-exception v10

    .line 268
    .local v10, "e":Ljava/net/SocketTimeoutException;
    :try_start_3
    const-string v32, "com.nostalgiaemulators.framework.remote.wifi.WifiControllerServer"

    const-string v33, "timeout"

    invoke-static/range {v32 .. v33}, Lcom/nostalgiaemulators/framework/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    .line 286
    .end local v7    # "channel":Ljava/nio/channels/DatagramChannel;
    .end local v10    # "e":Ljava/net/SocketTimeoutException;
    .end local v21    # "packet":Ljava/net/DatagramPacket;
    :catch_1
    move-exception v10

    .line 287
    .local v10, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v32, "com.nostalgiaemulators.framework.remote.wifi.WifiControllerServer"

    new-instance v33, Ljava/lang/StringBuilder;

    const-string v34, "Error: SERVER STOPPED "

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$ServerThread;->getName()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/nostalgiaemulators/framework/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string v32, "com.nostalgiaemulators.framework.remote.wifi.WifiControllerServer"

    const-string v33, ""

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-static {v0, v1, v10}, Lcom/nostalgiaemulators/framework/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$ServerThread;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    const/16 v34, 0x0

    invoke-virtual/range {v32 .. v34}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v32

    if-eqz v32, :cond_1

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$ServerThread;->serverSocket:Ljava/net/DatagramSocket;

    move-object/from16 v32, v0

    if-eqz v32, :cond_1

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$ServerThread;->serverSocket:Ljava/net/DatagramSocket;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/net/DatagramSocket;->close()V

    goto/16 :goto_1

    .line 188
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v6    # "bb":Ljava/nio/ByteBuffer;
    .restart local v7    # "channel":Ljava/nio/channels/DatagramChannel;
    .restart local v9    # "data":[B
    .restart local v21    # "packet":Ljava/net/DatagramPacket;
    .restart local v22    # "packetType":Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;
    :pswitch_1
    const/16 v32, 0x4

    :try_start_5
    move/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v25

    .line 189
    .local v25, "port":I
    const/16 v32, 0x8

    move/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v15

    .line 190
    .local v15, "keyStates":I
    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v17

    .line 192
    .local v17, "lastKeyState":I
    move/from16 v0, v17

    if-eq v0, v15, :cond_0

    .line 193
    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 194
    const/16 v20, 0x1

    .line 196
    .local v20, "mask":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    const/16 v32, 0x20

    move/from16 v0, v32

    if-ge v12, v0, :cond_0

    .line 197
    and-int v28, v15, v20

    .line 198
    .local v28, "s":I
    and-int v16, v17, v20

    .line 200
    .local v16, "l":I
    move/from16 v0, v28

    move/from16 v1, v16

    if-eq v0, v1, :cond_4

    .line 201
    new-instance v26, Lcom/nostalgiaemulators/framework/remote/ControllerKeyEvent;

    invoke-direct/range {v26 .. v26}, Lcom/nostalgiaemulators/framework/remote/ControllerKeyEvent;-><init>()V

    .line 202
    .local v26, "res":Lcom/nostalgiaemulators/framework/remote/ControllerKeyEvent;
    move/from16 v0, v28

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    const/16 v32, 0x0

    :goto_3
    move/from16 v0, v32

    move-object/from16 v1, v26

    iput v0, v1, Lcom/nostalgiaemulators/framework/remote/ControllerKeyEvent;->action:I

    .line 203
    move-object/from16 v0, v26

    iput v12, v0, Lcom/nostalgiaemulators/framework/remote/ControllerKeyEvent;->keyCode:I

    .line 204
    move/from16 v0, v25

    move-object/from16 v1, v26

    iput v0, v1, Lcom/nostalgiaemulators/framework/remote/ControllerKeyEvent;->port:I

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$ServerThread;->listenerLock:Ljava/lang/Object;

    move-object/from16 v33, v0

    monitor-enter v33
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 207
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$ServerThread;->eventListener:Lcom/nostalgiaemulators/framework/remote/OnControllerEventListener;

    move-object/from16 v32, v0

    if-eqz v32, :cond_3

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$ServerThread;->eventListener:Lcom/nostalgiaemulators/framework/remote/OnControllerEventListener;

    move-object/from16 v32, v0

    .line 209
    move-object/from16 v0, v32

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lcom/nostalgiaemulators/framework/remote/OnControllerEventListener;->onControllerEmulatorKeyEvent(Lcom/nostalgiaemulators/framework/remote/ControllerKeyEvent;)V

    .line 206
    :cond_3
    monitor-exit v33

    .line 214
    .end local v26    # "res":Lcom/nostalgiaemulators/framework/remote/ControllerKeyEvent;
    :cond_4
    shl-int/lit8 v20, v20, 0x1

    .line 196
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 202
    .restart local v26    # "res":Lcom/nostalgiaemulators/framework/remote/ControllerKeyEvent;
    :cond_5
    const/16 v32, 0x1

    goto :goto_3

    .line 206
    :catchall_0
    move-exception v32

    monitor-exit v33
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v32
    :try_end_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 270
    .end local v6    # "bb":Ljava/nio/ByteBuffer;
    .end local v9    # "data":[B
    .end local v12    # "i":I
    .end local v15    # "keyStates":I
    .end local v16    # "l":I
    .end local v17    # "lastKeyState":I
    .end local v20    # "mask":I
    .end local v22    # "packetType":Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;
    .end local v25    # "port":I
    .end local v26    # "res":Lcom/nostalgiaemulators/framework/remote/ControllerKeyEvent;
    .end local v28    # "s":I
    :catch_2
    move-exception v10

    .line 271
    .local v10, "e":Ljava/net/SocketException;
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$ServerThread;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v32

    if-eqz v32, :cond_0

    .line 272
    const-string v32, "com.nostalgiaemulators.framework.remote.wifi.WifiControllerServer"

    const-string v33, "socket close"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-static {v0, v1, v10}, Lcom/nostalgiaemulators/framework/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_0

    .line 290
    .end local v7    # "channel":Ljava/nio/channels/DatagramChannel;
    .end local v10    # "e":Ljava/net/SocketException;
    .end local v21    # "packet":Ljava/net/DatagramPacket;
    :catchall_1
    move-exception v32

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$ServerThread;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v33, v0

    const/16 v34, 0x1

    const/16 v35, 0x0

    invoke-virtual/range {v33 .. v35}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v33

    if-eqz v33, :cond_6

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$ServerThread;->serverSocket:Ljava/net/DatagramSocket;

    move-object/from16 v33, v0

    if-eqz v33, :cond_6

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$ServerThread;->serverSocket:Ljava/net/DatagramSocket;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/net/DatagramSocket;->close()V

    .line 296
    :cond_6
    throw v32

    .line 221
    .restart local v6    # "bb":Ljava/nio/ByteBuffer;
    .restart local v7    # "channel":Ljava/nio/channels/DatagramChannel;
    .restart local v9    # "data":[B
    .restart local v21    # "packet":Ljava/net/DatagramPacket;
    .restart local v22    # "packetType":Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;
    :pswitch_2
    const/16 v32, 0x4

    :try_start_9
    move/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v14

    .line 222
    .local v14, "keyCode":I
    const/16 v32, 0x8

    move/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v13

    .line 223
    .local v13, "keyAction":I
    new-instance v11, Landroid/view/KeyEvent;

    invoke-direct {v11, v13, v14}, Landroid/view/KeyEvent;-><init>(II)V

    .line 225
    .local v11, "event":Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$ServerThread;->listenerLock:Ljava/lang/Object;

    move-object/from16 v33, v0

    monitor-enter v33
    :try_end_9
    .catch Ljava/net/SocketTimeoutException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/net/SocketException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 226
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$ServerThread;->eventListener:Lcom/nostalgiaemulators/framework/remote/OnControllerEventListener;

    move-object/from16 v32, v0

    if-eqz v32, :cond_7

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$ServerThread;->eventListener:Lcom/nostalgiaemulators/framework/remote/OnControllerEventListener;

    move-object/from16 v32, v0

    .line 228
    move-object/from16 v0, v32

    invoke-interface {v0, v11}, Lcom/nostalgiaemulators/framework/remote/OnControllerEventListener;->onControllerAndroidKeyEvent(Landroid/view/KeyEvent;)V

    .line 225
    :cond_7
    monitor-exit v33

    goto/16 :goto_0

    :catchall_2
    move-exception v32

    monitor-exit v33
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v32
    :try_end_b
    .catch Ljava/net/SocketTimeoutException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/net/SocketException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 275
    .end local v6    # "bb":Ljava/nio/ByteBuffer;
    .end local v9    # "data":[B
    .end local v11    # "event":Landroid/view/KeyEvent;
    .end local v13    # "keyAction":I
    .end local v14    # "keyCode":I
    .end local v22    # "packetType":Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;
    :catch_3
    move-exception v10

    .line 276
    .local v10, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_c
    const-string v32, "com.nostalgiaemulators.framework.remote.wifi.WifiControllerServer"

    const-string v33, "Non supported packet"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-static {v0, v1, v10}, Lcom/nostalgiaemulators/framework/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto/16 :goto_0

    .line 235
    .end local v10    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v6    # "bb":Ljava/nio/ByteBuffer;
    .restart local v9    # "data":[B
    .restart local v22    # "packetType":Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;
    :pswitch_3
    const/16 v32, 0x4

    :try_start_d
    move/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v19

    .line 236
    .local v19, "len":I
    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v30, v0

    .line 237
    .local v30, "txtbuffer":[B
    new-instance v31, Ljava/net/DatagramPacket;

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 239
    .local v31, "txtpacket":Ljava/net/DatagramPacket;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$ServerThread;->serverSocket:Ljava/net/DatagramSocket;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 240
    invoke-virtual/range {v31 .. v31}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v5

    .line 241
    .local v5, "arr":[B
    new-instance v29, Ljava/lang/String;

    const/16 v32, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v32

    move/from16 v2, v19

    invoke-direct {v0, v5, v1, v2}, Ljava/lang/String;-><init>([BII)V

    .line 243
    .local v29, "txt":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$ServerThread;->listenerLock:Ljava/lang/Object;

    move-object/from16 v33, v0

    monitor-enter v33
    :try_end_d
    .catch Ljava/net/SocketTimeoutException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/net/SocketException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 244
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$ServerThread;->eventListener:Lcom/nostalgiaemulators/framework/remote/OnControllerEventListener;

    move-object/from16 v32, v0

    if-eqz v32, :cond_8

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$ServerThread;->eventListener:Lcom/nostalgiaemulators/framework/remote/OnControllerEventListener;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Lcom/nostalgiaemulators/framework/remote/OnControllerEventListener;->onControllerTextEvent(Ljava/lang/String;)V

    .line 243
    :cond_8
    monitor-exit v33

    goto/16 :goto_0

    :catchall_3
    move-exception v32

    monitor-exit v33
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :try_start_f
    throw v32
    :try_end_f
    .catch Ljava/net/SocketTimeoutException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/net/SocketException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_f .. :try_end_f} :catch_3
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 278
    .end local v5    # "arr":[B
    .end local v6    # "bb":Ljava/nio/ByteBuffer;
    .end local v9    # "data":[B
    .end local v19    # "len":I
    .end local v22    # "packetType":Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;
    .end local v29    # "txt":Ljava/lang/String;
    .end local v30    # "txtbuffer":[B
    .end local v31    # "txtpacket":Ljava/net/DatagramPacket;
    :catch_4
    move-exception v10

    .line 279
    .local v10, "e":Ljava/lang/Exception;
    :try_start_10
    const-string v32, "com.nostalgiaemulators.framework.remote.wifi.WifiControllerServer"

    const-string v33, ""

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-static {v0, v1, v10}, Lcom/nostalgiaemulators/framework/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto/16 :goto_0

    .line 252
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v6    # "bb":Ljava/nio/ByteBuffer;
    .restart local v9    # "data":[B
    .restart local v22    # "packetType":Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;
    :pswitch_4
    const/16 v32, 0x4

    :try_start_11
    move/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v8

    .line 253
    .local v8, "command":I
    const/16 v32, 0x8

    move/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v23

    .line 254
    .local v23, "param1":I
    const/16 v32, 0xc

    move/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v24

    .line 256
    .local v24, "param2":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$ServerThread;->listenerLock:Ljava/lang/Object;

    move-object/from16 v33, v0

    monitor-enter v33
    :try_end_11
    .catch Ljava/net/SocketTimeoutException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljava/net/SocketException; {:try_start_11 .. :try_end_11} :catch_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_11 .. :try_end_11} :catch_3
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 257
    :try_start_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$ServerThread;->eventListener:Lcom/nostalgiaemulators/framework/remote/OnControllerEventListener;

    move-object/from16 v32, v0

    if-eqz v32, :cond_9

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$ServerThread;->eventListener:Lcom/nostalgiaemulators/framework/remote/OnControllerEventListener;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v8, v1, v2}, Lcom/nostalgiaemulators/framework/remote/OnControllerEventListener;->onControllerCommandEvent(III)V

    .line 256
    :cond_9
    monitor-exit v33

    goto/16 :goto_0

    :catchall_4
    move-exception v32

    monitor-exit v33
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    :try_start_13
    throw v32
    :try_end_13
    .catch Ljava/net/SocketTimeoutException; {:try_start_13 .. :try_end_13} :catch_0
    .catch Ljava/net/SocketException; {:try_start_13 .. :try_end_13} :catch_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_13 .. :try_end_13} :catch_3
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_4
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 179
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 182
    :array_0
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method public setListener(Lcom/nostalgiaemulators/framework/remote/OnControllerEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/nostalgiaemulators/framework/remote/OnControllerEventListener;

    .prologue
    .line 112
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$ServerThread;->listenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 113
    :try_start_0
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$ServerThread;->eventListener:Lcom/nostalgiaemulators/framework/remote/OnControllerEventListener;

    .line 112
    monitor-exit v1

    .line 115
    return-void

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startListening(Lcom/nostalgiaemulators/framework/remote/OnControllerEventListener;)V
    .locals 2
    .param p1, "eventListener"    # Lcom/nostalgiaemulators/framework/remote/OnControllerEventListener;

    .prologue
    .line 122
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$ServerThread;->listenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 123
    :try_start_0
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$ServerThread;->eventListener:Lcom/nostalgiaemulators/framework/remote/OnControllerEventListener;

    .line 122
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$ServerThread;->start()V

    .line 127
    return-void

    .line 122
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public stopListening()V
    .locals 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$ServerThread;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$ServerThread;->socketInitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 137
    :goto_0
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$ServerThread;->serverSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 140
    :try_start_1
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$ServerThread;->join()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 146
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$ServerThread;->listenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 147
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$ServerThread;->eventListener:Lcom/nostalgiaemulators/framework/remote/OnControllerEventListener;

    .line 146
    monitor-exit v1

    .line 149
    return-void

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 142
    :catch_0
    move-exception v0

    goto :goto_1

    .line 134
    :catch_1
    move-exception v0

    goto :goto_0
.end method
