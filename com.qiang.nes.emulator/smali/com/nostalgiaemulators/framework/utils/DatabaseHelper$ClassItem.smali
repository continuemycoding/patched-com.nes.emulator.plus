.class Lcom/nostalgiaemulators/framework/utils/DatabaseHelper$ClassItem;
.super Ljava/lang/Object;
.source "DatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClassItem"
.end annotation


# instance fields
.field classes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field columns:[Lcom/nostalgiaemulators/framework/utils/annotations/Column;

.field fields:[Ljava/lang/reflect/Field;

.field names:[Ljava/lang/String;

.field objsFromObjectFromOtherTable:[Lcom/nostalgiaemulators/framework/utils/annotations/ObjectFromOtherTable;

.field primaryKeyIdx:I

.field table:Lcom/nostalgiaemulators/framework/utils/annotations/Table;

.field tableName:Ljava/lang/String;

.field final synthetic this$0:Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;


# direct methods
.method public constructor <init>(Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;Ljava/lang/Class;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    .line 745
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper$ClassItem;->this$0:Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 736
    iput-object v5, p0, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper$ClassItem;->fields:[Ljava/lang/reflect/Field;

    .line 737
    iput-object v5, p0, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper$ClassItem;->columns:[Lcom/nostalgiaemulators/framework/utils/annotations/Column;

    .line 739
    iput-object v5, p0, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper$ClassItem;->table:Lcom/nostalgiaemulators/framework/utils/annotations/Table;

    .line 740
    const-string v4, ""

    iput-object v4, p0, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper$ClassItem;->tableName:Ljava/lang/String;

    .line 741
    iput-object v5, p0, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper$ClassItem;->classes:[Ljava/lang/Class;

    .line 742
    iput-object v5, p0, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper$ClassItem;->names:[Ljava/lang/String;

    .line 743
    const/4 v4, -0x1

    iput v4, p0, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper$ClassItem;->primaryKeyIdx:I

    .line 746
    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    iput-object v4, p0, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper$ClassItem;->fields:[Ljava/lang/reflect/Field;

    .line 747
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper$ClassItem;->fields:[Ljava/lang/reflect/Field;

    array-length v4, v4

    new-array v4, v4, [Lcom/nostalgiaemulators/framework/utils/annotations/Column;

    iput-object v4, p0, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper$ClassItem;->columns:[Lcom/nostalgiaemulators/framework/utils/annotations/Column;

    .line 748
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper$ClassItem;->fields:[Ljava/lang/reflect/Field;

    array-length v4, v4

    new-array v4, v4, [Lcom/nostalgiaemulators/framework/utils/annotations/ObjectFromOtherTable;

    iput-object v4, p0, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper$ClassItem;->objsFromObjectFromOtherTable:[Lcom/nostalgiaemulators/framework/utils/annotations/ObjectFromOtherTable;

    .line 749
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper$ClassItem;->fields:[Ljava/lang/reflect/Field;

    array-length v4, v4

    new-array v4, v4, [Ljava/lang/Class;

    iput-object v4, p0, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper$ClassItem;->classes:[Ljava/lang/Class;

    .line 750
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper$ClassItem;->fields:[Ljava/lang/reflect/Field;

    array-length v4, v4

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper$ClassItem;->names:[Ljava/lang/String;

    .line 751
    const-class v4, Lcom/nostalgiaemulators/framework/utils/annotations/Table;

    invoke-virtual {p2, v4}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/nostalgiaemulators/framework/utils/annotations/Table;

    iput-object v4, p0, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper$ClassItem;->table:Lcom/nostalgiaemulators/framework/utils/annotations/Table;

    .line 752
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper$ClassItem;->table:Lcom/nostalgiaemulators/framework/utils/annotations/Table;

    invoke-interface {v4}, Lcom/nostalgiaemulators/framework/utils/annotations/Table;->tableName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper$ClassItem;->tableName:Ljava/lang/String;

    .line 753
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper$ClassItem;->tableName:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    :goto_0
    iput-object v4, p0, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper$ClassItem;->tableName:Ljava/lang/String;

    .line 755
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper$ClassItem;->fields:[Ljava/lang/reflect/Field;

    array-length v4, v4

    if-lt v2, v4, :cond_1

    .line 778
    return-void

    .line 753
    .end local v2    # "i":I
    :cond_0
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper$ClassItem;->tableName:Ljava/lang/String;

    goto :goto_0

    .line 756
    .restart local v2    # "i":I
    :cond_1
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper$ClassItem;->fields:[Ljava/lang/reflect/Field;

    aget-object v1, v4, v2

    .line 757
    .local v1, "f":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 758
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper$ClassItem;->columns:[Lcom/nostalgiaemulators/framework/utils/annotations/Column;

    .line 759
    const-class v5, Lcom/nostalgiaemulators/framework/utils/annotations/Column;

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/nostalgiaemulators/framework/utils/annotations/Column;

    .line 758
    aput-object v0, v4, v2

    .line 761
    .local v0, "column":Lcom/nostalgiaemulators/framework/utils/annotations/Column;
    if-eqz v0, :cond_2

    .line 762
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper$ClassItem;->classes:[Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v4, v2

    .line 763
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper$ClassItem;->names:[Ljava/lang/String;

    invoke-interface {v0}, Lcom/nostalgiaemulators/framework/utils/annotations/Column;->columnName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    .line 764
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper$ClassItem;->names:[Ljava/lang/String;

    iget-object v4, p0, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper$ClassItem;->names:[Ljava/lang/String;

    aget-object v4, v4, v2

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    :goto_2
    aput-object v4, v5, v2

    .line 766
    invoke-interface {v0}, Lcom/nostalgiaemulators/framework/utils/annotations/Column;->isPrimaryKey()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 767
    iput v2, p0, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper$ClassItem;->primaryKeyIdx:I

    .line 772
    :cond_2
    const-class v4, Lcom/nostalgiaemulators/framework/utils/annotations/ObjectFromOtherTable;

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lcom/nostalgiaemulators/framework/utils/annotations/ObjectFromOtherTable;

    .line 774
    .local v3, "objectFromOtherTable":Lcom/nostalgiaemulators/framework/utils/annotations/ObjectFromOtherTable;
    if-eqz v3, :cond_3

    .line 775
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper$ClassItem;->objsFromObjectFromOtherTable:[Lcom/nostalgiaemulators/framework/utils/annotations/ObjectFromOtherTable;

    aput-object v3, v4, v2

    .line 755
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 764
    .end local v3    # "objectFromOtherTable":Lcom/nostalgiaemulators/framework/utils/annotations/ObjectFromOtherTable;
    :cond_4
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper$ClassItem;->names:[Ljava/lang/String;

    aget-object v4, v4, v2

    goto :goto_2
.end method
