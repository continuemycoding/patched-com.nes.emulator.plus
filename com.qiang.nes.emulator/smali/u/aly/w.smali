.class public Lu/aly/w;
.super Ljava/lang/Object;
.source "UMStoreManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/aly/w$a;,
        Lu/aly/w$b;
    }
.end annotation


# static fields
.field public static final a:I = 0x801

.field public static final b:I = 0x802

.field private static c:Landroid/content/Context; = null

.field private static d:Ljava/lang/String; = null

.field private static final e:Ljava/lang/String; = "umeng+"

.field private static final f:Ljava/lang/String; = "ek__id"

.field private static final g:Ljava/lang/String; = "ek_key"


# instance fields
.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    sput-object v0, Lu/aly/w;->c:Landroid/content/Context;

    .line 34
    sput-object v0, Lu/aly/w;->d:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lu/aly/w;->h:Ljava/util/List;

    .line 46
    sget-object v0, Lu/aly/w;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 48
    invoke-direct {p0}, Lu/aly/w;->b()V

    .line 49
    iget-object v0, p0, Lu/aly/w;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 51
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lu/aly/w$1;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lu/aly/w;-><init>()V

    return-void
.end method

.method public static final a(Landroid/content/Context;)Lu/aly/w;
    .locals 1

    .prologue
    .line 54
    sput-object p0, Lu/aly/w;->c:Landroid/content/Context;

    .line 55
    invoke-static {}, Lu/aly/w$b;->a()Lu/aly/w;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 253
    .line 255
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "select "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "__sd"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " where "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "__ii"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 257
    const/4 v2, 0x0

    invoke-virtual {p3, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 259
    if-eqz v0, :cond_5

    .line 260
    :goto_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 261
    invoke-interface {v0, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 262
    invoke-virtual {p0, v1}, Lu/aly/w;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 267
    :goto_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 268
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 269
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 271
    :cond_1
    invoke-virtual {v1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 273
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lu/aly/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 274
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 275
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update __sd set "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" where "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "__ii"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 277
    invoke-virtual {p3, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 282
    :cond_2
    if-eqz v0, :cond_3

    .line 283
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 286
    :cond_3
    :goto_2
    return-void

    .line 280
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 282
    :goto_3
    if-eqz v0, :cond_3

    .line 283
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 282
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v1, :cond_4

    .line 283
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 282
    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_4

    .line 280
    :catch_1
    move-exception v1

    goto :goto_3

    :cond_5
    move-object v2, v1

    goto :goto_1
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 11

    .prologue
    const/4 v0, 0x0

    .line 312
    .line 315
    :try_start_0
    sget-object v1, Lu/aly/w;->c:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/u;->a(Landroid/content/Context;)Lu/aly/u;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/u;->a()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 316
    :try_start_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 317
    const-string v1, "select *  from __et"

    .line 318
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v1

    .line 319
    if-eqz v1, :cond_c

    .line 325
    :try_start_2
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 326
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 327
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 328
    const-string v0, "__t"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 329
    const-string v0, "__i"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 330
    const-string v6, "__s"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 331
    const-string v7, ""

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 332
    invoke-static {}, Lu/aly/bd;->a()Ljava/lang/String;

    move-result-object v0

    .line 334
    :cond_1
    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 336
    :pswitch_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 337
    new-instance v7, Lorg/json/JSONObject;

    invoke-virtual {p0, v6}, Lu/aly/w;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v7, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 338
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 339
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 343
    :goto_1
    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 344
    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 405
    :catch_0
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    .line 407
    :goto_2
    if-eqz v0, :cond_2

    .line 408
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 410
    :cond_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 411
    sget-object v0, Lu/aly/w;->c:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/u;->a(Landroid/content/Context;)Lu/aly/u;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/u;->b()V

    .line 414
    :goto_3
    return-void

    .line 341
    :cond_3
    :try_start_3
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 407
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v1, :cond_4

    .line 408
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 410
    :cond_4
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 411
    sget-object v1, Lu/aly/w;->c:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/u;->a(Landroid/content/Context;)Lu/aly/u;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/u;->b()V

    throw v0

    .line 348
    :pswitch_1
    :try_start_4
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 349
    new-instance v7, Lorg/json/JSONObject;

    invoke-virtual {p0, v6}, Lu/aly/w;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v7, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 350
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 351
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 355
    :goto_5
    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 356
    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 353
    :cond_5
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    goto :goto_5

    .line 364
    :cond_6
    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_9

    .line 365
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 366
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    .line 368
    :cond_7
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 369
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 370
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 371
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 372
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9, v8}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 373
    invoke-virtual {v7}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_7

    .line 374
    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_6

    .line 377
    :cond_8
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_9

    .line 378
    const-string v0, "ekv"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 381
    :cond_9
    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_c

    .line 382
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 383
    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 385
    :cond_a
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 386
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 387
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 388
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 389
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8, v7}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 390
    invoke-virtual {v6}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_a

    .line 391
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_7

    .line 394
    :cond_b
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_c

    .line 395
    const-string v0, "gkv"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 404
    :cond_c
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 407
    if-eqz v1, :cond_d

    .line 408
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 410
    :cond_d
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 411
    sget-object v0, Lu/aly/w;->c:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/u;->a(Landroid/content/Context;)Lu/aly/u;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/u;->b()V

    goto/16 :goto_3

    .line 407
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    goto/16 :goto_4

    :catchall_2
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto/16 :goto_4

    .line 405
    :catch_1
    move-exception v1

    move-object v1, v0

    goto/16 :goto_2

    :catch_2
    move-exception v1

    move-object v1, v2

    goto/16 :goto_2

    .line 334
    nop

    :pswitch_data_0
    .packed-switch 0x801
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private b()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 580
    :try_start_0
    sget-object v1, Lu/aly/w;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 581
    sget-object v1, Lu/aly/w;->c:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/ba;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 582
    const-string v1, "ek__id"

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 583
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 584
    sget-object v1, Lu/aly/w;->c:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/bu;->A(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 585
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 586
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "ek__id"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 589
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 590
    const/4 v3, 0x1

    const/16 v4, 0x9

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 591
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 593
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 594
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 595
    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 596
    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    .line 597
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 593
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 599
    :cond_1
    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    rsub-int/lit8 v4, v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 622
    :catch_0
    move-exception v0

    .line 624
    :cond_2
    :goto_2
    return-void

    .line 602
    :cond_3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 605
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lu/aly/w;->d:Ljava/lang/String;

    .line 607
    :cond_5
    sget-object v0, Lu/aly/w;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lu/aly/w;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v3, Lu/aly/w;->d:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lu/aly/w;->d:Ljava/lang/String;

    .line 612
    const-string v0, "ek_key"

    const/4 v1, 0x0

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 613
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 614
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ek_key"

    const-string v2, "umeng+"

    invoke-virtual {p0, v2}, Lu/aly/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 616
    :cond_6
    const-string v1, "umeng+"

    invoke-virtual {p0, v0}, Lu/aly/w;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 617
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lu/aly/w;->a(ZZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method

.method private b(Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 422
    .line 425
    :try_start_0
    sget-object v1, Lu/aly/w;->c:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/u;->a(Landroid/content/Context;)Lu/aly/u;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/u;->a()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 426
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 427
    const-string v2, "select *  from __er"

    .line 429
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 430
    if-eqz v0, :cond_3

    .line 431
    :try_start_2
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 432
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 433
    const-string v3, "__a"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 434
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 435
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {p0, v3}, Lu/aly/w;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 445
    :catch_0
    move-exception v2

    .line 447
    :goto_1
    if-eqz v0, :cond_1

    .line 448
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 450
    :cond_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 451
    sget-object v0, Lu/aly/w;->c:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/u;->a(Landroid/content/Context;)Lu/aly/u;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/u;->b()V

    .line 453
    :goto_2
    return-void

    .line 438
    :cond_2
    :try_start_3
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 439
    const-string v3, "error"

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 444
    :cond_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 447
    if-eqz v0, :cond_4

    .line 448
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 450
    :cond_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 451
    sget-object v0, Lu/aly/w;->c:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/u;->a(Landroid/content/Context;)Lu/aly/u;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/u;->b()V

    goto :goto_2

    .line 447
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_3
    if-eqz v1, :cond_5

    .line 448
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 450
    :cond_5
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 451
    sget-object v1, Lu/aly/w;->c:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/u;->a(Landroid/content/Context;)Lu/aly/u;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/u;->b()V

    throw v0

    .line 447
    :catchall_1
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_3

    :catchall_2
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_3

    .line 445
    :catch_1
    move-exception v1

    move-object v1, v0

    goto :goto_1
.end method

.method private c(Lorg/json/JSONObject;)V
    .locals 17

    .prologue
    .line 461
    const/4 v3, 0x0

    .line 462
    const/4 v2, 0x0

    .line 464
    :try_start_0
    sget-object v4, Lu/aly/w;->c:Landroid/content/Context;

    invoke-static {v4}, Lu/aly/u;->a(Landroid/content/Context;)Lu/aly/u;

    move-result-object v4

    invoke-virtual {v4}, Lu/aly/u;->a()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 465
    :try_start_1
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 466
    const-string v4, "select *  from __sd"

    .line 468
    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 469
    if-eqz v2, :cond_7

    .line 471
    :try_start_2
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 473
    move-object/from16 v0, p0

    iget-object v5, v0, Lu/aly/w;->h:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 474
    :cond_0
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 475
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 476
    const-string v6, "__f"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 477
    const-string v7, "__e"

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 479
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 480
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    sub-long/2addr v8, v10

    .line 481
    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_0

    .line 482
    const-string v8, "__a"

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 483
    const-string v9, "__b"

    .line 484
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 485
    const-string v10, "__c"

    .line 486
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 487
    const-string v11, "__d"

    .line 488
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 489
    const-string v12, "__ii"

    .line 490
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 491
    move-object/from16 v0, p0

    iget-object v13, v0, Lu/aly/w;->h:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 492
    const-string v13, "id"

    invoke-virtual {v5, v13, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 493
    const-string v12, "start_time"

    invoke-virtual {v5, v12, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 494
    const-string v12, "end_time"

    invoke-virtual {v5, v12, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 495
    const-string v12, "duration"

    .line 496
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    sub-long v6, v14, v6

    .line 495
    invoke-virtual {v5, v12, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 497
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 498
    const-string v6, "pages"

    new-instance v7, Lorg/json/JSONArray;

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lu/aly/w;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 500
    :cond_1
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 501
    const-string v6, "autopages"

    new-instance v7, Lorg/json/JSONArray;

    .line 502
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lu/aly/w;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 501
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 504
    :cond_2
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 505
    const-string v6, "traffic"

    new-instance v7, Lorg/json/JSONObject;

    .line 506
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lu/aly/w;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 505
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 508
    :cond_3
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 509
    const-string v6, "locations"

    new-instance v7, Lorg/json/JSONArray;

    .line 510
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lu/aly/w;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 509
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 512
    :cond_4
    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 513
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/16 :goto_0

    .line 526
    :catch_0
    move-exception v4

    .line 528
    if-eqz v2, :cond_5

    .line 529
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 531
    :cond_5
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 532
    sget-object v2, Lu/aly/w;->c:Landroid/content/Context;

    invoke-static {v2}, Lu/aly/u;->a(Landroid/content/Context;)Lu/aly/u;

    move-result-object v2

    invoke-virtual {v2}, Lu/aly/u;->b()V

    .line 534
    :goto_1
    return-void

    .line 519
    :cond_6
    :try_start_3
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_7

    .line 520
    const-string v5, "sessions"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 525
    :cond_7
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 528
    if-eqz v2, :cond_8

    .line 529
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 531
    :cond_8
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 532
    sget-object v2, Lu/aly/w;->c:Landroid/content/Context;

    invoke-static {v2}, Lu/aly/u;->a(Landroid/content/Context;)Lu/aly/u;

    move-result-object v2

    invoke-virtual {v2}, Lu/aly/u;->b()V

    goto :goto_1

    .line 528
    :catchall_0
    move-exception v4

    move-object/from16 v16, v4

    move-object v4, v3

    move-object v3, v2

    move-object/from16 v2, v16

    :goto_2
    if-eqz v3, :cond_9

    .line 529
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 531
    :cond_9
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 532
    sget-object v3, Lu/aly/w;->c:Landroid/content/Context;

    invoke-static {v3}, Lu/aly/u;->a(Landroid/content/Context;)Lu/aly/u;

    move-result-object v3

    invoke-virtual {v3}, Lu/aly/u;->b()V

    throw v2

    .line 528
    :catchall_1
    move-exception v4

    move-object/from16 v16, v4

    move-object v4, v3

    move-object v3, v2

    move-object/from16 v2, v16

    goto :goto_2

    :catchall_2
    move-exception v4

    move-object/from16 v16, v4

    move-object v4, v3

    move-object v3, v2

    move-object/from16 v2, v16

    goto :goto_2
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 633
    const/4 v0, 0x0

    .line 635
    :try_start_0
    sget-object v1, Lu/aly/w;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 643
    :goto_0
    return-object p1

    .line 638
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    sget-object v2, Lu/aly/w;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v1, v2}, Lu/aly/bs;->a([B[B)[B

    move-result-object v1

    .line 639
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    .line 641
    :catch_0
    move-exception v1

    move-object p1, v0

    goto :goto_0
.end method

.method public a()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 295
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 297
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 298
    invoke-direct {p0, v1}, Lu/aly/w;->c(Lorg/json/JSONObject;)V

    .line 299
    invoke-direct {p0, v1}, Lu/aly/w;->b(Lorg/json/JSONObject;)V

    .line 300
    invoke-direct {p0, v1}, Lu/aly/w;->a(Lorg/json/JSONObject;)V

    .line 302
    :try_start_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 303
    const-string v2, "body"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    :cond_0
    :goto_0
    return-object v0

    .line 305
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public a(Lorg/json/JSONArray;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 59
    .line 63
    :try_start_0
    sget-object v1, Lu/aly/w;->c:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/u;->a(Landroid/content/Context;)Lu/aly/u;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/u;->a()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 64
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 65
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    if-ge v1, v2, :cond_1

    .line 67
    :try_start_2
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 68
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 69
    const-string v2, "__i"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 70
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 71
    sget-object v2, Lu/aly/w;->c:Landroid/content/Context;

    invoke-static {v2}, Lu/aly/bd;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 72
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 73
    const-string v2, ""

    .line 76
    :cond_0
    const-string v5, "__i"

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v2, "__e"

    const-string v5, "id"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v2, "__t"

    const-string v5, "__t"

    .line 79
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 78
    invoke-virtual {v4, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 80
    const-string v2, "__i"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    const-string v2, "__t"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 82
    const-string v2, "__s"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lu/aly/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v2, "__et"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 65
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    :cond_1
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 90
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 91
    sget-object v0, Lu/aly/w;->c:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/u;->a(Landroid/content/Context;)Lu/aly/u;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/u;->b()V

    .line 93
    :goto_2
    return-void

    .line 88
    :catch_0
    move-exception v1

    .line 90
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 91
    sget-object v0, Lu/aly/w;->c:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/u;->a(Landroid/content/Context;)Lu/aly/u;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/u;->b()V

    goto :goto_2

    .line 90
    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 91
    sget-object v1, Lu/aly/w;->c:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/u;->a(Landroid/content/Context;)Lu/aly/u;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/u;->b()V

    throw v0

    .line 90
    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_3

    .line 84
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public a(ZZ)V
    .locals 5

    .prologue
    .line 540
    const/4 v0, 0x0

    .line 542
    :try_start_0
    sget-object v1, Lu/aly/w;->c:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/u;->a(Landroid/content/Context;)Lu/aly/u;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/u;->a()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 543
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 544
    const-string v0, "delete from __er"

    .line 545
    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 546
    const-string v0, "delete from __et"

    .line 547
    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 548
    if-eqz p2, :cond_1

    .line 549
    if-eqz p1, :cond_0

    .line 550
    const-string v0, "delete from __sd"

    .line 551
    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 564
    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 567
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 568
    sget-object v0, Lu/aly/w;->c:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/u;->a(Landroid/content/Context;)Lu/aly/u;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/u;->b()V

    .line 570
    :goto_1
    return-void

    .line 554
    :cond_1
    :try_start_2
    iget-object v0, p0, Lu/aly/w;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 555
    const/4 v0, 0x0

    move v2, v0

    :goto_2
    iget-object v0, p0, Lu/aly/w;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete from __sd where __ii=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lu/aly/w;->h:Ljava/util/List;

    .line 557
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 558
    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 555
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 561
    :cond_2
    iget-object v0, p0, Lu/aly/w;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 565
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 567
    :goto_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 568
    sget-object v0, Lu/aly/w;->c:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/u;->a(Landroid/content/Context;)Lu/aly/u;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/u;->b()V

    goto :goto_1

    .line 567
    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 568
    sget-object v1, Lu/aly/w;->c:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/u;->a(Landroid/content/Context;)Lu/aly/u;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/u;->b()V

    throw v0

    .line 567
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 565
    :catch_1
    move-exception v1

    goto :goto_3
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 107
    .line 109
    :try_start_0
    sget-object v1, Lu/aly/w;->c:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/u;->a(Landroid/content/Context;)Lu/aly/u;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/u;->a()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 110
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 111
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 112
    const-string v2, "__i"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0, p2}, Lu/aly/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 114
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 115
    const-string v3, "__a"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v2, "__t"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 117
    const-string v2, "__er"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 119
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 122
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 123
    sget-object v0, Lu/aly/w;->c:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/u;->a(Landroid/content/Context;)Lu/aly/u;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/u;->b()V

    .line 125
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 120
    :catch_0
    move-exception v1

    .line 122
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 123
    sget-object v0, Lu/aly/w;->c:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/u;->a(Landroid/content/Context;)Lu/aly/u;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/u;->b()V

    goto :goto_0

    .line 122
    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 123
    sget-object v1, Lu/aly/w;->c:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/u;->a(Landroid/content/Context;)Lu/aly/u;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/u;->b()V

    throw v0

    .line 122
    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;Lu/aly/w$a;)Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x0

    .line 138
    if-nez p2, :cond_0

    .line 238
    :goto_0
    return v5

    .line 144
    :cond_0
    :try_start_0
    sget-object v1, Lu/aly/w;->c:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/u;->a(Landroid/content/Context;)Lu/aly/u;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/u;->a()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 145
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 146
    sget-object v2, Lu/aly/w$a;->c:Lu/aly/w$a;

    if-ne p3, v2, :cond_2

    .line 148
    const-string v0, "__e"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 149
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 150
    const-string v4, "__ii"

    invoke-virtual {v0, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v4, "__e"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v2, "__sd"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 232
    :cond_1
    :goto_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 235
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 236
    sget-object v0, Lu/aly/w;->c:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/u;->a(Landroid/content/Context;)Lu/aly/u;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/u;->b()V

    goto :goto_0

    .line 153
    :cond_2
    :try_start_2
    sget-object v2, Lu/aly/w$a;->d:Lu/aly/w$a;

    if-ne p3, v2, :cond_3

    .line 155
    const-string v0, "__f"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update __sd set __f=\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\" where "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "__ii"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 233
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 235
    :goto_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 236
    sget-object v0, Lu/aly/w;->c:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/u;->a(Landroid/content/Context;)Lu/aly/u;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/u;->b()V

    goto/16 :goto_0

    .line 160
    :cond_3
    :try_start_3
    sget-object v2, Lu/aly/w$a;->b:Lu/aly/w$a;

    if-ne p3, v2, :cond_4

    .line 161
    const-string v0, "__a"

    invoke-direct {p0, p1, p2, v1, v0}, Lu/aly/w;->a(Ljava/lang/String;Lorg/json/JSONObject;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 235
    :catchall_0
    move-exception v0

    :goto_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 236
    sget-object v1, Lu/aly/w;->c:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/u;->a(Landroid/content/Context;)Lu/aly/u;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/u;->b()V

    throw v0

    .line 163
    :cond_4
    :try_start_4
    sget-object v2, Lu/aly/w$a;->a:Lu/aly/w$a;

    if-ne p3, v2, :cond_5

    .line 164
    const-string v0, "__b"

    invoke-direct {p0, p1, p2, v1, v0}, Lu/aly/w;->a(Ljava/lang/String;Lorg/json/JSONObject;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 166
    :cond_5
    sget-object v2, Lu/aly/w$a;->e:Lu/aly/w$a;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-ne p3, v2, :cond_1

    .line 171
    :try_start_5
    const-string v2, "__d"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v2

    move-object v3, v2

    .line 177
    :goto_4
    if-eqz v3, :cond_a

    .line 179
    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "select __d from __sd where __ii=\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 182
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 183
    if-eqz v2, :cond_a

    .line 184
    :goto_5
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 185
    const-string v0, "__d"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 186
    invoke-virtual {p0, v0}, Lu/aly/w;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v0

    goto :goto_5

    .line 172
    :catch_1
    move-exception v2

    move-object v3, v0

    goto :goto_4

    :cond_6
    move-object v2, v0

    .line 192
    :goto_6
    if-eqz v3, :cond_8

    .line 193
    :try_start_7
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 194
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 195
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 197
    :cond_7
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 199
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lu/aly/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 200
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 201
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update  __sd set __d=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\" where "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "__ii"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 204
    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 211
    :cond_8
    :goto_7
    :try_start_8
    const-string v0, "__c"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 212
    if-eqz v0, :cond_9

    .line 213
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lu/aly/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 214
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 215
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update  __sd set __c=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\" where "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "__ii"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 218
    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 224
    :cond_9
    :goto_8
    :try_start_9
    const-string v0, "__f"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update  __sd set __f=\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 226
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\" where "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "__ii"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_1

    .line 229
    :catch_2
    move-exception v0

    goto/16 :goto_1

    .line 235
    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto/16 :goto_3

    .line 233
    :catch_3
    move-exception v1

    goto/16 :goto_2

    .line 221
    :catch_4
    move-exception v0

    goto :goto_8

    .line 207
    :catch_5
    move-exception v0

    goto/16 :goto_7

    :cond_a
    move-object v2, v0

    goto/16 :goto_6
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 653
    const/4 v0, 0x0

    .line 655
    :try_start_0
    sget-object v1, Lu/aly/w;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 663
    :goto_0
    return-object p1

    .line 658
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    .line 659
    new-instance p1, Ljava/lang/String;

    sget-object v2, Lu/aly/w;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v1, v2}, Lu/aly/bs;->b([B[B)[B

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 661
    :catch_0
    move-exception v1

    move-object p1, v0

    goto :goto_0
.end method
