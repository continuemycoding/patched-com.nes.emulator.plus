.class public Lcom/nostalgiaemulators/framework/base/MigrationManager;
.super Ljava/lang/Object;
.source "MigrationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostalgiaemulators/framework/base/MigrationManager$GamePrefMigrator;,
        Lcom/nostalgiaemulators/framework/base/MigrationManager$GeneralPrefMigrator;,
        Lcom/nostalgiaemulators/framework/base/MigrationManager$SaveStatesMigrator;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doExport(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "baseDir"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-static {}, Lcom/nostalgiaemulators/framework/base/MigrationManager;->getMigrators()[Lcom/nostalgiaemulators/framework/base/Migrator;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 44
    return-void

    .line 41
    :cond_0
    aget-object v0, v2, v1

    .line 42
    .local v0, "migrator":Lcom/nostalgiaemulators/framework/base/Migrator;
    invoke-interface {v0, p0, p1}, Lcom/nostalgiaemulators/framework/base/Migrator;->doExport(Landroid/content/Context;Ljava/lang/String;)V

    .line 41
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static doImport(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "baseDir"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-static {}, Lcom/nostalgiaemulators/framework/base/MigrationManager;->getMigrators()[Lcom/nostalgiaemulators/framework/base/Migrator;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 50
    return-void

    .line 47
    :cond_0
    aget-object v0, v2, v1

    .line 48
    .local v0, "migrator":Lcom/nostalgiaemulators/framework/base/Migrator;
    invoke-interface {v0, p0, p1}, Lcom/nostalgiaemulators/framework/base/Migrator;->doImport(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getMigrators()[Lcom/nostalgiaemulators/framework/base/Migrator;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 53
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/nostalgiaemulators/framework/base/Migrator;

    const/4 v1, 0x0

    new-instance v2, Lcom/nostalgiaemulators/framework/base/MigrationManager$SaveStatesMigrator;

    invoke-direct {v2, v3}, Lcom/nostalgiaemulators/framework/base/MigrationManager$SaveStatesMigrator;-><init>(Lcom/nostalgiaemulators/framework/base/MigrationManager$SaveStatesMigrator;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 54
    new-instance v2, Lcom/nostalgiaemulators/framework/base/MigrationManager$GeneralPrefMigrator;

    invoke-direct {v2}, Lcom/nostalgiaemulators/framework/base/MigrationManager$GeneralPrefMigrator;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/nostalgiaemulators/framework/base/MigrationManager$GamePrefMigrator;

    invoke-direct {v2, v3}, Lcom/nostalgiaemulators/framework/base/MigrationManager$GamePrefMigrator;-><init>(Lcom/nostalgiaemulators/framework/base/MigrationManager$GamePrefMigrator;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 55
    new-instance v2, Lcom/nostalgiaemulators/framework/KeyboardProfile$PreferenceMigrator;

    invoke-direct {v2}, Lcom/nostalgiaemulators/framework/KeyboardProfile$PreferenceMigrator;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 56
    new-instance v2, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$PreferenceMigrator;

    invoke-direct {v2}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$PreferenceMigrator;-><init>()V

    aput-object v2, v0, v1

    .line 53
    return-object v0
.end method
