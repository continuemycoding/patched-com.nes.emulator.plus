.class public interface abstract Lcom/nostalgiaemulators/framework/EmulatorInfo;
.super Ljava/lang/Object;
.source "EmulatorInfo.java"


# virtual methods
.method public abstract getAvailableGfxProfiles()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nostalgiaemulators/framework/GfxProfile;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAvailableSfxProfiles()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nostalgiaemulators/framework/SfxProfile;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCheatInvalidCharsRegex()Ljava/lang/String;
.end method

.method public abstract getDefaultGfxProfile()Lcom/nostalgiaemulators/framework/GfxProfile;
.end method

.method public abstract getDefaultKeyboardProfile()Lcom/nostalgiaemulators/framework/KeyboardProfile;
.end method

.method public abstract getDefaultSfxProfile()Lcom/nostalgiaemulators/framework/SfxProfile;
.end method

.method public abstract getDeviceKeyboardCodes()[I
.end method

.method public abstract getDeviceKeyboardDescriptions()[Ljava/lang/String;
.end method

.method public abstract getDeviceKeyboardNames()[Ljava/lang/String;
.end method

.method public abstract getKeyMapping()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNumQualityLevels()I
.end method

.method public abstract hasZapper()Z
.end method

.method public abstract isMultiPlayerSupported()Z
.end method

.method public abstract supportsRawCheats()Z
.end method
