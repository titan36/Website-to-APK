.class public abstract Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
.super Ljava/lang/Object;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SpanSizeLookup"
.end annotation


# instance fields
.field private mCacheSpanIndices:Z

.field final mSpanIndexCache:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 829
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 831
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    .line 833
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    return-void
.end method


# virtual methods
.method findReferenceIndexFromCache(I)I
    .locals 4
    .param p1, "position"    # I

    .line 939
    const/4 v0, 0x0

    .line 940
    .local v0, "lo":I
    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 942
    .local v1, "hi":I
    :goto_0
    if-gt v0, v1, :cond_1

    .line 943
    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 944
    .local v2, "mid":I
    iget-object v3, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 945
    .local v3, "midVal":I
    if-ge v3, p1, :cond_0

    .line 946
    add-int/lit8 v0, v2, 0x1

    goto :goto_1

    .line 948
    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 950
    .end local v1    # "hi":I
    .end local v3    # "midVal":I
    .local v2, "hi":I
    move v1, v2

    .line 950
    .end local v2    # "hi":I
    .restart local v1    # "hi":I
    :goto_1
    goto :goto_0

    .line 951
    :cond_1
    add-int/lit8 v2, v0, -0x1

    .line 952
    .local v2, "index":I
    if-ltz v2, :cond_2

    iget-object v3, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 953
    iget-object v3, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    return v3

    .line 955
    :cond_2
    const/4 v3, -0x1

    return v3
.end method

.method getCachedSpanIndex(II)I
    .locals 3
    .param p1, "position"    # I
    .param p2, "spanCount"    # I

    .line 872
    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    if-nez v0, :cond_0

    .line 873
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanIndex(II)I

    move-result v0

    return v0

    .line 875
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 876
    .local v0, "existing":I
    if-eq v0, v1, :cond_1

    .line 877
    return v0

    .line 879
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanIndex(II)I

    move-result v1

    .line 880
    .local v1, "value":I
    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 881
    return v1
.end method

.method public getSpanGroupIndex(II)I
    .locals 5
    .param p1, "adapterPosition"    # I
    .param p2, "spanCount"    # I

    .line 969
    const/4 v0, 0x0

    .line 970
    .local v0, "span":I
    const/4 v1, 0x0

    .line 971
    .local v1, "group":I
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v2

    .line 972
    .local v2, "positionSpanSize":I
    const/4 v3, 0x0

    .line 972
    .local v3, "i":I
    :goto_0
    if-ge v3, p1, :cond_2

    .line 973
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v4

    .line 974
    .local v4, "size":I
    add-int/2addr v0, v4

    .line 975
    if-ne v0, p2, :cond_0

    .line 976
    const/4 v0, 0x0

    .line 977
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 978
    :cond_0
    if-le v0, p2, :cond_1

    .line 980
    move v0, v4

    .line 981
    add-int/lit8 v1, v1, 0x1

    .line 972
    .end local v4    # "size":I
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 984
    .end local v3    # "i":I
    :cond_2
    add-int v3, v0, v2

    if-le v3, p2, :cond_3

    .line 985
    add-int/lit8 v1, v1, 0x1

    .line 987
    :cond_3
    return v1
.end method

.method public getSpanIndex(II)I
    .locals 7
    .param p1, "position"    # I
    .param p2, "spanCount"    # I

    .line 908
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v0

    .line 909
    .local v0, "positionSpanSize":I
    const/4 v1, 0x0

    if-ne v0, p2, :cond_0

    .line 910
    return v1

    .line 912
    :cond_0
    const/4 v2, 0x0

    .line 913
    .local v2, "span":I
    const/4 v3, 0x0

    .line 915
    .local v3, "startPos":I
    iget-boolean v4, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 916
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->findReferenceIndexFromCache(I)I

    move-result v4

    .line 917
    .local v4, "prevKey":I
    if-ltz v4, :cond_1

    .line 918
    iget-object v5, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    invoke-virtual {p0, v4}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v6

    add-int v2, v5, v6

    .line 919
    add-int/lit8 v3, v4, 0x1

    .line 922
    .end local v4    # "prevKey":I
    :cond_1
    move v4, v2

    move v2, v3

    .line 922
    .local v2, "i":I
    .local v4, "span":I
    :goto_0
    if-ge v2, p1, :cond_4

    .line 923
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v5

    .line 924
    .local v5, "size":I
    add-int/2addr v4, v5

    .line 925
    if-ne v4, p2, :cond_2

    .line 926
    const/4 v4, 0x0

    goto :goto_1

    .line 927
    :cond_2
    if-le v4, p2, :cond_3

    .line 929
    move v4, v5

    .line 922
    .end local v5    # "size":I
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 932
    .end local v2    # "i":I
    :cond_4
    add-int v2, v4, v0

    if-gt v2, p2, :cond_5

    .line 933
    return v4

    .line 935
    :cond_5
    return v1
.end method

.method public abstract getSpanSize(I)I
.end method

.method public invalidateSpanIndexCache()V
    .locals 1

    .line 859
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 860
    return-void
.end method

.method public isSpanIndexCacheEnabled()Z
    .locals 1

    .line 868
    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    return v0
.end method

.method public setSpanIndexCacheEnabled(Z)V
    .locals 0
    .param p1, "cacheSpanIndices"    # Z

    .line 851
    iput-boolean p1, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    .line 852
    return-void
.end method
