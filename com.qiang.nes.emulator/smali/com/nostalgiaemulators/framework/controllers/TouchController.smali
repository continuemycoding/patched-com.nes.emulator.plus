.class public Lcom/nostalgiaemulators/framework/controllers/TouchController;
.super Ljava/lang/Object;
.source "TouchController.java"

# interfaces
.implements Lcom/nostalgiaemulators/framework/EmulatorController;
.implements Lcom/nostalgiaemulators/framework/ui/multitouchbutton/OnMultitouchEventListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "com.nostalgiaemulators.framework.controllers.TouchController"


# instance fields
.field aTurbo:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;

.field abButton:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;

.field bTurbo:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;

.field emulator:Lcom/nostalgiaemulators/framework/Emulator;

.field emulatorActivity:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

.field fastForward:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;

.field private hidden:Z

.field mapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field multitouchLayer:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;

.field muteIc:Landroid/widget/ImageView;

.field ntscIc:Landroid/widget/ImageView;

.field palIc:Landroid/widget/ImageView;

.field port:I

.field remoteIc:Landroid/widget/ImageView;

.field resIdMapping:Landroid/util/SparseIntArray;

.field view:Landroid/view/View;

.field zapperIc:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/nostalgiaemulators/framework/base/EmulatorActivity;)V
    .locals 1
    .param p1, "emulatorActivity"    # Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->resIdMapping:Landroid/util/SparseIntArray;

    .line 323
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->hidden:Z

    .line 49
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->emulatorActivity:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    .line 50
    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 22

    .prologue
    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->emulatorActivity:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    move-object/from16 v18, v0

    .line 107
    const-string v19, "layout_inflater"

    invoke-virtual/range {v18 .. v19}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 106
    check-cast v8, Landroid/view/LayoutInflater;

    .line 108
    .local v8, "inflater":Landroid/view/LayoutInflater;
    sget v18, Lcom/nostalgiaemulators/framework/R$layout;->controler_layout:I

    const/16 v19, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 110
    .local v9, "layout":Landroid/view/View;
    sget v18, Lcom/nostalgiaemulators/framework/R$id;->touch_layer:I

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;

    .line 109
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nostalgiaemulators/framework/controllers/TouchController;->multitouchLayer:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->multitouchLayer:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;

    move-object/from16 v18, v0

    .line 112
    sget v19, Lcom/nostalgiaemulators/framework/R$id;->button_up:I

    invoke-virtual/range {v18 .. v19}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 111
    check-cast v15, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;

    .line 113
    .local v15, "up":Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;
    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;->setOnMultitouchEventlistener(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/OnMultitouchEventListener;)V

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->resIdMapping:Landroid/util/SparseIntArray;

    move-object/from16 v19, v0

    .line 115
    sget v20, Lcom/nostalgiaemulators/framework/R$id;->button_up:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->mapping:Ljava/util/Map;

    move-object/from16 v18, v0

    const/16 v21, 0x6

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->multitouchLayer:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;

    move-object/from16 v18, v0

    .line 117
    sget v19, Lcom/nostalgiaemulators/framework/R$id;->button_down:I

    invoke-virtual/range {v18 .. v19}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 116
    check-cast v6, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;

    .line 118
    .local v6, "down":Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;
    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;->setOnMultitouchEventlistener(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/OnMultitouchEventListener;)V

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->resIdMapping:Landroid/util/SparseIntArray;

    move-object/from16 v19, v0

    sget v20, Lcom/nostalgiaemulators/framework/R$id;->button_down:I

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->mapping:Ljava/util/Map;

    move-object/from16 v18, v0

    const/16 v21, 0x7

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 119
    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->multitouchLayer:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;

    move-object/from16 v18, v0

    .line 122
    sget v19, Lcom/nostalgiaemulators/framework/R$id;->button_left:I

    invoke-virtual/range {v18 .. v19}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 121
    check-cast v10, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;

    .line 123
    .local v10, "left":Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;
    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;->setOnMultitouchEventlistener(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/OnMultitouchEventListener;)V

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->resIdMapping:Landroid/util/SparseIntArray;

    move-object/from16 v19, v0

    sget v20, Lcom/nostalgiaemulators/framework/R$id;->button_left:I

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->mapping:Ljava/util/Map;

    move-object/from16 v18, v0

    const/16 v21, 0x8

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 124
    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->multitouchLayer:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;

    move-object/from16 v18, v0

    .line 127
    sget v19, Lcom/nostalgiaemulators/framework/R$id;->button_right:I

    invoke-virtual/range {v18 .. v19}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 126
    check-cast v12, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;

    .line 128
    .local v12, "right":Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;
    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;->setOnMultitouchEventlistener(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/OnMultitouchEventListener;)V

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->resIdMapping:Landroid/util/SparseIntArray;

    move-object/from16 v19, v0

    sget v20, Lcom/nostalgiaemulators/framework/R$id;->button_right:I

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->mapping:Ljava/util/Map;

    move-object/from16 v18, v0

    const/16 v21, 0x9

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 129
    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->multitouchLayer:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;

    move-object/from16 v18, v0

    .line 132
    sget v19, Lcom/nostalgiaemulators/framework/R$id;->button_a:I

    invoke-virtual/range {v18 .. v19}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 131
    check-cast v3, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;

    .line 133
    .local v3, "a":Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;->setOnMultitouchEventlistener(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/OnMultitouchEventListener;)V

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->resIdMapping:Landroid/util/SparseIntArray;

    move-object/from16 v19, v0

    sget v20, Lcom/nostalgiaemulators/framework/R$id;->button_a:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->mapping:Ljava/util/Map;

    move-object/from16 v18, v0

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->multitouchLayer:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;

    move-object/from16 v18, v0

    .line 136
    sget v19, Lcom/nostalgiaemulators/framework/R$id;->button_b:I

    invoke-virtual/range {v18 .. v19}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 135
    check-cast v4, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;

    .line 137
    .local v4, "b":Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;->setOnMultitouchEventlistener(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/OnMultitouchEventListener;)V

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->resIdMapping:Landroid/util/SparseIntArray;

    move-object/from16 v19, v0

    sget v20, Lcom/nostalgiaemulators/framework/R$id;->button_b:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->mapping:Ljava/util/Map;

    move-object/from16 v18, v0

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->multitouchLayer:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;

    move-object/from16 v18, v0

    .line 140
    sget v19, Lcom/nostalgiaemulators/framework/R$id;->button_a_turbo:I

    invoke-virtual/range {v18 .. v19}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;

    .line 139
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nostalgiaemulators/framework/controllers/TouchController;->aTurbo:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->aTurbo:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;->setOnMultitouchEventlistener(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/OnMultitouchEventListener;)V

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->resIdMapping:Landroid/util/SparseIntArray;

    move-object/from16 v19, v0

    sget v20, Lcom/nostalgiaemulators/framework/R$id;->button_a_turbo:I

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->mapping:Ljava/util/Map;

    move-object/from16 v18, v0

    const/16 v21, 0xff

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 142
    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->multitouchLayer:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;

    move-object/from16 v18, v0

    .line 145
    sget v19, Lcom/nostalgiaemulators/framework/R$id;->button_b_turbo:I

    invoke-virtual/range {v18 .. v19}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;

    .line 144
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nostalgiaemulators/framework/controllers/TouchController;->bTurbo:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->bTurbo:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;->setOnMultitouchEventlistener(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/OnMultitouchEventListener;)V

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->resIdMapping:Landroid/util/SparseIntArray;

    move-object/from16 v19, v0

    sget v20, Lcom/nostalgiaemulators/framework/R$id;->button_b_turbo:I

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->mapping:Ljava/util/Map;

    move-object/from16 v18, v0

    const/16 v21, 0x100

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 147
    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->multitouchLayer:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;

    move-object/from16 v18, v0

    .line 150
    sget v19, Lcom/nostalgiaemulators/framework/R$id;->button_ab:I

    invoke-virtual/range {v18 .. v19}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;

    .line 149
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nostalgiaemulators/framework/controllers/TouchController;->abButton:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->multitouchLayer:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;

    move-object/from16 v18, v0

    .line 152
    sget v19, Lcom/nostalgiaemulators/framework/R$id;->button_fast_forward:I

    invoke-virtual/range {v18 .. v19}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;

    .line 151
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nostalgiaemulators/framework/controllers/TouchController;->fastForward:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->fastForward:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;

    move-object/from16 v18, v0

    .line 154
    new-instance v19, Lcom/nostalgiaemulators/framework/controllers/TouchController$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/nostalgiaemulators/framework/controllers/TouchController$1;-><init>(Lcom/nostalgiaemulators/framework/controllers/TouchController;)V

    invoke-virtual/range {v18 .. v19}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;->setOnMultitouchEventlistener(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/OnMultitouchEventListener;)V

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->emulatorActivity:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-static/range {v18 .. v19}, Lcom/nostalgiaemulators/framework/utils/FontUtil;->createFontFace(Landroid/content/Context;Z)Landroid/graphics/Typeface;

    move-result-object v7

    .line 166
    .local v7, "font":Landroid/graphics/Typeface;
    sget v18, Lcom/nostalgiaemulators/framework/R$id;->button_select:I

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 165
    check-cast v13, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchButton;

    .line 168
    .local v13, "select":Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchButton;
    if-eqz v13, :cond_0

    .line 169
    invoke-virtual {v13, v7}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 170
    new-instance v18, Lcom/nostalgiaemulators/framework/controllers/TouchController$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/nostalgiaemulators/framework/controllers/TouchController$2;-><init>(Lcom/nostalgiaemulators/framework/controllers/TouchController;)V

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchButton;->setOnMultitouchEventlistener(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/OnMultitouchEventListener;)V

    .line 185
    :cond_0
    sget v18, Lcom/nostalgiaemulators/framework/R$id;->button_start:I

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 184
    check-cast v14, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchButton;

    .line 186
    .local v14, "start":Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchButton;
    invoke-virtual {v14, v7}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 187
    new-instance v18, Lcom/nostalgiaemulators/framework/controllers/TouchController$3;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/nostalgiaemulators/framework/controllers/TouchController$3;-><init>(Lcom/nostalgiaemulators/framework/controllers/TouchController;)V

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchButton;->setOnMultitouchEventlistener(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/OnMultitouchEventListener;)V

    .line 200
    sget v18, Lcom/nostalgiaemulators/framework/R$id;->button_menu:I

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 199
    check-cast v11, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;

    .line 201
    .local v11, "menu":Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;
    new-instance v18, Lcom/nostalgiaemulators/framework/controllers/TouchController$4;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/nostalgiaemulators/framework/controllers/TouchController$4;-><init>(Lcom/nostalgiaemulators/framework/controllers/TouchController;)V

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;->setOnMultitouchEventlistener(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/OnMultitouchEventListener;)V

    .line 210
    sget v18, Lcom/nostalgiaemulators/framework/R$id;->button_center:I

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 211
    .local v5, "center":Landroid/view/View;
    const/16 v18, 0xa

    move/from16 v0, v18

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v11, v17, v18

    const/16 v18, 0x1

    aput-object v13, v17, v18

    const/16 v18, 0x2

    aput-object v14, v17, v18

    const/16 v18, 0x3

    aput-object v15, v17, v18

    const/16 v18, 0x4

    aput-object v6, v17, v18

    const/16 v18, 0x5

    aput-object v12, v17, v18

    const/16 v18, 0x6

    aput-object v10, v17, v18

    const/16 v18, 0x7

    .line 212
    aput-object v3, v17, v18

    const/16 v18, 0x8

    aput-object v4, v17, v18

    const/16 v18, 0x9

    aput-object v5, v17, v18

    .line 215
    .local v17, "views":[Landroid/view/View;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v19, v0

    const/16 v18, 0x0

    :goto_0
    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_1

    .line 221
    sget v18, Lcom/nostalgiaemulators/framework/R$id;->ic_game_remote:I

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nostalgiaemulators/framework/controllers/TouchController;->remoteIc:Landroid/widget/ImageView;

    .line 222
    sget v18, Lcom/nostalgiaemulators/framework/R$id;->ic_game_zapper:I

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nostalgiaemulators/framework/controllers/TouchController;->zapperIc:Landroid/widget/ImageView;

    .line 223
    sget v18, Lcom/nostalgiaemulators/framework/R$id;->ic_game_pal:I

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nostalgiaemulators/framework/controllers/TouchController;->palIc:Landroid/widget/ImageView;

    .line 224
    sget v18, Lcom/nostalgiaemulators/framework/R$id;->ic_game_ntsc:I

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nostalgiaemulators/framework/controllers/TouchController;->ntscIc:Landroid/widget/ImageView;

    .line 225
    sget v18, Lcom/nostalgiaemulators/framework/R$id;->ic_game_muted:I

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nostalgiaemulators/framework/controllers/TouchController;->muteIc:Landroid/widget/ImageView;

    .line 226
    return-object v9

    .line 215
    :cond_1
    aget-object v16, v17, v18

    .line 216
    .local v16, "view":Landroid/view/View;
    if-eqz v16, :cond_2

    .line 217
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 215
    :cond_2
    add-int/lit8 v18, v18, 0x1

    goto :goto_0
.end method


# virtual methods
.method public connectToEmulator(ILcom/nostalgiaemulators/framework/Emulator;)V
    .locals 1
    .param p1, "port"    # I
    .param p2, "emulator"    # Lcom/nostalgiaemulators/framework/Emulator;

    .prologue
    .line 86
    iput-object p2, p0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->emulator:Lcom/nostalgiaemulators/framework/Emulator;

    .line 87
    iput p1, p0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->port:I

    .line 88
    invoke-interface {p2}, Lcom/nostalgiaemulators/framework/Emulator;->getInfo()Lcom/nostalgiaemulators/framework/EmulatorInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/nostalgiaemulators/framework/EmulatorInfo;->getKeyMapping()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->mapping:Ljava/util/Map;

    .line 89
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->view:Landroid/view/View;

    if-nez v0, :cond_0

    .line 232
    invoke-direct {p0}, Lcom/nostalgiaemulators/framework/controllers/TouchController;->createView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->view:Landroid/view/View;

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->view:Landroid/view/View;

    return-object v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 300
    iget-boolean v0, p0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->hidden:Z

    if-nez v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->emulatorActivity:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    new-instance v1, Lcom/nostalgiaemulators/framework/controllers/TouchController$5;

    invoke-direct {v1, p0}, Lcom/nostalgiaemulators/framework/controllers/TouchController$5;-><init>(Lcom/nostalgiaemulators/framework/controllers/TouchController;)V

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 307
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->hidden:Z

    .line 309
    :cond_0
    return-void
.end method

.method isPointerHandled(I)Z
    .locals 1
    .param p1, "pointerId"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->multitouchLayer:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;

    invoke-virtual {v0, p1}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->isPointerHandled(I)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->multitouchLayer:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;

    .line 77
    iput-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->emulatorActivity:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    .line 78
    return-void
.end method

.method public onGamePaused(Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;)V
    .locals 0
    .param p1, "game"    # Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    .prologue
    .line 297
    return-void
.end method

.method public onGameStarted(Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;)V
    .locals 9
    .param p1, "game"    # Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    .prologue
    const/16 v4, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 251
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->emulator:Lcom/nostalgiaemulators/framework/Emulator;

    invoke-interface {v2}, Lcom/nostalgiaemulators/framework/Emulator;->getActiveGfxProfile()Lcom/nostalgiaemulators/framework/GfxProfile;

    move-result-object v0

    .line 252
    .local v0, "gfxProfile":Lcom/nostalgiaemulators/framework/GfxProfile;
    iget-object v7, p0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->zapperIc:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->emulatorActivity:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    .line 253
    iget-object v8, p1, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->checksum:Ljava/lang/String;

    .line 252
    invoke-static {v2, v8}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->isZapperEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 253
    if-eqz v2, :cond_1

    move v2, v3

    .line 252
    :goto_0
    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 254
    iget-object v7, p0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->palIc:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/nostalgiaemulators/framework/GfxProfile;->name:Ljava/lang/String;

    const-string v8, "PAL"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 256
    iget-object v7, p0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->ntscIc:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 257
    iget-object v2, v0, Lcom/nostalgiaemulators/framework/GfxProfile;->name:Ljava/lang/String;

    const-string v8, "NTSC"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    .line 256
    :goto_2
    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 259
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->emulatorActivity:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    invoke-static {v2}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->isWifiServerEnable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 260
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->emulatorActivity:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    invoke-static {v2}, Lcom/nostalgiaemulators/framework/utils/Utils;->isWifiAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v1, v5

    .line 261
    .local v1, "remoteVisible":Z
    :goto_3
    iget-object v7, p0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->remoteIc:Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    move v2, v3

    :goto_4
    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 262
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->muteIc:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->emulatorActivity:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    invoke-static {v7}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->isSoundEnabled(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_6

    :goto_5
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 265
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->emulatorActivity:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    invoke-static {v2}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->isTurboEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 266
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->aTurbo:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;

    invoke-virtual {v2, v3}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;->setVisibility(I)V

    .line 267
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->bTurbo:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;

    invoke-virtual {v2, v3}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;->setVisibility(I)V

    .line 268
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->aTurbo:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;

    invoke-virtual {v2, v5}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;->setEnabled(Z)V

    .line 269
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->bTurbo:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;

    invoke-virtual {v2, v5}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;->setEnabled(Z)V

    .line 278
    :goto_6
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->emulatorActivity:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    invoke-static {v2}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->isFastForwardEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 279
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->fastForward:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;

    invoke-virtual {v2, v3}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;->setVisibility(I)V

    .line 280
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->fastForward:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;

    invoke-virtual {v2, v5}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;->setEnabled(Z)V

    .line 287
    :goto_7
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->abButton:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;

    .line 288
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->emulatorActivity:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    invoke-static {v4}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->isABButtonEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v6, v3

    .line 287
    :cond_0
    invoke-virtual {v2, v6}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;->setVisibility(I)V

    .line 290
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->abButton:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;

    iget-object v4, p0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->emulatorActivity:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    invoke-static {v4}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->isABButtonEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_9

    :goto_8
    invoke-virtual {v2, v5}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;->setEnabled(Z)V

    .line 292
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->multitouchLayer:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;

    invoke-virtual {v2}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->invalidate()V

    .line 293
    return-void

    .end local v1    # "remoteVisible":Z
    :cond_1
    move v2, v4

    .line 253
    goto/16 :goto_0

    :cond_2
    move v2, v4

    .line 255
    goto/16 :goto_1

    :cond_3
    move v2, v4

    .line 257
    goto :goto_2

    :cond_4
    move v1, v3

    .line 258
    goto :goto_3

    .restart local v1    # "remoteVisible":Z
    :cond_5
    move v2, v6

    .line 261
    goto :goto_4

    :cond_6
    move v4, v3

    .line 263
    goto :goto_5

    .line 272
    :cond_7
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->aTurbo:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;

    invoke-virtual {v2, v6}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;->setVisibility(I)V

    .line 273
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->bTurbo:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;

    invoke-virtual {v2, v6}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;->setVisibility(I)V

    .line 274
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->aTurbo:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;

    invoke-virtual {v2, v3}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;->setEnabled(Z)V

    .line 275
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->bTurbo:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;

    invoke-virtual {v2, v3}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;->setEnabled(Z)V

    goto :goto_6

    .line 283
    :cond_8
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->fastForward:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;

    invoke-virtual {v2, v6}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;->setVisibility(I)V

    .line 284
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->fastForward:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;

    invoke-virtual {v2, v3}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;->setEnabled(Z)V

    goto :goto_7

    :cond_9
    move v5, v3

    .line 291
    goto :goto_8
.end method

.method public onMultitouchEnter(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;)V
    .locals 4
    .param p1, "btn"    # Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;

    .prologue
    .line 241
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->emulator:Lcom/nostalgiaemulators/framework/Emulator;

    iget v1, p0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->port:I

    iget-object v2, p0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->resIdMapping:Landroid/util/SparseIntArray;

    invoke-interface {p1}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/nostalgiaemulators/framework/Emulator;->setKeyPressed(IIZ)V

    .line 242
    return-void
.end method

.method public onMultitouchExit(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;)V
    .locals 4
    .param p1, "btn"    # Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;

    .prologue
    .line 246
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->emulator:Lcom/nostalgiaemulators/framework/Emulator;

    iget v1, p0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->port:I

    iget-object v2, p0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->resIdMapping:Landroid/util/SparseIntArray;

    invoke-interface {p1}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/nostalgiaemulators/framework/Emulator;->setKeyPressed(IIZ)V

    .line 247
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->multitouchLayer:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->multitouchLayer:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;

    .line 55
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->emulatorActivity:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    invoke-static {v1}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->getVibrationDuration(Landroid/content/Context;)I

    move-result v1

    .line 54
    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->setVibrationDuration(I)V

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->emulator:Lcom/nostalgiaemulators/framework/Emulator;

    invoke-interface {v0}, Lcom/nostalgiaemulators/framework/Emulator;->resetKeys()V

    .line 59
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->multitouchLayer:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;

    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->reloadTouchProfile()V

    .line 60
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->multitouchLayer:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;

    .line 61
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->emulatorActivity:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    invoke-static {v1}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->getControlsOpacity(Landroid/content/Context;)I

    move-result v1

    .line 60
    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->setOpacity(I)V

    .line 62
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->multitouchLayer:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;

    .line 63
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->emulatorActivity:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    invoke-static {v0}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->isDynamicDPADEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->setEnableStaticDPAD(Z)V

    .line 64
    return-void

    .line 62
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 73
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 312
    iget-boolean v0, p0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->hidden:Z

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->emulatorActivity:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    new-instance v1, Lcom/nostalgiaemulators/framework/controllers/TouchController$6;

    invoke-direct {v1, p0}, Lcom/nostalgiaemulators/framework/controllers/TouchController$6;-><init>(Lcom/nostalgiaemulators/framework/controllers/TouchController;)V

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 319
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nostalgiaemulators/framework/controllers/TouchController;->hidden:Z

    .line 321
    :cond_0
    return-void
.end method
