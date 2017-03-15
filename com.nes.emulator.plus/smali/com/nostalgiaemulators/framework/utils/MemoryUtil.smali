.class public Lcom/nostalgiaemulators/framework/utils/MemoryUtil;
.super Ljava/lang/Object;
.source "MemoryUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.nostalgiaemulators.framework.utils.MemoryUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static printMemoryInfo(Landroid/content/Context;)V
    .locals 22
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 36
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 37
    new-instance v11, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v11}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 39
    .local v11, "mi":Landroid/app/ActivityManager$MemoryInfo;
    const-string v13, "activity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 38
    check-cast v4, Landroid/app/ActivityManager;

    .line 40
    .local v4, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v4, v11}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 41
    iget-wide v0, v11, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    move-wide/from16 v18, v0

    const-wide/32 v20, 0x100000

    div-long v6, v18, v20

    .line 42
    .local v6, "availableMegs":J
    const-string v13, "com.nostalgiaemulators.framework.utils.MemoryUtil"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Memory report "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v13, v0}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v13, "com.nostalgiaemulators.framework.utils.MemoryUtil"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "act available memory:"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "MB"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v13, v0}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v13, "com.nostalgiaemulators.framework.utils.MemoryUtil"

    .line 45
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "memory: native heap alloc: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 45
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 44
    move-object/from16 v0, v18

    invoke-static {v13, v0}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v13, "com.nostalgiaemulators.framework.utils.MemoryUtil"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "memory: native heap free: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Debug;->getNativeHeapFreeSize()J

    move-result-wide v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v13, v0}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v18, 0xf

    move/from16 v0, v18

    if-le v13, v0, :cond_0

    .line 50
    iget-wide v0, v11, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    move-wide/from16 v18, v0

    const-wide/32 v20, 0x100000

    div-long v14, v18, v20

    .line 51
    .local v14, "totalMegs":J
    sub-long v16, v14, v6

    .line 52
    .local v16, "usedMegs":J
    const-string v13, "com.nostalgiaemulators.framework.utils.MemoryUtil"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "act total memory:"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "MB"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v13, v0}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v13, "com.nostalgiaemulators.framework.utils.MemoryUtil"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "act used memory:"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "MB"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v13, v0}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .end local v14    # "totalMegs":J
    .end local v16    # "usedMegs":J
    :cond_0
    invoke-virtual {v4}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v12

    .line 59
    .local v12, "runningAppProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_1
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-nez v18, :cond_2

    .line 69
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    .line 70
    .local v9, "info":Ljava/lang/Runtime;
    invoke-virtual {v9}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v18

    const-wide/32 v20, 0x100000

    div-long v6, v18, v20

    .line 71
    invoke-virtual {v9}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v18

    const-wide/32 v20, 0x100000

    div-long v14, v18, v20

    .line 72
    .restart local v14    # "totalMegs":J
    sub-long v16, v14, v6

    .line 73
    .restart local v16    # "usedMegs":J
    const-string v13, "com.nostalgiaemulators.framework.utils.MemoryUtil"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "runtime available memory:"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "MB"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v13, v0}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v13, "com.nostalgiaemulators.framework.utils.MemoryUtil"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "runtime total memory:"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "MB"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v13, v0}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v13, "com.nostalgiaemulators.framework.utils.MemoryUtil"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "runtime used memory:"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "MB"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v13, v0}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .end local v9    # "info":Ljava/lang/Runtime;
    .end local v14    # "totalMegs":J
    .end local v16    # "usedMegs":J
    :goto_1
    const-string v13, "com.nostalgiaemulators.framework.utils.MemoryUtil"

    const-string v18, "----------------------------------------"

    move-object/from16 v0, v18

    invoke-static {v13, v0}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void

    .line 59
    :cond_2
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 60
    .local v8, "i":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v0, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 62
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    iget v0, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v20, v0

    aput v20, v18, v19

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v10

    .line 63
    .local v10, "mem":[Landroid/os/Debug$MemoryInfo;
    const-string v18, "com.nostalgiaemulators.framework.utils.MemoryUtil"

    new-instance v19, Ljava/lang/StringBuilder;

    iget-object v0, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, " pss:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 64
    const/16 v20, 0x0

    aget-object v20, v10, v20

    invoke-virtual/range {v20 .. v20}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v20

    move/from16 v0, v20

    div-int/lit16 v0, v0, 0x400

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "MB"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 63
    invoke-static/range {v18 .. v19}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 77
    .end local v8    # "i":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v10    # "mem":[Landroid/os/Debug$MemoryInfo;
    :catch_0
    move-exception v5

    .line 78
    .local v5, "e":Ljava/lang/Exception;
    const-string v13, "com.nostalgiaemulators.framework.utils.MemoryUtil"

    const-string v18, ""

    move-object/from16 v0, v18

    invoke-static {v13, v0, v5}, Lcom/nostalgiaemulators/framework/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
