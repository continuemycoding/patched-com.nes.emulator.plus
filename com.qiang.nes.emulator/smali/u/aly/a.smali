.class public Lu/aly/a;
.super Ljava/lang/Object;
.source "CCSQLManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lu/aly/i;)Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 183
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 184
    const-string v1, "key"

    invoke-virtual {p0}, Lu/aly/i;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v1, "label"

    invoke-virtual {p0}, Lu/aly/i;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string v1, "count"

    invoke-virtual {p0}, Lu/aly/i;->g()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 187
    const-string v1, "value"

    invoke-virtual {p0}, Lu/aly/i;->f()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 188
    const-string v1, "totalTimestamp"

    invoke-virtual {p0}, Lu/aly/i;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 189
    const-string v1, "timeWindowNum"

    invoke-virtual {p0}, Lu/aly/i;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    return-object v0
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 381
    .line 384
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 385
    const-string v0, "aggregated_cache"

    invoke-static {p0, v0}, Lu/aly/a;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_1

    .line 386
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 399
    if-eqz v1, :cond_0

    .line 400
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 402
    :cond_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 404
    :goto_0
    return-object v0

    .line 388
    :cond_1
    :try_start_1
    const-string v0, "select * from aggregated_cache"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 389
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToLast()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 391
    const-string v0, "timeWindowNum"

    .line 392
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    .line 394
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 399
    if-eqz v2, :cond_2

    .line 400
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 402
    :cond_2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 395
    :catch_0
    move-exception v0

    move-object v2, v1

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    .line 396
    :goto_2
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryLastTimeWindowNumFromCache error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lu/aly/bx;->e(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 399
    if-eqz v2, :cond_3

    .line 400
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 402
    :cond_3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 399
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_3
    if-eqz v2, :cond_4

    .line 400
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 402
    :cond_4
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 399
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 395
    :catch_1
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_2

    :cond_5
    move-object v0, v1

    goto :goto_1
.end method

.method public static a(Lu/aly/f;Landroid/database/sqlite/SQLiteDatabase;)Lorg/json/JSONObject;
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 471
    .line 473
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 474
    const-string v0, "system"

    invoke-static {p1, v0}, Lu/aly/a;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    .line 475
    const-string v0, "select * from system"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 478
    :goto_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    if-eqz v3, :cond_3

    .line 482
    :try_start_2
    const-string v3, "key"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 483
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 484
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 485
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 489
    :goto_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 490
    const-string v6, "value"

    const-string v7, "count"

    .line 491
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 490
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 492
    const-string v6, "ts"

    const-string v7, "timeStamp"

    .line 493
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 492
    invoke-virtual {v5, v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 494
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 495
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 496
    :catch_0
    move-exception v3

    goto :goto_0

    .line 487
    :cond_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 501
    :catch_1
    move-exception v2

    move-object v10, v2

    move-object v2, v0

    move-object v0, v10

    .line 502
    :goto_2
    :try_start_3
    const-string v3, "faild"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lu/aly/f;->a(Ljava/lang/Object;Z)V

    .line 503
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readAllSystemDataForUpload error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lu/aly/bx;->e(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 505
    if-eqz v2, :cond_1

    .line 506
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 509
    :cond_1
    :goto_3
    return-object v1

    :cond_2
    move-object v0, v1

    .line 505
    :cond_3
    if-eqz v0, :cond_4

    .line 506
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v1, v2

    goto :goto_3

    .line 505
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_4
    if-eqz v2, :cond_5

    .line 506
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 505
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_4

    .line 501
    :catch_2
    move-exception v0

    move-object v2, v1

    goto :goto_2
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;JJ)V
    .locals 4

    .prologue
    .line 256
    :try_start_0
    const-string v0, "system"

    invoke-static {p0, v0}, Lu/aly/a;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v0

    .line 257
    invoke-static {}, Lu/aly/n;->a()Lu/aly/n;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/n;->c()I

    move-result v1

    .line 258
    if-ge v0, v1, :cond_0

    .line 259
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 260
    const-string v1, "key"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string v1, "timeStamp"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 262
    const-string v1, "count"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 263
    const-string v1, "system"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 276
    :goto_0
    return-void

    .line 264
    :cond_0
    if-ne v0, v1, :cond_1

    .line 265
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 266
    const-string v1, "key"

    const-string v2, "__meta_ve_of"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string v1, "timeStamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 268
    const-string v1, "count"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 269
    const-string v1, "system"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0

    .line 274
    :catch_0
    move-exception v0

    goto :goto_0

    .line 272
    :cond_1
    const-string v0, "__meta_ve_of"

    invoke-static {p0, v0}, Lu/aly/a;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Map;Lu/aly/f;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lu/aly/k;",
            ">;",
            "Lu/aly/f;",
            ")V"
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 335
    .line 337
    :try_start_0
    const-string v0, "__ag_of"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/k;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    if-nez v0, :cond_1

    .line 367
    if-eqz v1, :cond_0

    .line 368
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 371
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    :try_start_1
    const-string v5, "system where key=\"__ag_of\""

    .line 343
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "select * from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 346
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-wide v2, v6

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    if-nez v8, :cond_3

    .line 348
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-lez v8, :cond_2

    .line 349
    const-string v2, "count"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 350
    const-string v2, "timeStamp"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 352
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "delete from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 346
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 364
    :catch_0
    move-exception v0

    .line 365
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "save to system table error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lu/aly/bx;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 367
    if-eqz v1, :cond_0

    .line 368
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 356
    :cond_3
    :try_start_3
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 357
    const-string v5, "key"

    invoke-virtual {v0}, Lu/aly/k;->c()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const-string v9, "count"

    if-nez v4, :cond_5

    .line 359
    invoke-virtual {v0}, Lu/aly/k;->e()J

    move-result-wide v4

    :goto_2
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 358
    invoke-virtual {v8, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 360
    const-string v4, "timeStamp"

    cmp-long v5, v2, v6

    if-nez v5, :cond_4

    .line 361
    invoke-virtual {v0}, Lu/aly/k;->d()J

    move-result-wide v2

    :cond_4
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 360
    invoke-virtual {v8, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 362
    const-string v0, "system"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 363
    const-string v0, "success"

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Lu/aly/f;->a(Ljava/lang/Object;Z)V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 367
    if-eqz v1, :cond_0

    .line 368
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 359
    :cond_5
    int-to-long v4, v4

    :try_start_4
    invoke-virtual {v0}, Lu/aly/k;->e()J
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-wide v10

    add-long/2addr v4, v10

    goto :goto_2

    .line 367
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_6

    .line 368
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;ZLu/aly/f;)V
    .locals 2

    .prologue
    .line 240
    const-string v0, "system"

    invoke-static {p0, v0}, Lu/aly/a;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 241
    const-string v0, "aggregated"

    invoke-static {p0, v0}, Lu/aly/a;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 243
    if-nez p1, :cond_0

    .line 244
    const-string v0, "limitedck"

    invoke-static {p0, v0}, Lu/aly/a;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 245
    const-string v0, "success"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lu/aly/f;->a(Ljava/lang/Object;Z)V

    .line 247
    :cond_0
    return-void
.end method

.method public static a(Lu/aly/f;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu/aly/f;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 308
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 309
    const-string v0, "limitedck"

    invoke-static {p1, v0}, Lu/aly/a;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 310
    const-string v0, "limitedck"

    invoke-static {p1, v0}, Lu/aly/a;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 313
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 314
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 315
    const-string v3, "ck"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const-string v0, "limitedck"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 320
    :catch_0
    move-exception v0

    .line 321
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertToLimitCKTable error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lu/aly/bx;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 323
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 325
    :goto_1
    return-void

    .line 318
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 319
    const-string v0, "success"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lu/aly/f;->a(Ljava/lang/Object;Z)V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 323
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 36
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "drop table if exists "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    const-string v1, "delete table faild!"

    invoke-static {v1}, Lu/aly/bx;->e(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V

    .line 41
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Collection",
            "<",
            "Lu/aly/i;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 105
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 106
    const-string v0, "aggregated_cache"

    invoke-static {p0, v0}, Lu/aly/a;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 107
    const-string v0, "aggregated_cache"

    invoke-static {p0, v0}, Lu/aly/a;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 109
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/i;

    .line 110
    invoke-static {v0}, Lu/aly/a;->a(Lu/aly/i;)Landroid/content/ContentValues;

    move-result-object v0

    .line 111
    const-string v2, "aggregated_cache"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    :try_start_1
    const-string v0, "insert to Aggregated cache table faild!"

    invoke-static {v0}, Lu/aly/bx;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    const/4 v0, 0x0

    .line 118
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 120
    :goto_1
    return v0

    .line 113
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 118
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 120
    const/4 v0, 0x1

    goto :goto_1

    .line 118
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Lu/aly/f;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 152
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 153
    const-string v1, "aggregated_cache"

    invoke-static {p0, v1}, Lu/aly/a;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_0

    .line 154
    const-string v1, "faild"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lu/aly/f;->a(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 175
    :goto_0
    return v0

    .line 157
    :cond_0
    :try_start_1
    const-string v1, "insert into aggregated(key, count, value, totalTimestamp, timeWindowNum, label) select key, count, value, totalTimestamp, timeWindowNum, label from aggregated_cache"

    .line 164
    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 166
    const-string v1, "aggregated_cache"

    invoke-static {p0, v1}, Lu/aly/a;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 167
    const-string v1, "success"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lu/aly/f;->a(Ljava/lang/Object;Z)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 175
    const/4 v0, 0x1

    goto :goto_0

    .line 168
    :catch_0
    move-exception v1

    .line 169
    const/4 v2, 0x0

    :try_start_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lu/aly/f;->a(Ljava/lang/Object;Z)V

    .line 170
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cacheToAggregatedTable happen "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lu/aly/bx;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 173
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public static a(Lu/aly/f;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu/aly/f;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Collection",
            "<",
            "Lu/aly/i;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 126
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 127
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/i;

    .line 128
    invoke-static {v0}, Lu/aly/a;->a(Lu/aly/i;)Landroid/content/ContentValues;

    move-result-object v0

    .line 129
    const-string v3, "aggregated"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    :try_start_1
    const-string v0, "insert to Aggregated cache table faild!"

    invoke-static {v0}, Lu/aly/bx;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v0, v1

    .line 140
    :goto_1
    return v0

    .line 131
    :cond_0
    :try_start_2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 132
    const-string v0, "aggregated_cache"

    invoke-static {p1, v0}, Lu/aly/a;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 133
    const-string v0, "success"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lu/aly/f;->a(Ljava/lang/Object;Z)V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 138
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 140
    const/4 v0, 0x1

    goto :goto_1

    .line 138
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public static b(Landroid/database/sqlite/SQLiteDatabase;)Lorg/json/JSONObject;
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 414
    .line 416
    :try_start_0
    const-string v0, "aggregated"

    invoke-static {p0, v0}, Lu/aly/a;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_4

    .line 418
    const-string v0, "select * from aggregated"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 420
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 423
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    if-eqz v3, :cond_3

    .line 427
    :try_start_2
    const-string v3, "key"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 428
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 429
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 430
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 434
    :goto_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 435
    const-string v6, "v_sum"

    const-string v7, "value"

    .line 436
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 435
    invoke-virtual {v5, v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 437
    const-string v6, "ts_sum"

    const-string v7, "totalTimestamp"

    .line 438
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 437
    invoke-virtual {v5, v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 439
    const-string v6, "tw_num"

    const-string v7, "timeWindowNum"

    .line 440
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 439
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 441
    const-string v6, "count"

    const-string v7, "count"

    .line 442
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 441
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 444
    const-string v6, "labels"

    const-string v7, "label"

    .line 445
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 444
    invoke-static {v7}, Lu/aly/d;->a(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 446
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 447
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 448
    :catch_0
    move-exception v3

    goto :goto_0

    .line 432
    :cond_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 454
    :catch_1
    move-exception v0

    .line 455
    :goto_2
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readAllAggregatedDataForUpload error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lu/aly/bx;->e(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 457
    if-eqz v2, :cond_1

    .line 458
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_3
    move-object v0, v1

    .line 461
    :cond_2
    :goto_4
    return-object v0

    .line 457
    :cond_3
    if-eqz v2, :cond_2

    .line 458
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .line 457
    :cond_4
    if-eqz v1, :cond_1

    .line 458
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 457
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_5
    if-eqz v2, :cond_5

    .line 458
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 457
    :catchall_1
    move-exception v0

    goto :goto_5

    .line 454
    :catch_2
    move-exception v0

    move-object v2, v1

    goto :goto_2
.end method

.method public static b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 54
    :try_start_0
    invoke-static {p0, p1}, Lu/aly/a;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delete from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cleanTableData faild!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lu/aly/bx;->e(Ljava/lang/String;)V

    .line 64
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/database/sqlite/SQLiteDatabase;Lu/aly/f;)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 198
    .line 202
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 203
    const-string v2, "select * from aggregated_cache"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 204
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 205
    new-instance v2, Lu/aly/i;

    invoke-direct {v2}, Lu/aly/i;-><init>()V

    .line 206
    const-string v3, "key"

    .line 207
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lu/aly/d;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 206
    invoke-virtual {v2, v3}, Lu/aly/i;->a(Ljava/util/List;)V

    .line 208
    const-string v3, "label"

    .line 209
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lu/aly/d;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 208
    invoke-virtual {v2, v3}, Lu/aly/i;->b(Ljava/util/List;)V

    .line 210
    const-string v3, "count"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Lu/aly/i;->c(J)V

    .line 211
    const-string v3, "value"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Lu/aly/i;->b(J)V

    .line 212
    const-string v3, "timeWindowNum"

    .line 213
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 212
    invoke-virtual {v2, v3}, Lu/aly/i;->b(Ljava/lang/String;)V

    .line 214
    const-string v3, "totalTimestamp"

    .line 215
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 214
    invoke-virtual {v2, v4, v5}, Lu/aly/i;->a(J)V

    .line 216
    const-string v3, "key"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lu/aly/d;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    const/4 v2, 0x0

    :try_start_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lu/aly/f;->a(Ljava/lang/Object;Z)V

    .line 226
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cacheToMemory happen "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lu/aly/bx;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 228
    if-eqz v1, :cond_0

    .line 229
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 232
    :cond_0
    :goto_1
    return v6

    .line 219
    :cond_1
    :try_start_2
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 220
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lu/aly/f;->a(Ljava/lang/Object;Z)V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 228
    :goto_2
    if-eqz v1, :cond_0

    .line 229
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 222
    :cond_2
    :try_start_3
    const-string v0, "faild"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lu/aly/f;->a(Ljava/lang/Object;Z)V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 228
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    .line 229
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 77
    const/4 v0, 0x0

    .line 80
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "select * from "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 81
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 85
    if-eqz v2, :cond_0

    .line 86
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 89
    :cond_0
    :goto_0
    return v0

    .line 82
    :catch_0
    move-exception v1

    .line 83
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "count error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lu/aly/bx;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    if-eqz v2, :cond_0

    .line 86
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 85
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_1

    .line 86
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0
.end method

.method public static c(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 520
    .line 522
    :try_start_0
    const-string v0, "limitedck"

    invoke-static {p0, v0}, Lu/aly/a;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_3

    .line 523
    const-string v0, "select * from limitedck"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 524
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 526
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 527
    const-string v3, "ck"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 528
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 532
    :catch_0
    move-exception v0

    .line 533
    :goto_1
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadLimitCKFromDB error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lu/aly/bx;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 535
    if-eqz v2, :cond_0

    .line 536
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_2
    move-object v0, v1

    .line 539
    :cond_1
    :goto_3
    return-object v0

    .line 535
    :cond_2
    if-eqz v2, :cond_1

    .line 536
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 535
    :cond_3
    if-eqz v1, :cond_0

    .line 536
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 535
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_4
    if-eqz v2, :cond_4

    .line 536
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 535
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 532
    :catch_1
    move-exception v0

    move-object v2, v1

    goto :goto_1
.end method

.method private static d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 285
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update system set count=count+1 where key like \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 289
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    if-eqz p0, :cond_0

    .line 294
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 291
    :catch_0
    move-exception v0

    .line 293
    if-eqz p0, :cond_0

    .line 294
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 293
    :catchall_0
    move-exception v0

    if-eqz p0, :cond_1

    .line 294
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_1
    throw v0
.end method
