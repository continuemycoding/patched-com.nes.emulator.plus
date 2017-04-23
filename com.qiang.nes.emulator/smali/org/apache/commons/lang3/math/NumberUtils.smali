.class public Lorg/apache/commons/lang3/math/NumberUtils;
.super Ljava/lang/Object;
.source "NumberUtils.java"


# static fields
.field public static final BYTE_MINUS_ONE:Ljava/lang/Byte;

.field public static final BYTE_ONE:Ljava/lang/Byte;

.field public static final BYTE_ZERO:Ljava/lang/Byte;

.field public static final DOUBLE_MINUS_ONE:Ljava/lang/Double;

.field public static final DOUBLE_ONE:Ljava/lang/Double;

.field public static final DOUBLE_ZERO:Ljava/lang/Double;

.field public static final FLOAT_MINUS_ONE:Ljava/lang/Float;

.field public static final FLOAT_ONE:Ljava/lang/Float;

.field public static final FLOAT_ZERO:Ljava/lang/Float;

.field public static final INTEGER_MINUS_ONE:Ljava/lang/Integer;

.field public static final INTEGER_ONE:Ljava/lang/Integer;

.field public static final INTEGER_ZERO:Ljava/lang/Integer;

.field public static final LONG_MINUS_ONE:Ljava/lang/Long;

.field public static final LONG_ONE:Ljava/lang/Long;

.field public static final LONG_ZERO:Ljava/lang/Long;

.field public static final SHORT_MINUS_ONE:Ljava/lang/Short;

.field public static final SHORT_ONE:Ljava/lang/Short;

.field public static final SHORT_ZERO:Ljava/lang/Short;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 35
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->LONG_ZERO:Ljava/lang/Long;

    .line 37
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->LONG_ONE:Ljava/lang/Long;

    .line 39
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->LONG_MINUS_ONE:Ljava/lang/Long;

    .line 41
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_ZERO:Ljava/lang/Integer;

    .line 43
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_ONE:Ljava/lang/Integer;

    .line 45
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_MINUS_ONE:Ljava/lang/Integer;

    .line 47
    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->SHORT_ZERO:Ljava/lang/Short;

    .line 49
    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->SHORT_ONE:Ljava/lang/Short;

    .line 51
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->SHORT_MINUS_ONE:Ljava/lang/Short;

    .line 53
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->BYTE_ZERO:Ljava/lang/Byte;

    .line 55
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->BYTE_ONE:Ljava/lang/Byte;

    .line 57
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->BYTE_MINUS_ONE:Ljava/lang/Byte;

    .line 59
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->DOUBLE_ZERO:Ljava/lang/Double;

    .line 61
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->DOUBLE_ONE:Ljava/lang/Double;

    .line 63
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->DOUBLE_MINUS_ONE:Ljava/lang/Double;

    .line 65
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_ZERO:Ljava/lang/Float;

    .line 67
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_ONE:Ljava/lang/Float;

    .line 69
    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_MINUS_ONE:Ljava/lang/Float;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    return-void
.end method

.method public static compare(BB)I
    .locals 1
    .param p0, "x"    # B
    .param p1, "y"    # B

    .prologue
    .line 1600
    sub-int v0, p0, p1

    return v0
.end method

.method public static compare(II)I
    .locals 1
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    .line 1537
    if-ne p0, p1, :cond_0

    .line 1538
    const/4 v0, 0x0

    .line 1543
    :goto_0
    return v0

    .line 1540
    :cond_0
    if-ge p0, p1, :cond_1

    .line 1541
    const/4 v0, -0x1

    goto :goto_0

    .line 1543
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static compare(JJ)I
    .locals 2
    .param p0, "x"    # J
    .param p2, "y"    # J

    .prologue
    .line 1558
    cmp-long v0, p0, p2

    if-nez v0, :cond_0

    .line 1559
    const/4 v0, 0x0

    .line 1564
    :goto_0
    return v0

    .line 1561
    :cond_0
    cmp-long v0, p0, p2

    if-gez v0, :cond_1

    .line 1562
    const/4 v0, -0x1

    goto :goto_0

    .line 1564
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static compare(SS)I
    .locals 1
    .param p0, "x"    # S
    .param p1, "y"    # S

    .prologue
    .line 1579
    if-ne p0, p1, :cond_0

    .line 1580
    const/4 v0, 0x0

    .line 1585
    :goto_0
    return v0

    .line 1582
    :cond_0
    if-ge p0, p1, :cond_1

    .line 1583
    const/4 v0, -0x1

    goto :goto_0

    .line 1585
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 790
    if-nez p0, :cond_0

    .line 791
    const/4 v0, 0x0

    .line 804
    :goto_0
    return-object v0

    .line 794
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 795
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "A blank string is not a valid number"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 797
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 802
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid number."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 804
    :cond_2
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 6
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 755
    if-nez p0, :cond_1

    .line 756
    const/4 v3, 0x0

    .line 777
    :cond_0
    :goto_0
    return-object v3

    .line 758
    :cond_1
    const/4 v1, 0x0

    .line 759
    .local v1, "pos":I
    const/16 v2, 0xa

    .line 760
    .local v2, "radix":I
    const/4 v0, 0x0

    .line 761
    .local v0, "negate":Z
    const-string v4, "-"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 762
    const/4 v0, 0x1

    .line 763
    const/4 v1, 0x1

    .line 765
    :cond_2
    const-string v4, "0x"

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "0X"

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 766
    :cond_3
    const/16 v2, 0x10

    .line 767
    add-int/lit8 v1, v1, 0x2

    .line 776
    :cond_4
    :goto_1
    new-instance v3, Ljava/math/BigInteger;

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 777
    .local v3, "value":Ljava/math/BigInteger;
    if-eqz v0, :cond_0

    invoke-virtual {v3}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v3

    goto :goto_0

    .line 768
    .end local v3    # "value":Ljava/math/BigInteger;
    :cond_5
    const-string v4, "#"

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 769
    const/16 v2, 0x10

    .line 770
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 771
    :cond_6
    const-string v4, "0"

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v5, v1, 0x1

    if-le v4, v5, :cond_4

    .line 772
    const/16 v2, 0x8

    .line 773
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static createDouble(Ljava/lang/String;)Ljava/lang/Double;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 701
    if-nez p0, :cond_0

    .line 702
    const/4 v0, 0x0

    .line 704
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0
.end method

.method public static createFloat(Ljava/lang/String;)Ljava/lang/Float;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 685
    if-nez p0, :cond_0

    .line 686
    const/4 v0, 0x0

    .line 688
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0
.end method

.method public static createInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 719
    if-nez p0, :cond_0

    .line 720
    const/4 v0, 0x0

    .line 723
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public static createLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 738
    if-nez p0, :cond_0

    .line 739
    const/4 v0, 0x0

    .line 741
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public static createNumber(Ljava/lang/String;)Ljava/lang/Number;
    .locals 28
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 452
    if-nez p0, :cond_1

    .line 453
    const/4 v11, 0x0

    .line 623
    :cond_0
    :goto_0
    return-object v11

    .line 455
    :cond_1
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 456
    new-instance v24, Ljava/lang/NumberFormatException;

    const-string v25, "A blank string is not a valid number"

    invoke-direct/range {v24 .. v25}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 459
    :cond_2
    const/16 v24, 0x6

    move/from16 v0, v24

    new-array v14, v0, [Ljava/lang/String;

    const/16 v24, 0x0

    const-string v25, "0x"

    aput-object v25, v14, v24

    const/16 v24, 0x1

    const-string v25, "0X"

    aput-object v25, v14, v24

    const/16 v24, 0x2

    const-string v25, "-0x"

    aput-object v25, v14, v24

    const/16 v24, 0x3

    const-string v25, "-0X"

    aput-object v25, v14, v24

    const/16 v24, 0x4

    const-string v25, "#"

    aput-object v25, v14, v24

    const/16 v24, 0x5

    const-string v25, "-#"

    aput-object v25, v14, v24

    .line 460
    .local v14, "hex_prefixes":[Ljava/lang/String;
    const/16 v23, 0x0

    .line 461
    .local v23, "pfxLen":I
    move-object v5, v14

    .local v5, "arr$":[Ljava/lang/String;
    array-length v0, v5

    move/from16 v18, v0

    .local v18, "len$":I
    const/16 v16, 0x0

    .local v16, "i$":I
    :goto_1
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    aget-object v22, v5, v16

    .line 462
    .local v22, "pfx":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_4

    .line 463
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v24

    add-int v23, v23, v24

    .line 467
    .end local v22    # "pfx":Ljava/lang/String;
    :cond_3
    if-lez v23, :cond_a

    .line 468
    const/4 v12, 0x0

    .line 469
    .local v12, "firstSigDigit":C
    move/from16 v15, v23

    .local v15, "i":I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v24

    move/from16 v0, v24

    if-ge v15, v0, :cond_5

    .line 470
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 471
    const/16 v24, 0x30

    move/from16 v0, v24

    if-ne v12, v0, :cond_5

    .line 472
    add-int/lit8 v23, v23, 0x1

    .line 469
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 461
    .end local v12    # "firstSigDigit":C
    .end local v15    # "i":I
    .restart local v22    # "pfx":Ljava/lang/String;
    :cond_4
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 477
    .end local v22    # "pfx":Ljava/lang/String;
    .restart local v12    # "firstSigDigit":C
    .restart local v15    # "i":I
    :cond_5
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v24

    sub-int v13, v24, v23

    .line 478
    .local v13, "hexDigits":I
    const/16 v24, 0x10

    move/from16 v0, v24

    if-gt v13, v0, :cond_6

    const/16 v24, 0x10

    move/from16 v0, v24

    if-ne v13, v0, :cond_7

    const/16 v24, 0x37

    move/from16 v0, v24

    if-le v12, v0, :cond_7

    .line 479
    :cond_6
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v11

    goto/16 :goto_0

    .line 481
    :cond_7
    const/16 v24, 0x8

    move/from16 v0, v24

    if-gt v13, v0, :cond_8

    const/16 v24, 0x8

    move/from16 v0, v24

    if-ne v13, v0, :cond_9

    const/16 v24, 0x37

    move/from16 v0, v24

    if-le v12, v0, :cond_9

    .line 482
    :cond_8
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    goto/16 :goto_0

    .line 484
    :cond_9
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    goto/16 :goto_0

    .line 486
    .end local v12    # "firstSigDigit":C
    .end local v13    # "hexDigits":I
    .end local v15    # "i":I
    :cond_a
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v17

    .line 490
    .local v17, "lastChar":C
    const/16 v24, 0x2e

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 491
    .local v8, "decPos":I
    const/16 v24, 0x65

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v24

    const/16 v25, 0x45

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v25

    add-int v24, v24, v25

    add-int/lit8 v10, v24, 0x1

    .line 495
    .local v10, "expPos":I
    const/16 v20, 0x0

    .line 496
    .local v20, "numDecimals":I
    const/16 v24, -0x1

    move/from16 v0, v24

    if-le v8, v0, :cond_e

    .line 498
    const/16 v24, -0x1

    move/from16 v0, v24

    if-le v10, v0, :cond_d

    .line 499
    if-lt v10, v8, :cond_b

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v24

    move/from16 v0, v24

    if-le v10, v0, :cond_c

    .line 500
    :cond_b
    new-instance v24, Ljava/lang/NumberFormatException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " is not a valid number."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 502
    :cond_c
    add-int/lit8 v24, v8, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 506
    .local v7, "dec":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lorg/apache/commons/lang3/math/NumberUtils;->getMantissa(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    .line 507
    .local v19, "mant":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v20

    .line 519
    :goto_4
    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->isDigit(C)Z

    move-result v24

    if-nez v24, :cond_19

    const/16 v24, 0x2e

    move/from16 v0, v17

    move/from16 v1, v24

    if-eq v0, v1, :cond_19

    .line 520
    const/16 v24, -0x1

    move/from16 v0, v24

    if-le v10, v0, :cond_11

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    move/from16 v0, v24

    if-ge v10, v0, :cond_11

    .line 521
    add-int/lit8 v24, v10, 0x1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v25

    add-int/lit8 v25, v25, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 526
    .local v9, "exp":Ljava/lang/String;
    :goto_5
    const/16 v24, 0x0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v25

    add-int/lit8 v25, v25, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 527
    .local v21, "numeric":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lorg/apache/commons/lang3/math/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_12

    invoke-static {v9}, Lorg/apache/commons/lang3/math/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_12

    const/4 v4, 0x1

    .line 528
    .local v4, "allZeros":Z
    :goto_6
    sparse-switch v17, :sswitch_data_0

    .line 574
    :goto_7
    new-instance v24, Ljava/lang/NumberFormatException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " is not a valid number."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 504
    .end local v4    # "allZeros":Z
    .end local v7    # "dec":Ljava/lang/String;
    .end local v9    # "exp":Ljava/lang/String;
    .end local v19    # "mant":Ljava/lang/String;
    .end local v21    # "numeric":Ljava/lang/String;
    :cond_d
    add-int/lit8 v24, v8, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "dec":Ljava/lang/String;
    goto/16 :goto_3

    .line 509
    .end local v7    # "dec":Ljava/lang/String;
    :cond_e
    const/16 v24, -0x1

    move/from16 v0, v24

    if-le v10, v0, :cond_10

    .line 510
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v24

    move/from16 v0, v24

    if-le v10, v0, :cond_f

    .line 511
    new-instance v24, Ljava/lang/NumberFormatException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " is not a valid number."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 513
    :cond_f
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lorg/apache/commons/lang3/math/NumberUtils;->getMantissa(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    .line 517
    .restart local v19    # "mant":Ljava/lang/String;
    :goto_8
    const/4 v7, 0x0

    .restart local v7    # "dec":Ljava/lang/String;
    goto/16 :goto_4

    .line 515
    .end local v7    # "dec":Ljava/lang/String;
    .end local v19    # "mant":Ljava/lang/String;
    :cond_10
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang3/math/NumberUtils;->getMantissa(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .restart local v19    # "mant":Ljava/lang/String;
    goto :goto_8

    .line 523
    .restart local v7    # "dec":Ljava/lang/String;
    :cond_11
    const/4 v9, 0x0

    .restart local v9    # "exp":Ljava/lang/String;
    goto/16 :goto_5

    .line 527
    .restart local v21    # "numeric":Ljava/lang/String;
    :cond_12
    const/4 v4, 0x0

    goto :goto_6

    .line 531
    .restart local v4    # "allZeros":Z
    :sswitch_0
    if-nez v7, :cond_15

    if-nez v9, :cond_15

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v24

    const/16 v25, 0x2d

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_13

    const/16 v24, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lorg/apache/commons/lang3/math/NumberUtils;->isDigits(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_14

    :cond_13
    invoke-static/range {v21 .. v21}, Lorg/apache/commons/lang3/math/NumberUtils;->isDigits(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_15

    .line 535
    :cond_14
    :try_start_0
    invoke-static/range {v21 .. v21}, Lorg/apache/commons/lang3/math/NumberUtils;->createLong(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    goto/16 :goto_0

    .line 536
    :catch_0
    move-exception v24

    .line 539
    invoke-static/range {v21 .. v21}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v11

    goto/16 :goto_0

    .line 542
    :cond_15
    new-instance v24, Ljava/lang/NumberFormatException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " is not a valid number."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 546
    :sswitch_1
    :try_start_1
    invoke-static/range {v21 .. v21}, Lorg/apache/commons/lang3/math/NumberUtils;->createFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v11

    .line 547
    .local v11, "f":Ljava/lang/Float;
    invoke-virtual {v11}, Ljava/lang/Float;->isInfinite()Z

    move-result v24

    if-nez v24, :cond_16

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_7

    move-result v24

    const/16 v25, 0x0

    cmpl-float v24, v24, v25

    if-nez v24, :cond_0

    if-nez v4, :cond_0

    .line 560
    .end local v11    # "f":Ljava/lang/Float;
    :cond_16
    :goto_9
    :sswitch_2
    :try_start_2
    invoke-static/range {v21 .. v21}, Lorg/apache/commons/lang3/math/NumberUtils;->createDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v6

    .line 561
    .local v6, "d":Ljava/lang/Double;
    invoke-virtual {v6}, Ljava/lang/Double;->isInfinite()Z

    move-result v24

    if-nez v24, :cond_18

    invoke-virtual {v6}, Ljava/lang/Double;->floatValue()F
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v24

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-nez v24, :cond_17

    if-eqz v4, :cond_18

    :cond_17
    move-object v11, v6

    .line 562
    goto/16 :goto_0

    .line 564
    .end local v6    # "d":Ljava/lang/Double;
    :catch_1
    move-exception v24

    .line 568
    :cond_18
    :try_start_3
    invoke-static/range {v21 .. v21}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_5

    move-result-object v11

    goto/16 :goto_0

    .line 580
    .end local v4    # "allZeros":Z
    .end local v9    # "exp":Ljava/lang/String;
    .end local v21    # "numeric":Ljava/lang/String;
    :cond_19
    const/16 v24, -0x1

    move/from16 v0, v24

    if-le v10, v0, :cond_1a

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    move/from16 v0, v24

    if-ge v10, v0, :cond_1a

    .line 581
    add-int/lit8 v24, v10, 0x1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 585
    .restart local v9    # "exp":Ljava/lang/String;
    :goto_a
    if-nez v7, :cond_1b

    if-nez v9, :cond_1b

    .line 588
    :try_start_4
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createInteger(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v11

    goto/16 :goto_0

    .line 583
    .end local v9    # "exp":Ljava/lang/String;
    :cond_1a
    const/4 v9, 0x0

    .restart local v9    # "exp":Ljava/lang/String;
    goto :goto_a

    .line 589
    :catch_2
    move-exception v24

    .line 593
    :try_start_5
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createLong(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v11

    goto/16 :goto_0

    .line 594
    :catch_3
    move-exception v24

    .line 597
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v11

    goto/16 :goto_0

    .line 601
    :cond_1b
    invoke-static/range {v19 .. v19}, Lorg/apache/commons/lang3/math/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_1e

    invoke-static {v9}, Lorg/apache/commons/lang3/math/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_1e

    const/4 v4, 0x1

    .line 603
    .restart local v4    # "allZeros":Z
    :goto_b
    const/16 v24, 0x7

    move/from16 v0, v20

    move/from16 v1, v24

    if-gt v0, v1, :cond_1c

    .line 604
    :try_start_6
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v11

    .line 605
    .restart local v11    # "f":Ljava/lang/Float;
    invoke-virtual {v11}, Ljava/lang/Float;->isInfinite()Z

    move-result v24

    if-nez v24, :cond_1c

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_6

    move-result v24

    const/16 v25, 0x0

    cmpl-float v24, v24, v25

    if-nez v24, :cond_0

    if-nez v4, :cond_0

    .line 613
    .end local v11    # "f":Ljava/lang/Float;
    :cond_1c
    :goto_c
    const/16 v24, 0x10

    move/from16 v0, v20

    move/from16 v1, v24

    if-gt v0, v1, :cond_1f

    .line 614
    :try_start_7
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v6

    .line 615
    .restart local v6    # "d":Ljava/lang/Double;
    invoke-virtual {v6}, Ljava/lang/Double;->isInfinite()Z

    move-result v24

    if-nez v24, :cond_1f

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_4

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-nez v24, :cond_1d

    if-eqz v4, :cond_1f

    :cond_1d
    move-object v11, v6

    .line 616
    goto/16 :goto_0

    .line 601
    .end local v4    # "allZeros":Z
    .end local v6    # "d":Ljava/lang/Double;
    :cond_1e
    const/4 v4, 0x0

    goto :goto_b

    .line 619
    .restart local v4    # "allZeros":Z
    :catch_4
    move-exception v24

    .line 623
    :cond_1f
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v11

    goto/16 :goto_0

    .line 569
    .restart local v21    # "numeric":Ljava/lang/String;
    :catch_5
    move-exception v24

    goto/16 :goto_7

    .line 609
    .end local v21    # "numeric":Ljava/lang/String;
    :catch_6
    move-exception v24

    goto :goto_c

    .line 553
    .restart local v21    # "numeric":Ljava/lang/String;
    :catch_7
    move-exception v24

    goto/16 :goto_9

    .line 528
    nop

    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_2
        0x46 -> :sswitch_1
        0x4c -> :sswitch_0
        0x64 -> :sswitch_2
        0x66 -> :sswitch_1
        0x6c -> :sswitch_0
    .end sparse-switch
.end method

.method private static getMantissa(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 635
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/math/NumberUtils;->getMantissa(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getMantissa(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "stopPos"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 648
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 649
    .local v0, "firstChar":C
    const/16 v4, 0x2d

    if-eq v0, v4, :cond_0

    const/16 v4, 0x2b

    if-ne v0, v4, :cond_1

    :cond_0
    move v1, v3

    .line 651
    .local v1, "hasSign":Z
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {p0, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_1
    return-object v2

    .end local v1    # "hasSign":Z
    :cond_1
    move v1, v2

    .line 649
    goto :goto_0

    .line 651
    .restart local v1    # "hasSign":Z
    :cond_2
    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private static isAllZeros(Ljava/lang/String;)Z
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 663
    if-nez p0, :cond_1

    .line 671
    :cond_0
    :goto_0
    return v1

    .line 666
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_3

    .line 667
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-eq v3, v4, :cond_2

    move v1, v2

    .line 668
    goto :goto_0

    .line 666
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 671
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public static isDigits(Ljava/lang/String;)Z
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1352
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1360
    :cond_0
    :goto_0
    return v1

    .line 1355
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1356
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1355
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1360
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isNumber(Ljava/lang/String;)Z
    .locals 15
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/16 v14, 0x2d

    const/16 v13, 0x39

    const/16 v12, 0x30

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1383
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1495
    :cond_0
    :goto_0
    return v9

    .line 1386
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 1387
    .local v1, "chars":[C
    array-length v7, v1

    .line 1388
    .local v7, "sz":I
    const/4 v4, 0x0

    .line 1389
    .local v4, "hasExp":Z
    const/4 v3, 0x0

    .line 1390
    .local v3, "hasDecPoint":Z
    const/4 v0, 0x0

    .line 1391
    .local v0, "allowSigns":Z
    const/4 v2, 0x0

    .line 1393
    .local v2, "foundDigit":Z
    aget-char v10, v1, v9

    if-ne v10, v14, :cond_6

    move v6, v8

    .line 1394
    .local v6, "start":I
    :goto_1
    add-int/lit8 v10, v6, 0x1

    if-le v7, v10, :cond_a

    aget-char v10, v1, v6

    if-ne v10, v12, :cond_a

    .line 1395
    add-int/lit8 v10, v6, 0x1

    aget-char v10, v1, v10

    const/16 v11, 0x78

    if-eq v10, v11, :cond_2

    add-int/lit8 v10, v6, 0x1

    aget-char v10, v1, v10

    const/16 v11, 0x58

    if-ne v10, v11, :cond_8

    .line 1399
    :cond_2
    add-int/lit8 v5, v6, 0x2

    .line 1400
    .local v5, "i":I
    if-eq v5, v7, :cond_0

    .line 1404
    :goto_2
    array-length v10, v1

    if-ge v5, v10, :cond_7

    .line 1405
    aget-char v10, v1, v5

    if-lt v10, v12, :cond_3

    aget-char v10, v1, v5

    if-le v10, v13, :cond_5

    :cond_3
    aget-char v10, v1, v5

    const/16 v11, 0x61

    if-lt v10, v11, :cond_4

    aget-char v10, v1, v5

    const/16 v11, 0x66

    if-le v10, v11, :cond_5

    :cond_4
    aget-char v10, v1, v5

    const/16 v11, 0x41

    if-lt v10, v11, :cond_0

    aget-char v10, v1, v5

    const/16 v11, 0x46

    if-gt v10, v11, :cond_0

    .line 1404
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .end local v5    # "i":I
    .end local v6    # "start":I
    :cond_6
    move v6, v9

    .line 1393
    goto :goto_1

    .restart local v5    # "i":I
    .restart local v6    # "start":I
    :cond_7
    move v9, v8

    .line 1411
    goto :goto_0

    .line 1412
    .end local v5    # "i":I
    :cond_8
    add-int/lit8 v10, v6, 0x1

    aget-char v10, v1, v10

    invoke-static {v10}, Ljava/lang/Character;->isDigit(C)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 1414
    add-int/lit8 v5, v6, 0x1

    .line 1415
    .restart local v5    # "i":I
    :goto_3
    array-length v10, v1

    if-ge v5, v10, :cond_9

    .line 1416
    aget-char v10, v1, v5

    if-lt v10, v12, :cond_0

    aget-char v10, v1, v5

    const/16 v11, 0x37

    if-gt v10, v11, :cond_0

    .line 1415
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_9
    move v9, v8

    .line 1420
    goto :goto_0

    .line 1423
    .end local v5    # "i":I
    :cond_a
    add-int/lit8 v7, v7, -0x1

    .line 1425
    move v5, v6

    .line 1428
    .restart local v5    # "i":I
    :goto_4
    if-lt v5, v7, :cond_b

    add-int/lit8 v10, v7, 0x1

    if-ge v5, v10, :cond_11

    if-eqz v0, :cond_11

    if-nez v2, :cond_11

    .line 1429
    :cond_b
    aget-char v10, v1, v5

    if-lt v10, v12, :cond_c

    aget-char v10, v1, v5

    if-gt v10, v13, :cond_c

    .line 1430
    const/4 v2, 0x1

    .line 1431
    const/4 v0, 0x0

    .line 1459
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1433
    :cond_c
    aget-char v10, v1, v5

    const/16 v11, 0x2e

    if-ne v10, v11, :cond_d

    .line 1434
    if-nez v3, :cond_0

    if-nez v4, :cond_0

    .line 1438
    const/4 v3, 0x1

    goto :goto_5

    .line 1439
    :cond_d
    aget-char v10, v1, v5

    const/16 v11, 0x65

    if-eq v10, v11, :cond_e

    aget-char v10, v1, v5

    const/16 v11, 0x45

    if-ne v10, v11, :cond_f

    .line 1441
    :cond_e
    if-nez v4, :cond_0

    .line 1445
    if-eqz v2, :cond_0

    .line 1448
    const/4 v4, 0x1

    .line 1449
    const/4 v0, 0x1

    goto :goto_5

    .line 1450
    :cond_f
    aget-char v10, v1, v5

    const/16 v11, 0x2b

    if-eq v10, v11, :cond_10

    aget-char v10, v1, v5

    if-ne v10, v14, :cond_0

    .line 1451
    :cond_10
    if-eqz v0, :cond_0

    .line 1454
    const/4 v0, 0x0

    .line 1455
    const/4 v2, 0x0

    goto :goto_5

    .line 1461
    :cond_11
    array-length v10, v1

    if-ge v5, v10, :cond_18

    .line 1462
    aget-char v10, v1, v5

    if-lt v10, v12, :cond_12

    aget-char v10, v1, v5

    if-gt v10, v13, :cond_12

    move v9, v8

    .line 1464
    goto/16 :goto_0

    .line 1466
    :cond_12
    aget-char v10, v1, v5

    const/16 v11, 0x65

    if-eq v10, v11, :cond_0

    aget-char v10, v1, v5

    const/16 v11, 0x45

    if-eq v10, v11, :cond_0

    .line 1470
    aget-char v10, v1, v5

    const/16 v11, 0x2e

    if-ne v10, v11, :cond_13

    .line 1471
    if-nez v3, :cond_0

    if-nez v4, :cond_0

    move v9, v2

    .line 1476
    goto/16 :goto_0

    .line 1478
    :cond_13
    if-nez v0, :cond_15

    aget-char v10, v1, v5

    const/16 v11, 0x64

    if-eq v10, v11, :cond_14

    aget-char v10, v1, v5

    const/16 v11, 0x44

    if-eq v10, v11, :cond_14

    aget-char v10, v1, v5

    const/16 v11, 0x66

    if-eq v10, v11, :cond_14

    aget-char v10, v1, v5

    const/16 v11, 0x46

    if-ne v10, v11, :cond_15

    :cond_14
    move v9, v2

    .line 1483
    goto/16 :goto_0

    .line 1485
    :cond_15
    aget-char v10, v1, v5

    const/16 v11, 0x6c

    if-eq v10, v11, :cond_16

    aget-char v10, v1, v5

    const/16 v11, 0x4c

    if-ne v10, v11, :cond_0

    .line 1488
    :cond_16
    if-eqz v2, :cond_17

    if-nez v4, :cond_17

    if-nez v3, :cond_17

    :goto_6
    move v9, v8

    goto/16 :goto_0

    :cond_17
    move v8, v9

    goto :goto_6

    .line 1495
    :cond_18
    if-nez v0, :cond_19

    if-eqz v2, :cond_19

    :goto_7
    move v9, v8

    goto/16 :goto_0

    :cond_19
    move v8, v9

    goto :goto_7
.end method

.method public static isParsable(Ljava/lang/String;)Z
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 1516
    const-string v0, "."

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1517
    const/4 v0, 0x0

    .line 1522
    :goto_0
    return v0

    .line 1519
    :cond_0
    const-string v0, "-"

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1520
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/math/NumberUtils;->isDigits(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 1522
    :cond_1
    const-string v0, "."

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/math/NumberUtils;->isDigits(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static max(BBB)B
    .locals 0
    .param p0, "a"    # B
    .param p1, "b"    # B
    .param p2, "c"    # B

    .prologue
    .line 1299
    if-le p1, p0, :cond_0

    .line 1300
    move p0, p1

    .line 1302
    :cond_0
    if-le p2, p0, :cond_1

    .line 1303
    move p0, p2

    .line 1305
    :cond_1
    return p0
.end method

.method public static varargs max([B)B
    .locals 3
    .param p0, "array"    # [B

    .prologue
    .line 1046
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 1049
    const/4 v2, 0x0

    aget-byte v1, p0, v2

    .line 1050
    .local v1, "max":B
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 1051
    aget-byte v2, p0, v0

    if-le v2, v1, :cond_0

    .line 1052
    aget-byte v1, p0, v0

    .line 1050
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1056
    :cond_1
    return v1
.end method

.method public static max(DDD)D
    .locals 2
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "c"    # D

    .prologue
    .line 1321
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static varargs max([D)D
    .locals 6
    .param p0, "array"    # [D

    .prologue
    .line 1071
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 1074
    const/4 v1, 0x0

    aget-wide v2, p0, v1

    .line 1075
    .local v2, "max":D
    const/4 v0, 0x1

    .local v0, "j":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 1076
    aget-wide v4, p0, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1077
    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    .line 1084
    .end local v2    # "max":D
    :cond_0
    return-wide v2

    .line 1079
    .restart local v2    # "max":D
    :cond_1
    aget-wide v4, p0, v0

    cmpl-double v1, v4, v2

    if-lez v1, :cond_2

    .line 1080
    aget-wide v2, p0, v0

    .line 1075
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static max(FFF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F

    .prologue
    .line 1337
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static varargs max([F)F
    .locals 3
    .param p0, "array"    # [F

    .prologue
    .line 1099
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 1102
    const/4 v2, 0x0

    aget v1, p0, v2

    .line 1103
    .local v1, "max":F
    const/4 v0, 0x1

    .local v0, "j":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 1104
    aget v2, p0, v0

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1105
    const/high16 v1, 0x7fc00000    # NaNf

    .line 1112
    .end local v1    # "max":F
    :cond_0
    return v1

    .line 1107
    .restart local v1    # "max":F
    :cond_1
    aget v2, p0, v0

    cmpl-float v2, v2, v1

    if-lez v2, :cond_2

    .line 1108
    aget v1, p0, v0

    .line 1103
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static max(III)I
    .locals 0
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "c"    # I

    .prologue
    .line 1263
    if-le p1, p0, :cond_0

    .line 1264
    move p0, p1

    .line 1266
    :cond_0
    if-le p2, p0, :cond_1

    .line 1267
    move p0, p2

    .line 1269
    :cond_1
    return p0
.end method

.method public static varargs max([I)I
    .locals 3
    .param p0, "array"    # [I

    .prologue
    .line 998
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 1001
    const/4 v2, 0x0

    aget v1, p0, v2

    .line 1002
    .local v1, "max":I
    const/4 v0, 0x1

    .local v0, "j":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 1003
    aget v2, p0, v0

    if-le v2, v1, :cond_0

    .line 1004
    aget v1, p0, v0

    .line 1002
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1008
    :cond_1
    return v1
.end method

.method public static max(JJJ)J
    .locals 2
    .param p0, "a"    # J
    .param p2, "b"    # J
    .param p4, "c"    # J

    .prologue
    .line 1245
    cmp-long v0, p2, p0

    if-lez v0, :cond_0

    .line 1246
    move-wide p0, p2

    .line 1248
    :cond_0
    cmp-long v0, p4, p0

    if-lez v0, :cond_1

    .line 1249
    move-wide p0, p4

    .line 1251
    :cond_1
    return-wide p0
.end method

.method public static varargs max([J)J
    .locals 6
    .param p0, "array"    # [J

    .prologue
    .line 974
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 977
    const/4 v1, 0x0

    aget-wide v2, p0, v1

    .line 978
    .local v2, "max":J
    const/4 v0, 0x1

    .local v0, "j":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 979
    aget-wide v4, p0, v0

    cmp-long v1, v4, v2

    if-lez v1, :cond_0

    .line 980
    aget-wide v2, p0, v0

    .line 978
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 984
    :cond_1
    return-wide v2
.end method

.method public static max(SSS)S
    .locals 0
    .param p0, "a"    # S
    .param p1, "b"    # S
    .param p2, "c"    # S

    .prologue
    .line 1281
    if-le p1, p0, :cond_0

    .line 1282
    move p0, p1

    .line 1284
    :cond_0
    if-le p2, p0, :cond_1

    .line 1285
    move p0, p2

    .line 1287
    :cond_1
    return p0
.end method

.method public static varargs max([S)S
    .locals 3
    .param p0, "array"    # [S

    .prologue
    .line 1022
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 1025
    const/4 v2, 0x0

    aget-short v1, p0, v2

    .line 1026
    .local v1, "max":S
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 1027
    aget-short v2, p0, v0

    if-le v2, v1, :cond_0

    .line 1028
    aget-short v1, p0, v0

    .line 1026
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1032
    :cond_1
    return v1
.end method

.method public static min(BBB)B
    .locals 0
    .param p0, "a"    # B
    .param p1, "b"    # B
    .param p2, "c"    # B

    .prologue
    .line 1193
    if-ge p1, p0, :cond_0

    .line 1194
    move p0, p1

    .line 1196
    :cond_0
    if-ge p2, p0, :cond_1

    .line 1197
    move p0, p2

    .line 1199
    :cond_1
    return p0
.end method

.method public static varargs min([B)B
    .locals 3
    .param p0, "array"    # [B

    .prologue
    .line 892
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 895
    const/4 v2, 0x0

    aget-byte v1, p0, v2

    .line 896
    .local v1, "min":B
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 897
    aget-byte v2, p0, v0

    if-ge v2, v1, :cond_0

    .line 898
    aget-byte v1, p0, v0

    .line 896
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 902
    :cond_1
    return v1
.end method

.method public static min(DDD)D
    .locals 2
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "c"    # D

    .prologue
    .line 1215
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static varargs min([D)D
    .locals 6
    .param p0, "array"    # [D

    .prologue
    .line 917
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 920
    const/4 v1, 0x0

    aget-wide v2, p0, v1

    .line 921
    .local v2, "min":D
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 922
    aget-wide v4, p0, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 923
    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    .line 930
    .end local v2    # "min":D
    :cond_0
    return-wide v2

    .line 925
    .restart local v2    # "min":D
    :cond_1
    aget-wide v4, p0, v0

    cmpg-double v1, v4, v2

    if-gez v1, :cond_2

    .line 926
    aget-wide v2, p0, v0

    .line 921
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static min(FFF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F

    .prologue
    .line 1231
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public static varargs min([F)F
    .locals 3
    .param p0, "array"    # [F

    .prologue
    .line 945
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 948
    const/4 v2, 0x0

    aget v1, p0, v2

    .line 949
    .local v1, "min":F
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 950
    aget v2, p0, v0

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 951
    const/high16 v1, 0x7fc00000    # NaNf

    .line 958
    .end local v1    # "min":F
    :cond_0
    return v1

    .line 953
    .restart local v1    # "min":F
    :cond_1
    aget v2, p0, v0

    cmpg-float v2, v2, v1

    if-gez v2, :cond_2

    .line 954
    aget v1, p0, v0

    .line 949
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static min(III)I
    .locals 0
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "c"    # I

    .prologue
    .line 1157
    if-ge p1, p0, :cond_0

    .line 1158
    move p0, p1

    .line 1160
    :cond_0
    if-ge p2, p0, :cond_1

    .line 1161
    move p0, p2

    .line 1163
    :cond_1
    return p0
.end method

.method public static varargs min([I)I
    .locals 3
    .param p0, "array"    # [I

    .prologue
    .line 844
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 847
    const/4 v2, 0x0

    aget v1, p0, v2

    .line 848
    .local v1, "min":I
    const/4 v0, 0x1

    .local v0, "j":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 849
    aget v2, p0, v0

    if-ge v2, v1, :cond_0

    .line 850
    aget v1, p0, v0

    .line 848
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 854
    :cond_1
    return v1
.end method

.method public static min(JJJ)J
    .locals 2
    .param p0, "a"    # J
    .param p2, "b"    # J
    .param p4, "c"    # J

    .prologue
    .line 1139
    cmp-long v0, p2, p0

    if-gez v0, :cond_0

    .line 1140
    move-wide p0, p2

    .line 1142
    :cond_0
    cmp-long v0, p4, p0

    if-gez v0, :cond_1

    .line 1143
    move-wide p0, p4

    .line 1145
    :cond_1
    return-wide p0
.end method

.method public static varargs min([J)J
    .locals 6
    .param p0, "array"    # [J

    .prologue
    .line 820
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 823
    const/4 v1, 0x0

    aget-wide v2, p0, v1

    .line 824
    .local v2, "min":J
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 825
    aget-wide v4, p0, v0

    cmp-long v1, v4, v2

    if-gez v1, :cond_0

    .line 826
    aget-wide v2, p0, v0

    .line 824
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 830
    :cond_1
    return-wide v2
.end method

.method public static min(SSS)S
    .locals 0
    .param p0, "a"    # S
    .param p1, "b"    # S
    .param p2, "c"    # S

    .prologue
    .line 1175
    if-ge p1, p0, :cond_0

    .line 1176
    move p0, p1

    .line 1178
    :cond_0
    if-ge p2, p0, :cond_1

    .line 1179
    move p0, p2

    .line 1181
    :cond_1
    return p0
.end method

.method public static varargs min([S)S
    .locals 3
    .param p0, "array"    # [S

    .prologue
    .line 868
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 871
    const/4 v2, 0x0

    aget-short v1, p0, v2

    .line 872
    .local v1, "min":S
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 873
    aget-short v2, p0, v0

    if-ge v2, v1, :cond_0

    .line 874
    aget-short v1, p0, v0

    .line 872
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 878
    :cond_1
    return v1
.end method

.method public static toByte(Ljava/lang/String;)B
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 304
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/math/NumberUtils;->toByte(Ljava/lang/String;B)B

    move-result v0

    return v0
.end method

.method public static toByte(Ljava/lang/String;B)B
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # B

    .prologue
    .line 325
    if-nez p0, :cond_0

    .line 331
    .end local p1    # "defaultValue":B
    :goto_0
    return p1

    .line 329
    .restart local p1    # "defaultValue":B
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    .line 330
    :catch_0
    move-exception v0

    .line 331
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static toDouble(Ljava/lang/String;)D
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 252
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/math/NumberUtils;->toDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static toDouble(Ljava/lang/String;D)D
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # D

    .prologue
    .line 275
    if-nez p0, :cond_0

    .line 281
    .end local p1    # "defaultValue":D
    :goto_0
    return-wide p1

    .line 279
    .restart local p1    # "defaultValue":D
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p1

    goto :goto_0

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static toFloat(Ljava/lang/String;)F
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 200
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/math/NumberUtils;->toFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static toFloat(Ljava/lang/String;F)F
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # F

    .prologue
    .line 223
    if-nez p0, :cond_0

    .line 229
    .end local p1    # "defaultValue":F
    :goto_0
    return p1

    .line 227
    .restart local p1    # "defaultValue":F
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static toInt(Ljava/lang/String;)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/math/NumberUtils;->toInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static toInt(Ljava/lang/String;I)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .prologue
    .line 122
    if-nez p0, :cond_0

    .line 128
    .end local p1    # "defaultValue":I
    :goto_0
    return p1

    .line 126
    .restart local p1    # "defaultValue":I
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static toLong(Ljava/lang/String;)J
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 150
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/math/NumberUtils;->toLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static toLong(Ljava/lang/String;J)J
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # J

    .prologue
    .line 171
    if-nez p0, :cond_0

    .line 177
    .end local p1    # "defaultValue":J
    :goto_0
    return-wide p1

    .line 175
    .restart local p1    # "defaultValue":J
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p1

    goto :goto_0

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static toShort(Ljava/lang/String;)S
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 353
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/math/NumberUtils;->toShort(Ljava/lang/String;S)S

    move-result v0

    return v0
.end method

.method public static toShort(Ljava/lang/String;S)S
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # S

    .prologue
    .line 374
    if-nez p0, :cond_0

    .line 380
    .end local p1    # "defaultValue":S
    :goto_0
    return p1

    .line 378
    .restart local p1    # "defaultValue":S
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    .line 379
    :catch_0
    move-exception v0

    .line 380
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private static validateArray(Ljava/lang/Object;)V
    .locals 3
    .param p0, "array"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 1122
    if-nez p0, :cond_0

    .line 1123
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1125
    :cond_0
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v2, "Array cannot be empty."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1126
    return-void

    :cond_1
    move v0, v1

    .line 1125
    goto :goto_0
.end method
