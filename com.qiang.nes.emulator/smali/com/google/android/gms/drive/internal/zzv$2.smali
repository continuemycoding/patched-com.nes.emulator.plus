.class Lcom/google/android/gms/drive/internal/zzv$2;
.super Lcom/google/android/gms/drive/internal/zzt$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/drive/internal/zzv;->commit(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;Lcom/google/android/gms/drive/ExecutionOptions;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaoZ:Lcom/google/android/gms/drive/internal/zzv;

.field final synthetic zzapa:Lcom/google/android/gms/drive/MetadataChangeSet;

.field final synthetic zzapb:Lcom/google/android/gms/drive/ExecutionOptions;


# direct methods
.method constructor <init>(Lcom/google/android/gms/drive/internal/zzv;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;Lcom/google/android/gms/drive/ExecutionOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/zzv$2;->zzaoZ:Lcom/google/android/gms/drive/internal/zzv;

    iput-object p3, p0, Lcom/google/android/gms/drive/internal/zzv$2;->zzapa:Lcom/google/android/gms/drive/MetadataChangeSet;

    iput-object p4, p0, Lcom/google/android/gms/drive/internal/zzv$2;->zzapb:Lcom/google/android/gms/drive/ExecutionOptions;

    invoke-direct {p0, p2}, Lcom/google/android/gms/drive/internal/zzt$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/drive/internal/zzu;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/zzv$2;->zza(Lcom/google/android/gms/drive/internal/zzu;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/drive/internal/zzu;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/zzv$2;->zzapa:Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/MetadataChangeSet;->zzsp()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/zzu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->setContext(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/zzu;->zzsF()Lcom/google/android/gms/drive/internal/zzam;

    move-result-object v6

    new-instance v0, Lcom/google/android/gms/drive/internal/CloseContentsAndUpdateMetadataRequest;

    iget-object v1, p0, Lcom/google/android/gms/drive/internal/zzv$2;->zzaoZ:Lcom/google/android/gms/drive/internal/zzv;

    invoke-static {v1}, Lcom/google/android/gms/drive/internal/zzv;->zza(Lcom/google/android/gms/drive/internal/zzv;)Lcom/google/android/gms/drive/Contents;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/drive/Contents;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/zzv$2;->zzapa:Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-virtual {v2}, Lcom/google/android/gms/drive/MetadataChangeSet;->zzsp()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/drive/internal/zzv$2;->zzaoZ:Lcom/google/android/gms/drive/internal/zzv;

    invoke-static {v3}, Lcom/google/android/gms/drive/internal/zzv;->zza(Lcom/google/android/gms/drive/internal/zzv;)Lcom/google/android/gms/drive/Contents;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/drive/Contents;->getRequestId()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/drive/internal/zzv$2;->zzaoZ:Lcom/google/android/gms/drive/internal/zzv;

    invoke-static {v4}, Lcom/google/android/gms/drive/internal/zzv;->zza(Lcom/google/android/gms/drive/internal/zzv;)Lcom/google/android/gms/drive/Contents;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/drive/Contents;->zzsf()Z

    move-result v4

    iget-object v5, p0, Lcom/google/android/gms/drive/internal/zzv$2;->zzapb:Lcom/google/android/gms/drive/ExecutionOptions;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/drive/internal/CloseContentsAndUpdateMetadataRequest;-><init>(Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;IZLcom/google/android/gms/drive/ExecutionOptions;)V

    new-instance v1, Lcom/google/android/gms/drive/internal/zzbt;

    invoke-direct {v1, p0}, Lcom/google/android/gms/drive/internal/zzbt;-><init>(Lcom/google/android/gms/internal/zzlx$zzb;)V

    invoke-interface {v6, v0, v1}, Lcom/google/android/gms/drive/internal/zzam;->zza(Lcom/google/android/gms/drive/internal/CloseContentsAndUpdateMetadataRequest;Lcom/google/android/gms/drive/internal/zzan;)V

    return-void
.end method
