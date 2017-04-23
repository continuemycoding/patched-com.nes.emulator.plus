.class Lcom/google/android/gms/internal/zzlf$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzlf;->zznf()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzWF:Lcom/google/android/gms/internal/zzlf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzlf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlf$1;->zzWF:Lcom/google/android/gms/internal/zzlf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v0, "com.facebook.login.LoginResult"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "com.facebook.FacebookException"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "onSuccess"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    array-length v3, v2

    if-ne v3, v6, :cond_0

    aget-object v3, p3, v5

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v3, v0, :cond_0

    const-string v1, "getAccessToken"

    new-array v2, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    aget-object v1, p3, v5

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "com.facebook.AccessToken"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getToken"

    new-array v3, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlf$1;->zzWF:Lcom/google/android/gms/internal/zzlf;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzlf;->zzb(Lcom/google/android/gms/internal/zzlf;)Lcom/google/android/gms/internal/zzld$zza;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlf$1;->zzWF:Lcom/google/android/gms/internal/zzlf;

    sget-object v3, Lcom/google/android/gms/auth/api/signin/internal/IdpTokenType;->zzWc:Lcom/google/android/gms/auth/api/signin/internal/IdpTokenType;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzlf$1;->zzWF:Lcom/google/android/gms/internal/zzlf;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzlf;->zza(Lcom/google/android/gms/internal/zzlf;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v0, v4}, Lcom/google/android/gms/internal/zzlf;->zza(Lcom/google/android/gms/internal/zzlf;Lcom/google/android/gms/auth/api/signin/internal/IdpTokenType;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzld$zza;->zzk(Landroid/content/Intent;)V

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "onCancel"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    array-length v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlf$1;->zzWF:Lcom/google/android/gms/internal/zzlf;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlf;->zzc(Lcom/google/android/gms/internal/zzlf;)Lcom/google/android/gms/internal/zzld$zza;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzld$zza;->zzmV()V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "onError"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    array-length v0, v2

    if-ne v0, v6, :cond_2

    aget-object v0, v2, v5

    if-ne v0, v1, :cond_2

    const-string v1, "AuthSignInClient"

    const-string v2, "facebook login error!"

    aget-object v0, p3, v5

    check-cast v0, Ljava/lang/Exception;

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlf$1;->zzWF:Lcom/google/android/gms/internal/zzlf;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlf;->zzd(Lcom/google/android/gms/internal/zzlf;)Lcom/google/android/gms/internal/zzld$zza;

    move-result-object v1

    aget-object v0, p3, v5

    check-cast v0, Ljava/lang/Exception;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzld$zza;->zza(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/ExceptionInInitializerError;

    const-string v1, "Method not supported!"

    invoke-direct {v0, v1}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    throw v0
.end method
