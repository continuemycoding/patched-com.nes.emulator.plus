.class Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;
.super Ljava/lang/Object;
.source "OpenGLView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostalgiaemulators/framework/base/OpenGLView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Renderer"
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$nostalgiaemulators$framework$ui$preferences$PreferenceUtil$Shader:[I = null

.field static final COORDS_PER_TEXTURE:I = 0x2

.field static final COORDS_PER_VERTEX:I = 0x3


# instance fields
.field final TEXTURE_SIZE:I

.field public final TEXTURE_STRIDE:I

.field public final VERTEX_STRIDE:I

.field benchmark:Lcom/nostalgiaemulators/framework/base/Benchmark;

.field private context:Landroid/content/Context;

.field private defaultProgram:I

.field private delayPerFrame:I

.field private drawListBuffer:Ljava/nio/ShortBuffer;

.field private final drawOrder:[S

.field private emulator:Lcom/nostalgiaemulators/framework/Emulator;

.field fboId:I

.field private fboProjMatrix:[F

.field fboTexId:I

.field filtering:I

.field private first:Z

.field firstPassFiltering:I

.field private firstPassProgram:I

.field frameCount:I

.field private frameCountHandle2:I

.field glslResId:I

.field private inited:Z

.field private inputSizeHandle2:I

.field private lck:Ljava/lang/Object;

.field private mainTextureId:I

.field maxTexX:I

.field maxTexY:I

.field private mvpMatrixHandle:I

.field private outputSizeHandle2:I

.field private paddingLeft:I

.field private paddingTop:I

.field private positionHandle:I

.field private positionHandle2:I

.field private projMatrix:[F

.field private quadCoords:[F

.field private quadCoords2:[F

.field scale:I

.field private startTime:J

.field private surfaceHeight:I

.field private surfaceWidth:I

.field private texCoordHandle:I

.field private texCoordHandle2:I

.field texType:I

.field private textureBounds:[I

.field private textureBuffer:Ljava/nio/FloatBuffer;

.field private textureBuffer2:Ljava/nio/FloatBuffer;

.field private textureCoords:[F

.field private textureCoords2:[F

.field private textureHandle:I

.field private textureHandle2:I

.field private textureSizeHandle2:I

.field private useFBO:Z

.field private usesNonDefaultShader:Z

.field private vertexBuffer:Ljava/nio/FloatBuffer;

.field private vertexBuffer2:Ljava/nio/FloatBuffer;

.field private viewPort:Lcom/nostalgiaemulators/framework/base/ViewPort;

.field vph:I

.field vpw:I

.field vpx:I

.field vpy:I


# direct methods
.method static synthetic $SWITCH_TABLE$com$nostalgiaemulators$framework$ui$preferences$PreferenceUtil$Shader()[I
    .locals 3

    .prologue
    .line 93
    sget-object v0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->$SWITCH_TABLE$com$nostalgiaemulators$framework$ui$preferences$PreferenceUtil$Shader:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$Shader;->values()[Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$Shader;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$Shader;->LINEAR:Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$Shader;

    invoke-virtual {v1}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$Shader;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$Shader;->NEAREST:Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$Shader;

    invoke-virtual {v1}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$Shader;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$Shader;->SCALE2X:Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$Shader;

    invoke-virtual {v1}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$Shader;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$Shader;->SCALE2X_HQ:Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$Shader;

    invoke-virtual {v1}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$Shader;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$Shader;->SUPER2XSAI:Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$Shader;

    invoke-virtual {v1}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$Shader;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$Shader;->SUPER_EAGLE:Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$Shader;

    invoke-virtual {v1}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$Shader;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->$SWITCH_TABLE$com$nostalgiaemulators$framework$ui$preferences$PreferenceUtil$Shader:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Lcom/nostalgiaemulators/framework/base/EmulatorActivity;Lcom/nostalgiaemulators/framework/Emulator;I)V
    .locals 6
    .param p1, "context"    # Lcom/nostalgiaemulators/framework/base/EmulatorActivity;
    .param p2, "emulator"    # Lcom/nostalgiaemulators/framework/Emulator;
    .param p3, "paddingTop"    # I

    .prologue
    const/16 v5, 0x2600

    const/16 v4, 0x10

    const/4 v3, 0x0

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->benchmark:Lcom/nostalgiaemulators/framework/base/Benchmark;

    .line 116
    iput-boolean v1, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->first:Z

    .line 124
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->lck:Ljava/lang/Object;

    .line 182
    iput-boolean v3, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->inited:Z

    .line 380
    iput v2, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->scale:I

    .line 382
    iput-boolean v1, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->usesNonDefaultShader:Z

    .line 383
    iput-boolean v3, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->useFBO:Z

    .line 384
    iput v3, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->frameCount:I

    .line 498
    const/16 v0, 0x100

    iput v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->TEXTURE_SIZE:I

    .line 617
    iput v5, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->firstPassFiltering:I

    .line 618
    iput v5, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->filtering:I

    .line 687
    const/4 v0, 0x6

    new-array v0, v0, [S

    aput-short v1, v0, v1

    aput-short v2, v0, v2

    const/4 v1, 0x4

    aput-short v2, v0, v1

    const/4 v1, 0x5

    const/4 v2, 0x3

    aput-short v2, v0, v1

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->drawOrder:[S

    .line 689
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->projMatrix:[F

    .line 690
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->fboProjMatrix:[F

    .line 700
    const/16 v0, 0x28

    iput v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->delayPerFrame:I

    .line 704
    const/16 v0, 0xc

    iput v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->VERTEX_STRIDE:I

    .line 705
    const/16 v0, 0x8

    iput v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->TEXTURE_STRIDE:I

    .line 96
    iput-object p2, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->emulator:Lcom/nostalgiaemulators/framework/Emulator;

    .line 97
    invoke-virtual {p1}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->getTextureType()I

    move-result v0

    iput v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->texType:I

    .line 98
    invoke-virtual {p1}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->context:Landroid/content/Context;

    .line 99
    invoke-virtual {p1, p2}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->getTextureBounds(Lcom/nostalgiaemulators/framework/Emulator;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->textureBounds:[I

    .line 100
    iput p3, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->paddingTop:I

    .line 101
    return-void
.end method

.method private static checkGlError(Ljava/lang/String;)V
    .locals 4
    .param p0, "glOperation"    # Ljava/lang/String;

    .prologue
    .line 474
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .local v0, "error":I
    if-eqz v0, :cond_0

    .line 475
    const-string v1, "com.nostalgiaemulators.framework.base.OpenGLView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/nostalgiaemulators/framework/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 478
    :cond_0
    return-void
.end method

.method private guardedRender()V
    .locals 2

    .prologue
    .line 171
    :try_start_0
    invoke-direct {p0}, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->render()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    return-void

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->setDefaultShader(Landroid/content/Context;)V

    .line 175
    throw v0
.end method

.method private initQuadCoordinates(Lcom/nostalgiaemulators/framework/Emulator;II)V
    .locals 12
    .param p1, "emulator"    # Lcom/nostalgiaemulators/framework/Emulator;
    .param p2, "vpWidth"    # I
    .param p3, "vpHeight"    # I

    .prologue
    .line 505
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->textureBounds:[I

    if-nez v0, :cond_8

    .line 506
    invoke-interface {p1}, Lcom/nostalgiaemulators/framework/Emulator;->getActiveGfxProfile()Lcom/nostalgiaemulators/framework/GfxProfile;

    move-result-object v11

    .line 507
    .local v11, "gfx":Lcom/nostalgiaemulators/framework/GfxProfile;
    iget v0, v11, Lcom/nostalgiaemulators/framework/GfxProfile;->originalScreenWidth:I

    iput v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->maxTexX:I

    .line 508
    iget v0, v11, Lcom/nostalgiaemulators/framework/GfxProfile;->originalScreenHeight:I

    iput v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->maxTexY:I

    .line 515
    .end local v11    # "gfx":Lcom/nostalgiaemulators/framework/GfxProfile;
    :goto_0
    iget-boolean v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->useFBO:Z

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->fboProjMatrix:[F

    const/4 v1, 0x0

    iget v2, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->maxTexX:I

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->scale:I

    mul-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->maxTexX:I

    .line 517
    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->scale:I

    mul-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->maxTexY:I

    neg-int v4, v4

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->scale:I

    mul-int/2addr v4, v5

    int-to-float v4, v4

    .line 518
    iget v5, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->maxTexY:I

    div-int/lit8 v5, v5, 0x2

    iget v6, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->scale:I

    mul-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, -0x40000000    # -2.0f

    const/high16 v7, 0x40000000    # 2.0f

    .line 516
    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 519
    const/16 v0, 0xc

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->maxTexX:I

    neg-int v2, v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v3, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->scale:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 520
    iget v2, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->maxTexY:I

    neg-int v2, v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v3, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->scale:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 521
    iget v2, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->maxTexX:I

    neg-int v2, v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v3, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->scale:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->maxTexY:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v3, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->scale:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x5

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 522
    iget v2, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->maxTexX:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v3, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->scale:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x7

    iget v2, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->maxTexY:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v3, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->scale:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    aput v2, v0, v1

    const/16 v1, 0x8

    const/4 v2, 0x0

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 523
    iget v2, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->maxTexX:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v3, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->scale:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    aput v2, v0, v1

    const/16 v1, 0xa

    iget v2, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->maxTexY:I

    neg-int v2, v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v3, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->scale:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    aput v2, v0, v1

    const/16 v1, 0xb

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 519
    iput-object v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->quadCoords2:[F

    .line 525
    const/16 v0, 0x8

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 526
    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 527
    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 528
    iget v2, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->maxTexY:I

    int-to-float v2, v2

    const/high16 v3, 0x43800000    # 256.0f

    div-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x4

    .line 530
    iget v2, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->maxTexX:I

    int-to-float v2, v2

    const/high16 v3, 0x43800000    # 256.0f

    div-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x5

    .line 531
    iget v2, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->maxTexY:I

    int-to-float v2, v2

    const/high16 v3, 0x43800000    # 256.0f

    div-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 533
    iget v2, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->maxTexX:I

    int-to-float v2, v2

    const/high16 v3, 0x43800000    # 256.0f

    div-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 525
    iput-object v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->textureCoords2:[F

    .line 538
    :cond_0
    const/16 v0, 0xc

    new-array v0, v0, [F

    const/4 v1, 0x0

    neg-int v2, p2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x1

    neg-int v2, p3

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 539
    neg-int v2, p2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x4

    int-to-float v2, p3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x5

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 540
    int-to-float v2, p2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x7

    int-to-float v2, p3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    aput v2, v0, v1

    const/16 v1, 0x8

    const/4 v2, 0x0

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 541
    int-to-float v2, p2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    aput v2, v0, v1

    const/16 v1, 0xa

    neg-int v2, p3

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    aput v2, v0, v1

    const/16 v1, 0xb

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 538
    iput-object v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->quadCoords:[F

    .line 543
    const/16 v0, 0x8

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 544
    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 545
    iget v2, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->maxTexY:I

    int-to-float v2, v2

    const/high16 v3, 0x43800000    # 256.0f

    div-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 546
    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 547
    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->maxTexX:I

    int-to-float v2, v2

    const/high16 v3, 0x43800000    # 256.0f

    div-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x5

    .line 548
    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 549
    iget v2, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->maxTexX:I

    int-to-float v2, v2

    const/high16 v3, 0x43800000    # 256.0f

    div-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 550
    iget v2, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->maxTexY:I

    int-to-float v2, v2

    const/high16 v3, 0x43800000    # 256.0f

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 543
    iput-object v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->textureCoords:[F

    .line 553
    iget-boolean v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->useFBO:Z

    if-eqz v0, :cond_2

    .line 554
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_1

    .line 556
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->quadCoords2:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 557
    .local v8, "bb1":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 558
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    .line 561
    .end local v8    # "bb1":Ljava/nio/ByteBuffer;
    :cond_1
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 562
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->quadCoords2:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 563
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 566
    :cond_2
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->vertexBuffer2:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_3

    .line 568
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->quadCoords:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 569
    .restart local v8    # "bb1":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 570
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->vertexBuffer2:Ljava/nio/FloatBuffer;

    .line 573
    .end local v8    # "bb1":Ljava/nio/ByteBuffer;
    :cond_3
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->vertexBuffer2:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 574
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->vertexBuffer2:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->quadCoords:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 575
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->vertexBuffer2:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 577
    iget-boolean v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->useFBO:Z

    if-eqz v0, :cond_5

    .line 578
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->textureBuffer:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_4

    .line 580
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->textureCoords2:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 581
    .local v9, "bb2":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 582
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->textureBuffer:Ljava/nio/FloatBuffer;

    .line 585
    .end local v9    # "bb2":Ljava/nio/ByteBuffer;
    :cond_4
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 586
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->textureBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->textureCoords2:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 587
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->textureBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 590
    :cond_5
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->textureBuffer2:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_6

    .line 592
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->textureCoords:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 593
    .restart local v9    # "bb2":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 594
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->textureBuffer2:Ljava/nio/FloatBuffer;

    .line 597
    .end local v9    # "bb2":Ljava/nio/ByteBuffer;
    :cond_6
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->textureBuffer2:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 598
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->textureBuffer2:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->textureCoords:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 599
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->textureBuffer2:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 601
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->drawListBuffer:Ljava/nio/ShortBuffer;

    if-nez v0, :cond_7

    .line 603
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->drawOrder:[S

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 604
    .local v10, "dlb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 605
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->drawListBuffer:Ljava/nio/ShortBuffer;

    .line 608
    .end local v10    # "dlb":Ljava/nio/ByteBuffer;
    :cond_7
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->drawListBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;

    .line 609
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->drawListBuffer:Ljava/nio/ShortBuffer;

    iget-object v1, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->drawOrder:[S

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 610
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->drawListBuffer:Ljava/nio/ShortBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 611
    return-void

    .line 511
    :cond_8
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->textureBounds:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->maxTexX:I

    .line 512
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->textureBounds:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->maxTexY:I

    goto/16 :goto_0
.end method

.method private initTextures()V
    .locals 20

    .prologue
    .line 621
    const/16 v18, 0x1

    .line 622
    .local v18, "numTextures":I
    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v19, v0

    .line 623
    .local v19, "textureIds":[I
    const/16 v5, 0x100

    .line 624
    .local v5, "textureWidth":I
    const/16 v6, 0x100

    .line 625
    .local v6, "textureHeight":I
    const/4 v2, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 626
    const/4 v2, 0x0

    aget v2, v19, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->mainTextureId:I

    .line 627
    const/16 v2, 0xde1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->mainTextureId:I

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 628
    const/16 v2, 0xde1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->texType:I

    .line 629
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->texType:I

    const/16 v9, 0x1401

    const/4 v10, 0x0

    .line 628
    invoke-static/range {v2 .. v10}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 630
    const-string v2, "textures"

    invoke-static {v2}, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->checkGlError(Ljava/lang/String;)V

    .line 632
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->useFBO:Z

    if-eqz v2, :cond_0

    .line 633
    const/4 v2, 0x1

    new-array v0, v2, [I

    move-object/from16 v17, v0

    .line 634
    .local v17, "fboTextureIds":[I
    const/4 v2, 0x1

    new-array v0, v2, [I

    move-object/from16 v16, v0

    .line 635
    .local v16, "fboIds":[I
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 636
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 637
    const/4 v2, 0x0

    aget v2, v17, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->fboTexId:I

    .line 638
    const/4 v2, 0x0

    aget v2, v16, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->fboId:I

    .line 639
    const/16 v2, 0xde1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->fboTexId:I

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 640
    const/16 v7, 0xde1

    const/4 v8, 0x0

    const/16 v9, 0x1908

    .line 641
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->scale:I

    mul-int/lit16 v10, v2, 0x100

    move-object/from16 v0, p0

    iget v2, v0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->scale:I

    mul-int/lit16 v11, v2, 0x100

    const/4 v12, 0x0

    .line 642
    const/16 v13, 0x1908

    const/16 v14, 0x1401

    const/4 v15, 0x0

    .line 640
    invoke-static/range {v7 .. v15}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 643
    const/16 v2, 0xde1

    .line 644
    const/16 v3, 0x2801

    move-object/from16 v0, p0

    iget v4, v0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->filtering:I

    .line 643
    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 645
    const/16 v2, 0xde1

    .line 646
    const/16 v3, 0x2800

    move-object/from16 v0, p0

    iget v4, v0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->filtering:I

    .line 645
    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 647
    const/16 v2, 0xde1

    .line 648
    const/16 v3, 0x2802

    const v4, 0x812f

    .line 647
    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 649
    const/16 v2, 0xde1

    .line 650
    const/16 v3, 0x2803

    const v4, 0x812f

    .line 649
    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 651
    const v2, 0x8d40

    const/4 v3, 0x0

    aget v3, v16, v3

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 652
    const v2, 0x8d40

    .line 653
    const v3, 0x8ce0

    const/16 v4, 0xde1

    .line 654
    move-object/from16 v0, p0

    iget v7, v0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->fboTexId:I

    const/4 v8, 0x0

    .line 652
    invoke-static {v2, v3, v4, v7, v8}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 655
    const v2, 0x8d40

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 657
    .end local v16    # "fboIds":[I
    .end local v17    # "fboTextureIds":[I
    :cond_0
    return-void
.end method

.method public static loadShader(ILjava/lang/String;)I
    .locals 6
    .param p0, "type"    # I
    .param p1, "shaderCode"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 481
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v2

    .line 482
    .local v2, "shader":I
    invoke-static {v2, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 483
    invoke-static {v2}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 484
    const/4 v3, 0x1

    new-array v0, v3, [I

    .line 485
    .local v0, "compiled":[I
    const v3, 0x8b81

    invoke-static {v2, v3, v0, v4}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 487
    aget v3, v0, v4

    if-nez v3, :cond_0

    .line 488
    invoke-static {v2}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v1

    .line 489
    .local v1, "log":Ljava/lang/String;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "glCompileShader failed. t: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 490
    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 489
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 493
    .end local v1    # "log":Ljava/lang/String;
    :cond_0
    return v2
.end method

.method private render()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/high16 v9, 0x43800000    # 256.0f

    const/16 v2, 0x1406

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 387
    iget-boolean v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->inited:Z

    if-nez v0, :cond_0

    .line 388
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->initialize()Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->inited:Z

    .line 391
    :cond_0
    iget-boolean v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->inited:Z

    if-nez v0, :cond_2

    .line 469
    :cond_1
    :goto_0
    return-void

    .line 395
    :cond_2
    iget-boolean v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->usesNonDefaultShader:Z

    if-eqz v0, :cond_4

    .line 396
    iget v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->frameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->frameCount:I

    .line 398
    iget-boolean v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->useFBO:Z

    if-eqz v0, :cond_3

    .line 399
    const v0, 0x8d40

    iget v1, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->fboId:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 400
    iget v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->maxTexX:I

    iget v1, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->scale:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->maxTexY:I

    iget v4, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->scale:I

    mul-int/2addr v1, v4

    invoke-static {v3, v3, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 403
    :cond_3
    iget v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->firstPassProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 404
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 405
    iget v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->positionHandle2:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 406
    iget v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->texCoordHandle2:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 407
    iget v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->positionHandle2:I

    .line 408
    const/4 v1, 0x3

    .line 409
    const/16 v4, 0xc

    iget-boolean v5, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->useFBO:Z

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    .line 407
    :goto_1
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 410
    iget v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->texCoordHandle2:I

    .line 412
    const/16 v4, 0x8

    iget-boolean v1, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->useFBO:Z

    if-eqz v1, :cond_8

    iget-object v5, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->textureBuffer:Ljava/nio/FloatBuffer;

    :goto_2
    move v1, v10

    .line 410
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 413
    iget v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->firstPassProgram:I

    .line 414
    const-string v1, "MVPMatrix"

    .line 413
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->mvpMatrixHandle:I

    .line 415
    iget v1, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->mvpMatrixHandle:I

    .line 416
    iget-boolean v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->useFBO:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->fboProjMatrix:[F

    .line 415
    :goto_3
    invoke-static {v1, v8, v3, v0, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 417
    const v0, 0x84c1

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 418
    const/16 v0, 0xde1

    iget v1, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->mainTextureId:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 419
    iget v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->frameCountHandle2:I

    iget v1, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->frameCount:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 420
    iget v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->textureHandle2:I

    invoke-static {v0, v8}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 421
    iget v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->outputSizeHandle2:I

    iget v1, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->vpw:I

    iget v4, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->vph:I

    invoke-static {v0, v1, v4}, Landroid/opengl/GLES20;->glUniform2i(III)V

    .line 422
    iget v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->inputSizeHandle2:I

    iget v1, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->maxTexX:I

    iget v4, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->maxTexY:I

    invoke-static {v0, v1, v4}, Landroid/opengl/GLES20;->glUniform2i(III)V

    .line 423
    iget v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->textureSizeHandle2:I

    invoke-static {v0, v9, v9}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 425
    const v0, 0x84c1

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 426
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->emulator:Lcom/nostalgiaemulators/framework/Emulator;

    invoke-interface {v0}, Lcom/nostalgiaemulators/framework/Emulator;->renderGfxGL()V

    .line 427
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->drawOrder:[S

    array-length v1, v1

    .line 428
    const/16 v4, 0x1403

    iget-object v5, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->drawListBuffer:Ljava/nio/ShortBuffer;

    .line 427
    invoke-static {v0, v1, v4, v5}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 429
    iget v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->positionHandle2:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 430
    iget v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->texCoordHandle2:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 432
    iget-boolean v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->useFBO:Z

    if-eqz v0, :cond_4

    .line 433
    const v0, 0x8d40

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 434
    iget v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->defaultProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 435
    iget v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->vpx:I

    iget v1, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->vpy:I

    iget v4, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->vpw:I

    iget v5, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->vph:I

    invoke-static {v0, v1, v4, v5}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 439
    :cond_4
    iget-boolean v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->usesNonDefaultShader:Z

    if-eqz v0, :cond_a

    move v6, v3

    .line 441
    .local v6, "defaultShader":Z
    :goto_4
    if-nez v6, :cond_5

    iget-boolean v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->useFBO:Z

    if-eqz v0, :cond_1

    .line 442
    :cond_5
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 443
    iget v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->positionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 444
    iget v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->texCoordHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 445
    iget v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->positionHandle:I

    const/4 v1, 0x3

    .line 446
    const/16 v4, 0xc

    iget-object v5, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->vertexBuffer2:Ljava/nio/FloatBuffer;

    .line 445
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 447
    iget v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->texCoordHandle:I

    .line 449
    const/16 v4, 0x8

    iget-object v5, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->textureBuffer2:Ljava/nio/FloatBuffer;

    move v1, v10

    .line 447
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 450
    iget v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->defaultProgram:I

    .line 451
    const-string v1, "uMVPMatrix"

    .line 450
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->mvpMatrixHandle:I

    .line 452
    iget v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->mvpMatrixHandle:I

    .line 453
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->projMatrix:[F

    .line 452
    invoke-static {v0, v8, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 454
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 455
    iget-boolean v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->useFBO:Z

    if-eqz v0, :cond_b

    iget v7, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->fboTexId:I

    .line 456
    .local v7, "texId":I
    :goto_5
    const/16 v0, 0xde1

    invoke-static {v0, v7}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 457
    iget v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->textureHandle:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 458
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 460
    if-eqz v6, :cond_6

    .line 461
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->emulator:Lcom/nostalgiaemulators/framework/Emulator;

    invoke-interface {v0}, Lcom/nostalgiaemulators/framework/Emulator;->renderGfxGL()V

    .line 464
    :cond_6
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->drawOrder:[S

    array-length v1, v1

    .line 465
    const/16 v2, 0x1403

    iget-object v3, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->drawListBuffer:Ljava/nio/ShortBuffer;

    .line 464
    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 466
    iget v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->positionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 467
    iget v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->texCoordHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    goto/16 :goto_0

    .line 409
    .end local v6    # "defaultShader":Z
    .end local v7    # "texId":I
    :cond_7
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->vertexBuffer2:Ljava/nio/FloatBuffer;

    goto/16 :goto_1

    .line 412
    :cond_8
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->textureBuffer2:Ljava/nio/FloatBuffer;

    goto/16 :goto_2

    .line 416
    :cond_9
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->projMatrix:[F

    goto/16 :goto_3

    :cond_a
    move v6, v8

    .line 439
    goto/16 :goto_4

    .line 455
    .restart local v6    # "defaultShader":Z
    :cond_b
    iget v7, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->mainTextureId:I

    goto :goto_5
.end method


# virtual methods
.method public getViewPort()Lcom/nostalgiaemulators/framework/base/ViewPort;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->viewPort:Lcom/nostalgiaemulators/framework/base/ViewPort;

    return-object v0
.end method

.method initialize()Z
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v0, 0x0

    .line 199
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->emulator:Lcom/nostalgiaemulators/framework/Emulator;

    invoke-interface {v1}, Lcom/nostalgiaemulators/framework/Emulator;->isReady()Z

    move-result v1

    if-nez v1, :cond_0

    .line 264
    :goto_0
    return v0

    .line 204
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->context:Landroid/content/Context;

    .line 205
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->emulator:Lcom/nostalgiaemulators/framework/Emulator;

    iget v2, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->surfaceWidth:I

    iget v3, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->surfaceHeight:I

    const/4 v4, 0x0

    iget v5, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->paddingTop:I

    .line 206
    const/4 v6, 0x0

    .line 204
    invoke-static/range {v0 .. v6}, Lcom/nostalgiaemulators/framework/base/ViewUtils;->loadOrComputeViewPort(Landroid/content/Context;Lcom/nostalgiaemulators/framework/Emulator;IIIIZ)Lcom/nostalgiaemulators/framework/base/ViewPort;

    move-result-object v10

    .line 207
    .local v10, "vp":Lcom/nostalgiaemulators/framework/base/ViewPort;
    iput-object v10, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->viewPort:Lcom/nostalgiaemulators/framework/base/ViewPort;

    .line 208
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->projMatrix:[F

    const/4 v1, 0x0

    iget v2, v10, Lcom/nostalgiaemulators/framework/base/ViewPort;->width:I

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, v10, Lcom/nostalgiaemulators/framework/base/ViewPort;->width:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    .line 209
    iget v4, v10, Lcom/nostalgiaemulators/framework/base/ViewPort;->height:I

    neg-int v4, v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget v5, v10, Lcom/nostalgiaemulators/framework/base/ViewPort;->height:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    const/high16 v6, -0x40000000    # -2.0f

    const/high16 v7, 0x40000000    # 2.0f

    .line 208
    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 210
    iget v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->surfaceHeight:I

    iget v1, v10, Lcom/nostalgiaemulators/framework/base/ViewPort;->y:I

    sub-int/2addr v0, v1

    iget v1, v10, Lcom/nostalgiaemulators/framework/base/ViewPort;->height:I

    sub-int v9, v0, v1

    .line 211
    .local v9, "nvpy":I
    iget v0, v10, Lcom/nostalgiaemulators/framework/base/ViewPort;->x:I

    iget v1, v10, Lcom/nostalgiaemulators/framework/base/ViewPort;->width:I

    iget v2, v10, Lcom/nostalgiaemulators/framework/base/ViewPort;->height:I

    invoke-static {v0, v9, v1, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 212
    iget v0, v10, Lcom/nostalgiaemulators/framework/base/ViewPort;->x:I

    iput v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->vpx:I

    .line 213
    iput v9, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->vpy:I

    .line 214
    iget v0, v10, Lcom/nostalgiaemulators/framework/base/ViewPort;->width:I

    iput v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->vpw:I

    .line 215
    iget v0, v10, Lcom/nostalgiaemulators/framework/base/ViewPort;->height:I

    iput v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->vph:I

    .line 216
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->emulator:Lcom/nostalgiaemulators/framework/Emulator;

    iget v1, v10, Lcom/nostalgiaemulators/framework/base/ViewPort;->width:I

    iget v2, v10, Lcom/nostalgiaemulators/framework/base/ViewPort;->height:I

    invoke-direct {p0, v0, v1, v2}, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->initQuadCoordinates(Lcom/nostalgiaemulators/framework/Emulator;II)V

    .line 217
    const-string v0, "initquad"

    invoke-static {v0}, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->checkGlError(Ljava/lang/String;)V

    .line 218
    iget v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->defaultProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 219
    const-string v0, "use program"

    invoke-static {v0}, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->checkGlError(Ljava/lang/String;)V

    .line 220
    iget v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->defaultProgram:I

    .line 221
    const-string v1, "aPosition"

    .line 220
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->positionHandle:I

    .line 222
    iget v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->defaultProgram:I

    .line 223
    const-string v1, "rubyTexture"

    .line 222
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->textureHandle:I

    .line 224
    iget v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->defaultProgram:I

    .line 225
    const-string v1, "aTexCoord"

    .line 224
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->texCoordHandle:I

    .line 227
    iget-boolean v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->usesNonDefaultShader:Z

    if-eqz v0, :cond_1

    .line 229
    iget v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->firstPassProgram:I

    const-string v1, "VertexCoord"

    .line 228
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->positionHandle2:I

    .line 231
    iget v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->firstPassProgram:I

    const-string v1, "OutputSize"

    .line 230
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->outputSizeHandle2:I

    .line 233
    iget v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->firstPassProgram:I

    const-string v1, "InputSize"

    .line 232
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->inputSizeHandle2:I

    .line 235
    iget v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->firstPassProgram:I

    const-string v1, "Texture"

    .line 234
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->textureHandle2:I

    .line 237
    iget v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->firstPassProgram:I

    const-string v1, "FrameCount"

    .line 236
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->frameCountHandle2:I

    .line 239
    iget v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->firstPassProgram:I

    const-string v1, "TextureSize"

    .line 238
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->textureSizeHandle2:I

    .line 241
    iget v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->firstPassProgram:I

    const-string v1, "TexCoord"

    .line 240
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->texCoordHandle2:I

    .line 244
    :cond_1
    const/16 v0, 0xde1

    iget v1, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->mainTextureId:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 245
    const-string v0, "bind texture"

    invoke-static {v0}, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->checkGlError(Ljava/lang/String;)V

    .line 246
    const/16 v0, 0xde1

    .line 247
    const/16 v1, 0x2801

    iget v2, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->firstPassFiltering:I

    .line 246
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 248
    const/16 v0, 0xde1

    .line 249
    const/16 v1, 0x2800

    iget v2, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->firstPassFiltering:I

    .line 248
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 250
    const/16 v0, 0xde1

    .line 251
    const/16 v1, 0x2802

    const v2, 0x812f

    .line 250
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 252
    const/16 v0, 0xde1

    .line 253
    const/16 v1, 0x2803

    const v2, 0x812f

    .line 252
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 254
    const/16 v0, 0xd05

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    .line 255
    const/16 v0, 0xcf5

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    .line 256
    const-string v0, "params"

    invoke-static {v0}, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->checkGlError(Ljava/lang/String;)V

    .line 257
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->startTime:J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v11

    .line 264
    goto/16 :goto_0

    .line 259
    .end local v9    # "nvpy":I
    .end local v10    # "vp":Lcom/nostalgiaemulators/framework/base/ViewPort;
    :catch_0
    move-exception v8

    .line 260
    .local v8, "e":Ljava/lang/RuntimeException;
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->setDefaultShader(Landroid/content/Context;)V

    .line 261
    throw v8
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 8
    .param p1, "unused"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 128
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->benchmark:Lcom/nostalgiaemulators/framework/base/Benchmark;

    if-eqz v4, :cond_0

    .line 129
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->benchmark:Lcom/nostalgiaemulators/framework/base/Benchmark;

    invoke-virtual {v4}, Lcom/nostalgiaemulators/framework/base/Benchmark;->notifyFrameEnd()V

    .line 132
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 134
    .local v2, "endTime":J
    iget v4, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->delayPerFrame:I

    if-lez v4, :cond_3

    .line 135
    iget v4, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->delayPerFrame:I

    int-to-long v4, v4

    iget-wide v6, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->startTime:J

    sub-long v6, v2, v6

    sub-long v0, v4, v6

    .line 137
    .local v0, "delay":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_1

    .line 139
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .end local v0    # "delay":J
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->benchmark:Lcom/nostalgiaemulators/framework/base/Benchmark;

    if-eqz v4, :cond_2

    .line 155
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->benchmark:Lcom/nostalgiaemulators/framework/base/Benchmark;

    invoke-virtual {v4}, Lcom/nostalgiaemulators/framework/base/Benchmark;->notifyFrameStart()V

    .line 158
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->startTime:J

    .line 160
    iget-boolean v4, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->first:Z

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->inited:Z

    if-eqz v4, :cond_4

    .line 161
    invoke-direct {p0}, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->guardedRender()V

    .line 162
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->first:Z

    .line 167
    :goto_1
    return-void

    .line 145
    :cond_3
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->lck:Ljava/lang/Object;

    monitor-enter v5

    .line 147
    :try_start_1
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->lck:Ljava/lang/Object;

    const-wide/16 v6, 0x21

    invoke-virtual {v4, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    :goto_2
    :try_start_2
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 165
    :cond_4
    invoke-direct {p0}, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->render()V

    goto :goto_1

    .line 141
    .restart local v0    # "delay":J
    :catch_0
    move-exception v4

    goto :goto_0

    .line 149
    .end local v0    # "delay":J
    :catch_1
    move-exception v4

    goto :goto_2
.end method

.method public onFrameReady()V
    .locals 2

    .prologue
    .line 119
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->lck:Ljava/lang/Object;

    monitor-enter v1

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->lck:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 119
    monitor-exit v1

    .line 122
    return-void

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->benchmark:Lcom/nostalgiaemulators/framework/base/Benchmark;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->benchmark:Lcom/nostalgiaemulators/framework/base/Benchmark;

    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/base/Benchmark;->reset()V

    .line 110
    :cond_0
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 1
    .param p1, "unused"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 186
    iput p2, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->surfaceWidth:I

    .line 187
    iput p3, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->surfaceHeight:I

    .line 188
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->inited:Z

    .line 189
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 22
    .param p1, "unused"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 271
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->getShader(Landroid/content/Context;)Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$Shader;

    move-result-object v13

    .line 272
    .local v13, "shader":Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$Shader;
    const/16 v18, 0x2600

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->firstPassFiltering:I

    .line 273
    const/16 v18, 0x2601

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->filtering:I

    .line 274
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->usesNonDefaultShader:Z

    .line 276
    invoke-static {}, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->$SWITCH_TABLE$com$nostalgiaemulators$framework$ui$preferences$PreferenceUtil$Shader()[I

    move-result-object v18

    invoke-virtual {v13}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$Shader;->ordinal()I

    move-result v19

    aget v18, v18, v19

    packed-switch v18, :pswitch_data_0

    .line 318
    new-instance v18, Ljava/lang/RuntimeException;

    invoke-direct/range {v18 .. v18}, Ljava/lang/RuntimeException;-><init>()V

    throw v18
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    .end local v13    # "shader":Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$Shader;
    :catch_0
    move-exception v3

    .line 371
    .local v3, "e":Ljava/lang/RuntimeException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->setDefaultShader(Landroid/content/Context;)V

    .line 372
    throw v3

    .line 278
    .end local v3    # "e":Ljava/lang/RuntimeException;
    .restart local v13    # "shader":Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$Shader;
    :pswitch_0
    const/16 v18, 0x0

    :try_start_1
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->usesNonDefaultShader:Z

    .line 279
    const/16 v18, 0x2600

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->firstPassFiltering:I

    .line 280
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->scale:I

    .line 281
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->useFBO:Z

    .line 321
    :goto_0
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    invoke-static/range {v18 .. v21}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    .line 323
    sget v19, Lcom/nostalgiaemulators/framework/R$raw;->default_vertex:I

    .line 322
    invoke-static/range {v18 .. v19}, Lcom/nostalgiaemulators/framework/utils/FileUtils;->loadTextFromResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v16

    .line 324
    .local v16, "vertex":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    .line 325
    sget v19, Lcom/nostalgiaemulators/framework/R$raw;->default_fragment:I

    .line 324
    invoke-static/range {v18 .. v19}, Lcom/nostalgiaemulators/framework/utils/FileUtils;->loadTextFromResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    .line 326
    .local v6, "fragment":Ljava/lang/String;
    const v18, 0x8b31

    move/from16 v0, v18

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->loadShader(ILjava/lang/String;)I

    move-result v17

    .line 327
    .local v17, "vertexShader":I
    const v18, 0x8b30

    move/from16 v0, v18

    invoke-static {v0, v6}, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->loadShader(ILjava/lang/String;)I

    move-result v7

    .line 329
    .local v7, "fragmentShader":I
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->defaultProgram:I

    .line 330
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->defaultProgram:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v0, v7}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 331
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->defaultProgram:I

    move/from16 v18, v0

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 332
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->defaultProgram:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 333
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v9, v0, [I

    .line 334
    .local v9, "linkStatus":[I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->defaultProgram:I

    move/from16 v18, v0

    const v19, 0x8b82

    .line 335
    const/16 v20, 0x0

    .line 334
    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v9, v2}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 337
    const/16 v18, 0x0

    aget v18, v9, v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 338
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->defaultProgram:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v11

    .line 339
    .local v11, "log":Ljava/lang/String;
    new-instance v18, Ljava/lang/RuntimeException;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "glLinkProgram failed. "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 340
    const-string v20, "#"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 339
    invoke-direct/range {v18 .. v19}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 284
    .end local v6    # "fragment":Ljava/lang/String;
    .end local v7    # "fragmentShader":I
    .end local v9    # "linkStatus":[I
    .end local v11    # "log":Ljava/lang/String;
    .end local v16    # "vertex":Ljava/lang/String;
    .end local v17    # "vertexShader":I
    :pswitch_1
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->usesNonDefaultShader:Z

    .line 285
    const/16 v18, 0x2601

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->firstPassFiltering:I

    .line 286
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->scale:I

    .line 287
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->useFBO:Z

    goto/16 :goto_0

    .line 290
    :pswitch_2
    sget v18, Lcom/nostalgiaemulators/framework/R$raw;->supereagle:I

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->glslResId:I

    .line 291
    const/16 v18, 0x2600

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->firstPassFiltering:I

    .line 292
    const/16 v18, 0x2601

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->filtering:I

    .line 293
    const/16 v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->scale:I

    .line 294
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->useFBO:Z

    goto/16 :goto_0

    .line 297
    :pswitch_3
    sget v18, Lcom/nostalgiaemulators/framework/R$raw;->scale2x:I

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->glslResId:I

    .line 298
    const/16 v18, 0x2600

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->firstPassFiltering:I

    .line 299
    const/16 v18, 0x2601

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->filtering:I

    .line 300
    const/16 v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->scale:I

    .line 301
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->useFBO:Z

    goto/16 :goto_0

    .line 304
    :pswitch_4
    sget v18, Lcom/nostalgiaemulators/framework/R$raw;->scale2xhq:I

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->glslResId:I

    .line 305
    const/16 v18, 0x2600

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->firstPassFiltering:I

    .line 306
    const/16 v18, 0x2601

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->filtering:I

    .line 307
    const/16 v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->scale:I

    .line 308
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->useFBO:Z

    goto/16 :goto_0

    .line 311
    :pswitch_5
    sget v18, Lcom/nostalgiaemulators/framework/R$raw;->super2xsai:I

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->glslResId:I

    .line 312
    const/16 v18, 0x2600

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->firstPassFiltering:I

    .line 313
    const/16 v18, 0x2601

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->filtering:I

    .line 314
    const/16 v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->scale:I

    .line 315
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->useFBO:Z

    goto/16 :goto_0

    .line 343
    .restart local v6    # "fragment":Ljava/lang/String;
    .restart local v7    # "fragmentShader":I
    .restart local v9    # "linkStatus":[I
    .restart local v16    # "vertex":Ljava/lang/String;
    .restart local v17    # "vertexShader":I
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->usesNonDefaultShader:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 344
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->firstPassProgram:I

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    .line 346
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->glslResId:I

    move/from16 v19, v0

    .line 345
    invoke-static/range {v18 .. v19}, Lcom/nostalgiaemulators/framework/utils/FileUtils;->loadTextFromResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    .line 347
    .local v8, "glsl":Ljava/lang/String;
    new-instance v12, Lcom/nostalgiaemulators/framework/utils/GLSLParser;

    invoke-direct {v12, v8}, Lcom/nostalgiaemulators/framework/utils/GLSLParser;-><init>(Ljava/lang/String;)V

    .line 348
    .local v12, "parser":Lcom/nostalgiaemulators/framework/utils/GLSLParser;
    invoke-virtual {v12}, Lcom/nostalgiaemulators/framework/utils/GLSLParser;->getVertexShader()Ljava/lang/String;

    move-result-object v14

    .line 349
    .local v14, "v":Ljava/lang/String;
    invoke-virtual {v12}, Lcom/nostalgiaemulators/framework/utils/GLSLParser;->getFragmentShader()Ljava/lang/String;

    move-result-object v4

    .line 350
    .local v4, "f":Ljava/lang/String;
    const v18, 0x8b31

    move/from16 v0, v18

    invoke-static {v0, v14}, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->loadShader(ILjava/lang/String;)I

    move-result v15

    .line 351
    .local v15, "vShader":I
    const v18, 0x8b30

    move/from16 v0, v18

    invoke-static {v0, v4}, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->loadShader(ILjava/lang/String;)I

    move-result v5

    .line 352
    .local v5, "fShader":I
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->firstPassProgram:I

    .line 353
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->firstPassProgram:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v0, v5}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 354
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->firstPassProgram:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v0, v15}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 355
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->firstPassProgram:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 356
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v10, v0, [I

    .line 357
    .local v10, "linkStatus2":[I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->firstPassProgram:I

    move/from16 v18, v0

    .line 358
    const v19, 0x8b82

    const/16 v20, 0x0

    .line 357
    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v10, v2}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 360
    const/16 v18, 0x0

    aget v18, v10, v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    .line 362
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->firstPassProgram:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v11

    .line 363
    .restart local v11    # "log":Ljava/lang/String;
    new-instance v18, Ljava/lang/RuntimeException;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "glLinkProgram failed. "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 364
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "#"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 363
    invoke-direct/range {v18 .. v19}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 368
    .end local v4    # "f":Ljava/lang/String;
    .end local v5    # "fShader":I
    .end local v8    # "glsl":Ljava/lang/String;
    .end local v10    # "linkStatus2":[I
    .end local v11    # "log":Ljava/lang/String;
    .end local v12    # "parser":Lcom/nostalgiaemulators/framework/utils/GLSLParser;
    .end local v14    # "v":Ljava/lang/String;
    .end local v15    # "vShader":I
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->initTextures()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 374
    return-void

    .line 276
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

.method public setQuality(I)V
    .locals 1
    .param p1, "quality"    # I

    .prologue
    .line 113
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->delayPerFrame:I

    .line 114
    return-void

    .line 113
    :cond_0
    const/16 v0, 0x28

    goto :goto_0
.end method
