.class final Lorg/acra/CrashReportPersister;
.super Ljava/lang/Object;
.source "CrashReportPersister.java"


# static fields
.field private static final CONTINUE:I = 0x3

.field private static final IGNORE:I = 0x5

.field private static final KEY_DONE:I = 0x4

.field private static final LINE_SEPARATOR:Ljava/lang/String; = "\n"

.field private static final NONE:I = 0x0

.field private static final SLASH:I = 0x1

.field private static final UNICODE:I = 0x2


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/acra/CrashReportPersister;->context:Landroid/content/Context;

    .line 51
    return-void
.end method

.method private dumpString(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "buffer"    # Ljava/lang/StringBuilder;
    .param p2, "string"    # Ljava/lang/String;
    .param p3, "key"    # Z

    .prologue
    const/16 v5, 0x20

    .line 336
    const/4 v2, 0x0

    .line 337
    .local v2, "i":I
    if-nez p3, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_0

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_0

    .line 338
    const-string v4, "\\ "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    add-int/lit8 v2, v2, 0x1

    .line 342
    :cond_0
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_5

    .line 343
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 344
    .local v0, "ch":C
    packed-switch v0, :pswitch_data_0

    .line 358
    :pswitch_0
    const-string v4, "\\#!=:"

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_1

    if-eqz p3, :cond_2

    if-ne v0, v5, :cond_2

    .line 359
    :cond_1
    const/16 v4, 0x5c

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 361
    :cond_2
    if-lt v0, v5, :cond_3

    const/16 v4, 0x7e

    if-gt v0, v4, :cond_3

    .line 362
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 342
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 346
    :pswitch_1
    const-string v4, "\\t"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 349
    :pswitch_2
    const-string v4, "\\n"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 352
    :pswitch_3
    const-string v4, "\\f"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 355
    :pswitch_4
    const-string v4, "\\r"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 364
    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 365
    .local v1, "hex":Ljava/lang/String;
    const-string v4, "\\u"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x4

    if-ge v3, v4, :cond_4

    .line 367
    const-string v4, "0"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 369
    :cond_4
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 373
    .end local v0    # "ch":C
    .end local v1    # "hex":Ljava/lang/String;
    .end local v3    # "j":I
    :cond_5
    return-void

    .line 344
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private isEbcdic(Ljava/io/BufferedInputStream;)Z
    .locals 3
    .param p1, "in"    # Ljava/io/BufferedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 117
    :cond_0
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->read()I

    move-result v2

    int-to-byte v0, v2

    .local v0, "b":B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 118
    const/16 v2, 0x23

    if-eq v0, v2, :cond_1

    const/16 v2, 0xa

    if-eq v0, v2, :cond_1

    const/16 v2, 0x3d

    if-ne v0, v2, :cond_2

    .line 130
    :cond_1
    :goto_0
    return v1

    .line 121
    :cond_2
    const/16 v2, 0x15

    if-ne v0, v2, :cond_0

    .line 122
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private declared-synchronized load(Ljava/io/Reader;)Lorg/acra/collector/CrashReportData;
    .locals 21
    .param p1, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    monitor-enter p0

    const/4 v11, 0x0

    .local v11, "mode":I
    const/16 v17, 0x0

    .local v17, "unicode":I
    const/4 v4, 0x0

    .line 163
    .local v4, "count":I
    const/16 v19, 0x28

    :try_start_0
    move/from16 v0, v19

    new-array v3, v0, [C

    .line 164
    .local v3, "buf":[C
    const/4 v14, 0x0

    .local v14, "offset":I
    const/4 v10, -0x1

    .line 165
    .local v10, "keyLength":I
    const/4 v7, 0x1

    .line 167
    .local v7, "firstChar":Z
    new-instance v5, Lorg/acra/collector/CrashReportData;

    invoke-direct {v5}, Lorg/acra/collector/CrashReportData;-><init>()V

    .line 168
    .local v5, "crashData":Lorg/acra/collector/CrashReportData;
    new-instance v2, Ljava/io/BufferedReader;

    const/16 v19, 0x2000

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-direct {v2, v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .local v2, "br":Ljava/io/BufferedReader;
    move v15, v14

    .line 171
    .end local v14    # "offset":I
    .local v15, "offset":I
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->read()I

    move-result v8

    .line 172
    .local v8, "intVal":I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v8, v0, :cond_1

    .line 308
    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v11, v0, :cond_14

    const/16 v19, 0x4

    move/from16 v0, v19

    if-gt v4, v0, :cond_14

    .line 310
    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string v20, "luni.08"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v3    # "buf":[C
    .end local v5    # "crashData":Lorg/acra/collector/CrashReportData;
    .end local v7    # "firstChar":Z
    .end local v8    # "intVal":I
    .end local v10    # "keyLength":I
    .end local v15    # "offset":I
    :catchall_0
    move-exception v19

    monitor-exit p0

    throw v19

    .line 175
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "buf":[C
    .restart local v5    # "crashData":Lorg/acra/collector/CrashReportData;
    .restart local v7    # "firstChar":Z
    .restart local v8    # "intVal":I
    .restart local v10    # "keyLength":I
    .restart local v15    # "offset":I
    :cond_1
    int-to-char v13, v8

    .line 177
    .local v13, "nextChar":C
    :try_start_1
    array-length v0, v3

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v15, v0, :cond_2

    .line 178
    array-length v0, v3

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    new-array v12, v0, [C

    .line 179
    .local v12, "newBuf":[C
    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v3, v0, v12, v1, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    move-object v3, v12

    .line 182
    .end local v12    # "newBuf":[C
    :cond_2
    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v11, v0, :cond_6

    .line 183
    const/16 v19, 0x10

    move/from16 v0, v19

    invoke-static {v13, v0}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    .line 184
    .local v6, "digit":I
    if-ltz v6, :cond_4

    .line 185
    shl-int/lit8 v19, v17, 0x4

    add-int v17, v19, v6

    .line 186
    add-int/lit8 v4, v4, 0x1

    const/16 v19, 0x4

    move/from16 v0, v19

    if-lt v4, v0, :cond_0

    .line 193
    :cond_3
    const/4 v11, 0x0

    .line 194
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "offset":I
    .restart local v14    # "offset":I
    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v19, v0

    aput-char v19, v3, v15

    .line 195
    const/16 v19, 0xa

    move/from16 v0, v19

    if-eq v13, v0, :cond_5

    const/16 v19, 0x85

    move/from16 v0, v19

    if-eq v13, v0, :cond_5

    move v15, v14

    .line 196
    .end local v14    # "offset":I
    .restart local v15    # "offset":I
    goto :goto_0

    .line 189
    :cond_4
    const/16 v19, 0x4

    move/from16 v0, v19

    if-gt v4, v0, :cond_3

    .line 191
    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string v20, "luni.09"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .end local v15    # "offset":I
    .restart local v14    # "offset":I
    :cond_5
    move v15, v14

    .line 199
    .end local v6    # "digit":I
    .end local v14    # "offset":I
    .restart local v15    # "offset":I
    :cond_6
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v11, v0, :cond_9

    .line 200
    const/4 v11, 0x0

    .line 201
    sparse-switch v13, :sswitch_data_0

    .line 301
    :cond_7
    :goto_1
    const/4 v7, 0x0

    .line 302
    const/16 v19, 0x4

    move/from16 v0, v19

    if-ne v11, v0, :cond_8

    .line 303
    move v10, v15

    .line 304
    const/4 v11, 0x0

    .line 306
    :cond_8
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "offset":I
    .restart local v14    # "offset":I
    aput-char v13, v3, v15

    move v15, v14

    .end local v14    # "offset":I
    .restart local v15    # "offset":I
    goto/16 :goto_0

    .line 203
    :sswitch_0
    const/4 v11, 0x3

    .line 204
    goto/16 :goto_0

    .line 207
    :sswitch_1
    const/4 v11, 0x5

    .line 208
    goto/16 :goto_0

    .line 210
    :sswitch_2
    const/16 v13, 0x8

    .line 211
    goto :goto_1

    .line 213
    :sswitch_3
    const/16 v13, 0xc

    .line 214
    goto :goto_1

    .line 216
    :sswitch_4
    const/16 v13, 0xa

    .line 217
    goto :goto_1

    .line 219
    :sswitch_5
    const/16 v13, 0xd

    .line 220
    goto :goto_1

    .line 222
    :sswitch_6
    const/16 v13, 0x9

    .line 223
    goto :goto_1

    .line 225
    :sswitch_7
    const/4 v11, 0x2

    .line 226
    const/4 v4, 0x0

    move/from16 v17, v4

    .line 227
    goto/16 :goto_0

    .line 230
    :cond_9
    sparse-switch v13, :sswitch_data_1

    .line 284
    :cond_a
    invoke-static {v13}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v19

    if-eqz v19, :cond_12

    .line 285
    const/16 v19, 0x3

    move/from16 v0, v19

    if-ne v11, v0, :cond_b

    .line 286
    const/4 v11, 0x5

    .line 289
    :cond_b
    if-eqz v15, :cond_0

    if-eq v15, v10, :cond_0

    const/16 v19, 0x5

    move/from16 v0, v19

    if-eq v11, v0, :cond_0

    .line 292
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v10, v0, :cond_12

    .line 293
    const/4 v11, 0x4

    .line 294
    goto/16 :goto_0

    .line 233
    :sswitch_8
    if-eqz v7, :cond_a

    .line 235
    :cond_c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->read()I

    move-result v8

    .line 236
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v8, v0, :cond_0

    .line 239
    int-to-char v13, v8

    .line 242
    const/16 v19, 0xd

    move/from16 v0, v19

    if-eq v13, v0, :cond_0

    const/16 v19, 0xa

    move/from16 v0, v19

    if-eq v13, v0, :cond_0

    const/16 v19, 0x85

    move/from16 v0, v19

    if-ne v13, v0, :cond_c

    goto/16 :goto_0

    .line 250
    :sswitch_9
    const/16 v19, 0x3

    move/from16 v0, v19

    if-ne v11, v0, :cond_d

    .line 251
    const/4 v11, 0x5

    .line 252
    goto/16 :goto_0

    .line 257
    :cond_d
    :sswitch_a
    const/4 v11, 0x0

    .line 258
    const/4 v7, 0x1

    .line 259
    if-gtz v15, :cond_e

    if-nez v15, :cond_10

    if-nez v10, :cond_10

    .line 260
    :cond_e
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v10, v0, :cond_f

    .line 261
    move v10, v15

    .line 263
    :cond_f
    new-instance v16, Ljava/lang/String;

    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-direct {v0, v3, v1, v15}, Ljava/lang/String;-><init>([CII)V

    .line 264
    .local v16, "temp":Ljava/lang/String;
    const-class v19, Lorg/acra/ReportField;

    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v19

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    .end local v16    # "temp":Ljava/lang/String;
    :cond_10
    const/4 v10, -0x1

    .line 267
    const/4 v14, 0x0

    .end local v15    # "offset":I
    .restart local v14    # "offset":I
    move v15, v14

    .line 268
    .end local v14    # "offset":I
    .restart local v15    # "offset":I
    goto/16 :goto_0

    .line 270
    :sswitch_b
    const/16 v19, 0x4

    move/from16 v0, v19

    if-ne v11, v0, :cond_11

    .line 271
    move v10, v15

    .line 273
    :cond_11
    const/4 v11, 0x1

    .line 274
    goto/16 :goto_0

    .line 277
    :sswitch_c
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v10, v0, :cond_a

    .line 278
    const/4 v11, 0x0

    .line 279
    move v10, v15

    .line 280
    goto/16 :goto_0

    .line 297
    :cond_12
    const/16 v19, 0x5

    move/from16 v0, v19

    if-eq v11, v0, :cond_13

    const/16 v19, 0x3

    move/from16 v0, v19

    if-ne v11, v0, :cond_7

    .line 298
    :cond_13
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 312
    .end local v13    # "nextChar":C
    :cond_14
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v10, v0, :cond_15

    if-lez v15, :cond_15

    .line 313
    move v10, v15

    .line 315
    :cond_15
    if-ltz v10, :cond_17

    .line 316
    new-instance v16, Ljava/lang/String;

    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-direct {v0, v3, v1, v15}, Ljava/lang/String;-><init>([CII)V

    .line 317
    .restart local v16    # "temp":Ljava/lang/String;
    const-class v19, Lorg/acra/ReportField;

    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v9

    check-cast v9, Lorg/acra/ReportField;

    .line 318
    .local v9, "key":Lorg/acra/ReportField;
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    .line 319
    .local v18, "value":Ljava/lang/String;
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v11, v0, :cond_16

    .line 320
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\u0000"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 322
    :cond_16
    move-object/from16 v0, v18

    invoke-virtual {v5, v9, v0}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 325
    .end local v9    # "key":Lorg/acra/ReportField;
    .end local v16    # "temp":Ljava/lang/String;
    .end local v18    # "value":Ljava/lang/String;
    :cond_17
    monitor-exit p0

    return-object v5

    .line 201
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_1
        0xd -> :sswitch_0
        0x62 -> :sswitch_2
        0x66 -> :sswitch_3
        0x6e -> :sswitch_4
        0x72 -> :sswitch_5
        0x74 -> :sswitch_6
        0x75 -> :sswitch_7
        0x85 -> :sswitch_1
    .end sparse-switch

    .line 230
    :sswitch_data_1
    .sparse-switch
        0xa -> :sswitch_9
        0xd -> :sswitch_a
        0x21 -> :sswitch_8
        0x23 -> :sswitch_8
        0x3a -> :sswitch_c
        0x3d -> :sswitch_c
        0x5c -> :sswitch_b
        0x85 -> :sswitch_a
    .end sparse-switch
.end method


# virtual methods
.method public load(Ljava/lang/String;)Lorg/acra/collector/CrashReportData;
    .locals 6
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    iget-object v3, p0, Lorg/acra/CrashReportPersister;->context:Landroid/content/Context;

    invoke-virtual {v3, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 64
    .local v1, "in":Ljava/io/FileInputStream;
    if-nez v1, :cond_0

    .line 65
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid crash report fileName : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 69
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v3, 0x2000

    invoke-direct {v0, v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 70
    .local v0, "bis":Ljava/io/BufferedInputStream;
    const v3, 0x7fffffff

    invoke-virtual {v0, v3}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 71
    invoke-direct {p0, v0}, Lorg/acra/CrashReportPersister;->isEbcdic(Ljava/io/BufferedInputStream;)Z

    move-result v2

    .line 72
    .local v2, "isEbcdic":Z
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->reset()V

    .line 74
    if-nez v2, :cond_1

    .line 75
    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "ISO8859-1"

    invoke-direct {v3, v0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lorg/acra/CrashReportPersister;->load(Ljava/io/Reader;)Lorg/acra/collector/CrashReportData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 80
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :goto_0
    return-object v3

    .line 77
    :cond_1
    :try_start_1
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v3}, Lorg/acra/CrashReportPersister;->load(Ljava/io/Reader;)Lorg/acra/collector/CrashReportData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 80
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v2    # "isEbcdic":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    throw v3
.end method

.method public store(Lorg/acra/collector/CrashReportData;Ljava/lang/String;)V
    .locals 8
    .param p1, "crashData"    # Lorg/acra/collector/CrashReportData;
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 95
    iget-object v6, p0, Lorg/acra/CrashReportPersister;->context:Landroid/content/Context;

    invoke-virtual {v6, p2, v7}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v4

    .line 97
    .local v4, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v6, 0xc8

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 98
    .local v0, "buffer":Ljava/lang/StringBuilder;
    new-instance v5, Ljava/io/OutputStreamWriter;

    const-string v6, "ISO8859_1"

    invoke-direct {v5, v4, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 100
    .local v5, "writer":Ljava/io/OutputStreamWriter;
    invoke-virtual {p1}, Lorg/acra/collector/CrashReportData;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 101
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/acra/ReportField;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/acra/ReportField;

    invoke-virtual {v6}, Lorg/acra/ReportField;->toString()Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, "key":Ljava/lang/String;
    const/4 v6, 0x1

    invoke-direct {p0, v0, v3, v6}, Lorg/acra/CrashReportPersister;->dumpString(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 103
    const/16 v6, 0x3d

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {p0, v0, v6, v7}, Lorg/acra/CrashReportPersister;->dumpString(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 105
    const-string v6, "\n"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 107
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 111
    .end local v0    # "buffer":Ljava/lang/StringBuilder;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/acra/ReportField;Ljava/lang/String;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "writer":Ljava/io/OutputStreamWriter;
    :catchall_0
    move-exception v6

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    throw v6

    .line 109
    .restart local v0    # "buffer":Ljava/lang/StringBuilder;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v5    # "writer":Ljava/io/OutputStreamWriter;
    :cond_0
    :try_start_1
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 113
    return-void
.end method
