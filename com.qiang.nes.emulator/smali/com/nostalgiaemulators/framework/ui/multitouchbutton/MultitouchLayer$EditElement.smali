.class Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;
.super Ljava/lang/Object;
.source "MultitouchLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EditElement"
.end annotation


# instance fields
.field boundingbox:Landroid/graphics/RectF;

.field boundingboxHistory:Landroid/graphics/RectF;

.field boundingboxsHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field ids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field isScreenElement:Z

.field private listener:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$OnEditItemClickListener;

.field minimalSize:F

.field movable:Z

.field offsets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field offsetshistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field resizeRects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field private resizingBox:Landroid/graphics/RectF;

.field final synthetic this$0:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;

.field validPosition:Z


# direct methods
.method public constructor <init>(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;IZF)V
    .locals 3
    .param p2, "rid"    # I
    .param p3, "movable"    # Z
    .param p4, "minimalSize"    # F

    .prologue
    const/4 v2, 0x1

    .line 148
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->this$0:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->boundingbox:Landroid/graphics/RectF;

    .line 132
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->ids:Ljava/util/ArrayList;

    .line 133
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->offsets:Ljava/util/ArrayList;

    .line 134
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->resizeRects:Ljava/util/ArrayList;

    .line 136
    iput-boolean v2, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->movable:Z

    .line 137
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->boundingboxHistory:Landroid/graphics/RectF;

    .line 139
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->boundingboxsHistory:Ljava/util/ArrayList;

    .line 140
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->offsetshistory:Ljava/util/ArrayList;

    .line 143
    iput-boolean v2, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->validPosition:Z

    .line 146
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->isScreenElement:Z

    .line 171
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->resizingBox:Landroid/graphics/RectF;

    .line 237
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->listener:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$OnEditItemClickListener;

    .line 149
    # getter for: Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->ridToIdxMap:Landroid/util/SparseIntArray;
    invoke-static {p1}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->access$0(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 151
    .local v0, "idx":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->ids:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->boundingbox:Landroid/graphics/RectF;

    # getter for: Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->boundingBoxs:[Landroid/graphics/Rect;
    invoke-static {p1}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->access$1(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;)[Landroid/graphics/Rect;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 154
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->boundingboxHistory:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->boundingbox:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 157
    :cond_0
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->computeOffsets()V

    .line 158
    iput-boolean p3, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->movable:Z

    .line 159
    iput p4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->minimalSize:F

    .line 160
    return-void
.end method

.method public constructor <init>(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;Landroid/graphics/Rect;)V
    .locals 2
    .param p2, "viewPort"    # Landroid/graphics/Rect;

    .prologue
    const/4 v1, 0x1

    .line 162
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->this$0:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->boundingbox:Landroid/graphics/RectF;

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->ids:Ljava/util/ArrayList;

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->offsets:Ljava/util/ArrayList;

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->resizeRects:Ljava/util/ArrayList;

    .line 136
    iput-boolean v1, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->movable:Z

    .line 137
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->boundingboxHistory:Landroid/graphics/RectF;

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->boundingboxsHistory:Ljava/util/ArrayList;

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->offsetshistory:Ljava/util/ArrayList;

    .line 143
    iput-boolean v1, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->validPosition:Z

    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->isScreenElement:Z

    .line 171
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->resizingBox:Landroid/graphics/RectF;

    .line 237
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->listener:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$OnEditItemClickListener;

    .line 163
    iput-boolean v1, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->isScreenElement:Z

    .line 164
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->boundingbox:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 165
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->boundingboxHistory:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 166
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->computeOffsets()V

    .line 167
    iput-boolean v1, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->movable:Z

    .line 168
    const/high16 v0, 0x43480000    # 200.0f

    iput v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->minimalSize:F

    .line 169
    return-void
.end method

.method static synthetic access$0(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;)Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$OnEditItemClickListener;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->listener:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$OnEditItemClickListener;

    return-object v0
.end method


# virtual methods
.method public add(I)V
    .locals 4
    .param p1, "rid"    # I

    .prologue
    .line 181
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->this$0:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;

    # getter for: Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->ridToIdxMap:Landroid/util/SparseIntArray;
    invoke-static {v2}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->access$0(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;)Landroid/util/SparseIntArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 182
    .local v0, "idx":I
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->ids:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 184
    .local v1, "tmp":Landroid/graphics/RectF;
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->this$0:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;

    # getter for: Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->boundingBoxs:[Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->access$1(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;)[Landroid/graphics/Rect;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 185
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->boundingbox:Landroid/graphics/RectF;

    invoke-virtual {v2, v1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 186
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->boundingboxHistory:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->boundingbox:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 187
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->computeOffsets()V

    .line 188
    return-void
.end method

.method public computeBoundingBox()V
    .locals 7

    .prologue
    .line 209
    iget-boolean v3, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->isScreenElement:Z

    if-nez v3, :cond_0

    .line 210
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->boundingbox:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->this$0:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;

    # getter for: Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->boundingBoxs:[Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->access$1(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;)[Landroid/graphics/Rect;

    move-result-object v5

    iget-object v3, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->ids:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v3, v5, v3

    invoke-virtual {v4, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 212
    iget-object v3, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->ids:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 219
    :cond_0
    return-void

    .line 212
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 213
    .local v0, "id":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->this$0:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;

    # getter for: Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->boundingBoxs:[Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->access$1(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;)[Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v1, v4, v5

    .line 214
    .local v1, "r":Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 215
    .local v2, "tmp":Landroid/graphics/RectF;
    invoke-virtual {v2, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 216
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->boundingbox:Landroid/graphics/RectF;

    invoke-virtual {v4, v2}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    goto :goto_0
.end method

.method public computeOffsets()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 191
    iget-object v3, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->offsets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 193
    iget-boolean v3, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->isScreenElement:Z

    if-eqz v3, :cond_1

    .line 194
    new-instance v1, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->boundingbox:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->boundingbox:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    invoke-direct {v1, v3, v4, v7, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 196
    .local v1, "offset":Landroid/graphics/RectF;
    iget-object v3, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->offsets:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    .end local v1    # "offset":Landroid/graphics/RectF;
    :cond_0
    return-void

    .line 199
    :cond_1
    iget-object v3, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->ids:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 200
    .local v0, "id":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->this$0:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;

    # getter for: Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->boundingBoxs:[Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->access$1(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;)[Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v2, v4, v5

    .line 201
    .local v2, "r":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->boundingbox:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    iget v5, v2, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    .line 202
    iget-object v6, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->boundingbox:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v6

    .line 201
    invoke-direct {v1, v4, v5, v7, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 203
    .restart local v1    # "offset":Landroid/graphics/RectF;
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->offsets:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getResizingBox()Landroid/graphics/RectF;
    .locals 7

    .prologue
    .line 174
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->this$0:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;

    # getter for: Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->resizeIcon:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->access$2(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget-boolean v1, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->isScreenElement:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    div-int v0, v2, v1

    .line 175
    .local v0, "K":I
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->resizingBox:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->boundingbox:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    int-to-float v3, v0

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->boundingbox:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    int-to-float v4, v0

    sub-float/2addr v3, v4

    .line 176
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->boundingbox:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    int-to-float v5, v0

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->boundingbox:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    int-to-float v6, v0

    add-float/2addr v5, v6

    .line 175
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 177
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->resizingBox:Landroid/graphics/RectF;

    return-object v1

    .line 174
    .end local v0    # "K":I
    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public saveHistory()Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;
    .locals 5

    .prologue
    .line 222
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->boundingboxsHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 223
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->offsetshistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 225
    iget-boolean v2, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->isScreenElement:Z

    if-nez v2, :cond_0

    .line 227
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->offsets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 234
    .end local v0    # "i":I
    :cond_0
    return-object p0

    .line 228
    .restart local v0    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->ids:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 229
    .local v1, "id":I
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->boundingboxsHistory:Ljava/util/ArrayList;

    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->this$0:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;

    # getter for: Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->boundingBoxs:[Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->access$1(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;)[Landroid/graphics/Rect;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    iget-object v3, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->offsetshistory:Ljava/util/ArrayList;

    new-instance v4, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->offsets:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/RectF;

    invoke-direct {v4, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setOnClickListener(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$OnEditItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$OnEditItemClickListener;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->listener:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$OnEditItemClickListener;

    .line 241
    return-void
.end method
