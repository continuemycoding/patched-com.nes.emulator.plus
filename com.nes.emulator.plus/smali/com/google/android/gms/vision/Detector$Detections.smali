.class public Lcom/google/android/gms/vision/Detector$Detections;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/vision/Detector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Detections"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private zzbhU:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<TT;>;"
        }
    .end annotation
.end field

.field private zzbhV:Lcom/google/android/gms/vision/Frame$Metadata;

.field private zzbhW:Z


# direct methods
.method public constructor <init>(Landroid/util/SparseArray;Lcom/google/android/gms/vision/Frame$Metadata;Z)V
    .locals 0
    .param p2, "frameMetadata"    # Lcom/google/android/gms/vision/Frame$Metadata;
    .param p3, "isOperational"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<TT;>;",
            "Lcom/google/android/gms/vision/Frame$Metadata;",
            "Z)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/gms/vision/Detector$Detections;, "Lcom/google/android/gms/vision/Detector$Detections<TT;>;"
    .local p1, "detectedItems":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/vision/Detector$Detections;->zzbhU:Landroid/util/SparseArray;

    iput-object p2, p0, Lcom/google/android/gms/vision/Detector$Detections;->zzbhV:Lcom/google/android/gms/vision/Frame$Metadata;

    iput-boolean p3, p0, Lcom/google/android/gms/vision/Detector$Detections;->zzbhW:Z

    return-void
.end method


# virtual methods
.method public detectorIsOperational()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/vision/Detector$Detections;->zzbhW:Z

    return v0
.end method

.method public getDetectedItems()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/vision/Detector$Detections;->zzbhU:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getFrameMetadata()Lcom/google/android/gms/vision/Frame$Metadata;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/vision/Detector$Detections;->zzbhV:Lcom/google/android/gms/vision/Frame$Metadata;

    return-object v0
.end method
