.class Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;
.super Ljava/lang/Object;
.source "OpenGLTestView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostalgiaemulators/framework/base/OpenGLTestView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Renderer"
.end annotation


# static fields
.field private static fragmentShaderCode:Ljava/lang/String;

.field private static vertexShaderCode:Ljava/lang/String;


# instance fields
.field private callback:Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Callback;

.field private detected:Z

.field private drawListBuffer:Ljava/nio/ShortBuffer;

.field private final drawOrder:[S

.field mainTextureId:I

.field private mvpMatrixHandle:I

.field private paletteHandle:I

.field paletteTextureId:I

.field private positionHandle:I

.field private program:I

.field private projMatrix:[F

.field private quadCoords:[F

.field private screenHeight:I

.field private screenWidth:I

.field private testBuffer:Ljava/nio/ByteBuffer;

.field private texCoordHandle:I

.field private textureBuffer:Ljava/nio/FloatBuffer;

.field private textureCoords:[F

.field private textureHandle:I

.field textureIds:[I

.field private vertexBuffer:Ljava/nio/FloatBuffer;

.field private viewPort:Lcom/nostalgiaemulators/framework/base/ViewPort;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 141
    const-string v0, "attribute vec4 a_position; attribute vec2 a_texCoord;  \t\t\t\t\t\t\t\t uniform mat4 uMVPMatrix;   \t\t\t\t\t\t\t\t varying lowp vec2 v_texCoord;   \t\t\t\t\t\t     void main()                  \t\t\t\t\t\t\t {                            \t\t\t\t\t\t\t    gl_Position =  uMVPMatrix  * a_position; \t\t\t\t    v_texCoord = a_texCoord;  \t\t\t\t\t\t\t }                            \t\t\t\t\t\t\t "

    sput-object v0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->vertexShaderCode:Ljava/lang/String;

    .line 151
    const-string v0, "precision mediump float;                                  uniform sampler2D s_texture;                              uniform sampler2D s_palette;                              void main()                     \t\t\t\t\t\t\t {                            \t\t\t\t\t\t\t  float a = texture2D(s_texture, vec2(0, 0)).a;         float c = floor((a * 256.0) / 127.5);                     float x = a - c * 0.001953;                                vec2 curPt = vec2(x, 0);                                   gl_FragColor.rgb = texture2D(s_palette, curPt).rgb;}                            \t\t\t\t\t\t\t "

    sput-object v0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->fragmentShaderCode:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public constructor <init>(Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Callback;)V
    .locals 3
    .param p1, "callback"    # Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Callback;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->detected:Z

    .line 172
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->projMatrix:[F

    .line 231
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->textureIds:[I

    .line 277
    const/4 v0, 0x6

    new-array v0, v0, [S

    aput-short v1, v0, v1

    aput-short v2, v0, v2

    const/4 v1, 0x4

    aput-short v2, v0, v1

    const/4 v1, 0x5

    const/4 v2, 0x3

    aput-short v2, v0, v1

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->drawOrder:[S

    .line 59
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->callback:Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Callback;

    .line 60
    return-void
.end method

.method private initQuadCoordinates(II)V
    .locals 10
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 192
    new-instance v6, Lcom/nostalgiaemulators/framework/base/ViewPort;

    invoke-direct {v6}, Lcom/nostalgiaemulators/framework/base/ViewPort;-><init>()V

    iput-object v6, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->viewPort:Lcom/nostalgiaemulators/framework/base/ViewPort;

    .line 193
    iget-object v6, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->viewPort:Lcom/nostalgiaemulators/framework/base/ViewPort;

    iput p2, v6, Lcom/nostalgiaemulators/framework/base/ViewPort;->height:I

    .line 194
    iget-object v6, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->viewPort:Lcom/nostalgiaemulators/framework/base/ViewPort;

    iput p1, v6, Lcom/nostalgiaemulators/framework/base/ViewPort;->width:I

    .line 195
    const/16 v6, 0xc

    new-array v6, v6, [F

    const/4 v7, 0x0

    neg-int v8, p1

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    aput v8, v6, v7

    const/4 v7, 0x1

    neg-int v8, p2

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    aput v8, v6, v7

    const/4 v7, 0x2

    const/4 v8, 0x0

    aput v8, v6, v7

    const/4 v7, 0x3

    .line 196
    neg-int v8, p1

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    aput v8, v6, v7

    const/4 v7, 0x4

    int-to-float v8, p2

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    aput v8, v6, v7

    const/4 v7, 0x5

    const/4 v8, 0x0

    aput v8, v6, v7

    const/4 v7, 0x6

    .line 197
    int-to-float v8, p1

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    aput v8, v6, v7

    const/4 v7, 0x7

    int-to-float v8, p2

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    aput v8, v6, v7

    const/16 v7, 0x8

    const/4 v8, 0x0

    aput v8, v6, v7

    const/16 v7, 0x9

    .line 198
    int-to-float v8, p1

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    aput v8, v6, v7

    const/16 v7, 0xa

    neg-int v8, p2

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    aput v8, v6, v7

    const/16 v7, 0xb

    const/4 v8, 0x0

    aput v8, v6, v7

    .line 195
    iput-object v6, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->quadCoords:[F

    .line 200
    const/16 v6, 0x8

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    iput-object v6, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->textureCoords:[F

    .line 201
    const/high16 v6, 0x10000

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 202
    .local v0, "bb0":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 203
    const/high16 v6, 0x10000

    new-array v5, v6, [B

    .line 205
    .local v5, "pixels":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/high16 v6, 0x10000

    if-lt v4, v6, :cond_0

    .line 209
    iput-object v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->testBuffer:Ljava/nio/ByteBuffer;

    .line 210
    iget-object v6, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->testBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 211
    iget-object v6, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->testBuffer:Ljava/nio/ByteBuffer;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 212
    iget-object v6, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->quadCoords:[F

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x4

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 213
    .local v1, "bb1":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 214
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    iput-object v6, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    .line 215
    iget-object v6, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v7, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->quadCoords:[F

    invoke-virtual {v6, v7}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 216
    iget-object v6, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 218
    iget-object v6, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->textureCoords:[F

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x4

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 219
    .local v2, "bb2":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 220
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    iput-object v6, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->textureBuffer:Ljava/nio/FloatBuffer;

    .line 221
    iget-object v6, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->textureBuffer:Ljava/nio/FloatBuffer;

    iget-object v7, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->textureCoords:[F

    invoke-virtual {v6, v7}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 222
    iget-object v6, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->textureBuffer:Ljava/nio/FloatBuffer;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 223
    iget-object v6, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->drawOrder:[S

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x2

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 224
    .local v3, "dlb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 225
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v6

    iput-object v6, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->drawListBuffer:Ljava/nio/ShortBuffer;

    .line 226
    iget-object v6, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->drawListBuffer:Ljava/nio/ShortBuffer;

    iget-object v7, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->drawOrder:[S

    invoke-virtual {v6, v7}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 227
    iget-object v6, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->drawListBuffer:Ljava/nio/ShortBuffer;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 228
    return-void

    .line 206
    .end local v1    # "bb1":Ljava/nio/ByteBuffer;
    .end local v2    # "bb2":Ljava/nio/ByteBuffer;
    .end local v3    # "dlb":Ljava/nio/ByteBuffer;
    :cond_0
    const/16 v6, -0x7c

    aput-byte v6, v5, v4

    .line 205
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 200
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private initTextures()V
    .locals 15

    .prologue
    const v14, 0x812f

    const/16 v13, 0x2600

    const/4 v9, 0x1

    const/4 v1, 0x0

    const/16 v0, 0xde1

    .line 236
    const/16 v12, 0x100

    .line 237
    .local v12, "paletteSize":I
    const/4 v4, 0x2

    iget-object v5, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->textureIds:[I

    invoke-static {v4, v5, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 238
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->textureIds:[I

    aget v4, v4, v1

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 239
    const/16 v2, 0x1906

    const/16 v3, 0x100

    .line 240
    const/16 v4, 0x100

    const/16 v6, 0x1906

    const/16 v7, 0x1401

    const/4 v8, 0x0

    move v5, v1

    .line 239
    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 242
    const/16 v4, 0x2801

    .line 241
    invoke-static {v0, v4, v13}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 244
    const/16 v4, 0x2800

    .line 243
    invoke-static {v0, v4, v13}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 246
    const/16 v4, 0x2802

    .line 245
    invoke-static {v0, v4, v14}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 248
    const/16 v4, 0x2803

    .line 247
    invoke-static {v0, v4, v14}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 249
    const/16 v4, 0xd05

    invoke-static {v4, v9}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    .line 250
    const/16 v4, 0xcf5

    invoke-static {v4, v9}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    .line 251
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->textureIds:[I

    aget v4, v4, v9

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 252
    new-array v3, v12, [I

    .line 254
    .local v3, "palette":[I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-lt v11, v12, :cond_0

    .line 259
    const/16 v4, 0xd05

    invoke-static {v4, v9}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    .line 260
    const/16 v4, 0xcf5

    invoke-static {v4, v9}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    .line 262
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 261
    invoke-static {v12, v12, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .local v2, "paletteBmp":Landroid/graphics/Bitmap;
    move v4, v1

    move v5, v12

    move v6, v1

    move v7, v1

    move v8, v12

    .line 263
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 264
    invoke-static {v0, v1, v2, v1}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 266
    const/16 v4, 0x2801

    .line 265
    invoke-static {v0, v4, v13}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 268
    const/16 v4, 0x2800

    .line 267
    invoke-static {v0, v4, v13}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 270
    const/16 v4, 0x2802

    .line 269
    invoke-static {v0, v4, v14}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 272
    const/16 v4, 0x2803

    .line 271
    invoke-static {v0, v4, v14}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 273
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->textureIds:[I

    aget v0, v0, v1

    iput v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->mainTextureId:I

    .line 274
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->textureIds:[I

    aget v0, v0, v9

    iput v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->paletteTextureId:I

    .line 275
    return-void

    .line 255
    .end local v2    # "paletteBmp":Landroid/graphics/Bitmap;
    :cond_0
    rem-int/lit8 v4, v11, 0x2

    if-nez v4, :cond_1

    move v10, v1

    .line 256
    .local v10, "c":I
    :goto_1
    const/high16 v4, -0x1000000

    shl-int/lit8 v5, v10, 0x10

    or-int/2addr v4, v5

    shl-int/lit8 v5, v10, 0x8

    or-int/2addr v4, v5

    or-int/2addr v4, v10

    aput v4, v3, v11

    .line 254
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 255
    .end local v10    # "c":I
    :cond_1
    const/16 v10, 0xff

    goto :goto_1
.end method


# virtual methods
.method public getViewPort()Lcom/nostalgiaemulators/framework/base/ViewPort;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->viewPort:Lcom/nostalgiaemulators/framework/base/ViewPort;

    return-object v0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 12
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 66
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 67
    iget v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->positionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 68
    iget v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->texCoordHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 69
    iget v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->positionHandle:I

    const/4 v1, 0x3

    const/16 v2, 0x1406

    .line 70
    const/4 v3, 0x0

    const/16 v4, 0xc

    iget-object v5, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    .line 69
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 71
    iget v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->texCoordHandle:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    .line 72
    const/4 v3, 0x0

    const/16 v4, 0x8

    iget-object v5, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->textureBuffer:Ljava/nio/FloatBuffer;

    .line 71
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 74
    iget v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->program:I

    const-string v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 73
    iput v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->mvpMatrixHandle:I

    .line 75
    iget v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->mvpMatrixHandle:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->projMatrix:[F

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 76
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 77
    const/16 v0, 0xde1

    iget v1, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->mainTextureId:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 78
    iget v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->textureHandle:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 79
    const v0, 0x84c1

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 80
    const/16 v0, 0xde1

    iget v1, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->paletteTextureId:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 81
    iget v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->paletteHandle:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 82
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 83
    const/16 v0, 0xde1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x100

    const/16 v5, 0x100

    .line 84
    const/16 v6, 0x1906

    const/16 v7, 0x1401

    iget-object v8, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->testBuffer:Ljava/nio/ByteBuffer;

    .line 83
    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 85
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->drawOrder:[S

    array-length v1, v1

    .line 86
    const/16 v2, 0x1403

    iget-object v3, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->drawListBuffer:Ljava/nio/ShortBuffer;

    .line 85
    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 87
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 88
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    .line 87
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 90
    .local v6, "pixels":Ljava/nio/ByteBuffer;
    iget v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->screenHeight:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->screenWidth:I

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 91
    const/16 v4, 0x1908

    const/16 v5, 0x1401

    .line 90
    invoke-static/range {v0 .. v6}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 93
    iget-boolean v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->detected:Z

    if-nez v0, :cond_0

    .line 94
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v10

    .line 95
    .local v10, "intBuf":Ljava/nio/IntBuffer;
    const/4 v0, 0x1

    new-array v9, v0, [I

    .line 96
    .local v9, "array":[I
    invoke-virtual {v10, v9}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    .line 97
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    and-int/lit16 v11, v0, 0xff

    .line 98
    .local v11, "value":I
    const-string v0, "pix"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pix: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->detected:Z

    .line 101
    if-nez v11, :cond_1

    .line 102
    const-string v0, "pix"

    const-string v1, "on detect: 0"

    invoke-static {v0, v1}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->callback:Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Callback;->onDetected(I)V

    .line 115
    .end local v9    # "array":[I
    .end local v10    # "intBuf":Ljava/nio/IntBuffer;
    .end local v11    # "value":I
    :cond_0
    :goto_0
    iget v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->positionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 116
    iget v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->texCoordHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 117
    return-void

    .line 105
    .restart local v9    # "array":[I
    .restart local v10    # "intBuf":Ljava/nio/IntBuffer;
    .restart local v11    # "value":I
    :cond_1
    const/16 v0, 0xff

    if-ne v11, v0, :cond_2

    .line 106
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->callback:Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Callback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Callback;->onDetected(I)V

    .line 107
    const-string v0, "pix"

    const-string v1, "on detect: 1"

    invoke-static {v0, v1}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :cond_2
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->callback:Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Callback;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Callback;->onDetected(I)V

    .line 111
    const-string v0, "pix"

    const-string v1, "on detect: 2"

    invoke-static {v0, v1}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 8
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v1, 0x0

    .line 126
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->projMatrix:[F

    neg-int v2, p2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    div-int/lit8 v3, p2, 0x2

    int-to-float v3, v3

    neg-int v4, p3

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    .line 127
    div-int/lit8 v5, p3, 0x2

    int-to-float v5, v5

    const/high16 v6, -0x40000000    # -2.0f

    const/high16 v7, 0x40000000    # 2.0f

    .line 126
    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 128
    iput p2, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->screenWidth:I

    .line 129
    iput p3, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->screenHeight:I

    .line 130
    invoke-static {v1, v1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 131
    invoke-direct {p0, p2, p3}, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->initQuadCoordinates(II)V

    .line 132
    iget v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->program:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 133
    invoke-direct {p0, p2, p3}, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->initQuadCoordinates(II)V

    .line 134
    iget v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->program:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 135
    iget v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->program:I

    const-string v1, "a_position"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->positionHandle:I

    .line 136
    iget v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->program:I

    const-string v1, "s_texture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->textureHandle:I

    .line 137
    iget v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->program:I

    const-string v1, "s_palette"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->paletteHandle:I

    .line 138
    iget v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->program:I

    const-string v1, "a_texCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->texCoordHandle:I

    .line 139
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 4
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    const/4 v3, 0x0

    .line 176
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v3, v3, v3, v2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 178
    const v2, 0x8b31

    sget-object v3, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->vertexShaderCode:Ljava/lang/String;

    .line 177
    invoke-static {v2, v3}, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->loadShader(ILjava/lang/String;)I

    move-result v1

    .line 180
    .local v1, "vertexShader":I
    const v2, 0x8b30

    sget-object v3, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->fragmentShaderCode:Ljava/lang/String;

    .line 179
    invoke-static {v2, v3}, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->loadShader(ILjava/lang/String;)I

    move-result v0

    .line 181
    .local v0, "fragmentShader":I
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    iput v2, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->program:I

    .line 182
    iget v2, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->program:I

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 183
    iget v2, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->program:I

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 184
    iget v2, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->program:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 185
    invoke-direct {p0}, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;->initTextures()V

    .line 186
    return-void
.end method
