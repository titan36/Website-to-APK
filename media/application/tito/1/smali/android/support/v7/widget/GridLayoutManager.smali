.class public Landroid/support/v7/widget/GridLayoutManager;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/GridLayoutManager$LayoutParams;,
        Landroid/support/v7/widget/GridLayoutManager$DefaultSpanSizeLookup;,
        Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final DEFAULT_SPAN_COUNT:I = -0x1

.field private static final TAG:Ljava/lang/String; = "GridLayoutManager"


# instance fields
.field mCachedBorders:[I

.field final mDecorInsets:Landroid/graphics/Rect;

.field mPendingSpanCountChange:Z

.field final mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

.field final mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

.field mSet:[Landroid/view/View;

.field mSpanCount:I

.field mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spanCount"    # I

    .line 83
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    .line 55
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    .line 56
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    .line 57
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$DefaultSpanSizeLookup;

    invoke-direct {v0}, Landroid/support/v7/widget/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    .line 84
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/GridLayoutManager;->setSpanCount(I)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spanCount"    # I
    .param p3, "orientation"    # I
    .param p4, "reverseLayout"    # Z

    .line 96
    invoke-direct {p0, p1, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    .line 55
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    .line 56
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    .line 57
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$DefaultSpanSizeLookup;

    invoke-direct {v0}, Landroid/support/v7/widget/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    .line 97
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/GridLayoutManager;->setSpanCount(I)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    .line 55
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    .line 56
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    .line 57
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$DefaultSpanSizeLookup;

    invoke-direct {v0}, Landroid/support/v7/widget/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    .line 72
    invoke-static {p1, p2, p3, p4}, Landroid/support/v7/widget/GridLayoutManager;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;

    move-result-object v0

    .line 73
    .local v0, "properties":Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;
    iget v1, v0, Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;->spanCount:I

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/GridLayoutManager;->setSpanCount(I)V

    .line 74
    return-void
.end method

.method private assignSpans(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;IIZ)V
    .locals 8
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p3, "count"    # I
    .param p4, "consumedSpanCount"    # I
    .param p5, "layingOutInPrimaryDirection"    # Z

    .line 770
    if-eqz p5, :cond_0

    .line 771
    const/4 v0, 0x0

    .line 772
    .local v0, "start":I
    move v1, p3

    .line 773
    .local v1, "end":I
    const/4 v2, 0x1

    .line 773
    .local v2, "diff":I
    goto :goto_0

    .line 775
    .end local v0    # "start":I
    .end local v1    # "end":I
    .end local v2    # "diff":I
    :cond_0
    add-int/lit8 v0, p3, -0x1

    .line 776
    .restart local v0    # "start":I
    const/4 v1, -0x1

    .line 777
    .restart local v1    # "end":I
    const/4 v2, -0x1

    .line 779
    .restart local v2    # "diff":I
    :goto_0
    const/4 v3, 0x0

    .line 780
    .local v3, "span":I
    move v4, v3

    move v3, v0

    .line 780
    .local v3, "i":I
    .local v4, "span":I
    :goto_1
    if-eq v3, v1, :cond_1

    .line 781
    iget-object v5, p0, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v5, v5, v3

    .line 782
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    .line 783
    .local v6, "params":Landroid/support/v7/widget/GridLayoutManager$LayoutParams;
    invoke-virtual {p0, v5}, Landroid/support/v7/widget/GridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    invoke-direct {p0, p1, p2, v7}, Landroid/support/v7/widget/GridLayoutManager;->getSpanSize(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v7

    iput v7, v6, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    .line 784
    iput v4, v6, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 785
    iget v7, v6, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    add-int/2addr v4, v7

    .line 780
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "params":Landroid/support/v7/widget/GridLayoutManager$LayoutParams;
    add-int/2addr v3, v2

    goto :goto_1

    .line 787
    .end local v3    # "i":I
    :cond_1
    return-void
.end method

.method private cachePreLayoutSpanMapping()V
    .locals 6

    .line 189
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getChildCount()I

    move-result v0

    .line 190
    .local v0, "childCount":I
    const/4 v1, 0x0

    .line 190
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 191
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    .line 192
    .local v2, "lp":Landroid/support/v7/widget/GridLayoutManager$LayoutParams;
    invoke-virtual {v2}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v3

    .line 193
    .local v3, "viewPosition":I
    iget-object v4, p0, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 194
    iget-object v4, p0, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 190
    .end local v2    # "lp":Landroid/support/v7/widget/GridLayoutManager$LayoutParams;
    .end local v3    # "viewPosition":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private calculateItemBorders(I)V
    .locals 2
    .param p1, "totalSpace"    # I

    .line 309
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    invoke-static {v0, v1, p1}, Landroid/support/v7/widget/GridLayoutManager;->calculateItemBorders([III)[I

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    .line 310
    return-void
.end method

.method static calculateItemBorders([III)[I
    .locals 7
    .param p0, "cachedBorders"    # [I
    .param p1, "spanCount"    # I
    .param p2, "totalSpace"    # I

    .line 320
    const/4 v0, 0x1

    if-eqz p0, :cond_0

    array-length v1, p0

    add-int/lit8 v2, p1, 0x1

    if-ne v1, v2, :cond_0

    array-length v1, p0

    sub-int/2addr v1, v0

    aget v1, p0, v1

    if-eq v1, p2, :cond_1

    .line 322
    :cond_0
    add-int/lit8 v1, p1, 0x1

    new-array p0, v1, [I

    .line 324
    :cond_1
    const/4 v1, 0x0

    aput v1, p0, v1

    .line 325
    div-int v1, p2, p1

    .line 326
    .local v1, "sizePerSpan":I
    rem-int v2, p2, p1

    .line 327
    .local v2, "sizePerSpanRemainder":I
    const/4 v3, 0x0

    .line 328
    .local v3, "consumedPixels":I
    const/4 v4, 0x0

    .line 329
    .local v4, "additionalSize":I
    nop

    .line 329
    .local v0, "i":I
    :goto_0
    if-gt v0, p1, :cond_3

    .line 330
    move v5, v1

    .line 331
    .local v5, "itemSize":I
    add-int/2addr v4, v2

    .line 332
    if-lez v4, :cond_2

    sub-int v6, p1, v4

    if-ge v6, v2, :cond_2

    .line 333
    add-int/lit8 v5, v5, 0x1

    .line 334
    sub-int/2addr v4, p1

    .line 336
    :cond_2
    add-int/2addr v3, v5

    .line 337
    aput v3, p0, v0

    .line 329
    .end local v5    # "itemSize":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 339
    .end local v0    # "i":I
    :cond_3
    return-object p0
.end method

.method private clearPreLayoutSpanMappingCache()V
    .locals 1

    .line 184
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 185
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 186
    return-void
.end method

.method private ensureAnchorIsInCorrectSpan(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;I)V
    .locals 6
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p3, "anchorInfo"    # Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;
    .param p4, "itemDirection"    # I

    .line 386
    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 388
    .local v1, "layingOutInPrimaryDirection":Z
    :goto_0
    iget v2, p3, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    invoke-direct {p0, p1, p2, v2}, Landroid/support/v7/widget/GridLayoutManager;->getSpanIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v2

    .line 389
    .local v2, "span":I
    if-eqz v1, :cond_1

    .line 391
    :goto_1
    if-lez v2, :cond_3

    iget v3, p3, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    if-lez v3, :cond_3

    .line 392
    iget v3, p3, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    sub-int/2addr v3, v0

    iput v3, p3, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 393
    iget v3, p3, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    invoke-direct {p0, p1, p2, v3}, Landroid/support/v7/widget/GridLayoutManager;->getSpanIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v2

    goto :goto_1

    .line 397
    :cond_1
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v3

    sub-int/2addr v3, v0

    .line 398
    .local v3, "indexLimit":I
    iget v0, p3, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 399
    .local v0, "pos":I
    move v4, v0

    move v0, v2

    .line 400
    .local v0, "bestSpan":I
    .local v4, "pos":I
    :goto_2
    if-ge v4, v3, :cond_2

    .line 401
    add-int/lit8 v5, v4, 0x1

    invoke-direct {p0, p1, p2, v5}, Landroid/support/v7/widget/GridLayoutManager;->getSpanIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v5

    .line 402
    .local v5, "next":I
    if-le v5, v0, :cond_2

    .line 403
    add-int/lit8 v4, v4, 0x1

    .line 404
    move v0, v5

    .line 408
    .end local v5    # "next":I
    goto :goto_2

    .line 409
    :cond_2
    iput v4, p3, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 411
    .end local v0    # "bestSpan":I
    .end local v3    # "indexLimit":I
    .end local v4    # "pos":I
    :cond_3
    return-void
.end method

.method private ensureViewSet()V
    .locals 2

    .line 363
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    array-length v0, v0

    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    if-eq v0, v1, :cond_1

    .line 364
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    .line 366
    :cond_1
    return-void
.end method

.method private getSpanGroupIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I
    .locals 4
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p3, "viewPosition"    # I

    .line 450
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_0

    .line 451
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v0, p3, v1}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanGroupIndex(II)I

    move-result v0

    return v0

    .line 453
    :cond_0
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result v0

    .line 454
    .local v0, "adapterPosition":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 459
    const-string v1, "GridLayoutManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find span size for pre layout position. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const/4 v1, 0x0

    return v1

    .line 462
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    iget v2, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanGroupIndex(II)I

    move-result v1

    return v1
.end method

.method private getSpanIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I
    .locals 5
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p3, "pos"    # I

    .line 466
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_0

    .line 467
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v0, p3, v1}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanIndex(II)I

    move-result v0

    return v0

    .line 469
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p3, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 470
    .local v0, "cached":I
    if-eq v0, v1, :cond_1

    .line 471
    return v0

    .line 473
    :cond_1
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result v2

    .line 474
    .local v2, "adapterPosition":I
    if-ne v2, v1, :cond_2

    .line 479
    const-string v1, "GridLayoutManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    const/4 v1, 0x0

    return v1

    .line 483
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    iget v3, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanIndex(II)I

    move-result v1

    return v1
.end method

.method private getSpanSize(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I
    .locals 5
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p3, "pos"    # I

    .line 487
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_0

    .line 488
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0, p3}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v0

    return v0

    .line 490
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p3, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 491
    .local v0, "cached":I
    if-eq v0, v1, :cond_1

    .line 492
    return v0

    .line 494
    :cond_1
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result v2

    .line 495
    .local v2, "adapterPosition":I
    if-ne v2, v1, :cond_2

    .line 500
    const-string v1, "GridLayoutManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    const/4 v1, 0x1

    return v1

    .line 504
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v1

    return v1
.end method

.method private guessMeasurement(FI)V
    .locals 2
    .param p1, "maxSizeInOther"    # F
    .param p2, "currentOtherDirSize"    # I

    .line 745
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 747
    .local v0, "contentSize":I
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/support/v7/widget/GridLayoutManager;->calculateItemBorders(I)V

    .line 748
    return-void
.end method

.method private measureChild(Landroid/view/View;IZ)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "otherDirParentSpecMode"    # I
    .param p3, "alreadyMeasured"    # Z

    .line 711
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    .line 712
    .local v0, "lp":Landroid/support/v7/widget/GridLayoutManager$LayoutParams;
    iget-object v1, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 713
    .local v1, "decorInsets":Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    .line 715
    .local v2, "verticalInsets":I
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    .line 717
    .local v3, "horizontalInsets":I
    iget v4, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    iget v5, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    invoke-virtual {p0, v4, v5}, Landroid/support/v7/widget/GridLayoutManager;->getSpaceForSpanRange(II)I

    move-result v4

    .line 720
    .local v4, "availableSpaceInOther":I
    iget v5, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v5, v7, :cond_0

    .line 721
    iget v5, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->width:I

    invoke-static {v4, p2, v3, v5, v6}, Landroid/support/v7/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v5

    .line 723
    .local v5, "wSpec":I
    iget-object v6, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v6}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getHeightMode()I

    move-result v8

    iget v9, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->height:I

    invoke-static {v6, v8, v2, v9, v7}, Landroid/support/v7/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v6

    .line 723
    .local v6, "hSpec":I
    goto :goto_0

    .line 726
    .end local v5    # "wSpec":I
    .end local v6    # "hSpec":I
    :cond_0
    iget v5, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->height:I

    invoke-static {v4, p2, v2, v5, v6}, Landroid/support/v7/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v6

    .line 728
    .restart local v6    # "hSpec":I
    iget-object v5, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v5}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getWidthMode()I

    move-result v8

    iget v9, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->width:I

    invoke-static {v5, v8, v3, v9, v7}, Landroid/support/v7/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v5

    .line 731
    .restart local v5    # "wSpec":I
    :goto_0
    invoke-direct {p0, p1, v5, v6, p3}, Landroid/support/v7/widget/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    .line 732
    return-void
.end method

.method private measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "widthSpec"    # I
    .param p3, "heightSpec"    # I
    .param p4, "alreadyMeasured"    # Z

    .line 752
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 754
    .local v0, "lp":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    if-eqz p4, :cond_0

    .line 755
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/GridLayoutManager;->shouldReMeasureChild(Landroid/view/View;IILandroid/support/v7/widget/RecyclerView$LayoutParams;)Z

    move-result v1

    .line 755
    .local v1, "measure":Z
    goto :goto_0

    .line 757
    .end local v1    # "measure":Z
    :cond_0
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/GridLayoutManager;->shouldMeasureChild(Landroid/view/View;IILandroid/support/v7/widget/RecyclerView$LayoutParams;)Z

    move-result v1

    .line 759
    .restart local v1    # "measure":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 760
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 762
    :cond_1
    return-void
.end method

.method private updateMeasurements()V
    .locals 2

    .line 275
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 276
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    .line 276
    .local v0, "totalSpace":I
    goto :goto_0

    .line 278
    .end local v0    # "totalSpace":I
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    .line 280
    .restart local v0    # "totalSpace":I
    :goto_0
    invoke-direct {p0, v0}, Landroid/support/v7/widget/GridLayoutManager;->calculateItemBorders(I)V

    .line 281
    return-void
.end method


# virtual methods
.method public checkLayoutParams(Landroid/support/v7/widget/RecyclerView$LayoutParams;)Z
    .locals 1
    .param p1, "lp"    # Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 251
    instance-of v0, p1, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    return v0
.end method

.method collectPrefetchPositionsForLayoutState(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;Landroid/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 7
    .param p1, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p2, "layoutState"    # Landroid/support/v7/widget/LinearLayoutManager$LayoutState;
    .param p3, "layoutPrefetchRegistry"    # Landroid/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;

    .line 510
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    .line 511
    .local v0, "remainingSpan":I
    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    .line 512
    .local v0, "count":I
    .local v2, "remainingSpan":I
    :goto_0
    iget v3, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    if-ge v0, v3, :cond_0

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->hasMore(Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-lez v2, :cond_0

    .line 513
    iget v3, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 514
    .local v3, "pos":I
    iget v4, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-interface {p3, v3, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->addPosition(II)V

    .line 515
    iget-object v4, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v4

    .line 516
    .local v4, "spanSize":I
    sub-int/2addr v2, v4

    .line 517
    iget v5, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget v6, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v5, v6

    iput v5, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 518
    add-int/lit8 v0, v0, 0x1

    .line 519
    .end local v3    # "pos":I
    .end local v4    # "spanSize":I
    goto :goto_0

    .line 520
    :cond_0
    return-void
.end method

.method findReferenceChild(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;III)Landroid/view/View;
    .locals 10
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "itemCount"    # I

    .line 416
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->ensureLayoutState()V

    .line 417
    const/4 v0, 0x0

    .line 418
    .local v0, "invalidMatch":Landroid/view/View;
    const/4 v1, 0x0

    .line 419
    .local v1, "outOfBoundsMatch":Landroid/view/View;
    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v2}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    .line 420
    .local v2, "boundsStart":I
    iget-object v3, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v3}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    .line 421
    .local v3, "boundsEnd":I
    if-le p4, p3, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, -0x1

    .line 423
    .local v4, "diff":I
    :goto_0
    move-object v5, v0

    move v0, p3

    .line 423
    .local v0, "i":I
    .local v5, "invalidMatch":Landroid/view/View;
    :goto_1
    if-eq v0, p4, :cond_6

    .line 424
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 425
    .local v6, "view":Landroid/view/View;
    invoke-virtual {p0, v6}, Landroid/support/v7/widget/GridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    .line 426
    .local v7, "position":I
    if-ltz v7, :cond_5

    if-ge v7, p5, :cond_5

    .line 427
    invoke-direct {p0, p1, p2, v7}, Landroid/support/v7/widget/GridLayoutManager;->getSpanIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v8

    .line 428
    .local v8, "span":I
    if-eqz v8, :cond_1

    .line 429
    goto :goto_3

    .line 431
    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 432
    if-nez v5, :cond_5

    .line 433
    move-object v5, v6

    goto :goto_3

    .line 435
    :cond_2
    iget-object v9, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v9, v6}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v9

    if-ge v9, v3, :cond_4

    iget-object v9, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 436
    invoke-virtual {v9, v6}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v9

    if-ge v9, v2, :cond_3

    goto :goto_2

    .line 441
    :cond_3
    return-object v6

    .line 437
    :cond_4
    :goto_2
    if-nez v1, :cond_5

    .line 438
    move-object v1, v6

    .line 423
    .end local v6    # "view":Landroid/view/View;
    .end local v7    # "position":I
    .end local v8    # "span":I
    :cond_5
    :goto_3
    add-int/2addr v0, v4

    goto :goto_1

    .line 445
    .end local v0    # "i":I
    :cond_6
    if-eqz v1, :cond_7

    move-object v0, v1

    goto :goto_4

    :cond_7
    move-object v0, v5

    :goto_4
    return-object v0
.end method

.method public generateDefaultLayoutParams()Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 3

    .line 226
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    const/4 v1, -0x1

    const/4 v2, -0x2

    if-nez v0, :cond_0

    .line 227
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;-><init>(II)V

    return-object v0

    .line 230
    :cond_0
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 237
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 2
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .line 242
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 243
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 245
    :cond_0
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getColumnCountForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 2
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .line 131
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 132
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    return v0

    .line 134
    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-ge v0, v1, :cond_1

    .line 135
    const/4 v0, 0x0

    return v0

    .line 139
    :cond_1
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanGroupIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public getRowCountForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 2
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .line 117
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    .line 118
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    return v0

    .line 120
    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 121
    const/4 v0, 0x0

    return v0

    .line 125
    :cond_1
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanGroupIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method getSpaceForSpanRange(II)I
    .locals 3
    .param p1, "startSpan"    # I
    .param p2, "spanSize"    # I

    .line 343
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    sub-int/2addr v1, p1

    aget v0, v0, v1

    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    iget v2, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    sub-int/2addr v2, p1

    sub-int/2addr v2, p2

    aget v1, v1, v2

    sub-int/2addr v0, v1

    return v0

    .line 347
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    add-int v1, p1, p2

    aget v0, v0, v1

    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    aget v1, v1, p1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getSpanCount()I
    .locals 1

    .line 796
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    return v0
.end method

.method public getSpanSizeLookup()Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
    .locals 1

    .line 270
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    return-object v0
.end method

.method layoutChunk(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;)V
    .locals 30
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p3, "layoutState"    # Landroid/support/v7/widget/LinearLayoutManager$LayoutState;
    .param p4, "result"    # Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    .line 525
    move-object/from16 v10, p4

    iget-object v0, v6, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getModeInOther()I

    move-result v11

    .line 526
    .local v11, "otherDirSpecMode":I
    const/high16 v12, 0x40000000    # 2.0f

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eq v11, v12, :cond_0

    move v0, v14

    goto :goto_0

    :cond_0
    move v0, v13

    :goto_0
    move v15, v0

    .line 527
    .local v15, "flexibleInOtherDir":Z
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, v6, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    iget v1, v6, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    aget v0, v0, v1

    goto :goto_1

    :cond_1
    move v0, v13

    :goto_1
    move v5, v0

    .line 531
    .local v5, "currentOtherDirSize":I
    if-eqz v15, :cond_2

    .line 532
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->updateMeasurements()V

    .line 534
    :cond_2
    iget v0, v9, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    if-ne v0, v14, :cond_3

    move v0, v14

    goto :goto_2

    :cond_3
    move v0, v13

    :goto_2
    move/from16 v16, v0

    .line 536
    .local v16, "layingOutInPrimaryDirection":Z
    const/4 v0, 0x0

    .line 537
    .local v0, "count":I
    const/4 v1, 0x0

    .line 538
    .local v1, "consumedSpanCount":I
    iget v2, v6, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    .line 539
    .local v2, "remainingSpan":I
    if-nez v16, :cond_4

    .line 540
    iget v3, v9, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    invoke-direct {v6, v7, v8, v3}, Landroid/support/v7/widget/GridLayoutManager;->getSpanIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v3

    .line 541
    .local v3, "itemSpanIndex":I
    iget v4, v9, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    invoke-direct {v6, v7, v8, v4}, Landroid/support/v7/widget/GridLayoutManager;->getSpanSize(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v4

    .line 542
    .local v4, "itemSpanSize":I
    add-int v2, v3, v4

    .line 544
    .end local v0    # "count":I
    .end local v1    # "consumedSpanCount":I
    .end local v3    # "itemSpanIndex":I
    .local v4, "count":I
    .local v17, "consumedSpanCount":I
    :cond_4
    move v4, v0

    move/from16 v17, v1

    :goto_3
    iget v0, v6, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    if-ge v4, v0, :cond_8

    invoke-virtual {v9, v8}, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->hasMore(Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v0

    if-eqz v0, :cond_8

    if-lez v2, :cond_8

    .line 545
    iget v0, v9, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 546
    .local v0, "pos":I
    invoke-direct {v6, v7, v8, v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanSize(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v1

    .line 547
    .local v1, "spanSize":I
    iget v3, v6, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    if-le v1, v3, :cond_5

    .line 548
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Item at position "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " requires "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " spans but GridLayoutManager has only "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v6, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " spans."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v3, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 552
    :cond_5
    sub-int/2addr v2, v1

    .line 553
    if-gez v2, :cond_6

    .line 554
    goto :goto_4

    .line 556
    :cond_6
    invoke-virtual {v9, v7}, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->next(Landroid/support/v7/widget/RecyclerView$Recycler;)Landroid/view/View;

    move-result-object v3

    .line 557
    .local v3, "view":Landroid/view/View;
    if-nez v3, :cond_7

    .line 558
    goto :goto_4

    .line 560
    :cond_7
    add-int v17, v17, v1

    .line 561
    iget-object v12, v6, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aput-object v3, v12, v4

    .line 562
    add-int/lit8 v4, v4, 0x1

    .line 563
    .end local v0    # "pos":I
    .end local v1    # "spanSize":I
    .end local v3    # "view":Landroid/view/View;
    nop

    .line 544
    const/high16 v12, 0x40000000    # 2.0f

    goto :goto_3

    .line 565
    :cond_8
    :goto_4
    move v12, v2

    .line 565
    .end local v2    # "remainingSpan":I
    .local v12, "remainingSpan":I
    if-nez v4, :cond_9

    .line 566
    iput-boolean v14, v10, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mFinished:Z

    .line 567
    return-void

    .line 570
    :cond_9
    const/16 v19, 0x0

    .line 571
    .local v19, "maxSize":I
    const/16 v20, 0x0

    .line 574
    .local v20, "maxSizeInOther":F
    move-object v0, v6

    move-object v1, v7

    move-object v2, v8

    move v3, v4

    move v14, v4

    move/from16 v4, v17

    .line 574
    .end local v4    # "count":I
    .local v14, "count":I
    move/from16 v21, v5

    move/from16 v5, v16

    .line 574
    .end local v5    # "currentOtherDirSize":I
    .local v21, "currentOtherDirSize":I
    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/GridLayoutManager;->assignSpans(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;IIZ)V

    .line 575
    move v0, v13

    move/from16 v1, v19

    move/from16 v5, v20

    .line 575
    .end local v19    # "maxSize":I
    .end local v20    # "maxSizeInOther":F
    .local v0, "i":I
    .local v1, "maxSize":I
    .local v5, "maxSizeInOther":F
    :goto_5
    if-ge v0, v14, :cond_f

    .line 576
    iget-object v2, v6, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v2, v2, v0

    .line 577
    .local v2, "view":Landroid/view/View;
    iget-object v3, v9, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    if-nez v3, :cond_b

    .line 578
    if-eqz v16, :cond_a

    .line 579
    invoke-virtual {v6, v2}, Landroid/support/v7/widget/GridLayoutManager;->addView(Landroid/view/View;)V

    goto :goto_6

    .line 581
    :cond_a
    invoke-virtual {v6, v2, v13}, Landroid/support/v7/widget/GridLayoutManager;->addView(Landroid/view/View;I)V

    goto :goto_6

    .line 584
    :cond_b
    if-eqz v16, :cond_c

    .line 585
    invoke-virtual {v6, v2}, Landroid/support/v7/widget/GridLayoutManager;->addDisappearingView(Landroid/view/View;)V

    goto :goto_6

    .line 587
    :cond_c
    invoke-virtual {v6, v2, v13}, Landroid/support/v7/widget/GridLayoutManager;->addDisappearingView(Landroid/view/View;I)V

    .line 590
    :goto_6
    iget-object v3, v6, Landroid/support/v7/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    invoke-virtual {v6, v2, v3}, Landroid/support/v7/widget/GridLayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 592
    invoke-direct {v6, v2, v11, v13}, Landroid/support/v7/widget/GridLayoutManager;->measureChild(Landroid/view/View;IZ)V

    .line 593
    iget-object v3, v6, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v3

    .line 594
    .local v3, "size":I
    if-le v3, v1, :cond_d

    .line 595
    move v1, v3

    .line 597
    :cond_d
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    .line 598
    .local v4, "lp":Landroid/support/v7/widget/GridLayoutManager$LayoutParams;
    const/high16 v19, 0x3f800000    # 1.0f

    iget-object v13, v6, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v13, v2}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v13

    int-to-float v13, v13

    mul-float v19, v19, v13

    iget v13, v4, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    int-to-float v13, v13

    div-float v19, v19, v13

    .line 600
    .local v19, "otherSize":F
    cmpl-float v13, v19, v5

    if-lez v13, :cond_e

    .line 601
    move/from16 v2, v19

    .line 575
    .end local v3    # "size":I
    .end local v4    # "lp":Landroid/support/v7/widget/GridLayoutManager$LayoutParams;
    .end local v5    # "maxSizeInOther":F
    .end local v19    # "otherSize":F
    .local v2, "maxSizeInOther":F
    move v5, v2

    .line 575
    .end local v2    # "maxSizeInOther":F
    .restart local v5    # "maxSizeInOther":F
    :cond_e
    add-int/lit8 v0, v0, 0x1

    const/4 v13, 0x0

    goto :goto_5

    .line 604
    .end local v0    # "i":I
    :cond_f
    if-eqz v15, :cond_12

    .line 606
    move/from16 v13, v21

    invoke-direct {v6, v5, v13}, Landroid/support/v7/widget/GridLayoutManager;->guessMeasurement(FI)V

    .line 608
    .end local v21    # "currentOtherDirSize":I
    .local v13, "currentOtherDirSize":I
    const/4 v0, 0x0

    .line 609
    .end local v1    # "maxSize":I
    .local v0, "maxSize":I
    move v1, v0

    const/4 v0, 0x0

    .line 609
    .local v0, "i":I
    .restart local v1    # "maxSize":I
    :goto_7
    if-ge v0, v14, :cond_11

    .line 610
    iget-object v2, v6, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v2, v2, v0

    .line 611
    .local v2, "view":Landroid/view/View;
    const/4 v3, 0x1

    const/high16 v4, 0x40000000    # 2.0f

    invoke-direct {v6, v2, v4, v3}, Landroid/support/v7/widget/GridLayoutManager;->measureChild(Landroid/view/View;IZ)V

    .line 612
    iget-object v3, v6, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v3

    .line 613
    .restart local v3    # "size":I
    if-le v3, v1, :cond_10

    .line 614
    move v1, v3

    .line 609
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "size":I
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 621
    .end local v0    # "i":I
    :cond_11
    move v4, v1

    goto :goto_8

    .line 621
    .end local v13    # "currentOtherDirSize":I
    .restart local v21    # "currentOtherDirSize":I
    :cond_12
    move/from16 v13, v21

    move v4, v1

    .line 621
    .end local v1    # "maxSize":I
    .end local v21    # "currentOtherDirSize":I
    .local v4, "maxSize":I
    .restart local v13    # "currentOtherDirSize":I
    :goto_8
    const/4 v0, 0x0

    .line 621
    .restart local v0    # "i":I
    :goto_9
    if-ge v0, v14, :cond_15

    .line 622
    iget-object v1, v6, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v1, v1, v0

    .line 623
    .local v1, "view":Landroid/view/View;
    iget-object v2, v6, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v2

    if-eq v2, v4, :cond_14

    .line 624
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    .line 625
    .local v2, "lp":Landroid/support/v7/widget/GridLayoutManager$LayoutParams;
    iget-object v3, v2, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 626
    .local v3, "decorInsets":Landroid/graphics/Rect;
    move/from16 v22, v5

    iget v5, v3, Landroid/graphics/Rect;->top:I

    .line 626
    .end local v5    # "maxSizeInOther":F
    .local v22, "maxSizeInOther":F
    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v7

    iget v7, v2, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v5, v7

    iget v7, v2, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v7

    .line 628
    .local v5, "verticalInsets":I
    iget v7, v3, Landroid/graphics/Rect;->left:I

    iget v8, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    iget v8, v2, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->leftMargin:I

    add-int/2addr v7, v8

    iget v8, v2, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->rightMargin:I

    add-int/2addr v7, v8

    .line 630
    .local v7, "horizontalInsets":I
    iget v8, v2, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    move-object/from16 v23, v3

    iget v3, v2, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    .line 630
    .end local v3    # "decorInsets":Landroid/graphics/Rect;
    .local v23, "decorInsets":Landroid/graphics/Rect;
    invoke-virtual {v6, v8, v3}, Landroid/support/v7/widget/GridLayoutManager;->getSpaceForSpanRange(II)I

    move-result v3

    .line 633
    .local v3, "totalSpaceInOther":I
    iget v8, v6, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    move/from16 v24, v11

    const/4 v11, 0x1

    if-ne v8, v11, :cond_13

    .line 634
    .end local v11    # "otherDirSpecMode":I
    .local v24, "otherDirSpecMode":I
    iget v8, v2, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->width:I

    move/from16 v25, v12

    const/4 v11, 0x0

    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v3, v12, v7, v8, v11}, Landroid/support/v7/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v8

    .line 636
    .end local v12    # "remainingSpan":I
    .local v8, "wSpec":I
    .local v25, "remainingSpan":I
    sub-int v11, v4, v5

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 641
    .local v11, "hSpec":I
    move-object/from16 v26, v2

    const/4 v2, 0x0

    goto :goto_a

    .line 639
    .end local v8    # "wSpec":I
    .end local v11    # "hSpec":I
    .end local v25    # "remainingSpan":I
    .restart local v12    # "remainingSpan":I
    :cond_13
    move/from16 v25, v12

    const/high16 v12, 0x40000000    # 2.0f

    .line 639
    .end local v12    # "remainingSpan":I
    .restart local v25    # "remainingSpan":I
    sub-int v8, v4, v7

    invoke-static {v8, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 641
    .restart local v8    # "wSpec":I
    iget v11, v2, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->height:I

    move-object/from16 v26, v2

    const/4 v2, 0x0

    invoke-static {v3, v12, v5, v11, v2}, Landroid/support/v7/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v11

    .line 644
    .end local v2    # "lp":Landroid/support/v7/widget/GridLayoutManager$LayoutParams;
    .restart local v11    # "hSpec":I
    .local v26, "lp":Landroid/support/v7/widget/GridLayoutManager$LayoutParams;
    :goto_a
    const/4 v2, 0x1

    invoke-direct {v6, v1, v8, v11, v2}, Landroid/support/v7/widget/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    .line 644
    .end local v1    # "view":Landroid/view/View;
    .end local v3    # "totalSpaceInOther":I
    .end local v5    # "verticalInsets":I
    .end local v7    # "horizontalInsets":I
    .end local v8    # "wSpec":I
    .end local v11    # "hSpec":I
    .end local v23    # "decorInsets":Landroid/graphics/Rect;
    .end local v26    # "lp":Landroid/support/v7/widget/GridLayoutManager$LayoutParams;
    goto :goto_b

    .line 621
    .end local v22    # "maxSizeInOther":F
    .end local v24    # "otherDirSpecMode":I
    .end local v25    # "remainingSpan":I
    .local v5, "maxSizeInOther":F
    .local v11, "otherDirSpecMode":I
    .restart local v12    # "remainingSpan":I
    :cond_14
    move/from16 v22, v5

    move/from16 v24, v11

    move/from16 v25, v12

    const/high16 v12, 0x40000000    # 2.0f

    .line 621
    .end local v5    # "maxSizeInOther":F
    .end local v11    # "otherDirSpecMode":I
    .end local v12    # "remainingSpan":I
    .restart local v22    # "maxSizeInOther":F
    .restart local v24    # "otherDirSpecMode":I
    .restart local v25    # "remainingSpan":I
    :goto_b
    add-int/lit8 v0, v0, 0x1

    move/from16 v5, v22

    move/from16 v11, v24

    move/from16 v12, v25

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    goto/16 :goto_9

    .line 648
    .end local v0    # "i":I
    .end local v22    # "maxSizeInOther":F
    .end local v24    # "otherDirSpecMode":I
    .end local v25    # "remainingSpan":I
    .restart local v5    # "maxSizeInOther":F
    .restart local v11    # "otherDirSpecMode":I
    .restart local v12    # "remainingSpan":I
    :cond_15
    move/from16 v22, v5

    move/from16 v24, v11

    move/from16 v25, v12

    .line 648
    .end local v5    # "maxSizeInOther":F
    .end local v11    # "otherDirSpecMode":I
    .end local v12    # "remainingSpan":I
    .restart local v22    # "maxSizeInOther":F
    .restart local v24    # "otherDirSpecMode":I
    .restart local v25    # "remainingSpan":I
    iput v4, v10, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    .line 650
    const/4 v0, 0x0

    .line 650
    .local v0, "left":I
    const/4 v1, 0x0

    .line 650
    .local v1, "right":I
    const/4 v2, 0x0

    .line 650
    .local v2, "top":I
    const/4 v3, 0x0

    .line 651
    .local v3, "bottom":I
    iget v5, v6, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    const/4 v7, -0x1

    const/4 v8, 0x1

    if-ne v5, v8, :cond_17

    .line 652
    iget v5, v9, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v5, v7, :cond_16

    .line 653
    iget v3, v9, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 654
    sub-int v2, v3, v4

    goto :goto_c

    .line 656
    :cond_16
    iget v2, v9, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 657
    add-int v3, v2, v4

    goto :goto_c

    .line 660
    :cond_17
    iget v5, v9, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v5, v7, :cond_18

    .line 661
    iget v1, v9, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 662
    sub-int v0, v1, v4

    goto :goto_c

    .line 664
    :cond_18
    iget v0, v9, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 665
    add-int v1, v0, v4

    .line 668
    :goto_c
    const/16 v27, 0x0

    .line 668
    .local v27, "i":I
    :goto_d
    move/from16 v7, v27

    .line 668
    .end local v27    # "i":I
    .local v7, "i":I
    if-ge v7, v14, :cond_1d

    .line 669
    iget-object v5, v6, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v8, v5, v7

    .line 670
    .local v8, "view":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    .line 671
    .local v11, "params":Landroid/support/v7/widget/GridLayoutManager$LayoutParams;
    iget v5, v6, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    const/4 v12, 0x1

    if-ne v5, v12, :cond_1a

    .line 672
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->isLayoutRTL()Z

    move-result v5

    if-eqz v5, :cond_19

    .line 673
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v5

    iget-object v12, v6, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    move/from16 v28, v0

    iget v0, v6, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    .line 673
    .end local v0    # "left":I
    .local v28, "left":I
    move/from16 v29, v1

    iget v1, v11, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 673
    .end local v1    # "right":I
    .local v29, "right":I
    sub-int/2addr v0, v1

    aget v0, v12, v0

    add-int/2addr v5, v0

    .line 674
    .end local v29    # "right":I
    .local v5, "right":I
    iget-object v0, v6, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0, v8}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v0

    sub-int v0, v5, v0

    .line 685
    .end local v28    # "left":I
    .restart local v0    # "left":I
    move/from16 v28, v0

    move v12, v2

    move/from16 v18, v3

    move/from16 v29, v5

    goto :goto_e

    .line 676
    .end local v5    # "right":I
    .restart local v1    # "right":I
    :cond_19
    move/from16 v28, v0

    move/from16 v29, v1

    .line 676
    .end local v0    # "left":I
    .end local v1    # "right":I
    .restart local v28    # "left":I
    .restart local v29    # "right":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v0

    iget-object v1, v6, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    iget v5, v11, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    aget v1, v1, v5

    add-int/2addr v0, v1

    .line 677
    .end local v28    # "left":I
    .restart local v0    # "left":I
    iget-object v1, v6, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v1, v8}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v0

    .line 685
    .end local v29    # "right":I
    .restart local v1    # "right":I
    move/from16 v28, v0

    move/from16 v29, v1

    move v12, v2

    move/from16 v18, v3

    goto :goto_e

    .line 680
    :cond_1a
    move/from16 v28, v0

    move/from16 v29, v1

    .line 680
    .end local v0    # "left":I
    .end local v1    # "right":I
    .restart local v28    # "left":I
    .restart local v29    # "right":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingTop()I

    move-result v0

    iget-object v1, v6, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    iget v5, v11, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    aget v1, v1, v5

    add-int/2addr v0, v1

    .line 681
    .end local v2    # "top":I
    .local v0, "top":I
    iget-object v1, v6, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v1, v8}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v0

    .line 685
    .end local v3    # "bottom":I
    .local v1, "bottom":I
    move v12, v0

    move/from16 v18, v1

    .line 685
    .end local v0    # "top":I
    .end local v1    # "bottom":I
    .local v12, "top":I
    .local v18, "bottom":I
    :goto_e
    move-object v0, v6

    move-object v1, v8

    move/from16 v2, v28

    move v3, v12

    move/from16 v19, v4

    move/from16 v4, v29

    .line 685
    .end local v4    # "maxSize":I
    .local v19, "maxSize":I
    move/from16 v20, v22

    move/from16 v5, v18

    .line 685
    .end local v22    # "maxSizeInOther":F
    .restart local v20    # "maxSizeInOther":F
    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/GridLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 693
    invoke-virtual {v11}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {v11}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_f

    .line 696
    :cond_1b
    const/4 v0, 0x1

    goto :goto_10

    .line 694
    :cond_1c
    :goto_f
    const/4 v0, 0x1

    iput-boolean v0, v10, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    .line 696
    :goto_10
    iget-boolean v1, v10, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    invoke-virtual {v8}, Landroid/view/View;->hasFocusable()Z

    move-result v2

    or-int/2addr v1, v2

    iput-boolean v1, v10, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    .line 668
    .end local v8    # "view":Landroid/view/View;
    .end local v11    # "params":Landroid/support/v7/widget/GridLayoutManager$LayoutParams;
    add-int/lit8 v27, v7, 0x1

    .line 668
    .end local v7    # "i":I
    .restart local v27    # "i":I
    move v2, v12

    move/from16 v3, v18

    move/from16 v4, v19

    move/from16 v22, v20

    move/from16 v0, v28

    move/from16 v1, v29

    goto/16 :goto_d

    .line 698
    .end local v12    # "top":I
    .end local v18    # "bottom":I
    .end local v19    # "maxSize":I
    .end local v20    # "maxSizeInOther":F
    .end local v27    # "i":I
    .end local v28    # "left":I
    .end local v29    # "right":I
    .local v0, "left":I
    .local v1, "right":I
    .restart local v2    # "top":I
    .restart local v3    # "bottom":I
    .restart local v4    # "maxSize":I
    .restart local v22    # "maxSizeInOther":F
    :cond_1d
    move/from16 v28, v0

    move/from16 v29, v1

    move/from16 v19, v4

    move/from16 v20, v22

    .line 698
    .end local v0    # "left":I
    .end local v1    # "right":I
    .end local v4    # "maxSize":I
    .end local v22    # "maxSizeInOther":F
    .restart local v19    # "maxSize":I
    .restart local v20    # "maxSizeInOther":F
    .restart local v28    # "left":I
    .restart local v29    # "right":I
    iget-object v0, v6, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 699
    return-void
.end method

.method onAnchorReady(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;I)V
    .locals 1
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p3, "anchorInfo"    # Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;
    .param p4, "itemDirection"    # I

    .line 354
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;->onAnchorReady(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;I)V

    .line 355
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->updateMeasurements()V

    .line 356
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_0

    .line 357
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/GridLayoutManager;->ensureAnchorIsInCorrectSpan(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;I)V

    .line 359
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->ensureViewSet()V

    .line 360
    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .locals 36
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "focusDirection"    # I
    .param p3, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p4, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 994
    move-object/from16 v2, p4

    invoke-virtual/range {p0 .. p1}, Landroid/support/v7/widget/GridLayoutManager;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    .line 995
    .local v3, "prevFocusedChild":Landroid/view/View;
    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 996
    return-object v4

    .line 998
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    .line 999
    .local v5, "lp":Landroid/support/v7/widget/GridLayoutManager$LayoutParams;
    iget v6, v5, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 1000
    .local v6, "prevSpanStart":I
    iget v7, v5, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    iget v8, v5, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    add-int/2addr v7, v8

    .line 1001
    .local v7, "prevSpanEnd":I
    invoke-super/range {p0 .. p4}, Landroid/support/v7/widget/LinearLayoutManager;->onFocusSearchFailed(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v8

    .line 1002
    .local v8, "view":Landroid/view/View;
    if-nez v8, :cond_1

    .line 1003
    return-object v4

    .line 1007
    :cond_1
    move/from16 v4, p2

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/GridLayoutManager;->convertFocusDirectionToLayoutDirection(I)I

    move-result v9

    .line 1008
    .local v9, "layoutDir":I
    const/4 v11, 0x1

    if-ne v9, v11, :cond_2

    move v12, v11

    goto :goto_0

    :cond_2
    const/4 v12, 0x0

    :goto_0
    iget-boolean v13, v0, Landroid/support/v7/widget/GridLayoutManager;->mShouldReverseLayout:Z

    if-eq v12, v13, :cond_3

    move v12, v11

    goto :goto_1

    :cond_3
    const/4 v12, 0x0

    .line 1010
    .local v12, "ascend":Z
    :goto_1
    if-eqz v12, :cond_4

    .line 1011
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->getChildCount()I

    move-result v13

    sub-int/2addr v13, v11

    .line 1012
    .local v13, "start":I
    const/4 v14, -0x1

    .line 1013
    .local v14, "inc":I
    const/4 v15, -0x1

    .line 1013
    .local v15, "limit":I
    goto :goto_2

    .line 1015
    .end local v13    # "start":I
    .end local v14    # "inc":I
    .end local v15    # "limit":I
    :cond_4
    const/4 v13, 0x0

    .line 1016
    .restart local v13    # "start":I
    const/4 v14, 0x1

    .line 1017
    .restart local v14    # "inc":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->getChildCount()I

    move-result v15

    .line 1019
    .restart local v15    # "limit":I
    :goto_2
    iget v10, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    if-ne v10, v11, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->isLayoutRTL()Z

    move-result v10

    if-eqz v10, :cond_5

    move v10, v11

    goto :goto_3

    :cond_5
    const/4 v10, 0x0

    .line 1024
    .local v10, "preferLastSpan":Z
    :goto_3
    const/16 v17, 0x0

    .line 1025
    .local v17, "focusableWeakCandidate":Landroid/view/View;
    const/16 v18, -0x1

    .line 1026
    .local v18, "focusableWeakCandidateSpanIndex":I
    const/16 v19, 0x0

    .line 1034
    .local v19, "focusableWeakCandidateOverlap":I
    const/16 v20, 0x0

    .line 1035
    .local v20, "unfocusableWeakCandidate":Landroid/view/View;
    const/16 v21, -0x1

    .line 1036
    .local v21, "unfocusableWeakCandidateSpanIndex":I
    const/16 v22, 0x0

    .line 1043
    .local v22, "unfocusableWeakCandidateOverlap":I
    invoke-direct {v0, v1, v2, v13}, Landroid/support/v7/widget/GridLayoutManager;->getSpanGroupIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v11

    .line 1044
    .local v11, "focusableSpanGroupIndex":I
    move-object/from16 v23, v5

    move-object/from16 v24, v8

    move/from16 v25, v9

    move/from16 v4, v18

    move/from16 v5, v19

    move/from16 v8, v21

    move/from16 v9, v22

    move-object/from16 v18, v17

    move/from16 v17, v13

    .line 1044
    .end local v19    # "focusableWeakCandidateOverlap":I
    .end local v21    # "unfocusableWeakCandidateSpanIndex":I
    .end local v22    # "unfocusableWeakCandidateOverlap":I
    .local v4, "focusableWeakCandidateSpanIndex":I
    .local v5, "focusableWeakCandidateOverlap":I
    .local v8, "unfocusableWeakCandidateSpanIndex":I
    .local v9, "unfocusableWeakCandidateOverlap":I
    .local v17, "i":I
    .local v18, "focusableWeakCandidate":Landroid/view/View;
    .local v23, "lp":Landroid/support/v7/widget/GridLayoutManager$LayoutParams;
    .local v24, "view":Landroid/view/View;
    .local v25, "layoutDir":I
    :goto_4
    move/from16 v26, v17

    .line 1044
    .end local v17    # "i":I
    .local v26, "i":I
    move/from16 v27, v12

    move/from16 v12, v26

    if-eq v12, v15, :cond_18

    .line 1045
    .end local v26    # "i":I
    .local v12, "i":I
    .local v27, "ascend":Z
    move/from16 v28, v13

    invoke-direct {v0, v1, v2, v12}, Landroid/support/v7/widget/GridLayoutManager;->getSpanGroupIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v13

    .line 1046
    .local v13, "spanGroupIndex":I
    .local v28, "start":I
    invoke-virtual {v0, v12}, Landroid/support/v7/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1047
    .local v1, "candidate":Landroid/view/View;
    if-ne v1, v3, :cond_6

    .line 1048
    nop

    .line 1111
    .end local v1    # "candidate":Landroid/view/View;
    .end local v3    # "prevFocusedChild":Landroid/view/View;
    .end local v4    # "focusableWeakCandidateSpanIndex":I
    .end local v5    # "focusableWeakCandidateOverlap":I
    .end local v11    # "focusableSpanGroupIndex":I
    .end local v12    # "i":I
    .end local v13    # "spanGroupIndex":I
    .local v29, "prevFocusedChild":Landroid/view/View;
    .local v30, "focusableSpanGroupIndex":I
    .local v33, "focusableWeakCandidateSpanIndex":I
    .local v34, "focusableWeakCandidateOverlap":I
    :goto_5
    move-object/from16 v29, v3

    move/from16 v33, v4

    move/from16 v34, v5

    move/from16 v30, v11

    goto/16 :goto_e

    .line 1051
    .end local v29    # "prevFocusedChild":Landroid/view/View;
    .end local v30    # "focusableSpanGroupIndex":I
    .end local v33    # "focusableWeakCandidateSpanIndex":I
    .end local v34    # "focusableWeakCandidateOverlap":I
    .restart local v1    # "candidate":Landroid/view/View;
    .restart local v3    # "prevFocusedChild":Landroid/view/View;
    .restart local v4    # "focusableWeakCandidateSpanIndex":I
    .restart local v5    # "focusableWeakCandidateOverlap":I
    .restart local v11    # "focusableSpanGroupIndex":I
    .restart local v12    # "i":I
    .restart local v13    # "spanGroupIndex":I
    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v17

    if-eqz v17, :cond_8

    if-eq v13, v11, :cond_8

    .line 1056
    if-eqz v18, :cond_7

    .line 1057
    goto :goto_5

    .line 1044
    .end local v1    # "candidate":Landroid/view/View;
    .end local v13    # "spanGroupIndex":I
    :cond_7
    move-object/from16 v29, v3

    move/from16 v33, v4

    move/from16 v34, v5

    move/from16 v30, v11

    goto/16 :goto_c

    .line 1062
    .restart local v1    # "candidate":Landroid/view/View;
    .restart local v13    # "spanGroupIndex":I
    :cond_8
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    move-object/from16 v2, v17

    check-cast v2, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    .line 1063
    .local v2, "candidateLp":Landroid/support/v7/widget/GridLayoutManager$LayoutParams;
    move-object/from16 v29, v3

    iget v3, v2, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 1064
    .local v3, "candidateStart":I
    .restart local v29    # "prevFocusedChild":Landroid/view/View;
    move/from16 v30, v11

    iget v11, v2, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 1064
    .end local v11    # "focusableSpanGroupIndex":I
    .restart local v30    # "focusableSpanGroupIndex":I
    move/from16 v31, v13

    iget v13, v2, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    .line 1064
    .end local v13    # "spanGroupIndex":I
    .local v31, "spanGroupIndex":I
    add-int/2addr v11, v13

    .line 1065
    .local v11, "candidateEnd":I
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v13

    if-eqz v13, :cond_9

    if-ne v3, v6, :cond_9

    if-ne v11, v7, :cond_9

    .line 1067
    return-object v1

    .line 1069
    :cond_9
    const/4 v13, 0x0

    .line 1070
    .local v13, "assignAsWeek":Z
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v17

    if-eqz v17, :cond_a

    if-eqz v18, :cond_b

    .line 1071
    :cond_a
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v17

    if-nez v17, :cond_c

    if-nez v20, :cond_c

    .line 1072
    :cond_b
    const/4 v13, 0x1

    .line 1097
    move/from16 v33, v4

    .line 1097
    .end local v4    # "focusableWeakCandidateSpanIndex":I
    .end local v5    # "focusableWeakCandidateOverlap":I
    .restart local v33    # "focusableWeakCandidateSpanIndex":I
    .restart local v34    # "focusableWeakCandidateOverlap":I
    :goto_6
    move/from16 v34, v5

    :goto_7
    const/4 v5, 0x0

    goto/16 :goto_b

    .line 1074
    .end local v33    # "focusableWeakCandidateSpanIndex":I
    .end local v34    # "focusableWeakCandidateOverlap":I
    .restart local v4    # "focusableWeakCandidateSpanIndex":I
    .restart local v5    # "focusableWeakCandidateOverlap":I
    :cond_c
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 1075
    .local v17, "maxStart":I
    invoke-static {v11, v7}, Ljava/lang/Math;->min(II)I

    move-result v19

    .line 1076
    .local v19, "minEnd":I
    move/from16 v32, v13

    sub-int v13, v19, v17

    .line 1077
    .local v13, "overlap":I
    .local v32, "assignAsWeek":Z
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v21

    if-eqz v21, :cond_11

    .line 1078
    if-le v13, v5, :cond_d

    .line 1079
    const/16 v21, 0x1

    .line 1097
    .end local v32    # "assignAsWeek":Z
    .local v21, "assignAsWeek":Z
    move/from16 v33, v4

    move/from16 v34, v5

    move/from16 v13, v21

    goto :goto_7

    .line 1080
    .end local v21    # "assignAsWeek":Z
    .restart local v32    # "assignAsWeek":Z
    :cond_d
    if-ne v13, v5, :cond_10

    if-le v3, v4, :cond_e

    move/from16 v33, v4

    const/4 v4, 0x1

    goto :goto_8

    :cond_e
    move/from16 v33, v4

    const/4 v4, 0x0

    .line 1080
    .end local v4    # "focusableWeakCandidateSpanIndex":I
    .restart local v33    # "focusableWeakCandidateSpanIndex":I
    :goto_8
    if-ne v10, v4, :cond_f

    .line 1083
    const/4 v4, 0x1

    .line 1097
    .end local v32    # "assignAsWeek":Z
    .local v4, "assignAsWeek":Z
    move v13, v4

    goto :goto_6

    .line 1097
    .end local v4    # "assignAsWeek":Z
    .end local v13    # "overlap":I
    .end local v17    # "maxStart":I
    .end local v19    # "minEnd":I
    .restart local v32    # "assignAsWeek":Z
    :cond_f
    move/from16 v34, v5

    const/4 v5, 0x0

    goto :goto_a

    .line 1097
    .end local v33    # "focusableWeakCandidateSpanIndex":I
    .local v4, "focusableWeakCandidateSpanIndex":I
    :cond_10
    move/from16 v33, v4

    move/from16 v34, v5

    const/4 v5, 0x0

    .line 1097
    .end local v4    # "focusableWeakCandidateSpanIndex":I
    .restart local v33    # "focusableWeakCandidateSpanIndex":I
    goto :goto_a

    .line 1085
    .end local v33    # "focusableWeakCandidateSpanIndex":I
    .restart local v4    # "focusableWeakCandidateSpanIndex":I
    .restart local v13    # "overlap":I
    .restart local v17    # "maxStart":I
    .restart local v19    # "minEnd":I
    :cond_11
    move/from16 v33, v4

    .line 1085
    .end local v4    # "focusableWeakCandidateSpanIndex":I
    .restart local v33    # "focusableWeakCandidateSpanIndex":I
    if-nez v18, :cond_14

    .line 1086
    move/from16 v34, v5

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5, v4}, Landroid/support/v7/widget/GridLayoutManager;->isViewPartiallyVisible(Landroid/view/View;ZZ)Z

    move-result v16

    .line 1086
    .end local v5    # "focusableWeakCandidateOverlap":I
    .restart local v34    # "focusableWeakCandidateOverlap":I
    if-eqz v16, :cond_15

    .line 1087
    if-le v13, v9, :cond_12

    .line 1088
    const/16 v16, 0x1

    .line 1097
    .end local v32    # "assignAsWeek":Z
    .local v16, "assignAsWeek":Z
    move/from16 v13, v16

    goto :goto_b

    .line 1089
    .end local v16    # "assignAsWeek":Z
    .restart local v32    # "assignAsWeek":Z
    :cond_12
    if-ne v13, v9, :cond_15

    if-le v3, v8, :cond_13

    goto :goto_9

    :cond_13
    move v4, v5

    :goto_9
    if-ne v10, v4, :cond_15

    .line 1092
    const/4 v13, 0x1

    .line 1092
    .end local v17    # "maxStart":I
    .end local v19    # "minEnd":I
    .end local v32    # "assignAsWeek":Z
    .local v13, "assignAsWeek":Z
    goto :goto_b

    .line 1097
    .end local v13    # "assignAsWeek":Z
    .end local v34    # "focusableWeakCandidateOverlap":I
    .restart local v5    # "focusableWeakCandidateOverlap":I
    .restart local v32    # "assignAsWeek":Z
    :cond_14
    move/from16 v34, v5

    const/4 v5, 0x0

    .line 1097
    .end local v5    # "focusableWeakCandidateOverlap":I
    .restart local v34    # "focusableWeakCandidateOverlap":I
    :cond_15
    :goto_a
    move/from16 v13, v32

    .line 1097
    .end local v32    # "assignAsWeek":Z
    .restart local v13    # "assignAsWeek":Z
    :goto_b
    if-eqz v13, :cond_17

    .line 1098
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 1099
    move-object v4, v1

    .line 1100
    .end local v18    # "focusableWeakCandidate":Landroid/view/View;
    .local v4, "focusableWeakCandidate":Landroid/view/View;
    iget v5, v2, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 1101
    .end local v33    # "focusableWeakCandidateSpanIndex":I
    .local v5, "focusableWeakCandidateSpanIndex":I
    invoke-static {v11, v7}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 1102
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v17

    sub-int v16, v16, v17

    .line 1044
    .end local v34    # "focusableWeakCandidateOverlap":I
    .local v16, "focusableWeakCandidateOverlap":I
    move-object/from16 v18, v4

    move v4, v5

    move/from16 v5, v16

    goto :goto_d

    .line 1104
    .end local v4    # "focusableWeakCandidate":Landroid/view/View;
    .end local v5    # "focusableWeakCandidateSpanIndex":I
    .end local v16    # "focusableWeakCandidateOverlap":I
    .restart local v18    # "focusableWeakCandidate":Landroid/view/View;
    .restart local v33    # "focusableWeakCandidateSpanIndex":I
    .restart local v34    # "focusableWeakCandidateOverlap":I
    :cond_16
    move-object v4, v1

    .line 1105
    .end local v20    # "unfocusableWeakCandidate":Landroid/view/View;
    .local v4, "unfocusableWeakCandidate":Landroid/view/View;
    iget v5, v2, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 1106
    .end local v8    # "unfocusableWeakCandidateSpanIndex":I
    .local v5, "unfocusableWeakCandidateSpanIndex":I
    invoke-static {v11, v7}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 1107
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v16

    sub-int v8, v8, v16

    .line 1044
    .end local v1    # "candidate":Landroid/view/View;
    .end local v2    # "candidateLp":Landroid/support/v7/widget/GridLayoutManager$LayoutParams;
    .end local v3    # "candidateStart":I
    .end local v9    # "unfocusableWeakCandidateOverlap":I
    .end local v11    # "candidateEnd":I
    .end local v13    # "assignAsWeek":Z
    .end local v31    # "spanGroupIndex":I
    .local v8, "unfocusableWeakCandidateOverlap":I
    move-object/from16 v20, v4

    move v9, v8

    move/from16 v4, v33

    move v8, v5

    move/from16 v5, v34

    goto :goto_d

    .line 1044
    .end local v29    # "prevFocusedChild":Landroid/view/View;
    .end local v30    # "focusableSpanGroupIndex":I
    .end local v33    # "focusableWeakCandidateSpanIndex":I
    .end local v34    # "focusableWeakCandidateOverlap":I
    .local v3, "prevFocusedChild":Landroid/view/View;
    .local v4, "focusableWeakCandidateSpanIndex":I
    .local v5, "focusableWeakCandidateOverlap":I
    .local v8, "unfocusableWeakCandidateSpanIndex":I
    .restart local v9    # "unfocusableWeakCandidateOverlap":I
    .local v11, "focusableSpanGroupIndex":I
    .restart local v20    # "unfocusableWeakCandidate":Landroid/view/View;
    :cond_17
    :goto_c
    move/from16 v4, v33

    move/from16 v5, v34

    .line 1044
    .end local v3    # "prevFocusedChild":Landroid/view/View;
    .end local v11    # "focusableSpanGroupIndex":I
    .restart local v29    # "prevFocusedChild":Landroid/view/View;
    .restart local v30    # "focusableSpanGroupIndex":I
    :goto_d
    add-int v17, v12, v14

    .line 1044
    .end local v12    # "i":I
    .local v17, "i":I
    move/from16 v12, v27

    move/from16 v13, v28

    move-object/from16 v3, v29

    move/from16 v11, v30

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    goto/16 :goto_4

    .line 1111
    .end local v17    # "i":I
    .end local v28    # "start":I
    .end local v29    # "prevFocusedChild":Landroid/view/View;
    .end local v30    # "focusableSpanGroupIndex":I
    .restart local v3    # "prevFocusedChild":Landroid/view/View;
    .restart local v11    # "focusableSpanGroupIndex":I
    .local v13, "start":I
    :cond_18
    move-object/from16 v29, v3

    move/from16 v33, v4

    move/from16 v34, v5

    move/from16 v30, v11

    move/from16 v28, v13

    .line 1111
    .end local v3    # "prevFocusedChild":Landroid/view/View;
    .end local v4    # "focusableWeakCandidateSpanIndex":I
    .end local v5    # "focusableWeakCandidateOverlap":I
    .end local v11    # "focusableSpanGroupIndex":I
    .end local v13    # "start":I
    .restart local v28    # "start":I
    .restart local v29    # "prevFocusedChild":Landroid/view/View;
    .restart local v30    # "focusableSpanGroupIndex":I
    .restart local v33    # "focusableWeakCandidateSpanIndex":I
    .restart local v34    # "focusableWeakCandidateOverlap":I
    :goto_e
    if-eqz v18, :cond_19

    move-object/from16 v1, v18

    goto :goto_f

    :cond_19
    move-object/from16 v1, v20

    :goto_f
    return-object v1
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 11
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p3, "host"    # Landroid/view/View;
    .param p4, "info"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 145
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 146
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v1, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    if-nez v1, :cond_0

    .line 147
    invoke-super {p0, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 148
    return-void

    .line 150
    :cond_0
    move-object v1, v0

    check-cast v1, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    .line 151
    .local v1, "glp":Landroid/support/v7/widget/GridLayoutManager$LayoutParams;
    invoke-virtual {v1}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v2

    invoke-direct {p0, p1, p2, v2}, Landroid/support/v7/widget/GridLayoutManager;->getSpanGroupIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v2

    .line 152
    .local v2, "spanGroupIndex":I
    iget v3, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_2

    .line 153
    nop

    .line 154
    invoke-virtual {v1}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v3

    invoke-virtual {v1}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v6

    const/4 v7, 0x1

    iget v8, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    if-le v8, v5, :cond_1

    .line 156
    invoke-virtual {v1}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v8

    iget v9, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    if-ne v8, v9, :cond_1

    move v8, v5

    goto :goto_0

    :cond_1
    move v8, v4

    :goto_0
    const/4 v9, 0x0

    .line 153
    move v4, v6

    move v5, v2

    move v6, v7

    move v7, v8

    move v8, v9

    invoke-static/range {v3 .. v8}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v3

    invoke-virtual {p4, v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    goto :goto_2

    .line 158
    :cond_2
    const/4 v6, 0x1

    .line 160
    invoke-virtual {v1}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v7

    invoke-virtual {v1}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v8

    iget v3, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    if-le v3, v5, :cond_3

    .line 161
    invoke-virtual {v1}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v3

    iget v9, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    if-ne v3, v9, :cond_3

    move v9, v5

    goto :goto_1

    :cond_3
    move v9, v4

    :goto_1
    const/4 v10, 0x0

    .line 158
    move v3, v2

    move v4, v6

    move v5, v7

    move v6, v8

    move v7, v9

    move v8, v10

    invoke-static/range {v3 .. v8}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v3

    invoke-virtual {p4, v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    .line 163
    :goto_2
    return-void
.end method

.method public onItemsAdded(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .line 200
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 201
    return-void
.end method

.method public onItemsChanged(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .line 205
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 206
    return-void
.end method

.method public onItemsMoved(Landroid/support/v7/widget/RecyclerView;III)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "from"    # I
    .param p3, "to"    # I
    .param p4, "itemCount"    # I

    .line 221
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 222
    return-void
.end method

.method public onItemsRemoved(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .line 210
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 211
    return-void
.end method

.method public onItemsUpdated(Landroid/support/v7/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I
    .param p4, "payload"    # Ljava/lang/Object;

    .line 216
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 217
    return-void
.end method

.method public onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 1
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .line 167
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->cachePreLayoutSpanMapping()V

    .line 170
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 174
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->clearPreLayoutSpanMappingCache()V

    .line 175
    return-void
.end method

.method public onLayoutCompleted(Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 1
    .param p1, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .line 179
    invoke-super {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->onLayoutCompleted(Landroid/support/v7/widget/RecyclerView$State;)V

    .line 180
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 181
    return-void
.end method

.method public scrollHorizontallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "dx"    # I
    .param p2, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .line 371
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->updateMeasurements()V

    .line 372
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->ensureViewSet()V

    .line 373
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->scrollHorizontallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public scrollVerticallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "dy"    # I
    .param p2, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .line 379
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->updateMeasurements()V

    .line 380
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->ensureViewSet()V

    .line 381
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->scrollVerticallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public setMeasuredDimension(Landroid/graphics/Rect;II)V
    .locals 8
    .param p1, "childrenBounds"    # Landroid/graphics/Rect;
    .param p2, "wSpec"    # I
    .param p3, "hSpec"    # I

    .line 285
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    if-nez v0, :cond_0

    .line 286
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->setMeasuredDimension(Landroid/graphics/Rect;II)V

    .line 289
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 290
    .local v0, "horizontalPadding":I
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 291
    .local v1, "verticalPadding":I
    iget v2, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 292
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v2, v1

    .line 293
    .local v2, "usedHeight":I
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getMinimumHeight()I

    move-result v4

    invoke-static {p3, v2, v4}, Landroid/support/v7/widget/GridLayoutManager;->chooseSize(III)I

    move-result v4

    .line 294
    .local v4, "height":I
    iget-object v5, p0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    iget-object v6, p0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    array-length v6, v6

    sub-int/2addr v6, v3

    aget v3, v5, v6

    add-int/2addr v3, v0

    .line 295
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getMinimumWidth()I

    move-result v5

    .line 294
    invoke-static {p2, v3, v5}, Landroid/support/v7/widget/GridLayoutManager;->chooseSize(III)I

    move-result v2

    .line 296
    .local v2, "width":I
    nop

    .line 299
    move v7, v4

    move v4, v2

    move v2, v7

    goto :goto_0

    .line 297
    .end local v2    # "width":I
    .end local v4    # "height":I
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v2, v0

    .line 298
    .local v2, "usedWidth":I
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getMinimumWidth()I

    move-result v4

    invoke-static {p2, v2, v4}, Landroid/support/v7/widget/GridLayoutManager;->chooseSize(III)I

    move-result v4

    .line 299
    .local v4, "width":I
    iget-object v5, p0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    iget-object v6, p0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    array-length v6, v6

    sub-int/2addr v6, v3

    aget v3, v5, v6

    add-int/2addr v3, v1

    .line 300
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getMinimumHeight()I

    move-result v5

    .line 299
    invoke-static {p3, v3, v5}, Landroid/support/v7/widget/GridLayoutManager;->chooseSize(III)I

    move-result v2

    .line 302
    .local v2, "height":I
    :goto_0
    invoke-virtual {p0, v4, v2}, Landroid/support/v7/widget/GridLayoutManager;->setMeasuredDimension(II)V

    .line 303
    return-void
.end method

.method public setSpanCount(I)V
    .locals 3
    .param p1, "spanCount"    # I

    .line 809
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    if-ne p1, v0, :cond_0

    .line 810
    return-void

    .line 812
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 813
    if-ge p1, v0, :cond_1

    .line 814
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Span count should be at least 1. Provided "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 817
    :cond_1
    iput p1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    .line 818
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 819
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->requestLayout()V

    .line 820
    return-void
.end method

.method public setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V
    .locals 0
    .param p1, "spanSizeLookup"    # Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    .line 261
    iput-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    .line 262
    return-void
.end method

.method public setStackFromEnd(Z)V
    .locals 2
    .param p1, "stackFromEnd"    # Z

    .line 106
    if-eqz p1, :cond_0

    .line 107
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "GridLayoutManager does not support stack from end. Consider using reverse layout"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    .line 112
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 1

    .line 1116
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
