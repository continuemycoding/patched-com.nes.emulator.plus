.class Lcom/google/android/gms/internal/zzmr$zzb$1;
.super Lcom/google/android/gms/internal/zzmk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzmr$zzb;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzahh:Landroid/app/Dialog;

.field final synthetic zzahi:Lcom/google/android/gms/internal/zzmr$zzb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzmr$zzb;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzmr$zzb$1;->zzahi:Lcom/google/android/gms/internal/zzmr$zzb;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzmr$zzb$1;->zzahh:Landroid/app/Dialog;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzmk;-><init>()V

    return-void
.end method


# virtual methods
.method protected zzpv()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmr$zzb$1;->zzahi:Lcom/google/android/gms/internal/zzmr$zzb;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzmr$zzb;->zzahe:Lcom/google/android/gms/internal/zzmr;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzmr;->zzc(Lcom/google/android/gms/internal/zzmr;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmr$zzb$1;->zzahh:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
