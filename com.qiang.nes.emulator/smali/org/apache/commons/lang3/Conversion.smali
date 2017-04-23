.class public Lorg/apache/commons/lang3/Conversion;
.super Ljava/lang/Object;
.source "Conversion.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final FFFF:[Z

.field private static final FFFT:[Z

.field private static final FFTF:[Z

.field private static final FFTT:[Z

.field private static final FTFF:[Z

.field private static final FTFT:[Z

.field private static final FTTF:[Z

.field private static final FTTT:[Z

.field private static final TFFF:[Z

.field private static final TFFT:[Z

.field private static final TFTF:[Z

.field private static final TFTT:[Z

.field private static final TTFF:[Z

.field private static final TTFT:[Z

.field private static final TTTF:[Z

.field private static final TTTT:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 67
    const-class v0, Lorg/apache/commons/lang3/Conversion;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/commons/lang3/Conversion;->$assertionsDisabled:Z

    .line 69
    new-array v0, v1, [Z

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/lang3/Conversion;->TTTT:[Z

    .line 70
    new-array v0, v1, [Z

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/commons/lang3/Conversion;->FTTT:[Z

    .line 71
    new-array v0, v1, [Z

    fill-array-data v0, :array_2

    sput-object v0, Lorg/apache/commons/lang3/Conversion;->TFTT:[Z

    .line 72
    new-array v0, v1, [Z

    fill-array-data v0, :array_3

    sput-object v0, Lorg/apache/commons/lang3/Conversion;->FFTT:[Z

    .line 73
    new-array v0, v1, [Z

    fill-array-data v0, :array_4

    sput-object v0, Lorg/apache/commons/lang3/Conversion;->TTFT:[Z

    .line 74
    new-array v0, v1, [Z

    fill-array-data v0, :array_5

    sput-object v0, Lorg/apache/commons/lang3/Conversion;->FTFT:[Z

    .line 75
    new-array v0, v1, [Z

    fill-array-data v0, :array_6

    sput-object v0, Lorg/apache/commons/lang3/Conversion;->TFFT:[Z

    .line 76
    new-array v0, v1, [Z

    fill-array-data v0, :array_7

    sput-object v0, Lorg/apache/commons/lang3/Conversion;->FFFT:[Z

    .line 77
    new-array v0, v1, [Z

    fill-array-data v0, :array_8

    sput-object v0, Lorg/apache/commons/lang3/Conversion;->TTTF:[Z

    .line 78
    new-array v0, v1, [Z

    fill-array-data v0, :array_9

    sput-object v0, Lorg/apache/commons/lang3/Conversion;->FTTF:[Z

    .line 79
    new-array v0, v1, [Z

    fill-array-data v0, :array_a

    sput-object v0, Lorg/apache/commons/lang3/Conversion;->TFTF:[Z

    .line 80
    new-array v0, v1, [Z

    fill-array-data v0, :array_b

    sput-object v0, Lorg/apache/commons/lang3/Conversion;->FFTF:[Z

    .line 81
    new-array v0, v1, [Z

    fill-array-data v0, :array_c

    sput-object v0, Lorg/apache/commons/lang3/Conversion;->TTFF:[Z

    .line 82
    new-array v0, v1, [Z

    fill-array-data v0, :array_d

    sput-object v0, Lorg/apache/commons/lang3/Conversion;->FTFF:[Z

    .line 83
    new-array v0, v1, [Z

    fill-array-data v0, :array_e

    sput-object v0, Lorg/apache/commons/lang3/Conversion;->TFFF:[Z

    .line 84
    new-array v0, v1, [Z

    fill-array-data v0, :array_f

    sput-object v0, Lorg/apache/commons/lang3/Conversion;->FFFF:[Z

    return-void

    .line 67
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 69
    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    .line 70
    :array_1
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x1t
    .end array-data

    .line 71
    :array_2
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x1t
    .end array-data

    .line 72
    :array_3
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x1t
    .end array-data

    .line 73
    :array_4
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x1t
    .end array-data

    .line 74
    :array_5
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x1t
    .end array-data

    .line 75
    :array_6
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x1t
    .end array-data

    .line 76
    :array_7
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    .line 77
    :array_8
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x0t
    .end array-data

    .line 78
    :array_9
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x0t
    .end array-data

    .line 79
    :array_a
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x0t
    .end array-data

    .line 80
    :array_b
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data

    .line 81
    :array_c
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data

    .line 82
    :array_d
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x0t
    .end array-data

    .line 83
    :array_e
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 84
    :array_f
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static binaryBeMsb0ToHexDigit([Z)C
    .locals 1
    .param p0, "src"    # [Z

    .prologue
    .line 423
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/Conversion;->binaryBeMsb0ToHexDigit([ZI)C

    move-result v0

    return v0
.end method

.method public static binaryBeMsb0ToHexDigit([ZI)C
    .locals 8
    .param p0, "src"    # [Z
    .param p1, "srcPos"    # I

    .prologue
    const/4 v4, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x2

    const/4 v5, 0x3

    .line 443
    array-length v3, p0

    if-nez v3, :cond_0

    .line 444
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Cannot convert an empty array."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 446
    :cond_0
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    sub-int v0, v3, p1

    .line 447
    .local v0, "beSrcPos":I
    add-int/lit8 v3, v0, 0x1

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 448
    .local v2, "srcLen":I
    new-array v1, v4, [Z

    .line 449
    .local v1, "paddedSrc":[Z
    add-int/lit8 v3, v0, 0x1

    sub-int/2addr v3, v2

    rsub-int/lit8 v4, v2, 0x4

    invoke-static {p0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 450
    move-object p0, v1

    .line 451
    const/4 p1, 0x0

    .line 452
    aget-boolean v3, p0, p1

    if-eqz v3, :cond_8

    .line 453
    array-length v3, p0

    if-le v3, v7, :cond_4

    aget-boolean v3, p0, v7

    if-eqz v3, :cond_4

    .line 454
    array-length v3, p0

    if-le v3, v6, :cond_2

    aget-boolean v3, p0, v6

    if-eqz v3, :cond_2

    .line 455
    array-length v3, p0

    if-le v3, v5, :cond_1

    aget-boolean v3, p0, v5

    if-eqz v3, :cond_1

    const/16 v3, 0x66

    .line 473
    :goto_0
    return v3

    .line 455
    :cond_1
    const/16 v3, 0x65

    goto :goto_0

    .line 457
    :cond_2
    array-length v3, p0

    if-le v3, v5, :cond_3

    aget-boolean v3, p0, v5

    if-eqz v3, :cond_3

    const/16 v3, 0x64

    goto :goto_0

    :cond_3
    const/16 v3, 0x63

    goto :goto_0

    .line 459
    :cond_4
    array-length v3, p0

    if-le v3, v6, :cond_6

    aget-boolean v3, p0, v6

    if-eqz v3, :cond_6

    .line 460
    array-length v3, p0

    if-le v3, v5, :cond_5

    aget-boolean v3, p0, v5

    if-eqz v3, :cond_5

    const/16 v3, 0x62

    goto :goto_0

    :cond_5
    const/16 v3, 0x61

    goto :goto_0

    .line 462
    :cond_6
    array-length v3, p0

    if-le v3, v5, :cond_7

    aget-boolean v3, p0, v5

    if-eqz v3, :cond_7

    const/16 v3, 0x39

    goto :goto_0

    :cond_7
    const/16 v3, 0x38

    goto :goto_0

    .line 464
    :cond_8
    array-length v3, p0

    if-le v3, v7, :cond_c

    aget-boolean v3, p0, v7

    if-eqz v3, :cond_c

    .line 465
    array-length v3, p0

    if-le v3, v6, :cond_a

    aget-boolean v3, p0, v6

    if-eqz v3, :cond_a

    .line 466
    array-length v3, p0

    if-le v3, v5, :cond_9

    aget-boolean v3, p0, v5

    if-eqz v3, :cond_9

    const/16 v3, 0x37

    goto :goto_0

    :cond_9
    const/16 v3, 0x36

    goto :goto_0

    .line 468
    :cond_a
    array-length v3, p0

    if-le v3, v5, :cond_b

    aget-boolean v3, p0, v5

    if-eqz v3, :cond_b

    const/16 v3, 0x35

    goto :goto_0

    :cond_b
    const/16 v3, 0x34

    goto :goto_0

    .line 470
    :cond_c
    array-length v3, p0

    if-le v3, v6, :cond_e

    aget-boolean v3, p0, v6

    if-eqz v3, :cond_e

    .line 471
    array-length v3, p0

    if-le v3, v5, :cond_d

    aget-boolean v3, p0, v5

    if-eqz v3, :cond_d

    const/16 v3, 0x33

    goto :goto_0

    :cond_d
    const/16 v3, 0x32

    goto :goto_0

    .line 473
    :cond_e
    array-length v3, p0

    if-le v3, v5, :cond_f

    aget-boolean v3, p0, v5

    if-eqz v3, :cond_f

    const/16 v3, 0x31

    goto :goto_0

    :cond_f
    const/16 v3, 0x30

    goto :goto_0
.end method

.method public static binaryToByte([ZIBII)B
    .locals 8
    .param p0, "src"    # [Z
    .param p1, "srcPos"    # I
    .param p2, "dstInit"    # B
    .param p3, "dstPos"    # I
    .param p4, "nBools"    # I

    .prologue
    const/4 v6, 0x1

    .line 1037
    array-length v5, p0

    if-nez v5, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-nez p4, :cond_2

    .line 1051
    .end local p2    # "dstInit":B
    :cond_1
    :goto_0
    return p2

    .line 1040
    .restart local p2    # "dstInit":B
    :cond_2
    add-int/lit8 v5, p4, -0x1

    add-int/2addr v5, p3

    const/16 v7, 0x8

    if-lt v5, v7, :cond_3

    .line 1041
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "nBools-1+dstPos is greather or equal to than 8"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1043
    :cond_3
    move v3, p2

    .line 1044
    .local v3, "out":B
    const/4 v4, 0x0

    .line 1045
    .local v4, "shift":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, p4, :cond_5

    .line 1046
    add-int v4, v1, p3

    .line 1047
    add-int v5, v1, p1

    aget-boolean v5, p0, v5

    if-eqz v5, :cond_4

    move v5, v6

    :goto_2
    shl-int v0, v5, v4

    .line 1048
    .local v0, "bits":I
    shl-int v2, v6, v4

    .line 1049
    .local v2, "mask":I
    xor-int/lit8 v5, v2, -0x1

    and-int/2addr v5, v3

    or-int/2addr v5, v0

    int-to-byte v3, v5

    .line 1045
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1047
    .end local v0    # "bits":I
    .end local v2    # "mask":I
    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    :cond_5
    move p2, v3

    .line 1051
    goto :goto_0
.end method

.method public static binaryToHexDigit([Z)C
    .locals 1
    .param p0, "src"    # [Z

    .prologue
    .line 294
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/Conversion;->binaryToHexDigit([ZI)C

    move-result v0

    return v0
.end method

.method public static binaryToHexDigit([ZI)C
    .locals 2
    .param p0, "src"    # [Z
    .param p1, "srcPos"    # I

    .prologue
    .line 313
    array-length v0, p0

    if-nez v0, :cond_0

    .line 314
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot convert an empty array."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :cond_0
    array-length v0, p0

    add-int/lit8 v1, p1, 0x3

    if-le v0, v1, :cond_8

    add-int/lit8 v0, p1, 0x3

    aget-boolean v0, p0, v0

    if-eqz v0, :cond_8

    .line 317
    array-length v0, p0

    add-int/lit8 v1, p1, 0x2

    if-le v0, v1, :cond_4

    add-int/lit8 v0, p1, 0x2

    aget-boolean v0, p0, v0

    if-eqz v0, :cond_4

    .line 318
    array-length v0, p0

    add-int/lit8 v1, p1, 0x1

    if-le v0, v1, :cond_2

    add-int/lit8 v0, p1, 0x1

    aget-boolean v0, p0, v0

    if-eqz v0, :cond_2

    .line 319
    aget-boolean v0, p0, p1

    if-eqz v0, :cond_1

    const/16 v0, 0x66

    .line 337
    :goto_0
    return v0

    .line 319
    :cond_1
    const/16 v0, 0x65

    goto :goto_0

    .line 321
    :cond_2
    aget-boolean v0, p0, p1

    if-eqz v0, :cond_3

    const/16 v0, 0x64

    goto :goto_0

    :cond_3
    const/16 v0, 0x63

    goto :goto_0

    .line 323
    :cond_4
    array-length v0, p0

    add-int/lit8 v1, p1, 0x1

    if-le v0, v1, :cond_6

    add-int/lit8 v0, p1, 0x1

    aget-boolean v0, p0, v0

    if-eqz v0, :cond_6

    .line 324
    aget-boolean v0, p0, p1

    if-eqz v0, :cond_5

    const/16 v0, 0x62

    goto :goto_0

    :cond_5
    const/16 v0, 0x61

    goto :goto_0

    .line 326
    :cond_6
    aget-boolean v0, p0, p1

    if-eqz v0, :cond_7

    const/16 v0, 0x39

    goto :goto_0

    :cond_7
    const/16 v0, 0x38

    goto :goto_0

    .line 328
    :cond_8
    array-length v0, p0

    add-int/lit8 v1, p1, 0x2

    if-le v0, v1, :cond_c

    add-int/lit8 v0, p1, 0x2

    aget-boolean v0, p0, v0

    if-eqz v0, :cond_c

    .line 329
    array-length v0, p0

    add-int/lit8 v1, p1, 0x1

    if-le v0, v1, :cond_a

    add-int/lit8 v0, p1, 0x1

    aget-boolean v0, p0, v0

    if-eqz v0, :cond_a

    .line 330
    aget-boolean v0, p0, p1

    if-eqz v0, :cond_9

    const/16 v0, 0x37

    goto :goto_0

    :cond_9
    const/16 v0, 0x36

    goto :goto_0

    .line 332
    :cond_a
    aget-boolean v0, p0, p1

    if-eqz v0, :cond_b

    const/16 v0, 0x35

    goto :goto_0

    :cond_b
    const/16 v0, 0x34

    goto :goto_0

    .line 334
    :cond_c
    array-length v0, p0

    add-int/lit8 v1, p1, 0x1

    if-le v0, v1, :cond_e

    add-int/lit8 v0, p1, 0x1

    aget-boolean v0, p0, v0

    if-eqz v0, :cond_e

    .line 335
    aget-boolean v0, p0, p1

    if-eqz v0, :cond_d

    const/16 v0, 0x33

    goto :goto_0

    :cond_d
    const/16 v0, 0x32

    goto :goto_0

    .line 337
    :cond_e
    aget-boolean v0, p0, p1

    if-eqz v0, :cond_f

    const/16 v0, 0x31

    goto :goto_0

    :cond_f
    const/16 v0, 0x30

    goto :goto_0
.end method

.method public static binaryToHexDigitMsb0_4bits([Z)C
    .locals 1
    .param p0, "src"    # [Z

    .prologue
    .line 356
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/Conversion;->binaryToHexDigitMsb0_4bits([ZI)C

    move-result v0

    return v0
.end method

.method public static binaryToHexDigitMsb0_4bits([ZI)C
    .locals 3
    .param p0, "src"    # [Z
    .param p1, "srcPos"    # I

    .prologue
    .line 377
    array-length v0, p0

    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    .line 378
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "src.length>8: src.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    :cond_0
    array-length v0, p0

    sub-int/2addr v0, p1

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 381
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "src.length-srcPos<4: src.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", srcPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 383
    :cond_1
    add-int/lit8 v0, p1, 0x3

    aget-boolean v0, p0, v0

    if-eqz v0, :cond_9

    .line 384
    add-int/lit8 v0, p1, 0x2

    aget-boolean v0, p0, v0

    if-eqz v0, :cond_5

    .line 385
    add-int/lit8 v0, p1, 0x1

    aget-boolean v0, p0, v0

    if-eqz v0, :cond_3

    .line 386
    aget-boolean v0, p0, p1

    if-eqz v0, :cond_2

    const/16 v0, 0x66

    .line 404
    :goto_0
    return v0

    .line 386
    :cond_2
    const/16 v0, 0x37

    goto :goto_0

    .line 388
    :cond_3
    aget-boolean v0, p0, p1

    if-eqz v0, :cond_4

    const/16 v0, 0x62

    goto :goto_0

    :cond_4
    const/16 v0, 0x33

    goto :goto_0

    .line 390
    :cond_5
    add-int/lit8 v0, p1, 0x1

    aget-boolean v0, p0, v0

    if-eqz v0, :cond_7

    .line 391
    aget-boolean v0, p0, p1

    if-eqz v0, :cond_6

    const/16 v0, 0x64

    goto :goto_0

    :cond_6
    const/16 v0, 0x35

    goto :goto_0

    .line 393
    :cond_7
    aget-boolean v0, p0, p1

    if-eqz v0, :cond_8

    const/16 v0, 0x39

    goto :goto_0

    :cond_8
    const/16 v0, 0x31

    goto :goto_0

    .line 395
    :cond_9
    add-int/lit8 v0, p1, 0x2

    aget-boolean v0, p0, v0

    if-eqz v0, :cond_d

    .line 396
    add-int/lit8 v0, p1, 0x1

    aget-boolean v0, p0, v0

    if-eqz v0, :cond_b

    .line 397
    aget-boolean v0, p0, p1

    if-eqz v0, :cond_a

    const/16 v0, 0x65

    goto :goto_0

    :cond_a
    const/16 v0, 0x36

    goto :goto_0

    .line 399
    :cond_b
    aget-boolean v0, p0, p1

    if-eqz v0, :cond_c

    const/16 v0, 0x61

    goto :goto_0

    :cond_c
    const/16 v0, 0x32

    goto :goto_0

    .line 401
    :cond_d
    add-int/lit8 v0, p1, 0x1

    aget-boolean v0, p0, v0

    if-eqz v0, :cond_f

    .line 402
    aget-boolean v0, p0, p1

    if-eqz v0, :cond_e

    const/16 v0, 0x63

    goto :goto_0

    :cond_e
    const/16 v0, 0x34

    goto :goto_0

    .line 404
    :cond_f
    aget-boolean v0, p0, p1

    if-eqz v0, :cond_10

    const/16 v0, 0x38

    goto :goto_0

    :cond_10
    const/16 v0, 0x30

    goto :goto_0
.end method

.method public static binaryToInt([ZIIII)I
    .locals 8
    .param p0, "src"    # [Z
    .param p1, "srcPos"    # I
    .param p2, "dstInit"    # I
    .param p3, "dstPos"    # I
    .param p4, "nBools"    # I

    .prologue
    const/4 v6, 0x1

    .line 965
    array-length v5, p0

    if-nez v5, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-nez p4, :cond_2

    .line 979
    .end local p2    # "dstInit":I
    :cond_1
    :goto_0
    return p2

    .line 968
    .restart local p2    # "dstInit":I
    :cond_2
    add-int/lit8 v5, p4, -0x1

    add-int/2addr v5, p3

    const/16 v7, 0x20

    if-lt v5, v7, :cond_3

    .line 969
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "nBools-1+dstPos is greather or equal to than 32"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 971
    :cond_3
    move v3, p2

    .line 972
    .local v3, "out":I
    const/4 v4, 0x0

    .line 973
    .local v4, "shift":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, p4, :cond_5

    .line 974
    add-int v4, v1, p3

    .line 975
    add-int v5, v1, p1

    aget-boolean v5, p0, v5

    if-eqz v5, :cond_4

    move v5, v6

    :goto_2
    shl-int v0, v5, v4

    .line 976
    .local v0, "bits":I
    shl-int v2, v6, v4

    .line 977
    .local v2, "mask":I
    xor-int/lit8 v5, v2, -0x1

    and-int/2addr v5, v3

    or-int v3, v5, v0

    .line 973
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 975
    .end local v0    # "bits":I
    .end local v2    # "mask":I
    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    :cond_5
    move p2, v3

    .line 979
    goto :goto_0
.end method

.method public static binaryToLong([ZIJII)J
    .locals 10
    .param p0, "src"    # [Z
    .param p1, "srcPos"    # I
    .param p2, "dstInit"    # J
    .param p4, "dstPos"    # I
    .param p5, "nBools"    # I

    .prologue
    .line 929
    array-length v8, p0

    if-nez v8, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-nez p5, :cond_2

    .line 943
    .end local p2    # "dstInit":J
    :cond_1
    :goto_0
    return-wide p2

    .line 932
    .restart local p2    # "dstInit":J
    :cond_2
    add-int/lit8 v8, p5, -0x1

    add-int/2addr v8, p4

    const/16 v9, 0x40

    if-lt v8, v9, :cond_3

    .line 933
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "nBools-1+dstPos is greather or equal to than 64"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 935
    :cond_3
    move-wide v6, p2

    .line 936
    .local v6, "out":J
    const/4 v3, 0x0

    .line 937
    .local v3, "shift":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, p5, :cond_5

    .line 938
    add-int v3, v2, p4

    .line 939
    add-int v8, v2, p1

    aget-boolean v8, p0, v8

    if-eqz v8, :cond_4

    const-wide/16 v8, 0x1

    :goto_2
    shl-long v0, v8, v3

    .line 940
    .local v0, "bits":J
    const-wide/16 v8, 0x1

    shl-long v4, v8, v3

    .line 941
    .local v4, "mask":J
    const-wide/16 v8, -0x1

    xor-long/2addr v8, v4

    and-long/2addr v8, v6

    or-long v6, v8, v0

    .line 937
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 939
    .end local v0    # "bits":J
    .end local v4    # "mask":J
    :cond_4
    const-wide/16 v8, 0x0

    goto :goto_2

    :cond_5
    move-wide p2, v6

    .line 943
    goto :goto_0
.end method

.method public static binaryToShort([ZISII)S
    .locals 8
    .param p0, "src"    # [Z
    .param p1, "srcPos"    # I
    .param p2, "dstInit"    # S
    .param p3, "dstPos"    # I
    .param p4, "nBools"    # I

    .prologue
    const/4 v6, 0x1

    .line 1001
    array-length v5, p0

    if-nez v5, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-nez p4, :cond_2

    .line 1015
    .end local p2    # "dstInit":S
    :cond_1
    :goto_0
    return p2

    .line 1004
    .restart local p2    # "dstInit":S
    :cond_2
    add-int/lit8 v5, p4, -0x1

    add-int/2addr v5, p3

    const/16 v7, 0x10

    if-lt v5, v7, :cond_3

    .line 1005
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "nBools-1+dstPos is greather or equal to than 16"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1007
    :cond_3
    move v3, p2

    .line 1008
    .local v3, "out":S
    const/4 v4, 0x0

    .line 1009
    .local v4, "shift":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, p4, :cond_5

    .line 1010
    add-int v4, v1, p3

    .line 1011
    add-int v5, v1, p1

    aget-boolean v5, p0, v5

    if-eqz v5, :cond_4

    move v5, v6

    :goto_2
    shl-int v0, v5, v4

    .line 1012
    .local v0, "bits":I
    shl-int v2, v6, v4

    .line 1013
    .local v2, "mask":I
    xor-int/lit8 v5, v2, -0x1

    and-int/2addr v5, v3

    or-int/2addr v5, v0

    int-to-short v3, v5

    .line 1009
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1011
    .end local v0    # "bits":I
    .end local v2    # "mask":I
    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    :cond_5
    move p2, v3

    .line 1015
    goto :goto_0
.end method

.method public static byteArrayToInt([BIIII)I
    .locals 7
    .param p0, "src"    # [B
    .param p1, "srcPos"    # I
    .param p2, "dstInit"    # I
    .param p3, "dstPos"    # I
    .param p4, "nBytes"    # I

    .prologue
    .line 722
    array-length v5, p0

    if-nez v5, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-nez p4, :cond_2

    .line 736
    .end local p2    # "dstInit":I
    :cond_1
    :goto_0
    return p2

    .line 725
    .restart local p2    # "dstInit":I
    :cond_2
    add-int/lit8 v5, p4, -0x1

    mul-int/lit8 v5, v5, 0x8

    add-int/2addr v5, p3

    const/16 v6, 0x20

    if-lt v5, v6, :cond_3

    .line 726
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "(nBytes-1)*8+dstPos is greather or equal to than 32"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 728
    :cond_3
    move v3, p2

    .line 729
    .local v3, "out":I
    const/4 v4, 0x0

    .line 730
    .local v4, "shift":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, p4, :cond_4

    .line 731
    mul-int/lit8 v5, v1, 0x8

    add-int v4, v5, p3

    .line 732
    add-int v5, v1, p1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int v0, v5, v4

    .line 733
    .local v0, "bits":I
    const/16 v5, 0xff

    shl-int v2, v5, v4

    .line 734
    .local v2, "mask":I
    xor-int/lit8 v5, v2, -0x1

    and-int/2addr v5, v3

    or-int v3, v5, v0

    .line 730
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "bits":I
    .end local v2    # "mask":I
    :cond_4
    move p2, v3

    .line 736
    goto :goto_0
.end method

.method public static byteArrayToLong([BIJII)J
    .locals 14
    .param p0, "src"    # [B
    .param p1, "srcPos"    # I
    .param p2, "dstInit"    # J
    .param p4, "dstPos"    # I
    .param p5, "nBytes"    # I

    .prologue
    .line 686
    array-length v10, p0

    if-nez v10, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-nez p5, :cond_2

    .line 700
    .end local p2    # "dstInit":J
    :cond_1
    :goto_0
    return-wide p2

    .line 689
    .restart local p2    # "dstInit":J
    :cond_2
    add-int/lit8 v10, p5, -0x1

    mul-int/lit8 v10, v10, 0x8

    add-int v10, v10, p4

    const/16 v11, 0x40

    if-lt v10, v11, :cond_3

    .line 690
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "(nBytes-1)*8+dstPos is greather or equal to than 64"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 692
    :cond_3
    move-wide/from16 v8, p2

    .line 693
    .local v8, "out":J
    const/4 v5, 0x0

    .line 694
    .local v5, "shift":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    move/from16 v0, p5

    if-ge v4, v0, :cond_4

    .line 695
    mul-int/lit8 v10, v4, 0x8

    add-int v5, v10, p4

    .line 696
    const-wide/16 v10, 0xff

    add-int v12, v4, p1

    aget-byte v12, p0, v12

    int-to-long v12, v12

    and-long/2addr v10, v12

    shl-long v2, v10, v5

    .line 697
    .local v2, "bits":J
    const-wide/16 v10, 0xff

    shl-long v6, v10, v5

    .line 698
    .local v6, "mask":J
    const-wide/16 v10, -0x1

    xor-long/2addr v10, v6

    and-long/2addr v10, v8

    or-long v8, v10, v2

    .line 694
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v2    # "bits":J
    .end local v6    # "mask":J
    :cond_4
    move-wide/from16 p2, v8

    .line 700
    goto :goto_0
.end method

.method public static byteArrayToShort([BISII)S
    .locals 7
    .param p0, "src"    # [B
    .param p1, "srcPos"    # I
    .param p2, "dstInit"    # S
    .param p3, "dstPos"    # I
    .param p4, "nBytes"    # I

    .prologue
    .line 758
    array-length v5, p0

    if-nez v5, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-nez p4, :cond_2

    .line 772
    .end local p2    # "dstInit":S
    :cond_1
    :goto_0
    return p2

    .line 761
    .restart local p2    # "dstInit":S
    :cond_2
    add-int/lit8 v5, p4, -0x1

    mul-int/lit8 v5, v5, 0x8

    add-int/2addr v5, p3

    const/16 v6, 0x10

    if-lt v5, v6, :cond_3

    .line 762
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "(nBytes-1)*8+dstPos is greather or equal to than 16"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 764
    :cond_3
    move v3, p2

    .line 765
    .local v3, "out":S
    const/4 v4, 0x0

    .line 766
    .local v4, "shift":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, p4, :cond_4

    .line 767
    mul-int/lit8 v5, v1, 0x8

    add-int v4, v5, p3

    .line 768
    add-int v5, v1, p1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int v0, v5, v4

    .line 769
    .local v0, "bits":I
    const/16 v5, 0xff

    shl-int v2, v5, v4

    .line 770
    .local v2, "mask":I
    xor-int/lit8 v5, v2, -0x1

    and-int/2addr v5, v3

    or-int/2addr v5, v0

    int-to-short v3, v5

    .line 766
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "bits":I
    .end local v2    # "mask":I
    :cond_4
    move p2, v3

    .line 772
    goto :goto_0
.end method

.method public static byteArrayToUuid([BI)Ljava/util/UUID;
    .locals 10
    .param p0, "src"    # [B
    .param p1, "srcPos"    # I

    .prologue
    const-wide/16 v2, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 1589
    array-length v0, p0

    sub-int/2addr v0, p1

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 1590
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Need at least 16 bytes for UUID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1592
    :cond_0
    new-instance v6, Ljava/util/UUID;

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/Conversion;->byteArrayToLong([BIJII)J

    move-result-wide v8

    add-int/lit8 v1, p1, 0x8

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/Conversion;->byteArrayToLong([BIJII)J

    move-result-wide v0

    invoke-direct {v6, v8, v9, v0, v1}, Ljava/util/UUID;-><init>(JJ)V

    return-object v6
.end method

.method public static byteToBinary(BI[ZII)[Z
    .locals 4
    .param p0, "src"    # B
    .param p1, "srcPos"    # I
    .param p2, "dst"    # [Z
    .param p3, "dstPos"    # I
    .param p4, "nBools"    # I

    .prologue
    .line 1531
    if-nez p4, :cond_1

    .line 1542
    :cond_0
    return-object p2

    .line 1534
    :cond_1
    add-int/lit8 v2, p4, -0x1

    add-int/2addr v2, p1

    const/16 v3, 0x8

    if-lt v2, v3, :cond_2

    .line 1535
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "nBools-1+srcPos is greather or equal to than 8"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1537
    :cond_2
    const/4 v1, 0x0

    .line 1538
    .local v1, "shift":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_0

    .line 1539
    add-int v1, v0, p1

    .line 1540
    add-int v3, p3, v0

    shr-int v2, p0, v1

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :goto_1
    aput-boolean v2, p2, v3

    .line 1538
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1540
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static byteToHex(BILjava/lang/String;II)Ljava/lang/String;
    .locals 7
    .param p0, "src"    # B
    .param p1, "srcPos"    # I
    .param p2, "dstInit"    # Ljava/lang/String;
    .param p3, "dstPos"    # I
    .param p4, "nHexs"    # I

    .prologue
    .line 1390
    if-nez p4, :cond_0

    .line 1409
    .end local p2    # "dstInit":Ljava/lang/String;
    :goto_0
    return-object p2

    .line 1393
    .restart local p2    # "dstInit":Ljava/lang/String;
    :cond_0
    add-int/lit8 v5, p4, -0x1

    mul-int/lit8 v5, v5, 0x4

    add-int/2addr v5, p1

    const/16 v6, 0x8

    if-lt v5, v6, :cond_1

    .line 1394
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "(nHexs-1)*4+srcPos is greather or equal to than 8"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1396
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1397
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 1398
    .local v4, "shift":I
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 1399
    .local v0, "append":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, p4, :cond_3

    .line 1400
    mul-int/lit8 v5, v2, 0x4

    add-int v4, v5, p1

    .line 1401
    shr-int v5, p0, v4

    and-int/lit8 v1, v5, 0xf

    .line 1402
    .local v1, "bits":I
    add-int v5, p3, v2

    if-ne v5, v0, :cond_2

    .line 1403
    add-int/lit8 v0, v0, 0x1

    .line 1404
    invoke-static {v1}, Lorg/apache/commons/lang3/Conversion;->intToHexDigit(I)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1399
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1406
    :cond_2
    add-int v5, p3, v2

    invoke-static {v1}, Lorg/apache/commons/lang3/Conversion;->intToHexDigit(I)C

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_2

    .line 1409
    .end local v1    # "bits":I
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public static hexDigitMsb0ToBinary(C)[Z
    .locals 3
    .param p0, "hexDigit"    # C

    .prologue
    .line 235
    sparse-switch p0, :sswitch_data_0

    .line 275
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot interpret \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' as a hexadecimal digit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :sswitch_0
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->FFFF:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    .line 273
    :goto_0
    return-object v0

    .line 239
    :sswitch_1
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->FFFT:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_0

    .line 241
    :sswitch_2
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->FFTF:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_0

    .line 243
    :sswitch_3
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->FFTT:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_0

    .line 245
    :sswitch_4
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->FTFF:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_0

    .line 247
    :sswitch_5
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->FTFT:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_0

    .line 249
    :sswitch_6
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->FTTF:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_0

    .line 251
    :sswitch_7
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->FTTT:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_0

    .line 253
    :sswitch_8
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->TFFF:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_0

    .line 255
    :sswitch_9
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->TFFT:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_0

    .line 258
    :sswitch_a
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->TFTF:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_0

    .line 261
    :sswitch_b
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->TFTT:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_0

    .line 264
    :sswitch_c
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->TTFF:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_0

    .line 267
    :sswitch_d
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->TTFT:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_0

    .line 270
    :sswitch_e
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->TTTF:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_0

    .line 273
    :sswitch_f
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->TTTT:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto/16 :goto_0

    .line 235
    nop

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x31 -> :sswitch_1
        0x32 -> :sswitch_2
        0x33 -> :sswitch_3
        0x34 -> :sswitch_4
        0x35 -> :sswitch_5
        0x36 -> :sswitch_6
        0x37 -> :sswitch_7
        0x38 -> :sswitch_8
        0x39 -> :sswitch_9
        0x41 -> :sswitch_a
        0x42 -> :sswitch_b
        0x43 -> :sswitch_c
        0x44 -> :sswitch_d
        0x45 -> :sswitch_e
        0x46 -> :sswitch_f
        0x61 -> :sswitch_a
        0x62 -> :sswitch_b
        0x63 -> :sswitch_c
        0x64 -> :sswitch_d
        0x65 -> :sswitch_e
        0x66 -> :sswitch_f
    .end sparse-switch
.end method

.method public static hexDigitMsb0ToInt(C)I
    .locals 3
    .param p0, "hexDigit"    # C

    .prologue
    .line 119
    sparse-switch p0, :sswitch_data_0

    .line 159
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot interpret \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' as a hexadecimal digit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :sswitch_0
    const/4 v0, 0x0

    .line 157
    :goto_0
    return v0

    .line 123
    :sswitch_1
    const/16 v0, 0x8

    goto :goto_0

    .line 125
    :sswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 127
    :sswitch_3
    const/16 v0, 0xc

    goto :goto_0

    .line 129
    :sswitch_4
    const/4 v0, 0x2

    goto :goto_0

    .line 131
    :sswitch_5
    const/16 v0, 0xa

    goto :goto_0

    .line 133
    :sswitch_6
    const/4 v0, 0x6

    goto :goto_0

    .line 135
    :sswitch_7
    const/16 v0, 0xe

    goto :goto_0

    .line 137
    :sswitch_8
    const/4 v0, 0x1

    goto :goto_0

    .line 139
    :sswitch_9
    const/16 v0, 0x9

    goto :goto_0

    .line 142
    :sswitch_a
    const/4 v0, 0x5

    goto :goto_0

    .line 145
    :sswitch_b
    const/16 v0, 0xd

    goto :goto_0

    .line 148
    :sswitch_c
    const/4 v0, 0x3

    goto :goto_0

    .line 151
    :sswitch_d
    const/16 v0, 0xb

    goto :goto_0

    .line 154
    :sswitch_e
    const/4 v0, 0x7

    goto :goto_0

    .line 157
    :sswitch_f
    const/16 v0, 0xf

    goto :goto_0

    .line 119
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x31 -> :sswitch_1
        0x32 -> :sswitch_2
        0x33 -> :sswitch_3
        0x34 -> :sswitch_4
        0x35 -> :sswitch_5
        0x36 -> :sswitch_6
        0x37 -> :sswitch_7
        0x38 -> :sswitch_8
        0x39 -> :sswitch_9
        0x41 -> :sswitch_a
        0x42 -> :sswitch_b
        0x43 -> :sswitch_c
        0x44 -> :sswitch_d
        0x45 -> :sswitch_e
        0x46 -> :sswitch_f
        0x61 -> :sswitch_a
        0x62 -> :sswitch_b
        0x63 -> :sswitch_c
        0x64 -> :sswitch_d
        0x65 -> :sswitch_e
        0x66 -> :sswitch_f
    .end sparse-switch
.end method

.method public static hexDigitToBinary(C)[Z
    .locals 3
    .param p0, "hexDigit"    # C

    .prologue
    .line 177
    sparse-switch p0, :sswitch_data_0

    .line 217
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot interpret \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' as a hexadecimal digit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :sswitch_0
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->FFFF:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    .line 215
    :goto_0
    return-object v0

    .line 181
    :sswitch_1
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->TFFF:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_0

    .line 183
    :sswitch_2
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->FTFF:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_0

    .line 185
    :sswitch_3
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->TTFF:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_0

    .line 187
    :sswitch_4
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->FFTF:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_0

    .line 189
    :sswitch_5
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->TFTF:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_0

    .line 191
    :sswitch_6
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->FTTF:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_0

    .line 193
    :sswitch_7
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->TTTF:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_0

    .line 195
    :sswitch_8
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->FFFT:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_0

    .line 197
    :sswitch_9
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->TFFT:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_0

    .line 200
    :sswitch_a
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->FTFT:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_0

    .line 203
    :sswitch_b
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->TTFT:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_0

    .line 206
    :sswitch_c
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->FFTT:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_0

    .line 209
    :sswitch_d
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->TFTT:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_0

    .line 212
    :sswitch_e
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->FTTT:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_0

    .line 215
    :sswitch_f
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->TTTT:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto/16 :goto_0

    .line 177
    nop

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x31 -> :sswitch_1
        0x32 -> :sswitch_2
        0x33 -> :sswitch_3
        0x34 -> :sswitch_4
        0x35 -> :sswitch_5
        0x36 -> :sswitch_6
        0x37 -> :sswitch_7
        0x38 -> :sswitch_8
        0x39 -> :sswitch_9
        0x41 -> :sswitch_a
        0x42 -> :sswitch_b
        0x43 -> :sswitch_c
        0x44 -> :sswitch_d
        0x45 -> :sswitch_e
        0x46 -> :sswitch_f
        0x61 -> :sswitch_a
        0x62 -> :sswitch_b
        0x63 -> :sswitch_c
        0x64 -> :sswitch_d
        0x65 -> :sswitch_e
        0x66 -> :sswitch_f
    .end sparse-switch
.end method

.method public static hexDigitToInt(C)I
    .locals 4
    .param p0, "hexDigit"    # C

    .prologue
    .line 99
    const/16 v1, 0x10

    invoke-static {p0, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 100
    .local v0, "digit":I
    if-gez v0, :cond_0

    .line 101
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot interpret \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' as a hexadecimal digit"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 103
    :cond_0
    return v0
.end method

.method public static hexToByte(Ljava/lang/String;IBII)B
    .locals 7
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "srcPos"    # I
    .param p2, "dstInit"    # B
    .param p3, "dstPos"    # I
    .param p4, "nHex"    # I

    .prologue
    .line 893
    if-nez p4, :cond_0

    .line 907
    .end local p2    # "dstInit":B
    :goto_0
    return p2

    .line 896
    .restart local p2    # "dstInit":B
    :cond_0
    add-int/lit8 v5, p4, -0x1

    mul-int/lit8 v5, v5, 0x4

    add-int/2addr v5, p3

    const/16 v6, 0x8

    if-lt v5, v6, :cond_1

    .line 897
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "(nHexs-1)*4+dstPos is greather or equal to than 8"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 899
    :cond_1
    move v3, p2

    .line 900
    .local v3, "out":B
    const/4 v4, 0x0

    .line 901
    .local v4, "shift":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, p4, :cond_2

    .line 902
    mul-int/lit8 v5, v1, 0x4

    add-int v4, v5, p3

    .line 903
    add-int v5, v1, p1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lorg/apache/commons/lang3/Conversion;->hexDigitToInt(C)I

    move-result v5

    and-int/lit8 v5, v5, 0xf

    shl-int v0, v5, v4

    .line 904
    .local v0, "bits":I
    const/16 v5, 0xf

    shl-int v2, v5, v4

    .line 905
    .local v2, "mask":I
    xor-int/lit8 v5, v2, -0x1

    and-int/2addr v5, v3

    or-int/2addr v5, v0

    int-to-byte v3, v5

    .line 901
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "bits":I
    .end local v2    # "mask":I
    :cond_2
    move p2, v3

    .line 907
    goto :goto_0
.end method

.method public static hexToInt(Ljava/lang/String;IIII)I
    .locals 7
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "srcPos"    # I
    .param p2, "dstInit"    # I
    .param p3, "dstPos"    # I
    .param p4, "nHex"    # I

    .prologue
    .line 825
    if-nez p4, :cond_0

    .line 839
    .end local p2    # "dstInit":I
    :goto_0
    return p2

    .line 828
    .restart local p2    # "dstInit":I
    :cond_0
    add-int/lit8 v5, p4, -0x1

    mul-int/lit8 v5, v5, 0x4

    add-int/2addr v5, p3

    const/16 v6, 0x20

    if-lt v5, v6, :cond_1

    .line 829
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "(nHexs-1)*4+dstPos is greather or equal to than 32"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 831
    :cond_1
    move v3, p2

    .line 832
    .local v3, "out":I
    const/4 v4, 0x0

    .line 833
    .local v4, "shift":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, p4, :cond_2

    .line 834
    mul-int/lit8 v5, v1, 0x4

    add-int v4, v5, p3

    .line 835
    add-int v5, v1, p1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lorg/apache/commons/lang3/Conversion;->hexDigitToInt(C)I

    move-result v5

    and-int/lit8 v5, v5, 0xf

    shl-int v0, v5, v4

    .line 836
    .local v0, "bits":I
    const/16 v5, 0xf

    shl-int v2, v5, v4

    .line 837
    .local v2, "mask":I
    xor-int/lit8 v5, v2, -0x1

    and-int/2addr v5, v3

    or-int v3, v5, v0

    .line 833
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "bits":I
    .end local v2    # "mask":I
    :cond_2
    move p2, v3

    .line 839
    goto :goto_0
.end method

.method public static hexToLong(Ljava/lang/String;IJII)J
    .locals 14
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "srcPos"    # I
    .param p2, "dstInit"    # J
    .param p4, "dstPos"    # I
    .param p5, "nHex"    # I

    .prologue
    .line 792
    if-nez p5, :cond_0

    .line 806
    .end local p2    # "dstInit":J
    :goto_0
    return-wide p2

    .line 795
    .restart local p2    # "dstInit":J
    :cond_0
    add-int/lit8 v10, p5, -0x1

    mul-int/lit8 v10, v10, 0x4

    add-int v10, v10, p4

    const/16 v11, 0x40

    if-lt v10, v11, :cond_1

    .line 796
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "(nHexs-1)*4+dstPos is greather or equal to than 64"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 798
    :cond_1
    move-wide/from16 v8, p2

    .line 799
    .local v8, "out":J
    const/4 v5, 0x0

    .line 800
    .local v5, "shift":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    move/from16 v0, p5

    if-ge v4, v0, :cond_2

    .line 801
    mul-int/lit8 v10, v4, 0x4

    add-int v5, v10, p4

    .line 802
    const-wide/16 v10, 0xf

    add-int v12, v4, p1

    invoke-virtual {p0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Lorg/apache/commons/lang3/Conversion;->hexDigitToInt(C)I

    move-result v12

    int-to-long v12, v12

    and-long/2addr v10, v12

    shl-long v2, v10, v5

    .line 803
    .local v2, "bits":J
    const-wide/16 v10, 0xf

    shl-long v6, v10, v5

    .line 804
    .local v6, "mask":J
    const-wide/16 v10, -0x1

    xor-long/2addr v10, v6

    and-long/2addr v10, v8

    or-long v8, v10, v2

    .line 800
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v2    # "bits":J
    .end local v6    # "mask":J
    :cond_2
    move-wide/from16 p2, v8

    .line 806
    goto :goto_0
.end method

.method public static hexToShort(Ljava/lang/String;ISII)S
    .locals 7
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "srcPos"    # I
    .param p2, "dstInit"    # S
    .param p3, "dstPos"    # I
    .param p4, "nHex"    # I

    .prologue
    .line 859
    if-nez p4, :cond_0

    .line 873
    .end local p2    # "dstInit":S
    :goto_0
    return p2

    .line 862
    .restart local p2    # "dstInit":S
    :cond_0
    add-int/lit8 v5, p4, -0x1

    mul-int/lit8 v5, v5, 0x4

    add-int/2addr v5, p3

    const/16 v6, 0x10

    if-lt v5, v6, :cond_1

    .line 863
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "(nHexs-1)*4+dstPos is greather or equal to than 16"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 865
    :cond_1
    move v3, p2

    .line 866
    .local v3, "out":S
    const/4 v4, 0x0

    .line 867
    .local v4, "shift":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, p4, :cond_2

    .line 868
    mul-int/lit8 v5, v1, 0x4

    add-int v4, v5, p3

    .line 869
    add-int v5, v1, p1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lorg/apache/commons/lang3/Conversion;->hexDigitToInt(C)I

    move-result v5

    and-int/lit8 v5, v5, 0xf

    shl-int v0, v5, v4

    .line 870
    .local v0, "bits":I
    const/16 v5, 0xf

    shl-int v2, v5, v4

    .line 871
    .local v2, "mask":I
    xor-int/lit8 v5, v2, -0x1

    and-int/2addr v5, v3

    or-int/2addr v5, v0

    int-to-short v3, v5

    .line 867
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "bits":I
    .end local v2    # "mask":I
    :cond_2
    move p2, v3

    .line 873
    goto :goto_0
.end method

.method public static intArrayToLong([IIJII)J
    .locals 14
    .param p0, "src"    # [I
    .param p1, "srcPos"    # I
    .param p2, "dstInit"    # J
    .param p4, "dstPos"    # I
    .param p5, "nInts"    # I

    .prologue
    .line 578
    array-length v10, p0

    if-nez v10, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-nez p5, :cond_2

    .line 592
    .end local p2    # "dstInit":J
    :cond_1
    :goto_0
    return-wide p2

    .line 581
    .restart local p2    # "dstInit":J
    :cond_2
    add-int/lit8 v10, p5, -0x1

    mul-int/lit8 v10, v10, 0x20

    add-int v10, v10, p4

    const/16 v11, 0x40

    if-lt v10, v11, :cond_3

    .line 582
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "(nInts-1)*32+dstPos is greather or equal to than 64"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 584
    :cond_3
    move-wide/from16 v8, p2

    .line 585
    .local v8, "out":J
    const/4 v5, 0x0

    .line 586
    .local v5, "shift":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    move/from16 v0, p5

    if-ge v4, v0, :cond_4

    .line 587
    mul-int/lit8 v10, v4, 0x20

    add-int v5, v10, p4

    .line 588
    const-wide v10, 0xffffffffL

    add-int v12, v4, p1

    aget v12, p0, v12

    int-to-long v12, v12

    and-long/2addr v10, v12

    shl-long v2, v10, v5

    .line 589
    .local v2, "bits":J
    const-wide v10, 0xffffffffL

    shl-long v6, v10, v5

    .line 590
    .local v6, "mask":J
    const-wide/16 v10, -0x1

    xor-long/2addr v10, v6

    and-long/2addr v10, v8

    or-long v8, v10, v2

    .line 586
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v2    # "bits":J
    .end local v6    # "mask":J
    :cond_4
    move-wide/from16 p2, v8

    .line 592
    goto :goto_0
.end method

.method public static intToBinary(II[ZII)[Z
    .locals 4
    .param p0, "src"    # I
    .param p1, "srcPos"    # I
    .param p2, "dst"    # [Z
    .param p3, "dstPos"    # I
    .param p4, "nBools"    # I

    .prologue
    .line 1464
    if-nez p4, :cond_1

    .line 1475
    :cond_0
    return-object p2

    .line 1467
    :cond_1
    add-int/lit8 v2, p4, -0x1

    add-int/2addr v2, p1

    const/16 v3, 0x20

    if-lt v2, v3, :cond_2

    .line 1468
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "nBools-1+srcPos is greather or equal to than 32"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1470
    :cond_2
    const/4 v1, 0x0

    .line 1471
    .local v1, "shift":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_0

    .line 1472
    add-int v1, v0, p1

    .line 1473
    add-int v3, p3, v0

    shr-int v2, p0, v1

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :goto_1
    aput-boolean v2, p2, v3

    .line 1471
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1473
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static intToByteArray(II[BII)[B
    .locals 4
    .param p0, "src"    # I
    .param p1, "srcPos"    # I
    .param p2, "dst"    # [B
    .param p3, "dstPos"    # I
    .param p4, "nBytes"    # I

    .prologue
    .line 1205
    if-nez p4, :cond_1

    .line 1216
    :cond_0
    return-object p2

    .line 1208
    :cond_1
    add-int/lit8 v2, p4, -0x1

    mul-int/lit8 v2, v2, 0x8

    add-int/2addr v2, p1

    const/16 v3, 0x20

    if-lt v2, v3, :cond_2

    .line 1209
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "(nBytes-1)*8+srcPos is greather or equal to than 32"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1211
    :cond_2
    const/4 v1, 0x0

    .line 1212
    .local v1, "shift":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_0

    .line 1213
    mul-int/lit8 v2, v0, 0x8

    add-int v1, v2, p1

    .line 1214
    add-int v2, p3, v0

    shr-int v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    .line 1212
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static intToHex(IILjava/lang/String;II)Ljava/lang/String;
    .locals 7
    .param p0, "src"    # I
    .param p1, "srcPos"    # I
    .param p2, "dstInit"    # Ljava/lang/String;
    .param p3, "dstPos"    # I
    .param p4, "nHexs"    # I

    .prologue
    .line 1310
    if-nez p4, :cond_0

    .line 1329
    .end local p2    # "dstInit":Ljava/lang/String;
    :goto_0
    return-object p2

    .line 1313
    .restart local p2    # "dstInit":Ljava/lang/String;
    :cond_0
    add-int/lit8 v5, p4, -0x1

    mul-int/lit8 v5, v5, 0x4

    add-int/2addr v5, p1

    const/16 v6, 0x20

    if-lt v5, v6, :cond_1

    .line 1314
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "(nHexs-1)*4+srcPos is greather or equal to than 32"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1316
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1317
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 1318
    .local v4, "shift":I
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 1319
    .local v0, "append":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, p4, :cond_3

    .line 1320
    mul-int/lit8 v5, v2, 0x4

    add-int v4, v5, p1

    .line 1321
    shr-int v5, p0, v4

    and-int/lit8 v1, v5, 0xf

    .line 1322
    .local v1, "bits":I
    add-int v5, p3, v2

    if-ne v5, v0, :cond_2

    .line 1323
    add-int/lit8 v0, v0, 0x1

    .line 1324
    invoke-static {v1}, Lorg/apache/commons/lang3/Conversion;->intToHexDigit(I)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1319
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1326
    :cond_2
    add-int v5, p3, v2

    invoke-static {v1}, Lorg/apache/commons/lang3/Conversion;->intToHexDigit(I)C

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_2

    .line 1329
    .end local v1    # "bits":I
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public static intToHexDigit(I)C
    .locals 4
    .param p0, "nibble"    # I

    .prologue
    .line 495
    const/16 v1, 0x10

    invoke-static {p0, v1}, Ljava/lang/Character;->forDigit(II)C

    move-result v0

    .line 496
    .local v0, "c":C
    if-nez v0, :cond_0

    .line 497
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nibble value not between 0 and 15: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 499
    :cond_0
    return v0
.end method

.method public static intToHexDigitMsb0(I)C
    .locals 3
    .param p0, "nibble"    # I

    .prologue
    .line 521
    packed-switch p0, :pswitch_data_0

    .line 555
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nibble value not between 0 and 15: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 523
    :pswitch_0
    const/16 v0, 0x30

    .line 553
    :goto_0
    return v0

    .line 525
    :pswitch_1
    const/16 v0, 0x38

    goto :goto_0

    .line 527
    :pswitch_2
    const/16 v0, 0x34

    goto :goto_0

    .line 529
    :pswitch_3
    const/16 v0, 0x63

    goto :goto_0

    .line 531
    :pswitch_4
    const/16 v0, 0x32

    goto :goto_0

    .line 533
    :pswitch_5
    const/16 v0, 0x61

    goto :goto_0

    .line 535
    :pswitch_6
    const/16 v0, 0x36

    goto :goto_0

    .line 537
    :pswitch_7
    const/16 v0, 0x65

    goto :goto_0

    .line 539
    :pswitch_8
    const/16 v0, 0x31

    goto :goto_0

    .line 541
    :pswitch_9
    const/16 v0, 0x39

    goto :goto_0

    .line 543
    :pswitch_a
    const/16 v0, 0x35

    goto :goto_0

    .line 545
    :pswitch_b
    const/16 v0, 0x64

    goto :goto_0

    .line 547
    :pswitch_c
    const/16 v0, 0x33

    goto :goto_0

    .line 549
    :pswitch_d
    const/16 v0, 0x62

    goto :goto_0

    .line 551
    :pswitch_e
    const/16 v0, 0x37

    goto :goto_0

    .line 553
    :pswitch_f
    const/16 v0, 0x66

    goto :goto_0

    .line 521
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public static intToShortArray(II[SII)[S
    .locals 5
    .param p0, "src"    # I
    .param p1, "srcPos"    # I
    .param p2, "dst"    # [S
    .param p3, "dstPos"    # I
    .param p4, "nShorts"    # I

    .prologue
    .line 1139
    if-nez p4, :cond_1

    .line 1150
    :cond_0
    return-object p2

    .line 1142
    :cond_1
    add-int/lit8 v2, p4, -0x1

    mul-int/lit8 v2, v2, 0x10

    add-int/2addr v2, p1

    const/16 v3, 0x20

    if-lt v2, v3, :cond_2

    .line 1143
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "(nShorts-1)*16+srcPos is greather or equal to than 32"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1145
    :cond_2
    const/4 v1, 0x0

    .line 1146
    .local v1, "shift":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_0

    .line 1147
    mul-int/lit8 v2, v0, 0x10

    add-int v1, v2, p1

    .line 1148
    add-int v2, p3, v0

    const v3, 0xffff

    shr-int v4, p0, v1

    and-int/2addr v3, v4

    int-to-short v3, v3

    aput-short v3, p2, v2

    .line 1146
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static longToBinary(JI[ZII)[Z
    .locals 8
    .param p0, "src"    # J
    .param p2, "srcPos"    # I
    .param p3, "dst"    # [Z
    .param p4, "dstPos"    # I
    .param p5, "nBools"    # I

    .prologue
    .line 1431
    if-nez p5, :cond_1

    .line 1442
    :cond_0
    return-object p3

    .line 1434
    :cond_1
    add-int/lit8 v2, p5, -0x1

    add-int/2addr v2, p2

    const/16 v3, 0x40

    if-lt v2, v3, :cond_2

    .line 1435
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "nBools-1+srcPos is greather or equal to than 64"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1437
    :cond_2
    const/4 v1, 0x0

    .line 1438
    .local v1, "shift":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p5, :cond_0

    .line 1439
    add-int v1, v0, p2

    .line 1440
    add-int v3, p4, v0

    const-wide/16 v4, 0x1

    shr-long v6, p0, v1

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :goto_1
    aput-boolean v2, p3, v3

    .line 1438
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1440
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static longToByteArray(JI[BII)[B
    .locals 8
    .param p0, "src"    # J
    .param p2, "srcPos"    # I
    .param p3, "dst"    # [B
    .param p4, "dstPos"    # I
    .param p5, "nBytes"    # I

    .prologue
    .line 1172
    if-nez p5, :cond_1

    .line 1183
    :cond_0
    return-object p3

    .line 1175
    :cond_1
    add-int/lit8 v2, p5, -0x1

    mul-int/lit8 v2, v2, 0x8

    add-int/2addr v2, p2

    const/16 v3, 0x40

    if-lt v2, v3, :cond_2

    .line 1176
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "(nBytes-1)*8+srcPos is greather or equal to than 64"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1178
    :cond_2
    const/4 v1, 0x0

    .line 1179
    .local v1, "shift":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p5, :cond_0

    .line 1180
    mul-int/lit8 v2, v0, 0x8

    add-int v1, v2, p2

    .line 1181
    add-int v2, p4, v0

    const-wide/16 v4, 0xff

    shr-long v6, p0, v1

    and-long/2addr v4, v6

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    .line 1179
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static longToHex(JILjava/lang/String;II)Ljava/lang/String;
    .locals 10
    .param p0, "src"    # J
    .param p2, "srcPos"    # I
    .param p3, "dstInit"    # Ljava/lang/String;
    .param p4, "dstPos"    # I
    .param p5, "nHexs"    # I

    .prologue
    .line 1270
    if-nez p5, :cond_0

    .line 1289
    .end local p3    # "dstInit":Ljava/lang/String;
    :goto_0
    return-object p3

    .line 1273
    .restart local p3    # "dstInit":Ljava/lang/String;
    :cond_0
    add-int/lit8 v5, p5, -0x1

    mul-int/lit8 v5, v5, 0x4

    add-int/2addr v5, p2

    const/16 v6, 0x40

    if-lt v5, v6, :cond_1

    .line 1274
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "(nHexs-1)*4+srcPos is greather or equal to than 64"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1276
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1277
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 1278
    .local v4, "shift":I
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 1279
    .local v0, "append":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, p5, :cond_3

    .line 1280
    mul-int/lit8 v5, v2, 0x4

    add-int v4, v5, p2

    .line 1281
    const-wide/16 v6, 0xf

    shr-long v8, p0, v4

    and-long/2addr v6, v8

    long-to-int v1, v6

    .line 1282
    .local v1, "bits":I
    add-int v5, p4, v2

    if-ne v5, v0, :cond_2

    .line 1283
    add-int/lit8 v0, v0, 0x1

    .line 1284
    invoke-static {v1}, Lorg/apache/commons/lang3/Conversion;->intToHexDigit(I)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1279
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1286
    :cond_2
    add-int v5, p4, v2

    invoke-static {v1}, Lorg/apache/commons/lang3/Conversion;->intToHexDigit(I)C

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_2

    .line 1289
    .end local v1    # "bits":I
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0
.end method

.method public static longToIntArray(JI[III)[I
    .locals 8
    .param p0, "src"    # J
    .param p2, "srcPos"    # I
    .param p3, "dst"    # [I
    .param p4, "dstPos"    # I
    .param p5, "nInts"    # I

    .prologue
    .line 1073
    if-nez p5, :cond_1

    .line 1084
    :cond_0
    return-object p3

    .line 1076
    :cond_1
    add-int/lit8 v2, p5, -0x1

    mul-int/lit8 v2, v2, 0x20

    add-int/2addr v2, p2

    const/16 v3, 0x40

    if-lt v2, v3, :cond_2

    .line 1077
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "(nInts-1)*32+srcPos is greather or equal to than 64"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1079
    :cond_2
    const/4 v1, 0x0

    .line 1080
    .local v1, "shift":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p5, :cond_0

    .line 1081
    mul-int/lit8 v2, v0, 0x20

    add-int v1, v2, p2

    .line 1082
    add-int v2, p4, v0

    const-wide/16 v4, -0x1

    shr-long v6, p0, v1

    and-long/2addr v4, v6

    long-to-int v3, v4

    aput v3, p3, v2

    .line 1080
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static longToShortArray(JI[SII)[S
    .locals 8
    .param p0, "src"    # J
    .param p2, "srcPos"    # I
    .param p3, "dst"    # [S
    .param p4, "dstPos"    # I
    .param p5, "nShorts"    # I

    .prologue
    .line 1106
    if-nez p5, :cond_1

    .line 1117
    :cond_0
    return-object p3

    .line 1109
    :cond_1
    add-int/lit8 v2, p5, -0x1

    mul-int/lit8 v2, v2, 0x10

    add-int/2addr v2, p2

    const/16 v3, 0x40

    if-lt v2, v3, :cond_2

    .line 1110
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "(nShorts-1)*16+srcPos is greather or equal to than 64"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1112
    :cond_2
    const/4 v1, 0x0

    .line 1113
    .local v1, "shift":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p5, :cond_0

    .line 1114
    mul-int/lit8 v2, v0, 0x10

    add-int v1, v2, p2

    .line 1115
    add-int v2, p4, v0

    const-wide/32 v4, 0xffff

    shr-long v6, p0, v1

    and-long/2addr v4, v6

    long-to-int v3, v4

    int-to-short v3, v3

    aput-short v3, p3, v2

    .line 1113
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static shortArrayToInt([SIIII)I
    .locals 8
    .param p0, "src"    # [S
    .param p1, "srcPos"    # I
    .param p2, "dstInit"    # I
    .param p3, "dstPos"    # I
    .param p4, "nShorts"    # I

    .prologue
    const v7, 0xffff

    .line 650
    array-length v5, p0

    if-nez v5, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-nez p4, :cond_2

    .line 664
    .end local p2    # "dstInit":I
    :cond_1
    :goto_0
    return p2

    .line 653
    .restart local p2    # "dstInit":I
    :cond_2
    add-int/lit8 v5, p4, -0x1

    mul-int/lit8 v5, v5, 0x10

    add-int/2addr v5, p3

    const/16 v6, 0x20

    if-lt v5, v6, :cond_3

    .line 654
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "(nShorts-1)*16+dstPos is greather or equal to than 32"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 656
    :cond_3
    move v3, p2

    .line 657
    .local v3, "out":I
    const/4 v4, 0x0

    .line 658
    .local v4, "shift":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, p4, :cond_4

    .line 659
    mul-int/lit8 v5, v1, 0x10

    add-int v4, v5, p3

    .line 660
    add-int v5, v1, p1

    aget-short v5, p0, v5

    and-int/2addr v5, v7

    shl-int v0, v5, v4

    .line 661
    .local v0, "bits":I
    shl-int v2, v7, v4

    .line 662
    .local v2, "mask":I
    xor-int/lit8 v5, v2, -0x1

    and-int/2addr v5, v3

    or-int v3, v5, v0

    .line 658
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "bits":I
    .end local v2    # "mask":I
    :cond_4
    move p2, v3

    .line 664
    goto :goto_0
.end method

.method public static shortArrayToLong([SIJII)J
    .locals 14
    .param p0, "src"    # [S
    .param p1, "srcPos"    # I
    .param p2, "dstInit"    # J
    .param p4, "dstPos"    # I
    .param p5, "nShorts"    # I

    .prologue
    .line 614
    array-length v10, p0

    if-nez v10, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-nez p5, :cond_2

    .line 628
    .end local p2    # "dstInit":J
    :cond_1
    :goto_0
    return-wide p2

    .line 617
    .restart local p2    # "dstInit":J
    :cond_2
    add-int/lit8 v10, p5, -0x1

    mul-int/lit8 v10, v10, 0x10

    add-int v10, v10, p4

    const/16 v11, 0x40

    if-lt v10, v11, :cond_3

    .line 618
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "(nShorts-1)*16+dstPos is greather or equal to than 64"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 620
    :cond_3
    move-wide/from16 v8, p2

    .line 621
    .local v8, "out":J
    const/4 v5, 0x0

    .line 622
    .local v5, "shift":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    move/from16 v0, p5

    if-ge v4, v0, :cond_4

    .line 623
    mul-int/lit8 v10, v4, 0x10

    add-int v5, v10, p4

    .line 624
    const-wide/32 v10, 0xffff

    add-int v12, v4, p1

    aget-short v12, p0, v12

    int-to-long v12, v12

    and-long/2addr v10, v12

    shl-long v2, v10, v5

    .line 625
    .local v2, "bits":J
    const-wide/32 v10, 0xffff

    shl-long v6, v10, v5

    .line 626
    .local v6, "mask":J
    const-wide/16 v10, -0x1

    xor-long/2addr v10, v6

    and-long/2addr v10, v8

    or-long v8, v10, v2

    .line 622
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v2    # "bits":J
    .end local v6    # "mask":J
    :cond_4
    move-wide/from16 p2, v8

    .line 628
    goto :goto_0
.end method

.method public static shortToBinary(SI[ZII)[Z
    .locals 4
    .param p0, "src"    # S
    .param p1, "srcPos"    # I
    .param p2, "dst"    # [Z
    .param p3, "dstPos"    # I
    .param p4, "nBools"    # I

    .prologue
    .line 1497
    if-nez p4, :cond_1

    .line 1509
    :cond_0
    return-object p2

    .line 1500
    :cond_1
    add-int/lit8 v2, p4, -0x1

    add-int/2addr v2, p1

    const/16 v3, 0x10

    if-lt v2, v3, :cond_2

    .line 1501
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "nBools-1+srcPos is greather or equal to than 16"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1503
    :cond_2
    const/4 v1, 0x0

    .line 1504
    .local v1, "shift":I
    sget-boolean v2, Lorg/apache/commons/lang3/Conversion;->$assertionsDisabled:Z

    if-nez v2, :cond_3

    add-int/lit8 v2, p4, -0x1

    rsub-int/lit8 v3, p1, 0x10

    if-lt v2, v3, :cond_3

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1505
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_0

    .line 1506
    add-int v1, v0, p1

    .line 1507
    add-int v3, p3, v0

    shr-int v2, p0, v1

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    :goto_1
    aput-boolean v2, p2, v3

    .line 1505
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1507
    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static shortToByteArray(SI[BII)[B
    .locals 4
    .param p0, "src"    # S
    .param p1, "srcPos"    # I
    .param p2, "dst"    # [B
    .param p3, "dstPos"    # I
    .param p4, "nBytes"    # I

    .prologue
    .line 1238
    if-nez p4, :cond_1

    .line 1249
    :cond_0
    return-object p2

    .line 1241
    :cond_1
    add-int/lit8 v2, p4, -0x1

    mul-int/lit8 v2, v2, 0x8

    add-int/2addr v2, p1

    const/16 v3, 0x10

    if-lt v2, v3, :cond_2

    .line 1242
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "(nBytes-1)*8+srcPos is greather or equal to than 16"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1244
    :cond_2
    const/4 v1, 0x0

    .line 1245
    .local v1, "shift":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_0

    .line 1246
    mul-int/lit8 v2, v0, 0x8

    add-int v1, v2, p1

    .line 1247
    add-int v2, p3, v0

    shr-int v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    .line 1245
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static shortToHex(SILjava/lang/String;II)Ljava/lang/String;
    .locals 7
    .param p0, "src"    # S
    .param p1, "srcPos"    # I
    .param p2, "dstInit"    # Ljava/lang/String;
    .param p3, "dstPos"    # I
    .param p4, "nHexs"    # I

    .prologue
    .line 1350
    if-nez p4, :cond_0

    .line 1369
    .end local p2    # "dstInit":Ljava/lang/String;
    :goto_0
    return-object p2

    .line 1353
    .restart local p2    # "dstInit":Ljava/lang/String;
    :cond_0
    add-int/lit8 v5, p4, -0x1

    mul-int/lit8 v5, v5, 0x4

    add-int/2addr v5, p1

    const/16 v6, 0x10

    if-lt v5, v6, :cond_1

    .line 1354
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "(nHexs-1)*4+srcPos is greather or equal to than 16"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1356
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1357
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 1358
    .local v4, "shift":I
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 1359
    .local v0, "append":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, p4, :cond_3

    .line 1360
    mul-int/lit8 v5, v2, 0x4

    add-int v4, v5, p1

    .line 1361
    shr-int v5, p0, v4

    and-int/lit8 v1, v5, 0xf

    .line 1362
    .local v1, "bits":I
    add-int v5, p3, v2

    if-ne v5, v0, :cond_2

    .line 1363
    add-int/lit8 v0, v0, 0x1

    .line 1364
    invoke-static {v1}, Lorg/apache/commons/lang3/Conversion;->intToHexDigit(I)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1359
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1366
    :cond_2
    add-int v5, p3, v2

    invoke-static {v1}, Lorg/apache/commons/lang3/Conversion;->intToHexDigit(I)C

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_2

    .line 1369
    .end local v1    # "bits":I
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public static uuidToByteArray(Ljava/util/UUID;[BII)[B
    .locals 7
    .param p0, "src"    # Ljava/util/UUID;
    .param p1, "dst"    # [B
    .param p2, "dstPos"    # I
    .param p3, "nBytes"    # I

    .prologue
    const/4 v2, 0x0

    const/16 v6, 0x8

    .line 1562
    if-nez p3, :cond_1

    .line 1572
    :cond_0
    :goto_0
    return-object p1

    .line 1565
    :cond_1
    const/16 v0, 0x10

    if-le p3, v0, :cond_2

    .line 1566
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "nBytes is greather than 16"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1568
    :cond_2
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    if-le p3, v6, :cond_3

    move v5, v6

    :goto_1
    move-object v3, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/Conversion;->longToByteArray(JI[BII)[B

    .line 1569
    if-lt p3, v6, :cond_0

    .line 1570
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    add-int/lit8 v4, p2, 0x8

    add-int/lit8 v5, p3, -0x8

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/Conversion;->longToByteArray(JI[BII)[B

    goto :goto_0

    :cond_3
    move v5, p3

    .line 1568
    goto :goto_1
.end method
