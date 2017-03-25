.class Lcom/xiaoqi/gamepad/sdk/AliasMapper;
.super Ljava/lang/Object;
.source "AliasMapper.java"


# instance fields
.field private axisMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;",
            ">;"
        }
    .end annotation
.end field

.field private btnMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaoqi/gamepad/sdk/AliasMapper;->btnMapping:Ljava/util/HashMap;

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaoqi/gamepad/sdk/AliasMapper;->axisMapping:Ljava/util/HashMap;

    .line 9
    return-void
.end method


# virtual methods
.method public getAxis(Ljava/lang/String;Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;)Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "num"    # Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/AliasMapper;->axisMapping:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    return-object v0
.end method

.method public getButton(Ljava/lang/String;Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;)Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "num"    # Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/AliasMapper;->btnMapping:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    return-object v0
.end method

.method public setAxisAlias(Ljava/lang/String;Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;)V
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "code"    # Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    .prologue
    .line 23
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 24
    invoke-static {}, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;->values()[Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

    move-result-object v1

    .line 25
    .local v1, "numbers":[Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_1

    .line 29
    .end local v0    # "i":I
    .end local v1    # "numbers":[Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;
    :cond_0
    return-void

    .line 26
    .restart local v0    # "i":I
    .restart local v1    # "numbers":[Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;
    :cond_1
    aget-object v2, v1, v0

    invoke-virtual {p0, p1, p2, v2}, Lcom/xiaoqi/gamepad/sdk/AliasMapper;->setAxisAlias(Ljava/lang/String;Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;)V

    .line 25
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setAxisAlias(Ljava/lang/String;Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;)V
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "code"    # Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;
    .param p3, "num"    # Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/AliasMapper;->axisMapping:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    return-void
.end method

.method public setButtonAlias(Ljava/lang/String;Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;)V
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "code"    # Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    .prologue
    .line 14
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 15
    invoke-static {}, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;->values()[Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

    move-result-object v1

    .line 16
    .local v1, "numbers":[Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_1

    .line 20
    .end local v0    # "i":I
    .end local v1    # "numbers":[Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;
    :cond_0
    return-void

    .line 17
    .restart local v0    # "i":I
    .restart local v1    # "numbers":[Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;
    :cond_1
    aget-object v2, v1, v0

    invoke-virtual {p0, p1, p2, v2}, Lcom/xiaoqi/gamepad/sdk/AliasMapper;->setButtonAlias(Ljava/lang/String;Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;)V

    .line 16
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setButtonAlias(Ljava/lang/String;Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;)V
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "code"    # Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;
    .param p3, "num"    # Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/AliasMapper;->btnMapping:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    return-void
.end method
