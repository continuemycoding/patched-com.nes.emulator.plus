.class public Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostalgiaemulators/framework/utils/DatabaseHelper$ClassItem;
    }
.end annotation


# static fields
.field private static DB_VERSION_CODE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "com.nostalgiaemulators.framework.utils.DatabaseHelper"

.field private static instance:Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;


# instance fields
.field classItems:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/nostalgiaemulators/framework/utils/DatabaseHelper$ClassItem;",
            ">;"
        }
    .end annotation
.end field

.field classes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/16 v0, 0x15

    sput v0, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;->DB_VERSION_CODE:I

    .line 50
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 61
    const-string v2, "db"

    const/4 v3, 0x0

    sget v4, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;->DB_VERSION_CODE:I

    invoke-direct {p0, p1, v2, v3, v4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 45
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    aput-object v3, v2, v1

    const/4 v3, 0x1

    .line 46
    const-class v4, Lcom/nostalgiaemulators/framework/ui/gamegallery/ZipRomFile;

    aput-object v4, v2, v3

    iput-object v2, p0, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;->classes:[Ljava/lang/Class;

    .line 781
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;->classItems:Ljava/util/HashMap;

    .line 63
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;->classes:[Ljava/lang/Class;

    array-length v3, v2

    :goto_0
    if-lt v1, v3, :cond_0

    .line 66
    return-void

    .line 63
    :cond_0
    aget-object v0, v2, v1

    .line 64
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;->classItems:Ljava/util/HashMap;

    new-instance v5, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper$ClassItem;

    invoke-direct {v5, p0, v0}, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper$ClassItem;-><init>(Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;Ljava/lang/Class;)V

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private clearTablesDB(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 9
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 212
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;->classes:[Ljava/lang/Class;

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v5, :cond_0

    .line 225
    return-void

    .line 212
    :cond_0
    aget-object v0, v4, v3

    .line 213
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v6, Lcom/nostalgiaemulators/framework/utils/annotations/Table;

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/nostalgiaemulators/framework/utils/annotations/Table;

    .line 215
    .local v1, "table":Lcom/nostalgiaemulators/framework/utils/annotations/Table;
    if-nez v1, :cond_1

    .line 216
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "class "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 217
    const-string v5, " has not @Table annotation"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 216
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 220
    :cond_1
    invoke-interface {v1}, Lcom/nostalgiaemulators/framework/utils/annotations/Table;->tableName()Ljava/lang/String;

    move-result-object v2

    .line 221
    .local v2, "tableName":Ljava/lang/String;
    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 222
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "DELETE FROM "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 223
    const-string v6, "com.nostalgiaemulators.framework.utils.DatabaseHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "clear table "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private countObjsInDb(Ljava/lang/Class;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I
    .locals 7
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "where"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 486
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;->classItems:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper$ClassItem;

    .line 487
    .local v1, "classItem":Lcom/nostalgiaemulators/framework/utils/DatabaseHelper$ClassItem;
    const/4 v2, -0x1

    .line 489
    .local v2, "count":I
    if-eqz v1, :cond_0

    .line 490
    iget-object v4, v1, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper$ClassItem;->tableName:Ljava/lang/String;

    .line 491
    .local v4, "tableName":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "select count(*) from "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 492
    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 491
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 493
    .local v3, "query":Ljava/lang/String;
    const/4 v0, 0x0

    .line 496
    .local v0, "c":Landroid/database/Cursor;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p2, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 497
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 498
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 501
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 504
    return v2

    .line 500
    :catchall_0
    move-exception v5

    .line 501
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 502
    throw v5

    .line 507
    .end local v0    # "c":Landroid/database/Cursor;
    .end local v3    # "query":Ljava/lang/String;
    .end local v4    # "tableName":Ljava/lang/String;
    :cond_0
    new-instance v5, Ljava/lang/RuntimeException;

    .line 508
    const-string v6, "Wrong obj class (class must have annotation Table)"

    .line 507
    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private getCollectionGenericClass(Ljava/lang/reflect/Field;)Ljava/lang/Class;
    .locals 4
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 181
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 183
    .local v0, "type":Ljava/lang/reflect/Type;
    instance-of v3, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_0

    move-object v1, v0

    .line 184
    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 185
    .local v1, "type2":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 186
    .local v2, "typeArguments":[Ljava/lang/reflect/Type;
    const/4 v3, 0x0

    aget-object v3, v2, v3

    check-cast v3, Ljava/lang/Class;

    .line 189
    .end local v1    # "type2":Ljava/lang/reflect/ParameterizedType;
    .end local v2    # "typeArguments":[Ljava/lang/reflect/Type;
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getCreateSql(Ljava/lang/Class;)Ljava/lang/String;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;->classItems:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper$ClassItem;

    .line 96
    .local v2, "classItem":Lcom/nostalgiaemulators/framework/utils/DatabaseHelper$ClassItem;
    iget-object v12, v2, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper$ClassItem;->tableName:Ljava/lang/String;

    .line 97
    .local v12, "tableName":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 98
    .local v9, "sql":Ljava/lang/StringBuffer;
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "CREATE TABLE "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    const/4 v14, 0x0

    move v15, v14

    :goto_0
    move/from16 v0, v17

    if-lt v15, v0, :cond_0

    .line 175
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->length()I

    move-result v15

    invoke-virtual {v9, v14, v15}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 176
    const-string v14, ");"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    return-object v14

    .line 100
    :cond_0
    aget-object v6, v16, v15

    .line 101
    .local v6, "field":Ljava/lang/reflect/Field;
    const-class v14, Lcom/nostalgiaemulators/framework/utils/annotations/Column;

    invoke-virtual {v6, v14}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/nostalgiaemulators/framework/utils/annotations/Column;

    .line 103
    .local v4, "column":Lcom/nostalgiaemulators/framework/utils/annotations/Column;
    if-eqz v4, :cond_6

    .line 104
    invoke-interface {v4}, Lcom/nostalgiaemulators/framework/utils/annotations/Column;->columnName()Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "cName":Ljava/lang/String;
    const-string v14, ""

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    .line 106
    :cond_1
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v13

    .line 107
    .local v13, "type":Ljava/lang/reflect/Type;
    const/4 v10, 0x1

    .line 108
    .local v10, "supported":Z
    const-string v5, ""

    .line 110
    .local v5, "dbType":Ljava/lang/String;
    const-class v14, Ljava/lang/String;

    if-eq v13, v14, :cond_2

    move-object v14, v13

    check-cast v14, Ljava/lang/Class;

    invoke-virtual {v14}, Ljava/lang/Class;->isEnum()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 111
    :cond_2
    const-string v5, "TEXT"

    .line 126
    :goto_1
    if-eqz v10, :cond_6

    .line 127
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v14, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, " "

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v18, " "

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    invoke-interface {v4}, Lcom/nostalgiaemulators/framework/utils/annotations/Column;->isPrimaryKey()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 130
    const-string v14, "PRIMARY KEY "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    :cond_3
    invoke-interface {v4}, Lcom/nostalgiaemulators/framework/utils/annotations/Column;->allowNull()Z

    move-result v14

    if-nez v14, :cond_4

    .line 134
    const-string v14, "NOT NULL "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    :cond_4
    invoke-interface {v4}, Lcom/nostalgiaemulators/framework/utils/annotations/Column;->unique()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 138
    const-string v14, "UNIQUE "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    :cond_5
    const-string v14, ","

    invoke-virtual {v9, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    .end local v1    # "cName":Ljava/lang/String;
    .end local v5    # "dbType":Ljava/lang/String;
    .end local v10    # "supported":Z
    .end local v13    # "type":Ljava/lang/reflect/Type;
    :cond_6
    const-class v14, Lcom/nostalgiaemulators/framework/utils/annotations/ObjectFromOtherTable;

    invoke-virtual {v6, v14}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v8

    check-cast v8, Lcom/nostalgiaemulators/framework/utils/annotations/ObjectFromOtherTable;

    .line 148
    .local v8, "objectFromOtherTable":Lcom/nostalgiaemulators/framework/utils/annotations/ObjectFromOtherTable;
    if-eqz v8, :cond_e

    .line 149
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    .line 150
    .local v7, "fieldClass":Ljava/lang/reflect/Type;
    const/4 v11, 0x0

    .line 152
    .local v11, "table2":Lcom/nostalgiaemulators/framework/utils/annotations/Table;
    const-class v14, Ljava/util/Collection;

    check-cast v7, Ljava/lang/Class;

    .end local v7    # "fieldClass":Ljava/lang/reflect/Type;
    invoke-virtual {v14, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 153
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;->getCollectionGenericClass(Ljava/lang/reflect/Field;)Ljava/lang/Class;

    move-result-object v3

    .line 155
    .local v3, "classType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v3, :cond_7

    .line 156
    const-class v14, Lcom/nostalgiaemulators/framework/utils/annotations/Table;

    invoke-virtual {v3, v14}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v11

    .end local v11    # "table2":Lcom/nostalgiaemulators/framework/utils/annotations/Table;
    check-cast v11, Lcom/nostalgiaemulators/framework/utils/annotations/Table;

    .line 163
    .end local v3    # "classType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v11    # "table2":Lcom/nostalgiaemulators/framework/utils/annotations/Table;
    :cond_7
    :goto_2
    if-nez v11, :cond_e

    .line 164
    new-instance v14, Ljava/lang/RuntimeException;

    .line 165
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Field "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 167
    const-string v16, "."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 168
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 169
    const-string v16, " must refered to class with Table annotation"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 170
    const-string v16, " or Collection with generic type with Table annotation"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 165
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 164
    invoke-direct {v14, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 113
    .end local v8    # "objectFromOtherTable":Lcom/nostalgiaemulators/framework/utils/annotations/ObjectFromOtherTable;
    .end local v11    # "table2":Lcom/nostalgiaemulators/framework/utils/annotations/Table;
    .restart local v1    # "cName":Ljava/lang/String;
    .restart local v5    # "dbType":Ljava/lang/String;
    .restart local v10    # "supported":Z
    .restart local v13    # "type":Ljava/lang/reflect/Type;
    :cond_8
    const-class v14, Ljava/lang/Integer;

    if-eq v13, v14, :cond_9

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v13, v14, :cond_9

    .line 114
    const-class v14, Ljava/lang/Long;

    if-eq v13, v14, :cond_9

    sget-object v14, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v13, v14, :cond_9

    .line 115
    const-class v14, Ljava/lang/Boolean;

    if-eq v13, v14, :cond_9

    sget-object v14, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v13, v14, :cond_a

    .line 116
    :cond_9
    const-string v5, "INTEGER"

    .line 118
    goto/16 :goto_1

    :cond_a
    const-class v14, Ljava/lang/Float;

    if-eq v13, v14, :cond_b

    sget-object v14, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v13, v14, :cond_c

    .line 119
    :cond_b
    const-string v5, "REAL"

    .line 121
    goto/16 :goto_1

    .line 122
    :cond_c
    const-string v14, "com.nostalgiaemulators.framework.utils.DatabaseHelper"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "type "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " is not supported"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v14, v0}, Lcom/nostalgiaemulators/framework/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 159
    .end local v1    # "cName":Ljava/lang/String;
    .end local v5    # "dbType":Ljava/lang/String;
    .end local v10    # "supported":Z
    .end local v13    # "type":Ljava/lang/reflect/Type;
    .restart local v8    # "objectFromOtherTable":Lcom/nostalgiaemulators/framework/utils/annotations/ObjectFromOtherTable;
    .restart local v11    # "table2":Lcom/nostalgiaemulators/framework/utils/annotations/Table;
    :cond_d
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    .line 160
    const-class v18, Lcom/nostalgiaemulators/framework/utils/annotations/Table;

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v11

    .end local v11    # "table2":Lcom/nostalgiaemulators/framework/utils/annotations/Table;
    check-cast v11, Lcom/nostalgiaemulators/framework/utils/annotations/Table;

    .line 159
    .restart local v11    # "table2":Lcom/nostalgiaemulators/framework/utils/annotations/Table;
    goto/16 :goto_2

    .line 100
    .end local v11    # "table2":Lcom/nostalgiaemulators/framework/utils/annotations/Table;
    :cond_e
    add-int/lit8 v14, v15, 0x1

    move v15, v14

    goto/16 :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    const-class v1, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;->instance:Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;->instance:Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;

    .line 57
    :cond_0
    sget-object v0, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;->instance:Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private insertObjToDb(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Landroid/util/Pair;)V
    .locals 30
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 514
    .local p3, "idMapping":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 515
    .local v8, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;->classItems:Ljava/util/HashMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper$ClassItem;

    .line 517
    .local v6, "classItem":Lcom/nostalgiaemulators/framework/utils/DatabaseHelper$ClassItem;
    if-eqz v6, :cond_14

    .line 518
    iget-object v0, v6, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper$ClassItem;->tableName:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 519
    .local v24, "tableName":Ljava/lang/String;
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 520
    .local v10, "cv":Landroid/content/ContentValues;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 521
    .local v14, "foregeinFields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/nostalgiaemulators/framework/utils/annotations/ObjectFromOtherTable;Ljava/lang/reflect/Field;>;>;"
    const/16 v23, 0x0

    .line 523
    .local v23, "primaryKeyField":Ljava/lang/reflect/Field;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    iget-object v0, v6, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper$ClassItem;->fields:[Ljava/lang/reflect/Field;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-lt v15, v0, :cond_2

    .line 589
    const/16 v27, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 590
    const-string v27, "Select last_insert_rowid();"

    const/16 v28, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 591
    .local v4, "c":Landroid/database/Cursor;
    const-wide/16 v18, 0x0

    .line 594
    .local v18, "lastId":J
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 595
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v18

    .line 598
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 601
    if-eqz v23, :cond_0

    .line 603
    :try_start_1
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3

    .line 613
    :cond_0
    :goto_1
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :cond_1
    :goto_2
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-nez v28, :cond_12

    .line 655
    return-void

    .line 524
    .end local v4    # "c":Landroid/database/Cursor;
    .end local v18    # "lastId":J
    :cond_2
    iget-object v0, v6, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper$ClassItem;->fields:[Ljava/lang/reflect/Field;

    move-object/from16 v27, v0

    aget-object v12, v27, v15

    .line 525
    .local v12, "field":Ljava/lang/reflect/Field;
    iget-object v0, v6, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper$ClassItem;->columns:[Lcom/nostalgiaemulators/framework/utils/annotations/Column;

    move-object/from16 v27, v0

    aget-object v9, v27, v15

    .line 527
    .local v9, "column":Lcom/nostalgiaemulators/framework/utils/annotations/Column;
    if-eqz v9, :cond_5

    .line 528
    invoke-interface {v9}, Lcom/nostalgiaemulators/framework/utils/annotations/Column;->isPrimaryKey()Z

    move-result v27

    if-nez v27, :cond_11

    .line 529
    iget-object v0, v6, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper$ClassItem;->names:[Ljava/lang/String;

    move-object/from16 v27, v0

    aget-object v5, v27, v15

    .line 533
    .local v5, "cName":Ljava/lang/String;
    :try_start_2
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    .line 534
    .local v25, "value":Ljava/lang/Object;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v26

    .line 536
    .local v26, "valueCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p3, :cond_3

    .line 537
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_3

    .line 538
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v25, v0

    .line 539
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Ljava/lang/Long;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    move-object/from16 v0, p1

    move-wide/from16 v1, v28

    invoke-virtual {v12, v0, v1, v2}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    .line 542
    :cond_3
    move-object/from16 v0, v25

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v27, v0

    if-nez v27, :cond_4

    .line 543
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Class;->isEnum()Z

    move-result v27

    if-eqz v27, :cond_7

    .line 544
    :cond_4
    check-cast v25, Ljava/lang/String;

    .end local v25    # "value":Ljava/lang/Object;
    move-object/from16 v0, v25

    invoke-virtual {v10, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1

    .line 581
    .end local v5    # "cName":Ljava/lang/String;
    .end local v26    # "valueCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    :goto_3
    const-class v27, Lcom/nostalgiaemulators/framework/utils/annotations/ObjectFromOtherTable;

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v21

    check-cast v21, Lcom/nostalgiaemulators/framework/utils/annotations/ObjectFromOtherTable;

    .line 583
    .local v21, "objectFromOtherTable":Lcom/nostalgiaemulators/framework/utils/annotations/ObjectFromOtherTable;
    if-eqz v21, :cond_6

    .line 584
    new-instance v27, Landroid/util/Pair;

    .line 585
    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 584
    move-object/from16 v0, v27

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    :cond_6
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    .line 546
    .end local v21    # "objectFromOtherTable":Lcom/nostalgiaemulators/framework/utils/annotations/ObjectFromOtherTable;
    .restart local v5    # "cName":Ljava/lang/String;
    .restart local v25    # "value":Ljava/lang/Object;
    .restart local v26    # "valueCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_7
    :try_start_3
    const-class v27, Ljava/lang/Boolean;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-eq v0, v1, :cond_8

    .line 547
    sget-object v27, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_a

    .line 548
    :cond_8
    sget-object v27, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_9

    const/16 v27, 0x1

    .line 549
    :goto_4
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    .line 548
    move-object/from16 v0, v27

    invoke-virtual {v10, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 568
    .end local v25    # "value":Ljava/lang/Object;
    .end local v26    # "valueCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v11

    .line 569
    .local v11, "e":Ljava/lang/IllegalArgumentException;
    const-string v27, "com.nostalgiaemulators.framework.utils.DatabaseHelper"

    const-string v28, ""

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v11}, Lcom/nostalgiaemulators/framework/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 549
    .end local v11    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v25    # "value":Ljava/lang/Object;
    .restart local v26    # "valueCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_9
    const/16 v27, 0x0

    goto :goto_4

    .line 551
    :cond_a
    :try_start_4
    const-class v27, Ljava/lang/Integer;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-eq v0, v1, :cond_b

    .line 552
    sget-object v27, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_c

    .line 553
    :cond_b
    check-cast v25, Ljava/lang/Integer;

    .end local v25    # "value":Ljava/lang/Object;
    move-object/from16 v0, v25

    invoke-virtual {v10, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    .line 571
    .end local v26    # "valueCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v11

    .line 572
    .local v11, "e":Ljava/lang/IllegalAccessException;
    const-string v27, "com.nostalgiaemulators.framework.utils.DatabaseHelper"

    const-string v28, ""

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v11}, Lcom/nostalgiaemulators/framework/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 555
    .end local v11    # "e":Ljava/lang/IllegalAccessException;
    .restart local v25    # "value":Ljava/lang/Object;
    .restart local v26    # "valueCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_c
    :try_start_5
    const-class v27, Ljava/lang/Long;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-eq v0, v1, :cond_d

    .line 556
    sget-object v27, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_e

    .line 557
    :cond_d
    check-cast v25, Ljava/lang/Long;

    .end local v25    # "value":Ljava/lang/Object;
    move-object/from16 v0, v25

    invoke-virtual {v10, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_3

    .line 559
    .restart local v25    # "value":Ljava/lang/Object;
    :cond_e
    const-class v27, Ljava/lang/Byte;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-eq v0, v1, :cond_f

    .line 560
    sget-object v27, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_10

    .line 561
    :cond_f
    check-cast v25, Ljava/lang/Byte;

    .end local v25    # "value":Ljava/lang/Object;
    move-object/from16 v0, v25

    invoke-virtual {v10, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    goto/16 :goto_3

    .line 564
    .restart local v25    # "value":Ljava/lang/Object;
    :cond_10
    new-instance v27, Ljava/lang/RuntimeException;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 565
    const-string v29, " is not supported datatype"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 564
    invoke-direct/range {v27 .. v28}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v27
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_1

    .line 576
    .end local v5    # "cName":Ljava/lang/String;
    .end local v25    # "value":Ljava/lang/Object;
    .end local v26    # "valueCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_11
    move-object/from16 v23, v12

    goto/16 :goto_3

    .line 597
    .end local v9    # "column":Lcom/nostalgiaemulators/framework/utils/annotations/Column;
    .end local v12    # "field":Ljava/lang/reflect/Field;
    .restart local v4    # "c":Landroid/database/Cursor;
    .restart local v18    # "lastId":J
    :catchall_0
    move-exception v27

    .line 598
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 599
    throw v27

    .line 605
    :catch_2
    move-exception v11

    .line 606
    .local v11, "e":Ljava/lang/IllegalArgumentException;
    const-string v27, "com.nostalgiaemulators.framework.utils.DatabaseHelper"

    const-string v28, ""

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v11}, Lcom/nostalgiaemulators/framework/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 608
    .end local v11    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v11

    .line 609
    .local v11, "e":Ljava/lang/IllegalAccessException;
    const-string v27, "com.nostalgiaemulators.framework.utils.DatabaseHelper"

    const-string v28, ""

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v11}, Lcom/nostalgiaemulators/framework/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 613
    .end local v11    # "e":Ljava/lang/IllegalAccessException;
    :cond_12
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/util/Pair;

    .line 614
    .local v17, "item":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/nostalgiaemulators/framework/utils/annotations/ObjectFromOtherTable;Ljava/lang/reflect/Field;>;"
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/nostalgiaemulators/framework/utils/annotations/ObjectFromOtherTable;

    .line 615
    .restart local v21    # "objectFromOtherTable":Lcom/nostalgiaemulators/framework/utils/annotations/ObjectFromOtherTable;
    move-object/from16 v0, v17

    iget-object v12, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/reflect/Field;

    .line 617
    .restart local v12    # "field":Ljava/lang/reflect/Field;
    if-eqz v21, :cond_1

    .line 618
    invoke-virtual {v12}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v13

    .line 621
    .local v13, "fieldClass":Ljava/lang/reflect/Type;
    :try_start_6
    const-class v28, Ljava/util/Collection;

    .line 622
    check-cast v13, Ljava/lang/Class;

    .end local v13    # "fieldClass":Ljava/lang/reflect/Type;
    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v28

    if-eqz v28, :cond_13

    .line 623
    new-instance v16, Landroid/util/Pair;

    .line 624
    invoke-interface/range {v21 .. v21}, Lcom/nostalgiaemulators/framework/utils/annotations/ObjectFromOtherTable;->columnName()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    .line 623
    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 625
    .local v16, "idMap":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;->getCollectionGenericClass(Ljava/lang/reflect/Field;)Ljava/lang/Class;

    move-result-object v7

    .line 627
    .local v7, "classType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v7, :cond_1

    .line 629
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 628
    check-cast v22, Ljava/util/Collection;

    .line 631
    .local v22, "objs":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-eqz v22, :cond_1

    .line 632
    invoke-interface/range {v22 .. v22}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :goto_5
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_1

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    .line 633
    .local v20, "o":Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    move-object/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;->insertObjToDb(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Landroid/util/Pair;)V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_5

    .line 642
    .end local v7    # "classType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v16    # "idMap":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v20    # "o":Ljava/lang/Object;
    .end local v22    # "objs":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :catch_4
    move-exception v11

    .line 643
    .local v11, "e":Ljava/lang/IllegalArgumentException;
    const-string v28, "com.nostalgiaemulators.framework.utils.DatabaseHelper"

    const-string v29, ""

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v11}, Lcom/nostalgiaemulators/framework/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 639
    .end local v11    # "e":Ljava/lang/IllegalArgumentException;
    :cond_13
    :try_start_7
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;->insertObjToDb(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_2

    .line 645
    :catch_5
    move-exception v11

    .line 646
    .local v11, "e":Ljava/lang/IllegalAccessException;
    const-string v28, "com.nostalgiaemulators.framework.utils.DatabaseHelper"

    const-string v29, ""

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v11}, Lcom/nostalgiaemulators/framework/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 652
    .end local v4    # "c":Landroid/database/Cursor;
    .end local v10    # "cv":Landroid/content/ContentValues;
    .end local v11    # "e":Ljava/lang/IllegalAccessException;
    .end local v12    # "field":Ljava/lang/reflect/Field;
    .end local v14    # "foregeinFields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/nostalgiaemulators/framework/utils/annotations/ObjectFromOtherTable;Ljava/lang/reflect/Field;>;>;"
    .end local v15    # "i":I
    .end local v17    # "item":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/nostalgiaemulators/framework/utils/annotations/ObjectFromOtherTable;Ljava/lang/reflect/Field;>;"
    .end local v18    # "lastId":J
    .end local v21    # "objectFromOtherTable":Lcom/nostalgiaemulators/framework/utils/annotations/ObjectFromOtherTable;
    .end local v23    # "primaryKeyField":Ljava/lang/reflect/Field;
    .end local v24    # "tableName":Ljava/lang/String;
    :cond_14
    new-instance v27, Ljava/lang/RuntimeException;

    .line 653
    const-string v28, "Wrong obj class (class must have annotation Table)"

    .line 652
    invoke-direct/range {v27 .. v28}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v27
.end method

.method private removeTablesDB(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 9
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 194
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;->classes:[Ljava/lang/Class;

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v5, :cond_0

    .line 209
    return-void

    .line 194
    :cond_0
    aget-object v0, v4, v3

    .line 195
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v6, Lcom/nostalgiaemulators/framework/utils/annotations/Table;

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/nostalgiaemulators/framework/utils/annotations/Table;

    .line 197
    .local v1, "table":Lcom/nostalgiaemulators/framework/utils/annotations/Table;
    if-eqz v1, :cond_2

    .line 198
    invoke-interface {v1}, Lcom/nostalgiaemulators/framework/utils/annotations/Table;->tableName()Ljava/lang/String;

    move-result-object v2

    .line 199
    .local v2, "tableName":Ljava/lang/String;
    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 201
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "DROP TABLE IF EXISTS "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 202
    const-string v6, "com.nostalgiaemulators.framework.utils.DatabaseHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "delete table "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 205
    .end local v2    # "tableName":Ljava/lang/String;
    :cond_2
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "class "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 206
    const-string v5, " has not @Table annotation"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 205
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private selectObjsFromDb(Ljava/lang/Class;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 31
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "groupby"    # Ljava/lang/String;
    .param p5, "orderBy"    # Ljava/lang/String;
    .param p6, "deep"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 785
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;->classItems:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper$ClassItem;

    .line 787
    .local v10, "classItem":Lcom/nostalgiaemulators/framework/utils/DatabaseHelper$ClassItem;
    if-eqz v10, :cond_17

    .line 788
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 789
    .local v25, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    iget-object v0, v10, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper$ClassItem;->tableName:Ljava/lang/String;

    move-object/from16 v27, v0

    .line 790
    .local v27, "tableName":Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuffer;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuffer;-><init>()V

    .line 791
    .local v26, "sql":Ljava/lang/StringBuffer;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    .line 792
    .local v28, "time":J
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "SELECT * FROM "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 794
    if-eqz p3, :cond_0

    .line 795
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 797
    :cond_0
    if-eqz p4, :cond_1

    .line 798
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 800
    :cond_1
    if-eqz p5, :cond_2

    .line 801
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 803
    :cond_2
    const-string v2, ";"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 804
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 807
    .local v12, "cursor":Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_3

    .line 919
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 922
    const-string v2, "com.nostalgiaemulators.framework.utils.DatabaseHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "total time:"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v6, v28

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    return-object v25

    .line 809
    :cond_3
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v22

    .line 810
    .local v22, "obj":Ljava/lang/Object;, "TT;"
    const/16 v17, 0x0

    .line 811
    .local v17, "i":I
    const/16 v18, 0x0

    .line 812
    .local v18, "id":Ljava/lang/String;
    const/16 v24, 0x0

    .line 814
    .local v24, "objsFromOtherTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/nostalgiaemulators/framework/utils/annotations/ObjectFromOtherTable;Ljava/lang/reflect/Field;>;>;"
    if-eqz p6, :cond_4

    .line 815
    new-instance v24, Ljava/util/ArrayList;

    .end local v24    # "objsFromOtherTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/nostalgiaemulators/framework/utils/annotations/ObjectFromOtherTable;Ljava/lang/reflect/Field;>;>;"
    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 818
    .restart local v24    # "objsFromOtherTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/nostalgiaemulators/framework/utils/annotations/ObjectFromOtherTable;Ljava/lang/reflect/Field;>;>;"
    :cond_4
    const/16 v19, 0x0

    .local v19, "index":I
    :goto_1
    iget-object v2, v10, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper$ClassItem;->fields:[Ljava/lang/reflect/Field;

    array-length v2, v2

    move/from16 v0, v19

    if-lt v0, v2, :cond_7

    .line 876
    if-eqz p6, :cond_6

    .line 877
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :cond_5
    :goto_2
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_15

    .line 908
    :cond_6
    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 910
    .end local v17    # "i":I
    .end local v18    # "id":Ljava/lang/String;
    .end local v19    # "index":I
    .end local v22    # "obj":Ljava/lang/Object;, "TT;"
    .end local v24    # "objsFromOtherTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/nostalgiaemulators/framework/utils/annotations/ObjectFromOtherTable;Ljava/lang/reflect/Field;>;>;"
    :catch_0
    move-exception v13

    .line 911
    .local v13, "e":Ljava/lang/InstantiationException;
    :try_start_2
    const-string v2, "com.nostalgiaemulators.framework.utils.DatabaseHelper"

    const-string v4, ""

    invoke-static {v2, v4, v13}, Lcom/nostalgiaemulators/framework/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 918
    .end local v13    # "e":Ljava/lang/InstantiationException;
    :catchall_0
    move-exception v2

    .line 919
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 920
    throw v2

    .line 819
    .restart local v17    # "i":I
    .restart local v18    # "id":Ljava/lang/String;
    .restart local v19    # "index":I
    .restart local v22    # "obj":Ljava/lang/Object;, "TT;"
    .restart local v24    # "objsFromOtherTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/nostalgiaemulators/framework/utils/annotations/ObjectFromOtherTable;Ljava/lang/reflect/Field;>;>;"
    :cond_7
    :try_start_3
    iget-object v2, v10, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper$ClassItem;->fields:[Ljava/lang/reflect/Field;

    aget-object v15, v2, v19

    .line 820
    .local v15, "field":Ljava/lang/reflect/Field;
    iget-object v2, v10, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper$ClassItem;->columns:[Lcom/nostalgiaemulators/framework/utils/annotations/Column;

    aget-object v11, v2, v19

    .line 822
    .local v11, "column":Lcom/nostalgiaemulators/framework/utils/annotations/Column;
    if-eqz v11, :cond_9

    .line 823
    iget-object v2, v10, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper$ClassItem;->classes:[Ljava/lang/Class;

    aget-object v9, v2, v19

    .line 825
    .local v9, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Ljava/lang/String;

    if-ne v9, v2, :cond_b

    .line 826
    move/from16 v0, v17

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v15, v0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 828
    iget v2, v10, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper$ClassItem;->primaryKeyIdx:I

    move/from16 v0, v19

    if-ne v0, v2, :cond_8

    .line 829
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v17

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 862
    :cond_8
    :goto_3
    add-int/lit8 v17, v17, 0x1

    .line 865
    .end local v9    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_9
    if-eqz p6, :cond_a

    .line 866
    iget-object v2, v10, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper$ClassItem;->objsFromObjectFromOtherTable:[Lcom/nostalgiaemulators/framework/utils/annotations/ObjectFromOtherTable;

    aget-object v23, v2, v19

    .line 868
    .local v23, "objectFromOtherTable":Lcom/nostalgiaemulators/framework/utils/annotations/ObjectFromOtherTable;
    if-eqz v23, :cond_a

    .line 870
    new-instance v2, Landroid/util/Pair;

    move-object/from16 v0, v23

    invoke-direct {v2, v0, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 818
    .end local v23    # "objectFromOtherTable":Lcom/nostalgiaemulators/framework/utils/annotations/ObjectFromOtherTable;
    :cond_a
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 831
    .restart local v9    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_b
    invoke-virtual {v9}, Ljava/lang/Class;->isEnum()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 834
    move/from16 v0, v17

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 833
    invoke-static {v9, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v14

    .line 835
    .local v14, "enu":Ljava/lang/Enum;
    move-object/from16 v0, v22

    invoke-virtual {v15, v0, v14}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 837
    iget v2, v10, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper$ClassItem;->primaryKeyIdx:I

    move/from16 v0, v19

    if-ne v0, v2, :cond_8

    .line 838
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v17

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 840
    goto :goto_3

    .end local v14    # "enu":Ljava/lang/Enum;
    :cond_c
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v9, v2, :cond_d

    .line 841
    const-class v2, Ljava/lang/Integer;

    if-ne v9, v2, :cond_e

    .line 842
    :cond_d
    move/from16 v0, v17

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v15, v0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 844
    iget v2, v10, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper$ClassItem;->primaryKeyIdx:I

    move/from16 v0, v19

    if-ne v0, v2, :cond_8

    .line 845
    new-instance v2, Ljava/lang/StringBuilder;

    move/from16 v0, v17

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 847
    goto :goto_3

    :cond_e
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v9, v2, :cond_f

    const-class v2, Ljava/lang/Long;

    if-ne v9, v2, :cond_10

    .line 848
    :cond_f
    move/from16 v0, v17

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v15, v0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 850
    iget v2, v10, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper$ClassItem;->primaryKeyIdx:I

    move/from16 v0, v19

    if-ne v0, v2, :cond_8

    .line 851
    new-instance v2, Ljava/lang/StringBuilder;

    move/from16 v0, v17

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 853
    goto/16 :goto_3

    :cond_10
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v9, v2, :cond_11

    .line 854
    const-class v2, Ljava/lang/Boolean;

    if-ne v9, v2, :cond_13

    .line 855
    :cond_11
    move/from16 v0, v17

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_12

    const/4 v2, 0x1

    :goto_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v15, v0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3

    .line 913
    .end local v9    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v11    # "column":Lcom/nostalgiaemulators/framework/utils/annotations/Column;
    .end local v15    # "field":Ljava/lang/reflect/Field;
    .end local v17    # "i":I
    .end local v18    # "id":Ljava/lang/String;
    .end local v19    # "index":I
    .end local v22    # "obj":Ljava/lang/Object;, "TT;"
    .end local v24    # "objsFromOtherTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/nostalgiaemulators/framework/utils/annotations/ObjectFromOtherTable;Ljava/lang/reflect/Field;>;>;"
    :catch_1
    move-exception v13

    .line 914
    .local v13, "e":Ljava/lang/IllegalAccessException;
    :try_start_4
    const-string v2, "com.nostalgiaemulators.framework.utils.DatabaseHelper"

    const-string v4, ""

    invoke-static {v2, v4, v13}, Lcom/nostalgiaemulators/framework/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 855
    .end local v13    # "e":Ljava/lang/IllegalAccessException;
    .restart local v9    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v11    # "column":Lcom/nostalgiaemulators/framework/utils/annotations/Column;
    .restart local v15    # "field":Ljava/lang/reflect/Field;
    .restart local v17    # "i":I
    .restart local v18    # "id":Ljava/lang/String;
    .restart local v19    # "index":I
    .restart local v22    # "obj":Ljava/lang/Object;, "TT;"
    .restart local v24    # "objsFromOtherTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/nostalgiaemulators/framework/utils/annotations/ObjectFromOtherTable;Ljava/lang/reflect/Field;>;>;"
    :cond_12
    const/4 v2, 0x0

    goto :goto_4

    .line 857
    :cond_13
    :try_start_5
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v9, v2, :cond_14

    .line 858
    const-class v2, Ljava/lang/Float;

    if-ne v9, v2, :cond_8

    .line 859
    :cond_14
    move/from16 v0, v17

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v15, v0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 877
    .end local v9    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v11    # "column":Lcom/nostalgiaemulators/framework/utils/annotations/Column;
    .end local v15    # "field":Ljava/lang/reflect/Field;
    :cond_15
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/util/Pair;

    .line 878
    .local v20, "item":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/nostalgiaemulators/framework/utils/annotations/ObjectFromOtherTable;Ljava/lang/reflect/Field;>;"
    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/InstantiationException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v16

    .line 881
    .local v16, "fieldClass":Ljava/lang/reflect/Type;
    :try_start_6
    const-class v2, Ljava/util/Collection;

    .line 882
    check-cast v16, Ljava/lang/Class;

    .end local v16    # "fieldClass":Ljava/lang/reflect/Type;
    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 883
    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/reflect/Field;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;->getCollectionGenericClass(Ljava/lang/reflect/Field;)Ljava/lang/Class;

    move-result-object v3

    .line 885
    .local v3, "classType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v3, :cond_5

    .line 886
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v2, "WHERE "

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 887
    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/nostalgiaemulators/framework/utils/annotations/ObjectFromOtherTable;

    invoke-interface {v2}, Lcom/nostalgiaemulators/framework/utils/annotations/ObjectFromOtherTable;->columnName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 888
    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 886
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .local v5, "whereS":Ljava/lang/String;
    move-object/from16 v2, p0

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    .line 889
    invoke-direct/range {v2 .. v8}, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;->selectObjsFromDb(Ljava/lang/Class;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v21

    .line 892
    .local v21, "items":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/reflect/Field;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2

    .line 899
    .end local v3    # "classType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "whereS":Ljava/lang/String;
    .end local v21    # "items":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :catch_2
    move-exception v13

    .line 900
    .local v13, "e":Ljava/lang/IllegalArgumentException;
    :try_start_7
    const-string v2, "com.nostalgiaemulators.framework.utils.DatabaseHelper"

    const-string v4, ""

    invoke-static {v2, v4, v13}, Lcom/nostalgiaemulators/framework/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/InstantiationException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2

    .line 896
    .end local v13    # "e":Ljava/lang/IllegalArgumentException;
    :cond_16
    :try_start_8
    const-string v2, "com.nostalgiaemulators.framework.utils.DatabaseHelper"

    const-string v4, "Not Implemented yet"

    invoke-static {v2, v4}, Lcom/nostalgiaemulators/framework/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_2

    .line 902
    :catch_3
    move-exception v13

    .line 903
    .local v13, "e":Ljava/lang/IllegalAccessException;
    :try_start_9
    const-string v2, "com.nostalgiaemulators.framework.utils.DatabaseHelper"

    const-string v4, ""

    invoke-static {v2, v4, v13}, Lcom/nostalgiaemulators/framework/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catch Ljava/lang/InstantiationException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_2

    .line 926
    .end local v12    # "cursor":Landroid/database/Cursor;
    .end local v13    # "e":Ljava/lang/IllegalAccessException;
    .end local v17    # "i":I
    .end local v18    # "id":Ljava/lang/String;
    .end local v19    # "index":I
    .end local v20    # "item":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/nostalgiaemulators/framework/utils/annotations/ObjectFromOtherTable;Ljava/lang/reflect/Field;>;"
    .end local v22    # "obj":Ljava/lang/Object;, "TT;"
    .end local v24    # "objsFromOtherTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/nostalgiaemulators/framework/utils/annotations/ObjectFromOtherTable;Ljava/lang/reflect/Field;>;>;"
    .end local v25    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .end local v26    # "sql":Ljava/lang/StringBuffer;
    .end local v27    # "tableName":Ljava/lang/String;
    .end local v28    # "time":J
    :cond_17
    new-instance v2, Ljava/lang/RuntimeException;

    .line 927
    const-string v4, "Wrong obj class (class must have annotation Table)"

    .line 926
    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private declared-synchronized updateObjToDb(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)V
    .locals 26
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "fields"    # [Ljava/lang/String;

    .prologue
    .line 366
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 367
    .local v7, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 369
    .local v13, "fieldsSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz p3, :cond_0

    .line 370
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v22, v0

    const/16 v21, 0x0

    :goto_0
    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_1

    .line 373
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;->classItems:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper$ClassItem;

    .line 375
    .local v5, "classItem":Lcom/nostalgiaemulators/framework/utils/DatabaseHelper$ClassItem;
    if-eqz v5, :cond_f

    .line 376
    iget-object v0, v5, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper$ClassItem;->tableName:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 377
    .local v18, "tableName":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    .line 378
    .local v17, "sql":Ljava/lang/StringBuffer;
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "UPDATE "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " SET "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 379
    new-instance v20, Ljava/lang/StringBuffer;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    .line 381
    .local v20, "wherePart":Ljava/lang/StringBuffer;
    invoke-virtual {v7}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v23

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v24, v0

    const/16 v21, 0x0

    move/from16 v22, v21

    :goto_1
    move/from16 v0, v22

    move/from16 v1, v24

    if-lt v0, v1, :cond_2

    .line 474
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->length()I

    move-result v22

    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 475
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, " WHERE "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ";"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 476
    const-string v21, "com.nostalgiaemulators.framework.utils.DatabaseHelper"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "sql:"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 483
    monitor-exit p0

    return-void

    .line 370
    .end local v5    # "classItem":Lcom/nostalgiaemulators/framework/utils/DatabaseHelper$ClassItem;
    .end local v17    # "sql":Ljava/lang/StringBuffer;
    .end local v18    # "tableName":Ljava/lang/String;
    .end local v20    # "wherePart":Ljava/lang/StringBuffer;
    :cond_1
    :try_start_1
    aget-object v10, p3, v21

    .line 371
    .local v10, "f":Ljava/lang/String;
    invoke-virtual {v13, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 370
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_0

    .line 381
    .end local v10    # "f":Ljava/lang/String;
    .restart local v5    # "classItem":Lcom/nostalgiaemulators/framework/utils/DatabaseHelper$ClassItem;
    .restart local v17    # "sql":Ljava/lang/StringBuffer;
    .restart local v18    # "tableName":Ljava/lang/String;
    .restart local v20    # "wherePart":Ljava/lang/StringBuffer;
    :cond_2
    aget-object v11, v23, v22

    .line 382
    .local v11, "field":Ljava/lang/reflect/Field;
    const-class v21, Lcom/nostalgiaemulators/framework/utils/annotations/Column;

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v8

    check-cast v8, Lcom/nostalgiaemulators/framework/utils/annotations/Column;

    .line 383
    .local v8, "column":Lcom/nostalgiaemulators/framework/utils/annotations/Column;
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 385
    if-eqz v8, :cond_4

    .line 386
    invoke-interface {v8}, Lcom/nostalgiaemulators/framework/utils/annotations/Column;->columnName()Ljava/lang/String;

    move-result-object v4

    .line 387
    .local v4, "cName":Ljava/lang/String;
    const-string v21, ""

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 391
    :cond_3
    :try_start_2
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .line 393
    .local v19, "value":Ljava/lang/Object;
    invoke-interface {v8}, Lcom/nostalgiaemulators/framework/utils/annotations/Column;->isPrimaryKey()Z

    move-result v21

    if-eqz v21, :cond_7

    .line 394
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v25, "="

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 396
    move-object/from16 v0, v19

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v21, v0

    if-eqz v21, :cond_6

    .line 397
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v25, "\""

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v25, "\""

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 434
    .end local v4    # "cName":Ljava/lang/String;
    .end local v19    # "value":Ljava/lang/Object;
    :cond_4
    :goto_2
    :try_start_3
    const-class v21, Lcom/nostalgiaemulators/framework/utils/annotations/ObjectFromOtherTable;

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v15

    check-cast v15, Lcom/nostalgiaemulators/framework/utils/annotations/ObjectFromOtherTable;

    .line 436
    .local v15, "objectFromOtherTable":Lcom/nostalgiaemulators/framework/utils/annotations/ObjectFromOtherTable;
    if-eqz v15, :cond_5

    .line 437
    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v12

    .line 439
    .local v12, "fieldClass":Ljava/lang/reflect/Type;
    if-eqz p3, :cond_d

    .line 440
    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v21

    if-nez v21, :cond_d

    .line 381
    .end local v12    # "fieldClass":Ljava/lang/reflect/Type;
    .end local v15    # "objectFromOtherTable":Lcom/nostalgiaemulators/framework/utils/annotations/ObjectFromOtherTable;
    :cond_5
    :goto_3
    add-int/lit8 v21, v22, 0x1

    move/from16 v22, v21

    goto/16 :goto_1

    .line 400
    .restart local v4    # "cName":Ljava/lang/String;
    .restart local v19    # "value":Ljava/lang/Object;
    :cond_6
    :try_start_4
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 425
    .end local v19    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v9

    .line 426
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    :try_start_5
    const-string v21, "com.nostalgiaemulators.framework.utils.DatabaseHelper"

    const-string v25, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-static {v0, v1, v9}, Lcom/nostalgiaemulators/framework/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 366
    .end local v4    # "cName":Ljava/lang/String;
    .end local v5    # "classItem":Lcom/nostalgiaemulators/framework/utils/DatabaseHelper$ClassItem;
    .end local v7    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "column":Lcom/nostalgiaemulators/framework/utils/annotations/Column;
    .end local v9    # "e":Ljava/lang/IllegalArgumentException;
    .end local v11    # "field":Ljava/lang/reflect/Field;
    .end local v13    # "fieldsSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v17    # "sql":Ljava/lang/StringBuffer;
    .end local v18    # "tableName":Ljava/lang/String;
    .end local v20    # "wherePart":Ljava/lang/StringBuffer;
    :catchall_0
    move-exception v21

    monitor-exit p0

    throw v21

    .line 404
    .restart local v4    # "cName":Ljava/lang/String;
    .restart local v5    # "classItem":Lcom/nostalgiaemulators/framework/utils/DatabaseHelper$ClassItem;
    .restart local v7    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v8    # "column":Lcom/nostalgiaemulators/framework/utils/annotations/Column;
    .restart local v11    # "field":Ljava/lang/reflect/Field;
    .restart local v13    # "fieldsSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v17    # "sql":Ljava/lang/StringBuffer;
    .restart local v18    # "tableName":Ljava/lang/String;
    .restart local v19    # "value":Ljava/lang/Object;
    .restart local v20    # "wherePart":Ljava/lang/StringBuffer;
    :cond_7
    if-eqz p3, :cond_8

    .line 405
    :try_start_6
    invoke-virtual {v13, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 410
    :cond_8
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v25, "="

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 412
    move-object/from16 v0, v19

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v21, v0

    if-nez v21, :cond_9

    .line 413
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->isEnum()Z

    move-result v21

    if-eqz v21, :cond_a

    .line 414
    :cond_9
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v25, "\""

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v25, "\","

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2

    .line 428
    .end local v19    # "value":Ljava/lang/Object;
    :catch_1
    move-exception v9

    .line 429
    .local v9, "e":Ljava/lang/IllegalAccessException;
    :try_start_7
    const-string v21, "com.nostalgiaemulators.framework.utils.DatabaseHelper"

    const-string v25, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-static {v0, v1, v9}, Lcom/nostalgiaemulators/framework/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2

    .line 416
    .end local v9    # "e":Ljava/lang/IllegalAccessException;
    .restart local v19    # "value":Ljava/lang/Object;
    :cond_a
    :try_start_8
    move-object/from16 v0, v19

    instance-of v0, v0, Ljava/lang/Boolean;

    move/from16 v21, v0

    if-eqz v21, :cond_c

    .line 417
    sget-object v21, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_b

    const/16 v21, 0x1

    :goto_4
    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 418
    const-string v21, ","

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 417
    :cond_b
    const/16 v21, 0x0

    goto :goto_4

    .line 421
    :cond_c
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v25, ","

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_2

    .line 446
    .end local v4    # "cName":Ljava/lang/String;
    .end local v19    # "value":Ljava/lang/Object;
    .restart local v12    # "fieldClass":Ljava/lang/reflect/Type;
    .restart local v15    # "objectFromOtherTable":Lcom/nostalgiaemulators/framework/utils/annotations/ObjectFromOtherTable;
    :cond_d
    :try_start_9
    const-class v21, Ljava/util/Collection;

    .line 447
    check-cast v12, Ljava/lang/Class;

    .end local v12    # "fieldClass":Ljava/lang/reflect/Type;
    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v21

    if-eqz v21, :cond_e

    .line 448
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;->getCollectionGenericClass(Ljava/lang/reflect/Field;)Ljava/lang/Class;

    move-result-object v6

    .line 450
    .local v6, "classType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v6, :cond_5

    .line 452
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .line 451
    check-cast v16, Ljava/util/Collection;

    .line 454
    .local v16, "objs":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-eqz v16, :cond_5

    .line 455
    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_5
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_5

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .line 456
    .local v14, "o":Ljava/lang/Object;
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v25

    invoke-direct {v0, v14, v1, v2}, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;->updateObjToDb(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_5

    .line 465
    .end local v6    # "classType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v14    # "o":Ljava/lang/Object;
    .end local v16    # "objs":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :catch_2
    move-exception v9

    .line 466
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    :try_start_a
    const-string v21, "com.nostalgiaemulators.framework.utils.DatabaseHelper"

    const-string v25, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-static {v0, v1, v9}, Lcom/nostalgiaemulators/framework/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_3

    .line 462
    .end local v9    # "e":Ljava/lang/IllegalArgumentException;
    :cond_e
    :try_start_b
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p2

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;->updateObjToDb(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_3

    .line 468
    :catch_3
    move-exception v9

    .line 469
    .local v9, "e":Ljava/lang/IllegalAccessException;
    :try_start_c
    const-string v21, "com.nostalgiaemulators.framework.utils.DatabaseHelper"

    const-string v25, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-static {v0, v1, v9}, Lcom/nostalgiaemulators/framework/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 480
    .end local v8    # "column":Lcom/nostalgiaemulators/framework/utils/annotations/Column;
    .end local v9    # "e":Ljava/lang/IllegalAccessException;
    .end local v11    # "field":Ljava/lang/reflect/Field;
    .end local v15    # "objectFromOtherTable":Lcom/nostalgiaemulators/framework/utils/annotations/ObjectFromOtherTable;
    .end local v17    # "sql":Ljava/lang/StringBuffer;
    .end local v18    # "tableName":Ljava/lang/String;
    .end local v20    # "wherePart":Ljava/lang/StringBuffer;
    :cond_f
    new-instance v21, Ljava/lang/RuntimeException;

    .line 481
    const-string v22, "Wrong obj class (class must have annotation Table)"

    .line 480
    invoke-direct/range {v21 .. v22}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v21
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
.end method


# virtual methods
.method public declared-synchronized clearDB()V
    .locals 2

    .prologue
    .line 228
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 231
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    invoke-direct {p0, v0}, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;->clearTablesDB(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 234
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 236
    monitor-exit p0

    return-void

    .line 233
    :catchall_0
    move-exception v1

    .line 234
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 235
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 228
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized countObjsInDb(Ljava/lang/Class;Ljava/lang/String;)I
    .locals 3
    .param p2, "where"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 284
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    monitor-enter p0

    if-nez p2, :cond_0

    :try_start_0
    const-string p2, ""

    .line 285
    :cond_0
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 286
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, -0x1

    .line 287
    .local v0, "count":I
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 290
    :try_start_1
    invoke-direct {p0, p1, v1, p2}, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;->countObjsInDb(Ljava/lang/Class;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v0

    .line 291
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 294
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 295
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 298
    monitor-exit p0

    return v0

    .line 293
    :catchall_0
    move-exception v2

    .line 294
    :try_start_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 295
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 296
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 284
    .end local v0    # "count":I
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized deleteObjFromDb(Ljava/lang/Object;)V
    .locals 16
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 681
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 682
    .local v3, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;->classItems:Ljava/util/HashMap;

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper$ClassItem;

    .line 684
    .local v2, "classItem":Lcom/nostalgiaemulators/framework/utils/DatabaseHelper$ClassItem;
    if-eqz v2, :cond_4

    .line 685
    iget-object v9, v2, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper$ClassItem;->tableName:Ljava/lang/String;

    .line 686
    .local v9, "tableName":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 687
    .local v8, "sql":Ljava/lang/StringBuffer;
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "DELETE FROM "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " WHERE "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 689
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v12

    array-length v13, v12

    const/4 v11, 0x0

    :goto_0
    if-lt v11, v13, :cond_0

    .line 718
    const-string v11, ";"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 719
    const-string v11, "com.nostalgiaemulators.framework.utils.DatabaseHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "sql:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    invoke-virtual/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 723
    .local v5, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 726
    :try_start_2
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 733
    monitor-exit p0

    return-void

    .line 689
    .end local v5    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    :try_start_3
    aget-object v7, v12, v11

    .line 690
    .local v7, "field":Ljava/lang/reflect/Field;
    const-class v14, Lcom/nostalgiaemulators/framework/utils/annotations/Column;

    invoke-virtual {v7, v14}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/nostalgiaemulators/framework/utils/annotations/Column;

    .line 691
    .local v4, "column":Lcom/nostalgiaemulators/framework/utils/annotations/Column;
    const/4 v14, 0x1

    invoke-virtual {v7, v14}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 693
    if-eqz v4, :cond_2

    invoke-interface {v4}, Lcom/nostalgiaemulators/framework/utils/annotations/Column;->isPrimaryKey()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 694
    invoke-interface {v4}, Lcom/nostalgiaemulators/framework/utils/annotations/Column;->columnName()Ljava/lang/String;

    move-result-object v1

    .line 695
    .local v1, "cName":Ljava/lang/String;
    const-string v14, ""

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    .line 696
    :cond_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 700
    :try_start_4
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 702
    .local v10, "value":Ljava/lang/Object;
    instance-of v14, v10, Ljava/lang/String;

    if-eqz v14, :cond_3

    .line 703
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "\""

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 689
    .end local v1    # "cName":Ljava/lang/String;
    .end local v10    # "value":Ljava/lang/Object;
    :cond_2
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 706
    .restart local v1    # "cName":Ljava/lang/String;
    .restart local v10    # "value":Ljava/lang/Object;
    :cond_3
    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 709
    .end local v10    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v6

    .line 710
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    :try_start_5
    const-string v14, "com.nostalgiaemulators.framework.utils.DatabaseHelper"

    const-string v15, ""

    invoke-static {v14, v15, v6}, Lcom/nostalgiaemulators/framework/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 681
    .end local v1    # "cName":Ljava/lang/String;
    .end local v2    # "classItem":Lcom/nostalgiaemulators/framework/utils/DatabaseHelper$ClassItem;
    .end local v3    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "column":Lcom/nostalgiaemulators/framework/utils/annotations/Column;
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    .end local v7    # "field":Ljava/lang/reflect/Field;
    .end local v8    # "sql":Ljava/lang/StringBuffer;
    .end local v9    # "tableName":Ljava/lang/String;
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11

    .line 712
    .restart local v1    # "cName":Ljava/lang/String;
    .restart local v2    # "classItem":Lcom/nostalgiaemulators/framework/utils/DatabaseHelper$ClassItem;
    .restart local v3    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "column":Lcom/nostalgiaemulators/framework/utils/annotations/Column;
    .restart local v7    # "field":Ljava/lang/reflect/Field;
    .restart local v8    # "sql":Ljava/lang/StringBuffer;
    .restart local v9    # "tableName":Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 713
    .local v6, "e":Ljava/lang/IllegalAccessException;
    :try_start_6
    const-string v14, "com.nostalgiaemulators.framework.utils.DatabaseHelper"

    const-string v15, ""

    invoke-static {v14, v15, v6}, Lcom/nostalgiaemulators/framework/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 725
    .end local v1    # "cName":Ljava/lang/String;
    .end local v4    # "column":Lcom/nostalgiaemulators/framework/utils/annotations/Column;
    .end local v6    # "e":Ljava/lang/IllegalAccessException;
    .end local v7    # "field":Ljava/lang/reflect/Field;
    .restart local v5    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v11

    .line 726
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 727
    throw v11

    .line 730
    .end local v5    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "sql":Ljava/lang/StringBuffer;
    .end local v9    # "tableName":Ljava/lang/String;
    :cond_4
    new-instance v11, Ljava/lang/RuntimeException;

    .line 731
    const-string v12, "Wrong obj class (class must have annotation Table)"

    .line 730
    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public declared-synchronized deleteObjsFromDb(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 7
    .param p2, "where"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 658
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;->classItems:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper$ClassItem;

    .line 660
    .local v0, "classItem":Lcom/nostalgiaemulators/framework/utils/DatabaseHelper$ClassItem;
    if-eqz v0, :cond_0

    .line 661
    iget-object v3, v0, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper$ClassItem;->tableName:Ljava/lang/String;

    .line 662
    .local v3, "tableName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 663
    .local v2, "sql":Ljava/lang/StringBuffer;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DELETE FROM "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 664
    const-string v4, "com.nostalgiaemulators.framework.utils.DatabaseHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "sql:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 668
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 671
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 678
    monitor-exit p0

    return-void

    .line 670
    :catchall_0
    move-exception v4

    .line 671
    :try_start_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 672
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 658
    .end local v0    # "classItem":Lcom/nostalgiaemulators/framework/utils/DatabaseHelper$ClassItem;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "sql":Ljava/lang/StringBuffer;
    .end local v3    # "tableName":Ljava/lang/String;
    :catchall_1
    move-exception v4

    monitor-exit p0

    throw v4

    .line 675
    .restart local v0    # "classItem":Lcom/nostalgiaemulators/framework/utils/DatabaseHelper$ClassItem;
    :cond_0
    :try_start_4
    new-instance v4, Ljava/lang/RuntimeException;

    .line 676
    const-string v5, "Wrong obj class (class must have annotation Table)"

    .line 675
    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
.end method

.method public declared-synchronized insertObjToDb(Ljava/lang/Object;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 253
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 254
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 257
    const/4 v1, 0x0

    :try_start_1
    invoke-direct {p0, p1, v0, v1}, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;->insertObjToDb(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Landroid/util/Pair;)V

    .line 258
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 261
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 262
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 264
    monitor-exit p0

    return-void

    .line 260
    :catchall_0
    move-exception v1

    .line 261
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 262
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 263
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 253
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized insertObjsToDb(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 267
    .local p1, "objs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 268
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 271
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 275
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 278
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 279
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 281
    monitor-exit p0

    return-void

    .line 271
    :cond_0
    :try_start_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 272
    .local v1, "obj":Ljava/lang/Object;
    const/4 v3, 0x0

    invoke-direct {p0, v1, v0, v3}, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;->insertObjToDb(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Landroid/util/Pair;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 277
    .end local v1    # "obj":Ljava/lang/Object;
    :catchall_0
    move-exception v2

    .line 278
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 279
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 280
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 267
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 9
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 71
    :try_start_0
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;->classes:[Ljava/lang/Class;

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v5, :cond_0

    .line 80
    :goto_1
    return-void

    .line 71
    :cond_0
    aget-object v0, v4, v3

    .line 72
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, v0}, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;->getCreateSql(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, "sql":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 74
    const-string v6, "com.nostalgiaemulators.framework.utils.DatabaseHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "sql:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 77
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "sql":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 78
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "com.nostalgiaemulators.framework.utils.DatabaseHelper"

    const-string v4, ""

    invoke-static {v3, v4, v1}, Lcom/nostalgiaemulators/framework/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public declared-synchronized onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 86
    monitor-enter p0

    const/16 v0, 0xd

    if-ne p2, v0, :cond_0

    const/16 v0, 0x15

    if-ne p3, v0, :cond_0

    .line 92
    :goto_0
    monitor-exit p0

    return-void

    .line 90
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;->removeTablesDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 91
    invoke-virtual {p0, p1}, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized selectObjFromDb(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 9
    .param p2, "where"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v8, 0x0

    .line 331
    monitor-enter p0

    const/4 v7, 0x0

    .line 332
    .local v7, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 335
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    :try_start_1
    invoke-direct/range {v0 .. v6}, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;->selectObjsFromDb(Ljava/lang/Class;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .line 338
    :try_start_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 341
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v8

    .line 345
    :goto_0
    monitor-exit p0

    return-object v0

    .line 337
    :catchall_0
    move-exception v0

    .line 338
    :try_start_3
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 339
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 331
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 345
    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v0

    goto :goto_0
.end method

.method public declared-synchronized selectObjFromDb(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 8
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "deep"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "Z)TT;"
        }
    .end annotation

    .prologue
    .line 351
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    monitor-enter p0

    const/4 v7, 0x0

    .line 352
    .local v7, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 355
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v6, p3

    :try_start_1
    invoke-direct/range {v0 .. v6}, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;->selectObjsFromDb(Ljava/lang/Class;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .line 358
    :try_start_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 361
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 357
    :catchall_0
    move-exception v0

    .line 358
    :try_start_3
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 359
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 351
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized selectObjsFromDb(Ljava/lang/Class;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 302
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    monitor-enter p0

    const/4 v7, 0x0

    .line 303
    .local v7, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 306
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    :try_start_1
    invoke-direct/range {v0 .. v6}, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;->selectObjsFromDb(Ljava/lang/Class;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .line 309
    :try_start_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 312
    monitor-exit p0

    return-object v7

    .line 308
    :catchall_0
    move-exception v0

    .line 309
    :try_start_3
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 310
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 302
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized selectObjsFromDb(Ljava/lang/Class;ZLjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .param p2, "deep"    # Z
    .param p3, "groupBy"    # Ljava/lang/String;
    .param p4, "orderBy"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 317
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    monitor-enter p0

    const/4 v7, 0x0

    .line 318
    .local v7, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 321
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p2

    :try_start_1
    invoke-direct/range {v0 .. v6}, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;->selectObjsFromDb(Ljava/lang/Class;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .line 324
    :try_start_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 327
    monitor-exit p0

    return-object v7

    .line 323
    :catchall_0
    move-exception v0

    .line 324
    :try_start_3
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 325
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 317
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateObjToDb(Ljava/lang/Object;[Ljava/lang/String;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "fields"    # [Ljava/lang/String;

    .prologue
    .line 239
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 240
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 243
    :try_start_1
    invoke-direct {p0, p1, v0, p2}, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;->updateObjToDb(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)V

    .line 244
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 247
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 248
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 250
    monitor-exit p0

    return-void

    .line 246
    :catchall_0
    move-exception v1

    .line 247
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 248
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 249
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 239
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method
