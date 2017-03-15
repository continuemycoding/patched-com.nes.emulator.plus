.class Lcom/nostalgiaemulators/framework/base/MigrationManager$GamePrefMigrator$1;
.super Ljava/lang/Object;
.source "MigrationManager.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostalgiaemulators/framework/base/MigrationManager$GamePrefMigrator;->doImport(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nostalgiaemulators/framework/base/MigrationManager$GamePrefMigrator;

.field private final synthetic val$importSuffix:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/base/MigrationManager$GamePrefMigrator;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/base/MigrationManager$GamePrefMigrator$1;->this$1:Lcom/nostalgiaemulators/framework/base/MigrationManager$GamePrefMigrator;

    iput-object p2, p0, Lcom/nostalgiaemulators/framework/base/MigrationManager$GamePrefMigrator$1;->val$importSuffix:Ljava/lang/String;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/MigrationManager$GamePrefMigrator$1;->val$importSuffix:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
