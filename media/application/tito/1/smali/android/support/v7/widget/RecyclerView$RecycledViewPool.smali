.class public Landroid/support/v7/widget/RecyclerView$RecycledViewPool;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecycledViewPool"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_SCRAP:I = 0x5


# instance fields
.field private mAttachCount:I

.field mScrap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5299
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    .line 5301
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    return-void
.end method

.method private getScrapDataForType(I)Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;
    .locals 2
    .param p1, "viewType"    # I

    .line 5452
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;

    .line 5453
    .local v0, "scrapData":Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;
    if-nez v0, :cond_0

    .line 5454
    new-instance v1, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;

    invoke-direct {v1}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;-><init>()V

    move-object v0, v1

    .line 5455
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5457
    :cond_0
    return-object v0
.end method


# virtual methods
.method attach(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 5419
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    .line 5420
    return-void
.end method

.method public clear()V
    .locals 3

    .line 5307
    const/4 v0, 0x0

    .line 5307
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 5308
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;

    .line 5309
    .local v1, "data":Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;
    iget-object v2, v1, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 5307
    .end local v1    # "data":Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5311
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method detach()V
    .locals 1

    .line 5423
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    .line 5424
    return-void
.end method

.method factorInBindTime(IJ)V
    .locals 3
    .param p1, "viewType"    # I
    .param p2, "bindTimeNs"    # J

    .line 5403
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-result-object v0

    .line 5404
    .local v0, "scrapData":Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;
    iget-wide v1, v0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->mBindRunningAverageNs:J

    invoke-virtual {p0, v1, v2, p2, p3}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->runningAverage(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->mBindRunningAverageNs:J

    .line 5406
    return-void
.end method

.method factorInCreateTime(IJ)V
    .locals 3
    .param p1, "viewType"    # I
    .param p2, "createTimeNs"    # J

    .line 5397
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-result-object v0

    .line 5398
    .local v0, "scrapData":Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;
    iget-wide v1, v0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->mCreateRunningAverageNs:J

    invoke-virtual {p0, v1, v2, p2, p3}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->runningAverage(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->mCreateRunningAverageNs:J

    .line 5400
    return-void
.end method

.method public getRecycledView(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3
    .param p1, "viewType"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 5345
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;

    .line 5346
    .local v0, "scrapData":Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5347
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    .line 5348
    .local v1, "scrapHeap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/widget/RecyclerView$ViewHolder;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    return-object v2

    .line 5350
    .end local v1    # "scrapHeap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/widget/RecyclerView$ViewHolder;>;"
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getRecycledViewCount(I)I
    .locals 1
    .param p1, "viewType"    # I

    .line 5332
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method onAdapterChanged(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/widget/RecyclerView$Adapter;Z)V
    .locals 1
    .param p1, "oldAdapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;
    .param p2, "newAdapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;
    .param p3, "compatibleWithPrevious"    # Z

    .line 5440
    if-eqz p1, :cond_0

    .line 5441
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->detach()V

    .line 5443
    :cond_0
    if-nez p3, :cond_1

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    if-nez v0, :cond_1

    .line 5444
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->clear()V

    .line 5446
    :cond_1
    if-eqz p2, :cond_2

    .line 5447
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->attach(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 5449
    :cond_2
    return-void
.end method

.method public putRecycledView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 4
    .param p1, "scrap"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 5377
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    .line 5378
    .local v0, "viewType":I
    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-result-object v1

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    .line 5379
    .local v1, "scrapHeap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/widget/RecyclerView$ViewHolder;>;"
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;

    iget v2, v2, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->mMaxScrap:I

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v2, v3, :cond_0

    .line 5380
    return-void

    .line 5385
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->resetInternal()V

    .line 5386
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5387
    return-void
.end method

.method runningAverage(JJ)J
    .locals 6
    .param p1, "oldAverage"    # J
    .param p3, "newValue"    # J

    .line 5390
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 5391
    return-wide p3

    .line 5393
    :cond_0
    const-wide/16 v0, 0x4

    div-long v2, p1, v0

    const-wide/16 v4, 0x3

    mul-long/2addr v2, v4

    div-long v0, p3, v0

    add-long v4, v2, v0

    return-wide v4
.end method

.method public setMaxRecycledViews(II)V
    .locals 3
    .param p1, "viewType"    # I
    .param p2, "max"    # I

    .line 5320
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-result-object v0

    .line 5321
    .local v0, "scrapData":Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;
    iput p2, v0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->mMaxScrap:I

    .line 5322
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    .line 5323
    .local v1, "scrapHeap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/widget/RecyclerView$ViewHolder;>;"
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, p2, :cond_0

    .line 5324
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 5326
    :cond_0
    return-void
.end method

.method size()I
    .locals 4

    .line 5359
    const/4 v0, 0x0

    .line 5360
    .local v0, "count":I
    const/4 v1, 0x0

    .line 5360
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 5361
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    .line 5362
    .local v2, "viewHolders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/widget/RecyclerView$ViewHolder;>;"
    if-eqz v2, :cond_0

    .line 5363
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v0, v3

    .line 5360
    .end local v2    # "viewHolders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/widget/RecyclerView$ViewHolder;>;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5366
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method willBindInTime(IJJ)Z
    .locals 5
    .param p1, "viewType"    # I
    .param p2, "approxCurrentNs"    # J
    .param p4, "deadlineNs"    # J

    .line 5414
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-result-object v0

    iget-wide v0, v0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->mBindRunningAverageNs:J

    .line 5415
    .local v0, "expectedDurationNs":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    add-long v2, p2, v0

    cmp-long v4, v2, p4

    if-gez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2
.end method

.method willCreateInTime(IJJ)Z
    .locals 5
    .param p1, "viewType"    # I
    .param p2, "approxCurrentNs"    # J
    .param p4, "deadlineNs"    # J

    .line 5409
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-result-object v0

    iget-wide v0, v0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->mCreateRunningAverageNs:J

    .line 5410
    .local v0, "expectedDurationNs":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    add-long v2, p2, v0

    cmp-long v4, v2, p4

    if-gez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2
.end method
