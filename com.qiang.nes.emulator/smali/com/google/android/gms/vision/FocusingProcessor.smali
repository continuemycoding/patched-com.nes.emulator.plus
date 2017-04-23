.class public abstract Lcom/google/android/gms/vision/FocusingProcessor;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/vision/Detector$Processor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/vision/Detector$Processor",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private zzbhH:Lcom/google/android/gms/vision/Detector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/vision/Detector",
            "<TT;>;"
        }
    .end annotation
.end field

.field private zzbhX:Lcom/google/android/gms/vision/Tracker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/vision/Tracker",
            "<TT;>;"
        }
    .end annotation
.end field

.field private zzbhY:I

.field private zzbhZ:Z

.field private zzbia:I

.field private zzbib:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/vision/Detector;Lcom/google/android/gms/vision/Tracker;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/vision/Detector",
            "<TT;>;",
            "Lcom/google/android/gms/vision/Tracker",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/gms/vision/FocusingProcessor;, "Lcom/google/android/gms/vision/FocusingProcessor<TT;>;"
    .local p1, "detector":Lcom/google/android/gms/vision/Detector;, "Lcom/google/android/gms/vision/Detector<TT;>;"
    .local p2, "tracker":Lcom/google/android/gms/vision/Tracker;, "Lcom/google/android/gms/vision/Tracker<TT;>;"
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/vision/FocusingProcessor;->zzbhY:I

    iput-boolean v1, p0, Lcom/google/android/gms/vision/FocusingProcessor;->zzbhZ:Z

    iput v1, p0, Lcom/google/android/gms/vision/FocusingProcessor;->zzbib:I

    iput-object p1, p0, Lcom/google/android/gms/vision/FocusingProcessor;->zzbhH:Lcom/google/android/gms/vision/Detector;

    iput-object p2, p0, Lcom/google/android/gms/vision/FocusingProcessor;->zzbhX:Lcom/google/android/gms/vision/Tracker;

    return-void
.end method


# virtual methods
.method public receiveDetections(Lcom/google/android/gms/vision/Detector$Detections;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/vision/Detector$Detections",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/gms/vision/FocusingProcessor;, "Lcom/google/android/gms/vision/FocusingProcessor<TT;>;"
    .local p1, "detections":Lcom/google/android/gms/vision/Detector$Detections;, "Lcom/google/android/gms/vision/Detector$Detections<TT;>;"
    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/vision/Detector$Detections;->getDetectedItems()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_1

    iget v0, p0, Lcom/google/android/gms/vision/FocusingProcessor;->zzbib:I

    iget v1, p0, Lcom/google/android/gms/vision/FocusingProcessor;->zzbhY:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/vision/FocusingProcessor;->zzbhX:Lcom/google/android/gms/vision/Tracker;

    invoke-virtual {v0}, Lcom/google/android/gms/vision/Tracker;->onDone()V

    iput-boolean v2, p0, Lcom/google/android/gms/vision/FocusingProcessor;->zzbhZ:Z

    :goto_0
    iget v0, p0, Lcom/google/android/gms/vision/FocusingProcessor;->zzbib:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/vision/FocusingProcessor;->zzbib:I

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/vision/FocusingProcessor;->zzbhX:Lcom/google/android/gms/vision/Tracker;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/vision/Tracker;->onMissing(Lcom/google/android/gms/vision/Detector$Detections;)V

    goto :goto_0

    :cond_1
    iput v2, p0, Lcom/google/android/gms/vision/FocusingProcessor;->zzbib:I

    iget-boolean v1, p0, Lcom/google/android/gms/vision/FocusingProcessor;->zzbhZ:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/google/android/gms/vision/FocusingProcessor;->zzbia:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/vision/FocusingProcessor;->zzbhX:Lcom/google/android/gms/vision/Tracker;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/vision/Tracker;->onUpdate(Lcom/google/android/gms/vision/Detector$Detections;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/vision/FocusingProcessor;->zzbhX:Lcom/google/android/gms/vision/Tracker;

    invoke-virtual {v1}, Lcom/google/android/gms/vision/Tracker;->onDone()V

    iput-boolean v2, p0, Lcom/google/android/gms/vision/FocusingProcessor;->zzbhZ:Z

    :cond_3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/vision/FocusingProcessor;->selectFocus(Lcom/google/android/gms/vision/Detector$Detections;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, "FocusingProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid focus selected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/vision/FocusingProcessor;->zzbhZ:Z

    iput v1, p0, Lcom/google/android/gms/vision/FocusingProcessor;->zzbia:I

    iget-object v1, p0, Lcom/google/android/gms/vision/FocusingProcessor;->zzbhH:Lcom/google/android/gms/vision/Detector;

    iget v2, p0, Lcom/google/android/gms/vision/FocusingProcessor;->zzbia:I

    invoke-virtual {v1, v2}, Lcom/google/android/gms/vision/Detector;->setFocus(I)Z

    iget-object v1, p0, Lcom/google/android/gms/vision/FocusingProcessor;->zzbhX:Lcom/google/android/gms/vision/Tracker;

    iget v2, p0, Lcom/google/android/gms/vision/FocusingProcessor;->zzbia:I

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/vision/Tracker;->onNewItem(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/vision/FocusingProcessor;->zzbhX:Lcom/google/android/gms/vision/Tracker;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/vision/Tracker;->onUpdate(Lcom/google/android/gms/vision/Detector$Detections;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/vision/FocusingProcessor;->zzbhX:Lcom/google/android/gms/vision/Tracker;

    invoke-virtual {v0}, Lcom/google/android/gms/vision/Tracker;->onDone()V

    return-void
.end method

.method public abstract selectFocus(Lcom/google/android/gms/vision/Detector$Detections;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/vision/Detector$Detections",
            "<TT;>;)I"
        }
    .end annotation
.end method

.method protected zzjZ(I)V
    .locals 3

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid max gap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lcom/google/android/gms/vision/FocusingProcessor;->zzbhY:I

    return-void
.end method
