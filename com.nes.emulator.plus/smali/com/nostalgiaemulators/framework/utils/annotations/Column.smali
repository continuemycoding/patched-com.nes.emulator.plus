.class public interface abstract annotation Lcom/nostalgiaemulators/framework/utils/annotations/Column;
.super Ljava/lang/Object;
.source "Column.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/nostalgiaemulators/framework/utils/annotations/Column;
        allowNull = true
        columnName = ""
        hasIndex = false
        isPrimaryKey = false
        unique = false
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Inherited;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract allowNull()Z
.end method

.method public abstract columnName()Ljava/lang/String;
.end method

.method public abstract hasIndex()Z
.end method

.method public abstract isPrimaryKey()Z
.end method

.method public abstract unique()Z
.end method
