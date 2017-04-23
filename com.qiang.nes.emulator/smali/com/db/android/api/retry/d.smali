.class final Lcom/db/android/api/retry/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic B:Landroid/content/Context;

.field private synthetic dW:Lcom/db/android/api/entity/DescriptorEntity;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/db/android/api/entity/DescriptorEntity;)V
    .locals 0

    iput-object p1, p0, Lcom/db/android/api/retry/d;->B:Landroid/content/Context;

    iput-object p2, p0, Lcom/db/android/api/retry/d;->dW:Lcom/db/android/api/entity/DescriptorEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    new-instance v0, Lcom/db/android/api/retry/e;

    iget-object v1, p0, Lcom/db/android/api/retry/d;->B:Landroid/content/Context;

    iget-object v2, p0, Lcom/db/android/api/retry/d;->dW:Lcom/db/android/api/entity/DescriptorEntity;

    invoke-direct {v0, v1, v2}, Lcom/db/android/api/retry/e;-><init>(Landroid/content/Context;Lcom/db/android/api/entity/DescriptorEntity;)V

    invoke-virtual {v0}, Lcom/db/android/api/retry/e;->send()V

    return-void
.end method
