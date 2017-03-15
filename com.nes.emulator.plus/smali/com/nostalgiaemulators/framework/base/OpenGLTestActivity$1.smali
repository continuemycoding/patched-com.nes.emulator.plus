.class Lcom/nostalgiaemulators/framework/base/OpenGLTestActivity$1;
.super Ljava/lang/Object;
.source "OpenGLTestActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostalgiaemulators/framework/base/OpenGLTestActivity;->onDetected(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nostalgiaemulators/framework/base/OpenGLTestActivity;

.field private final synthetic val$i:I


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/base/OpenGLTestActivity;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestActivity$1;->this$0:Lcom/nostalgiaemulators/framework/base/OpenGLTestActivity;

    iput p2, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestActivity$1;->val$i:I

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestActivity$1;->this$0:Lcom/nostalgiaemulators/framework/base/OpenGLTestActivity;

    iget v1, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestActivity$1;->val$i:I

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/base/OpenGLTestActivity;->setResult(I)V

    .line 39
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestActivity$1;->this$0:Lcom/nostalgiaemulators/framework/base/OpenGLTestActivity;

    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/base/OpenGLTestActivity;->finish()V

    .line 40
    return-void
.end method
