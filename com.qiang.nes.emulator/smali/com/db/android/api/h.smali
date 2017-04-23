.class final Lcom/db/android/api/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic E:Landroid/content/Context;

.field final synthetic F:Landroid/content/SharedPreferences;

.field private synthetic z:Lcom/db/android/api/b;


# direct methods
.method constructor <init>(Lcom/db/android/api/b;Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 0

    iput-object p2, p0, Lcom/db/android/api/h;->E:Landroid/content/Context;

    iput-object p3, p0, Lcom/db/android/api/h;->F:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/db/android/api/h;->E:Landroid/content/Context;

    invoke-static {v1}, Lcom/db/android/api/b;->a(Landroid/content/Context;)Lcom/db/android/api/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/db/android/api/b;->a(Ljava/util/Map;)V

    const-string v1, "model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mac"

    iget-object v2, p0, Lcom/db/android/api/h;->E:Landroid/content/Context;

    invoke-static {v2}, Lcom/db/android/api/bitmap/core/m;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cpu"

    invoke-static {}, Lcom/db/android/api/utils/b;->aK()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "men"

    sget-object v2, Lcom/db/android/api/utils/b;->em:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "storage"

    iget-object v2, p0, Lcom/db/android/api/h;->E:Landroid/content/Context;

    invoke-static {v2}, Lcom/db/android/api/utils/b;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/db/android/api/h;->E:Landroid/content/Context;

    invoke-static {v1}, Lcom/db/android/api/b;->a(Landroid/content/Context;)Lcom/db/android/api/b;

    move-result-object v1

    sget-object v2, Lcom/db/android/api/url/a;->ee:Ljava/lang/String;

    invoke-static {v0}, Lcom/db/android/api/bitmap/core/f;->c(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    new-instance v3, Lcom/db/android/api/i;

    invoke-direct {v3, p0}, Lcom/db/android/api/i;-><init>(Lcom/db/android/api/h;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/db/android/api/b;->a(Ljava/lang/String;Ljava/util/Map;Lcom/db/android/api/callback/b;)V

    return-void
.end method
