.class public Lu/aly/bp;
.super Ljava/lang/Object;
.source "Response.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lu/aly/cf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/aly/bp$c;,
        Lu/aly/bp$d;,
        Lu/aly/bp$a;,
        Lu/aly/bp$b;,
        Lu/aly/bp$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lu/aly/cf",
        "<",
        "Lu/aly/bp;",
        "Lu/aly/bp$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lu/aly/bp$e;",
            "Lu/aly/cr;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:J = -0x3f22482b0751777fL

.field private static final f:Lu/aly/dj;

.field private static final g:Lu/aly/cz;

.field private static final h:Lu/aly/cz;

.field private static final i:Lu/aly/cz;

.field private static final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lu/aly/dm;",
            ">;",
            "Lu/aly/dn;",
            ">;"
        }
    .end annotation
.end field

.field private static final k:I


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Lu/aly/bn;

.field private l:B

.field private m:[Lu/aly/bp$e;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/16 v9, 0xc

    const/16 v8, 0xb

    const/16 v7, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x2

    .line 26
    new-instance v0, Lu/aly/dj;

    const-string v1, "Response"

    invoke-direct {v0, v1}, Lu/aly/dj;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/bp;->f:Lu/aly/dj;

    .line 29
    new-instance v0, Lu/aly/cz;

    const-string v1, "resp_code"

    invoke-direct {v0, v1, v7, v5}, Lu/aly/cz;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bp;->g:Lu/aly/cz;

    .line 31
    new-instance v0, Lu/aly/cz;

    const-string v1, "msg"

    invoke-direct {v0, v1, v8, v6}, Lu/aly/cz;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bp;->h:Lu/aly/cz;

    .line 33
    new-instance v0, Lu/aly/cz;

    const-string v1, "imprint"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v9, v2}, Lu/aly/cz;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bp;->i:Lu/aly/cz;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/bp;->j:Ljava/util/Map;

    .line 40
    sget-object v0, Lu/aly/bp;->j:Ljava/util/Map;

    const-class v1, Lu/aly/do;

    new-instance v2, Lu/aly/bp$b;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lu/aly/bp$b;-><init>(Lu/aly/bp$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lu/aly/bp;->j:Ljava/util/Map;

    const-class v1, Lu/aly/dp;

    new-instance v2, Lu/aly/bp$d;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lu/aly/bp$d;-><init>(Lu/aly/bp$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/bp$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 126
    sget-object v1, Lu/aly/bp$e;->a:Lu/aly/bp$e;

    new-instance v2, Lu/aly/cr;

    const-string v3, "resp_code"

    new-instance v4, Lu/aly/cs;

    invoke-direct {v4, v7}, Lu/aly/cs;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lu/aly/cr;-><init>(Ljava/lang/String;BLu/aly/cs;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v1, Lu/aly/bp$e;->b:Lu/aly/bp$e;

    new-instance v2, Lu/aly/cr;

    const-string v3, "msg"

    new-instance v4, Lu/aly/cs;

    invoke-direct {v4, v8}, Lu/aly/cs;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/cr;-><init>(Ljava/lang/String;BLu/aly/cs;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v1, Lu/aly/bp$e;->c:Lu/aly/bp$e;

    new-instance v2, Lu/aly/cr;

    const-string v3, "imprint"

    new-instance v4, Lu/aly/cw;

    const-class v5, Lu/aly/bn;

    invoke-direct {v4, v9, v5}, Lu/aly/cw;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/cr;-><init>(Ljava/lang/String;BLu/aly/cs;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/bp;->d:Ljava/util/Map;

    .line 139
    const-class v0, Lu/aly/bp;

    sget-object v1, Lu/aly/bp;->d:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/cr;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 140
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-byte v2, p0, Lu/aly/bp;->l:B

    .line 119
    const/4 v0, 0x2

    new-array v0, v0, [Lu/aly/bp$e;

    sget-object v1, Lu/aly/bp$e;->b:Lu/aly/bp$e;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lu/aly/bp$e;->c:Lu/aly/bp$e;

    aput-object v2, v0, v1

    iput-object v0, p0, Lu/aly/bp;->m:[Lu/aly/bp$e;

    .line 143
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 146
    invoke-direct {p0}, Lu/aly/bp;-><init>()V

    .line 147
    iput p1, p0, Lu/aly/bp;->a:I

    .line 148
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu/aly/bp;->a(Z)V

    .line 149
    return-void
.end method

.method public constructor <init>(Lu/aly/bp;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-byte v2, p0, Lu/aly/bp;->l:B

    .line 119
    const/4 v0, 0x2

    new-array v0, v0, [Lu/aly/bp$e;

    sget-object v1, Lu/aly/bp$e;->b:Lu/aly/bp$e;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lu/aly/bp$e;->c:Lu/aly/bp$e;

    aput-object v2, v0, v1

    iput-object v0, p0, Lu/aly/bp;->m:[Lu/aly/bp$e;

    .line 155
    iget-byte v0, p1, Lu/aly/bp;->l:B

    iput-byte v0, p0, Lu/aly/bp;->l:B

    .line 156
    iget v0, p1, Lu/aly/bp;->a:I

    iput v0, p0, Lu/aly/bp;->a:I

    .line 157
    invoke-virtual {p1}, Lu/aly/bp;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p1, Lu/aly/bp;->b:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/bp;->b:Ljava/lang/String;

    .line 160
    :cond_0
    invoke-virtual {p1}, Lu/aly/bp;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    new-instance v0, Lu/aly/bn;

    iget-object v1, p1, Lu/aly/bp;->c:Lu/aly/bn;

    invoke-direct {v0, v1}, Lu/aly/bn;-><init>(Lu/aly/bn;)V

    iput-object v0, p0, Lu/aly/bp;->c:Lu/aly/bn;

    .line 163
    :cond_1
    return-void
.end method

.method private a(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 328
    const/4 v0, 0x0

    :try_start_0
    iput-byte v0, p0, Lu/aly/bp;->l:B

    .line 329
    new-instance v0, Lu/aly/cy;

    new-instance v1, Lu/aly/dq;

    invoke-direct {v1, p1}, Lu/aly/dq;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lu/aly/cy;-><init>(Lu/aly/ds;)V

    invoke-virtual {p0, v0}, Lu/aly/bp;->a(Lu/aly/de;)V
    :try_end_0
    .catch Lu/aly/cl; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    return-void

    .line 331
    :catch_0
    move-exception v0

    .line 332
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lu/aly/cl;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private a(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 317
    :try_start_0
    new-instance v0, Lu/aly/cy;

    new-instance v1, Lu/aly/dq;

    invoke-direct {v1, p1}, Lu/aly/dq;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lu/aly/cy;-><init>(Lu/aly/ds;)V

    invoke-virtual {p0, v0}, Lu/aly/bp;->b(Lu/aly/de;)V
    :try_end_0
    .catch Lu/aly/cl; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    return-void

    .line 319
    :catch_0
    move-exception v0

    .line 320
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lu/aly/cl;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic m()Lu/aly/dj;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lu/aly/bp;->f:Lu/aly/dj;

    return-object v0
.end method

.method static synthetic n()Lu/aly/cz;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lu/aly/bp;->g:Lu/aly/cz;

    return-object v0
.end method

.method static synthetic o()Lu/aly/cz;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lu/aly/bp;->h:Lu/aly/cz;

    return-object v0
.end method

.method static synthetic q()Lu/aly/cz;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lu/aly/bp;->i:Lu/aly/cz;

    return-object v0
.end method


# virtual methods
.method public a()Lu/aly/bp;
    .locals 1

    .prologue
    .line 166
    new-instance v0, Lu/aly/bp;

    invoke-direct {v0, p0}, Lu/aly/bp;-><init>(Lu/aly/bp;)V

    return-object v0
.end method

.method public a(I)Lu/aly/bp;
    .locals 1

    .prologue
    .line 182
    iput p1, p0, Lu/aly/bp;->a:I

    .line 183
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu/aly/bp;->a(Z)V

    .line 184
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lu/aly/bp;
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lu/aly/bp;->b:Ljava/lang/String;

    .line 209
    return-object p0
.end method

.method public a(Lu/aly/bn;)Lu/aly/bp;
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lu/aly/bp;->c:Lu/aly/bn;

    .line 236
    return-object p0
.end method

.method public a(Lu/aly/de;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cl;
        }
    .end annotation

    .prologue
    .line 263
    sget-object v0, Lu/aly/bp;->j:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/de;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/dn;

    invoke-interface {v0}, Lu/aly/dn;->b()Lu/aly/dm;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/dm;->b(Lu/aly/de;Lu/aly/cf;)V

    .line 264
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 200
    iget-byte v0, p0, Lu/aly/bp;->l:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lu/aly/cc;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lu/aly/bp;->l:B

    .line 201
    return-void
.end method

.method public synthetic b(I)Lu/aly/cm;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lu/aly/bp;->c(I)Lu/aly/bp$e;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 171
    invoke-virtual {p0, v0}, Lu/aly/bp;->a(Z)V

    .line 172
    iput v0, p0, Lu/aly/bp;->a:I

    .line 173
    iput-object v1, p0, Lu/aly/bp;->b:Ljava/lang/String;

    .line 174
    iput-object v1, p0, Lu/aly/bp;->c:Lu/aly/bn;

    .line 175
    return-void
.end method

.method public b(Lu/aly/de;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cl;
        }
    .end annotation

    .prologue
    .line 268
    sget-object v0, Lu/aly/bp;->j:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/de;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/dn;

    invoke-interface {v0}, Lu/aly/dn;->b()Lu/aly/dm;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/dm;->a(Lu/aly/de;Lu/aly/cf;)V

    .line 269
    return-void
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 225
    if-nez p1, :cond_0

    .line 226
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bp;->b:Ljava/lang/String;

    .line 228
    :cond_0
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lu/aly/bp;->a:I

    return v0
.end method

.method public c(I)Lu/aly/bp$e;
    .locals 1

    .prologue
    .line 258
    invoke-static {p1}, Lu/aly/bp$e;->a(I)Lu/aly/bp$e;

    move-result-object v0

    return-object v0
.end method

.method public c(Z)V
    .locals 1

    .prologue
    .line 252
    if-nez p1, :cond_0

    .line 253
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bp;->c:Lu/aly/bn;

    .line 255
    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 188
    iget-byte v0, p0, Lu/aly/bp;->l:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/cc;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/bp;->l:B

    .line 189
    return-void
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 196
    iget-byte v0, p0, Lu/aly/bp;->l:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/cc;->a(BI)Z

    move-result v0

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lu/aly/bp;->b:Ljava/lang/String;

    return-object v0
.end method

.method public g()V
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bp;->b:Ljava/lang/String;

    .line 214
    return-void
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lu/aly/bp;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Lu/aly/bn;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lu/aly/bp;->c:Lu/aly/bn;

    return-object v0
.end method

.method public j()V
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bp;->c:Lu/aly/bn;

    .line 241
    return-void
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lu/aly/bp;->c:Lu/aly/bn;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cl;
        }
    .end annotation

    .prologue
    .line 310
    iget-object v0, p0, Lu/aly/bp;->c:Lu/aly/bn;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lu/aly/bp;->c:Lu/aly/bn;

    invoke-virtual {v0}, Lu/aly/bn;->m()V

    .line 313
    :cond_0
    return-void
.end method

.method public synthetic p()Lu/aly/cf;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lu/aly/bp;->a()Lu/aly/bp;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Response("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 276
    const-string v1, "resp_code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    iget v1, p0, Lu/aly/bp;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 279
    invoke-virtual {p0}, Lu/aly/bp;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 281
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    const-string v1, "msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    iget-object v1, p0, Lu/aly/bp;->b:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 284
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lu/aly/bp;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 292
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    const-string v1, "imprint:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    iget-object v1, p0, Lu/aly/bp;->c:Lu/aly/bn;

    if-nez v1, :cond_3

    .line 295
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    :cond_1
    :goto_1
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 286
    :cond_2
    iget-object v1, p0, Lu/aly/bp;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 297
    :cond_3
    iget-object v1, p0, Lu/aly/bp;->c:Lu/aly/bn;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
