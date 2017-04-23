.class Lcom/umeng/analytics/b$1$1;
.super Lu/aly/f;
.source "InternalAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/analytics/b$1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/analytics/b$1;


# direct methods
.method constructor <init>(Lcom/umeng/analytics/b$1;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/umeng/analytics/b$1$1;->a:Lcom/umeng/analytics/b$1;

    invoke-direct {p0}, Lu/aly/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Z)V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/umeng/analytics/b$1$1;->a:Lcom/umeng/analytics/b$1;

    iget-object v0, v0, Lcom/umeng/analytics/b$1;->a:Lcom/umeng/analytics/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/umeng/analytics/b;->a(Lcom/umeng/analytics/b;Z)Z

    .line 101
    return-void
.end method
