.class public Lorg/apache/commons/lang3/CharSequenceUtils;
.super Ljava/lang/Object;
.source "CharSequenceUtils.java"


# static fields
.field private static final NOT_FOUND:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method static indexOf(Ljava/lang/CharSequence;II)I
    .locals 3
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "searchChar"    # I
    .param p2, "start"    # I

    .prologue
    .line 72
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 73
    check-cast p0, Ljava/lang/String;

    .end local p0    # "cs":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 84
    :cond_0
    :goto_0
    return v0

    .line 75
    .restart local p0    # "cs":Ljava/lang/CharSequence;
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 76
    .local v1, "sz":I
    if-gez p2, :cond_2

    .line 77
    const/4 p2, 0x0

    .line 79
    :cond_2
    move v0, p2

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 80
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-eq v2, p1, :cond_0

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 84
    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 2
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "searchChar"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I

    .prologue
    .line 96
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static lastIndexOf(Ljava/lang/CharSequence;II)I
    .locals 4
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "searchChar"    # I
    .param p2, "start"    # I

    .prologue
    const/4 v2, -0x1

    .line 118
    instance-of v3, p0, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 119
    check-cast p0, Ljava/lang/String;

    .end local p0    # "cs":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    .line 133
    :cond_0
    :goto_0
    return v0

    .line 121
    .restart local p0    # "cs":Ljava/lang/CharSequence;
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 122
    .local v1, "sz":I
    if-gez p2, :cond_2

    move v0, v2

    .line 123
    goto :goto_0

    .line 125
    :cond_2
    if-lt p2, v1, :cond_3

    .line 126
    add-int/lit8 p2, v1, -0x1

    .line 128
    :cond_3
    move v0, p2

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_4

    .line 129
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v3, p1, :cond_0

    .line 128
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    move v0, v2

    .line 133
    goto :goto_0
.end method

.method static lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 2
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "searchChar"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I

    .prologue
    .line 145
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z
    .locals 15
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "ignoreCase"    # Z
    .param p2, "thisStart"    # I
    .param p3, "substring"    # Ljava/lang/CharSequence;
    .param p4, "start"    # I
    .param p5, "length"    # I

    .prologue
    .line 188
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object/from16 v0, p3

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v1, p0

    .line 189
    check-cast v1, Ljava/lang/String;

    move-object/from16 v4, p3

    check-cast v4, Ljava/lang/String;

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    .line 214
    :goto_0
    return v1

    .line 191
    :cond_0
    move/from16 v9, p2

    .line 192
    .local v9, "index1":I
    move/from16 v11, p4

    .line 193
    .local v11, "index2":I
    move/from16 v13, p5

    .local v13, "tmpLen":I
    move v14, v13

    .end local v13    # "tmpLen":I
    .local v14, "tmpLen":I
    move v12, v11

    .end local v11    # "index2":I
    .local v12, "index2":I
    move v10, v9

    .line 195
    .end local v9    # "index1":I
    .local v10, "index1":I
    :goto_1
    add-int/lit8 v13, v14, -0x1

    .end local v14    # "tmpLen":I
    .restart local v13    # "tmpLen":I
    if-lez v14, :cond_4

    .line 196
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "index1":I
    .restart local v9    # "index1":I
    invoke-interface {p0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    .line 197
    .local v7, "c1":C
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "index2":I
    .restart local v11    # "index2":I
    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    .line 199
    .local v8, "c2":C
    if-ne v7, v8, :cond_1

    move v14, v13

    .end local v13    # "tmpLen":I
    .restart local v14    # "tmpLen":I
    move v12, v11

    .end local v11    # "index2":I
    .restart local v12    # "index2":I
    move v10, v9

    .line 200
    .end local v9    # "index1":I
    .restart local v10    # "index1":I
    goto :goto_1

    .line 203
    .end local v10    # "index1":I
    .end local v12    # "index2":I
    .end local v14    # "tmpLen":I
    .restart local v9    # "index1":I
    .restart local v11    # "index2":I
    .restart local v13    # "tmpLen":I
    :cond_1
    if-nez p1, :cond_2

    .line 204
    const/4 v1, 0x0

    goto :goto_0

    .line 208
    :cond_2
    invoke-static {v7}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-static {v8}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    if-eq v1, v2, :cond_3

    invoke-static {v7}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    invoke-static {v8}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    if-eq v1, v2, :cond_3

    .line 210
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    move v14, v13

    .end local v13    # "tmpLen":I
    .restart local v14    # "tmpLen":I
    move v12, v11

    .end local v11    # "index2":I
    .restart local v12    # "index2":I
    move v10, v9

    .line 212
    .end local v9    # "index1":I
    .restart local v10    # "index1":I
    goto :goto_1

    .line 214
    .end local v7    # "c1":C
    .end local v8    # "c2":C
    .end local v14    # "tmpLen":I
    .restart local v13    # "tmpLen":I
    :cond_4
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static subSequence(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I

    .prologue
    .line 58
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p0, p1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method static toCharArray(Ljava/lang/CharSequence;)[C
    .locals 4
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 164
    instance-of v3, p0, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 165
    check-cast p0, Ljava/lang/String;

    .end local p0    # "cs":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 172
    .local v0, "array":[C
    .local v1, "i":I
    .local v2, "sz":I
    .restart local p0    # "cs":Ljava/lang/CharSequence;
    :cond_0
    return-object v0

    .line 167
    .end local v0    # "array":[C
    .end local v1    # "i":I
    .end local v2    # "sz":I
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 168
    .restart local v2    # "sz":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    new-array v0, v3, [C

    .line 169
    .restart local v0    # "array":[C
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 170
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    aput-char v3, v0, v1

    .line 169
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
