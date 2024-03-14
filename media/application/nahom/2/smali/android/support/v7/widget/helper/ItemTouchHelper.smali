.class public Landroid/support/v7/widget/helper/ItemTouchHelper;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "ItemTouchHelper.java"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;,
        Landroid/support/v7/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;,
        Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;,
        Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;,
        Landroid/support/v7/widget/helper/ItemTouchHelper$ViewDropHandler;
    }
.end annotation


# static fields
.field static final ACTION_MODE_DRAG_MASK:I = 0xff0000

.field private static final ACTION_MODE_IDLE_MASK:I = 0xff

.field static final ACTION_MODE_SWIPE_MASK:I = 0xff00

.field public static final ACTION_STATE_DRAG:I = 0x2

.field public static final ACTION_STATE_IDLE:I = 0x0

.field public static final ACTION_STATE_SWIPE:I = 0x1

.field static final ACTIVE_POINTER_ID_NONE:I = -0x1

.field public static final ANIMATION_TYPE_DRAG:I = 0x8

.field public static final ANIMATION_TYPE_SWIPE_CANCEL:I = 0x4

.field public static final ANIMATION_TYPE_SWIPE_SUCCESS:I = 0x2

.field static final DEBUG:Z = false

.field static final DIRECTION_FLAG_COUNT:I = 0x8

.field public static final DOWN:I = 0x2

.field public static final END:I = 0x20

.field public static final LEFT:I = 0x4

.field private static final PIXELS_PER_SECOND:I = 0x3e8

.field public static final RIGHT:I = 0x8

.field public static final START:I = 0x10

.field static final TAG:Ljava/lang/String; = "ItemTouchHelper"

.field public static final UP:I = 0x1


# instance fields
.field mActionState:I

.field mActivePointerId:I

.field mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

.field private mChildDrawingOrderCallback:Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;

.field private mDistances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDragScrollStartTimeInMs:J

.field mDx:F

.field mDy:F

.field mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

.field mInitialTouchX:F

.field mInitialTouchY:F

.field private mItemTouchHelperGestureListener:Landroid/support/v7/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;

.field mMaxSwipeVelocity:F

.field private final mOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

.field mOverdrawChild:Landroid/view/View;

.field mOverdrawChildPosition:I

.field final mPendingCleanup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mRecoverAnimations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;",
            ">;"
        }
    .end annotation
.end field

.field mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field final mScrollRunnable:Ljava/lang/Runnable;

.field mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field mSelectedFlags:I

.field mSelectedStartX:F

.field mSelectedStartY:F

.field private mSlop:I

.field private mSwapTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mSwipeEscapeVelocity:F

.field private final mTmpPosition:[F

.field private mTmpRect:Landroid/graphics/Rect;

.field mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;)V
    .locals 3
    .param p1, "callback"    # Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    .line 432
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    .line 167
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 211
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    .line 221
    const/4 v2, 0x0

    iput v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActionState:I

    .line 237
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    .line 247
    new-instance v2, Landroid/support/v7/widget/helper/ItemTouchHelper$1;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/helper/ItemTouchHelper$1;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper;)V

    iput-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mScrollRunnable:Ljava/lang/Runnable;

    .line 274
    iput-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mChildDrawingOrderCallback:Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;

    .line 281
    iput-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 288
    iput v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mOverdrawChildPosition:I

    .line 300
    new-instance v0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/helper/ItemTouchHelper$2;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper;)V

    iput-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    .line 433
    iput-object p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    .line 434
    return-void
.end method

.method private addChildDrawingOrderCallback()V
    .locals 2

    .line 1263
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 1264
    return-void

    .line 1266
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mChildDrawingOrderCallback:Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;

    if-nez v0, :cond_1

    .line 1267
    new-instance v0, Landroid/support/v7/widget/helper/ItemTouchHelper$5;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/helper/ItemTouchHelper$5;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper;)V

    iput-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mChildDrawingOrderCallback:Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;

    .line 1285
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mChildDrawingOrderCallback:Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setChildDrawingOrderCallback(Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;)V

    .line 1286
    return-void
.end method

.method private checkHorizontalSwipe(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)I
    .locals 8
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "flags"    # I

    .line 1210
    and-int/lit8 v0, p2, 0xc

    if-eqz v0, :cond_3

    .line 1211
    iget v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v2, 0x4

    const/16 v3, 0x8

    if-lez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1212
    .local v0, "dirFlag":I
    :goto_0
    iget-object v4, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v4, :cond_2

    iget v4, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    const/4 v5, -0x1

    if-le v4, v5, :cond_2

    .line 1213
    iget-object v4, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    iget-object v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget v7, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mMaxSwipeVelocity:F

    .line 1214
    invoke-virtual {v6, v7}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getSwipeVelocityThreshold(F)F

    move-result v6

    .line 1213
    invoke-virtual {v4, v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1215
    iget-object v4, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v5, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {v4, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v4

    .line 1216
    .local v4, "xVelocity":F
    iget-object v5, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {v5, v6}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v5

    .line 1217
    .local v5, "yVelocity":F
    cmpl-float v1, v4, v1

    if-lez v1, :cond_1

    move v2, v3

    nop

    :cond_1
    move v1, v2

    .line 1218
    .local v1, "velDirFlag":I
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 1219
    .local v2, "absXVelocity":F
    and-int v3, v1, p2

    if-eqz v3, :cond_2

    if-ne v0, v1, :cond_2

    iget-object v3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSwipeEscapeVelocity:F

    .line 1220
    invoke-virtual {v3, v6}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getSwipeEscapeVelocity(F)F

    move-result v3

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_2

    .line 1221
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_2

    .line 1222
    return v1

    .line 1226
    .end local v1    # "velDirFlag":I
    .end local v2    # "absXVelocity":F
    .end local v4    # "xVelocity":F
    .end local v5    # "yVelocity":F
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    .line 1227
    invoke-virtual {v2, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getSwipeThreshold(Landroid/support/v7/widget/RecyclerView$ViewHolder;)F

    move-result v2

    mul-float/2addr v1, v2

    .line 1229
    .local v1, "threshold":F
    and-int v2, p2, v0

    if-eqz v2, :cond_3

    iget v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v1

    if-lez v2, :cond_3

    .line 1230
    return v0

    .line 1233
    .end local v0    # "dirFlag":I
    .end local v1    # "threshold":F
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private checkVerticalSwipe(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)I
    .locals 8
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "flags"    # I

    .line 1237
    and-int/lit8 v0, p2, 0x3

    if-eqz v0, :cond_3

    .line 1238
    iget v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-lez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1239
    .local v0, "dirFlag":I
    :goto_0
    iget-object v4, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v4, :cond_2

    iget v4, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    const/4 v5, -0x1

    if-le v4, v5, :cond_2

    .line 1240
    iget-object v4, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    iget-object v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget v7, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mMaxSwipeVelocity:F

    .line 1241
    invoke-virtual {v6, v7}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getSwipeVelocityThreshold(F)F

    move-result v6

    .line 1240
    invoke-virtual {v4, v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1242
    iget-object v4, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v5, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {v4, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v4

    .line 1243
    .local v4, "xVelocity":F
    iget-object v5, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {v5, v6}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v5

    .line 1244
    .local v5, "yVelocity":F
    cmpl-float v1, v5, v1

    if-lez v1, :cond_1

    move v2, v3

    nop

    :cond_1
    move v1, v2

    .line 1245
    .local v1, "velDirFlag":I
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 1246
    .local v2, "absYVelocity":F
    and-int v3, v1, p2

    if-eqz v3, :cond_2

    if-ne v1, v0, :cond_2

    iget-object v3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSwipeEscapeVelocity:F

    .line 1247
    invoke-virtual {v3, v6}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getSwipeEscapeVelocity(F)F

    move-result v3

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_2

    .line 1248
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_2

    .line 1249
    return v1

    .line 1253
    .end local v1    # "velDirFlag":I
    .end local v2    # "absYVelocity":F
    .end local v4    # "xVelocity":F
    .end local v5    # "yVelocity":F
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    .line 1254
    invoke-virtual {v2, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getSwipeThreshold(Landroid/support/v7/widget/RecyclerView$ViewHolder;)F

    move-result v2

    mul-float/2addr v1, v2

    .line 1255
    .local v1, "threshold":F
    and-int v2, p2, v0

    if-eqz v2, :cond_3

    iget v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v1

    if-lez v2, :cond_3

    .line 1256
    return v0

    .line 1259
    .end local v0    # "dirFlag":I
    .end local v1    # "threshold":F
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private destroyCallbacks()V
    .locals 6

    .line 480
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 481
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 482
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeOnChildAttachStateChangeListener(Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    .line 484
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 485
    .local v0, "recoverAnimSize":I
    add-int/lit8 v1, v0, -0x1

    .line 485
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 486
    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;

    .line 487
    .local v2, "recoverAnimation":Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;
    iget-object v3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget-object v4, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v2, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->clearView(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 485
    .end local v2    # "recoverAnimation":Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 489
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 490
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 491
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mOverdrawChildPosition:I

    .line 492
    invoke-direct {p0}, Landroid/support/v7/widget/helper/ItemTouchHelper;->releaseVelocityTracker()V

    .line 493
    invoke-direct {p0}, Landroid/support/v7/widget/helper/ItemTouchHelper;->stopGestureDetection()V

    .line 494
    return-void
.end method

.method private findSwapTargets(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Ljava/util/List;
    .locals 23
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ")",
            "Ljava/util/List<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 778
    move-object/from16 v1, p1

    iget-object v2, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    if-nez v2, :cond_0

    .line 779
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    .line 780
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDistances:Ljava/util/List;

    goto :goto_0

    .line 782
    :cond_0
    iget-object v2, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 783
    iget-object v2, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDistances:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 785
    :goto_0
    iget-object v2, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    invoke-virtual {v2}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getBoundingBoxMargin()I

    move-result v2

    .line 786
    .local v2, "margin":I
    iget v3, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedStartX:F

    iget v4, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    sub-int/2addr v3, v2

    .line 787
    .local v3, "left":I
    iget v4, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedStartY:F

    iget v5, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    sub-int/2addr v4, v2

    .line 788
    .local v4, "top":I
    iget-object v5, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v3

    const/4 v6, 0x2

    mul-int v7, v6, v2

    add-int/2addr v5, v7

    .line 789
    .local v5, "right":I
    iget-object v7, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v7, v4

    mul-int v8, v6, v2

    add-int/2addr v7, v8

    .line 790
    .local v7, "bottom":I
    add-int v8, v3, v5

    div-int/2addr v8, v6

    .line 791
    .local v8, "centerX":I
    add-int v9, v4, v7

    div-int/2addr v9, v6

    .line 792
    .local v9, "centerY":I
    iget-object v10, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v10

    .line 793
    .local v10, "lm":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v11

    .line 794
    .local v11, "childCount":I
    const/4 v13, 0x0

    .line 794
    .local v13, "i":I
    :goto_1
    if-ge v13, v11, :cond_6

    .line 795
    invoke-virtual {v10, v13}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 796
    .local v14, "other":Landroid/view/View;
    iget-object v15, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-ne v14, v15, :cond_1

    .line 797
    nop

    .line 794
    .end local v2    # "margin":I
    .end local v3    # "left":I
    .end local v14    # "other":Landroid/view/View;
    .local v19, "margin":I
    .local v21, "left":I
    :goto_2
    move/from16 v19, v2

    move/from16 v21, v3

    goto/16 :goto_4

    .line 799
    .end local v19    # "margin":I
    .end local v21    # "left":I
    .restart local v2    # "margin":I
    .restart local v3    # "left":I
    .restart local v14    # "other":Landroid/view/View;
    :cond_1
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v15

    if-lt v15, v4, :cond_5

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v15

    if-gt v15, v7, :cond_5

    .line 800
    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v15

    if-lt v15, v3, :cond_5

    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v15

    if-le v15, v5, :cond_2

    .line 801
    goto :goto_2

    .line 803
    :cond_2
    iget-object v15, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v15, v14}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v15

    .line 804
    .local v15, "otherVh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v12, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget-object v6, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v12, v6, v1, v15}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->canDropOver(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 806
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v6

    add-int/2addr v1, v6

    const/4 v6, 0x2

    div-int/2addr v1, v6

    sub-int v1, v8, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 807
    .local v1, "dx":I
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v12

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v16

    add-int v12, v12, v16

    div-int/2addr v12, v6

    sub-int v12, v9, v12

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    .line 808
    .local v12, "dy":I
    mul-int v16, v1, v1

    mul-int v17, v12, v12

    add-int v6, v16, v17

    .line 810
    .local v6, "dist":I
    const/16 v16, 0x0

    .line 811
    .local v16, "pos":I
    move/from16 v18, v1

    iget-object v1, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    .line 811
    .end local v1    # "dx":I
    .local v18, "dx":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 812
    .local v1, "cnt":I
    move/from16 v19, v2

    move/from16 v2, v16

    const/16 v16, 0x0

    .line 812
    .local v2, "pos":I
    .local v16, "j":I
    .restart local v19    # "margin":I
    :goto_3
    move/from16 v20, v16

    .line 812
    .end local v16    # "j":I
    .local v20, "j":I
    move/from16 v21, v3

    move/from16 v3, v20

    if-ge v3, v1, :cond_3

    .line 813
    .end local v20    # "j":I
    .local v3, "j":I
    .restart local v21    # "left":I
    move/from16 v22, v1

    iget-object v1, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDistances:Ljava/util/List;

    .line 813
    .end local v1    # "cnt":I
    .local v22, "cnt":I
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v6, v1, :cond_4

    .line 814
    add-int/lit8 v2, v2, 0x1

    .line 812
    add-int/lit8 v16, v3, 0x1

    .line 812
    .end local v3    # "j":I
    .restart local v16    # "j":I
    move/from16 v3, v21

    move/from16 v1, v22

    goto :goto_3

    .line 819
    .end local v16    # "j":I
    .end local v22    # "cnt":I
    .restart local v1    # "cnt":I
    :cond_3
    move/from16 v22, v1

    .line 819
    .end local v1    # "cnt":I
    .restart local v22    # "cnt":I
    :cond_4
    iget-object v1, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    invoke-interface {v1, v2, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 820
    iget-object v1, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDistances:Ljava/util/List;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 820
    .end local v2    # "pos":I
    .end local v6    # "dist":I
    .end local v12    # "dy":I
    .end local v14    # "other":Landroid/view/View;
    .end local v15    # "otherVh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .end local v18    # "dx":I
    .end local v22    # "cnt":I
    goto :goto_4

    .line 794
    .end local v19    # "margin":I
    .end local v21    # "left":I
    .local v2, "margin":I
    .local v3, "left":I
    :cond_5
    move/from16 v19, v2

    move/from16 v21, v3

    .line 794
    .end local v2    # "margin":I
    .end local v3    # "left":I
    .restart local v19    # "margin":I
    .restart local v21    # "left":I
    :goto_4
    add-int/lit8 v13, v13, 0x1

    move/from16 v2, v19

    move/from16 v3, v21

    move-object/from16 v1, p1

    const/4 v6, 0x2

    goto/16 :goto_1

    .line 823
    .end local v13    # "i":I
    .end local v19    # "margin":I
    .end local v21    # "left":I
    .restart local v2    # "margin":I
    .restart local v3    # "left":I
    :cond_6
    move/from16 v19, v2

    move/from16 v21, v3

    .line 823
    .end local v2    # "margin":I
    .end local v3    # "left":I
    .restart local v19    # "margin":I
    .restart local v21    # "left":I
    iget-object v1, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    return-object v1
.end method

.method private findSwipedView(Landroid/view/MotionEvent;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 8
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 926
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 927
    .local v0, "lm":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    iget v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 928
    return-object v2

    .line 930
    :cond_0
    iget v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 931
    .local v1, "pointerIndex":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget v4, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mInitialTouchX:F

    sub-float/2addr v3, v4

    .line 932
    .local v3, "dx":F
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iget v5, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mInitialTouchY:F

    sub-float/2addr v4, v5

    .line 933
    .local v4, "dy":F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 934
    .local v5, "absDx":F
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 936
    .local v6, "absDy":F
    iget v7, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSlop:I

    int-to-float v7, v7

    cmpg-float v7, v5, v7

    if-gez v7, :cond_1

    iget v7, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSlop:I

    int-to-float v7, v7

    cmpg-float v7, v6, v7

    if-gez v7, :cond_1

    .line 937
    return-object v2

    .line 939
    :cond_1
    cmpl-float v7, v5, v6

    if-lez v7, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 940
    return-object v2

    .line 941
    :cond_2
    cmpl-float v7, v6, v5

    if-lez v7, :cond_3

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 942
    return-object v2

    .line 944
    :cond_3
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->findChildView(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v7

    .line 945
    .local v7, "child":Landroid/view/View;
    if-nez v7, :cond_4

    .line 946
    return-object v2

    .line 948
    :cond_4
    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v7}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    return-object v2
.end method

.method private getSelectedDxDy([F)V
    .locals 3
    .param p1, "outPosition"    # [F

    .line 513
    iget v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedFlags:I

    and-int/lit8 v0, v0, 0xc

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 514
    iget v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedStartX:F

    iget v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    add-float/2addr v0, v2

    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    aput v0, p1, v1

    goto :goto_0

    .line 516
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    aput v0, p1, v1

    .line 518
    :goto_0
    iget v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedFlags:I

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 519
    iget v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedStartY:F

    iget v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    add-float/2addr v0, v2

    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    aput v0, p1, v1

    goto :goto_1

    .line 521
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    aput v0, p1, v1

    .line 523
    :goto_1
    return-void
.end method

.method private static hitTest(Landroid/view/View;FFFF)Z
    .locals 1
    .param p0, "child"    # Landroid/view/View;
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "left"    # F
    .param p4, "top"    # F

    .line 437
    cmpl-float v0, p1, p3

    if-ltz v0, :cond_0

    .line 438
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    cmpl-float v0, p2, p4

    if-ltz v0, :cond_0

    .line 440
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p4

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private releaseVelocityTracker()V
    .locals 1

    .line 919
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 920
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 921
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 923
    :cond_0
    return-void
.end method

.method private setupCallbacks()V
    .locals 3

    .line 471
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 472
    .local v0, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSlop:I

    .line 473
    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, p0}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 474
    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 475
    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, p0}, Landroid/support/v7/widget/RecyclerView;->addOnChildAttachStateChangeListener(Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    .line 476
    invoke-direct {p0}, Landroid/support/v7/widget/helper/ItemTouchHelper;->startGestureDetection()V

    .line 477
    return-void
.end method

.method private startGestureDetection()V
    .locals 3

    .line 497
    new-instance v0, Landroid/support/v7/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper;)V

    iput-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mItemTouchHelperGestureListener:Landroid/support/v7/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;

    .line 498
    new-instance v0, Landroid/support/v4/view/GestureDetectorCompat;

    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mItemTouchHelperGestureListener:Landroid/support/v7/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/support/v4/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

    .line 500
    return-void
.end method

.method private stopGestureDetection()V
    .locals 2

    .line 503
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mItemTouchHelperGestureListener:Landroid/support/v7/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mItemTouchHelperGestureListener:Landroid/support/v7/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;

    invoke-virtual {v0}, Landroid/support/v7/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->doNotReactToLongPress()V

    .line 505
    iput-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mItemTouchHelperGestureListener:Landroid/support/v7/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;

    .line 507
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

    if-eqz v0, :cond_1

    .line 508
    iput-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

    .line 510
    :cond_1
    return-void
.end method

.method private swipeIfNecessary(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 7
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 1164
    iget v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActionState:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 1165
    return v1

    .line 1167
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v0

    .line 1168
    .local v0, "originalMovementFlags":I
    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget-object v3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 1170
    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v3

    .line 1168
    invoke-virtual {v2, v0, v3}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->convertToAbsoluteDirection(II)I

    move-result v2

    .line 1171
    .local v2, "absoluteMovementFlags":I
    const v3, 0xff00

    and-int v4, v2, v3

    shr-int/lit8 v4, v4, 0x8

    .line 1173
    .local v4, "flags":I
    if-nez v4, :cond_1

    .line 1174
    return v1

    .line 1176
    :cond_1
    and-int/2addr v3, v0

    shr-int/lit8 v3, v3, 0x8

    .line 1179
    .local v3, "originalFlags":I
    iget v5, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4

    .line 1180
    invoke-direct {p0, p1, v4}, Landroid/support/v7/widget/helper/ItemTouchHelper;->checkHorizontalSwipe(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)I

    move-result v5

    move v6, v5

    .line 1180
    .local v6, "swipeDir":I
    if-lez v5, :cond_3

    .line 1182
    and-int v1, v3, v6

    if-nez v1, :cond_2

    .line 1184
    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 1185
    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    .line 1184
    invoke-static {v6, v1}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->convertToRelativeDirection(II)I

    move-result v1

    return v1

    .line 1187
    :cond_2
    return v6

    .line 1189
    :cond_3
    invoke-direct {p0, p1, v4}, Landroid/support/v7/widget/helper/ItemTouchHelper;->checkVerticalSwipe(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)I

    move-result v5

    move v6, v5

    if-lez v5, :cond_7

    .line 1190
    return v6

    .line 1193
    .end local v6    # "swipeDir":I
    :cond_4
    invoke-direct {p0, p1, v4}, Landroid/support/v7/widget/helper/ItemTouchHelper;->checkVerticalSwipe(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)I

    move-result v5

    move v6, v5

    .line 1193
    .restart local v6    # "swipeDir":I
    if-lez v5, :cond_5

    .line 1194
    return v6

    .line 1196
    :cond_5
    invoke-direct {p0, p1, v4}, Landroid/support/v7/widget/helper/ItemTouchHelper;->checkHorizontalSwipe(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)I

    move-result v5

    move v6, v5

    if-lez v5, :cond_7

    .line 1198
    and-int v1, v3, v6

    if-nez v1, :cond_6

    .line 1200
    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 1201
    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    .line 1200
    invoke-static {v6, v1}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->convertToRelativeDirection(II)I

    move-result v1

    return v1

    .line 1203
    :cond_6
    return v6

    .line 1206
    :cond_7
    return v1
.end method


# virtual methods
.method public attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 453
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-ne v0, p1, :cond_0

    .line 454
    return-void

    .line 456
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_1

    .line 457
    invoke-direct {p0}, Landroid/support/v7/widget/helper/ItemTouchHelper;->destroyCallbacks()V

    .line 459
    :cond_1
    iput-object p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 460
    if-eqz p1, :cond_2

    .line 461
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 462
    .local v0, "resources":Landroid/content/res/Resources;
    sget v1, Landroid/support/v7/recyclerview/R$dimen;->item_touch_helper_swipe_escape_velocity:I

    .line 463
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSwipeEscapeVelocity:F

    .line 464
    sget v1, Landroid/support/v7/recyclerview/R$dimen;->item_touch_helper_swipe_escape_max_velocity:I

    .line 465
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mMaxSwipeVelocity:F

    .line 466
    invoke-direct {p0}, Landroid/support/v7/widget/helper/ItemTouchHelper;->setupCallbacks()V

    .line 468
    .end local v0    # "resources":Landroid/content/res/Resources;
    :cond_2
    return-void
.end method

.method checkSelectForSwipe(ILandroid/view/MotionEvent;I)Z
    .locals 16
    .param p1, "action"    # I
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;
    .param p3, "pointerIndex"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 955
    iget-object v2, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    const/4 v3, 0x0

    if-nez v2, :cond_9

    const/4 v2, 0x2

    move/from16 v4, p1

    if-ne v4, v2, :cond_a

    iget v5, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActionState:I

    if-eq v5, v2, :cond_a

    iget-object v2, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    .line 956
    invoke-virtual {v2}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->isItemViewSwipeEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_0

    .line 959
    :cond_0
    iget-object v2, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getScrollState()I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_1

    .line 960
    return v3

    .line 962
    :cond_1
    invoke-direct {v0, v1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->findSwipedView(Landroid/view/MotionEvent;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 963
    .local v2, "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-nez v2, :cond_2

    .line 964
    return v3

    .line 966
    :cond_2
    iget-object v6, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget-object v7, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6, v7, v2}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getAbsoluteMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v6

    .line 968
    .local v6, "movementFlags":I
    const v7, 0xff00

    and-int/2addr v7, v6

    shr-int/lit8 v7, v7, 0x8

    .line 971
    .local v7, "swipeFlags":I
    if-nez v7, :cond_3

    .line 972
    return v3

    .line 977
    :cond_3
    invoke-virtual/range {p2 .. p3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    .line 978
    .local v8, "x":F
    invoke-virtual/range {p2 .. p3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    .line 981
    .local v9, "y":F
    iget v10, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mInitialTouchX:F

    sub-float v10, v8, v10

    .line 982
    .local v10, "dx":F
    iget v11, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mInitialTouchY:F

    sub-float v11, v9, v11

    .line 985
    .local v11, "dy":F
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v12

    .line 986
    .local v12, "absDx":F
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v13

    .line 988
    .local v13, "absDy":F
    iget v14, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSlop:I

    int-to-float v14, v14

    cmpg-float v14, v12, v14

    if-gez v14, :cond_4

    iget v14, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSlop:I

    int-to-float v14, v14

    cmpg-float v14, v13, v14

    if-gez v14, :cond_4

    .line 989
    return v3

    .line 991
    :cond_4
    cmpl-float v14, v12, v13

    const/4 v15, 0x0

    if-lez v14, :cond_6

    .line 992
    cmpg-float v14, v10, v15

    if-gez v14, :cond_5

    and-int/lit8 v14, v7, 0x4

    if-nez v14, :cond_5

    .line 993
    return v3

    .line 995
    :cond_5
    cmpl-float v14, v10, v15

    if-lez v14, :cond_8

    and-int/lit8 v14, v7, 0x8

    if-nez v14, :cond_8

    .line 996
    return v3

    .line 999
    :cond_6
    cmpg-float v14, v11, v15

    if-gez v14, :cond_7

    and-int/lit8 v14, v7, 0x1

    if-nez v14, :cond_7

    .line 1000
    return v3

    .line 1002
    :cond_7
    cmpl-float v14, v11, v15

    if-lez v14, :cond_8

    and-int/lit8 v14, v7, 0x2

    if-nez v14, :cond_8

    .line 1003
    return v3

    .line 1006
    :cond_8
    iput v15, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    iput v15, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    .line 1007
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    .line 1008
    invoke-virtual {v0, v2, v5}, Landroid/support/v7/widget/helper/ItemTouchHelper;->select(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 1009
    return v5

    .line 957
    .end local v2    # "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .end local v6    # "movementFlags":I
    .end local v7    # "swipeFlags":I
    .end local v8    # "x":F
    .end local v9    # "y":F
    .end local v10    # "dx":F
    .end local v11    # "dy":F
    .end local v12    # "absDx":F
    .end local v13    # "absDy":F
    :cond_9
    move/from16 v4, p1

    :cond_a
    :goto_0
    return v3
.end method

.method endRecoverAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)I
    .locals 4
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "override"    # Z

    .line 890
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 891
    .local v0, "recoverAnimSize":I
    add-int/lit8 v1, v0, -0x1

    .line 891
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 892
    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;

    .line 893
    .local v2, "anim":Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;
    iget-object v3, v2, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-ne v3, p1, :cond_1

    .line 894
    iget-boolean v3, v2, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mOverridden:Z

    or-int/2addr v3, p2

    iput-boolean v3, v2, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mOverridden:Z

    .line 895
    iget-boolean v3, v2, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mEnded:Z

    if-nez v3, :cond_0

    .line 896
    invoke-virtual {v2}, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->cancel()V

    .line 898
    :cond_0
    iget-object v3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 899
    iget v3, v2, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mAnimationType:I

    return v3

    .line 891
    .end local v2    # "anim":Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 902
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method findAnimation(Landroid/view/MotionEvent;)Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1129
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1130
    return-object v1

    .line 1132
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->findChildView(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v0

    .line 1133
    .local v0, "target":Landroid/view/View;
    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 1133
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 1134
    iget-object v3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;

    .line 1135
    .local v3, "anim":Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;
    iget-object v4, v3, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-ne v4, v0, :cond_1

    .line 1136
    return-object v3

    .line 1133
    .end local v3    # "anim":Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1139
    .end local v2    # "i":I
    :cond_2
    return-object v1
.end method

.method findChildView(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1014
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1015
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 1016
    .local v1, "y":F
    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v2, :cond_0

    .line 1017
    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1018
    .local v2, "selectedView":Landroid/view/View;
    iget v3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedStartX:F

    iget v4, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    add-float/2addr v3, v4

    iget v4, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedStartY:F

    iget v5, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    add-float/2addr v4, v5

    invoke-static {v2, v0, v1, v3, v4}, Landroid/support/v7/widget/helper/ItemTouchHelper;->hitTest(Landroid/view/View;FFFF)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1019
    return-object v2

    .line 1022
    .end local v2    # "selectedView":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 1022
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 1023
    iget-object v3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;

    .line 1024
    .local v3, "anim":Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;
    iget-object v4, v3, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1025
    .local v4, "view":Landroid/view/View;
    iget v5, v3, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mX:F

    iget v6, v3, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mY:F

    invoke-static {v4, v0, v1, v5, v6}, Landroid/support/v7/widget/helper/ItemTouchHelper;->hitTest(Landroid/view/View;FFFF)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1026
    return-object v4

    .line 1022
    .end local v3    # "anim":Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;
    .end local v4    # "view":Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1029
    .end local v2    # "i":I
    :cond_2
    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0, v1}, Landroid/support/v7/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 0
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p4, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .line 908
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 909
    return-void
.end method

.method hasRunningRecoverAnim()Z
    .locals 4

    .line 702
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 703
    .local v0, "size":I
    const/4 v1, 0x0

    move v2, v1

    .line 703
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 704
    iget-object v3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;

    iget-boolean v3, v3, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mEnded:Z

    if-nez v3, :cond_0

    .line 705
    const/4 v1, 0x1

    return v1

    .line 703
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 708
    .end local v2    # "i":I
    :cond_1
    return v1
.end method

.method moveIfNecessary(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 17
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object/from16 v0, p0

    .line 830
    move-object/from16 v9, p1

    iget-object v1, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->isLayoutRequested()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 831
    return-void

    .line 833
    :cond_0
    iget v1, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActionState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 834
    return-void

    .line 837
    :cond_1
    iget-object v1, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    invoke-virtual {v1, v9}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getMoveThreshold(Landroid/support/v7/widget/RecyclerView$ViewHolder;)F

    move-result v10

    .line 838
    .local v10, "threshold":F
    iget v1, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedStartX:F

    iget v2, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    add-float/2addr v1, v2

    float-to-int v11, v1

    .line 839
    .local v11, "x":I
    iget v1, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedStartY:F

    iget v2, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    add-float/2addr v1, v2

    float-to-int v12, v1

    .line 840
    .local v12, "y":I
    iget-object v1, v9, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v1, v12, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v9, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v10

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    iget-object v1, v9, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 841
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int v1, v11, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v9, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 842
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v10

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 843
    return-void

    .line 845
    :cond_2
    invoke-direct/range {p0 .. p1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->findSwapTargets(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Ljava/util/List;

    move-result-object v13

    .line 846
    .local v13, "swapTargets":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/RecyclerView$ViewHolder;>;"
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 847
    return-void

    .line 850
    :cond_3
    iget-object v1, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    invoke-virtual {v1, v9, v13, v11, v12}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->chooseDropTarget(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;II)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v14

    .line 851
    .local v14, "target":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-nez v14, :cond_4

    .line 852
    iget-object v1, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 853
    iget-object v1, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDistances:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 854
    return-void

    .line 856
    :cond_4
    invoke-virtual {v14}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v15

    .line 857
    .local v15, "toPosition":I
    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v16

    .line 858
    .local v16, "fromPosition":I
    iget-object v1, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget-object v2, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v2, v9, v14}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onMove(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 860
    iget-object v1, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget-object v2, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object v3, v9

    move/from16 v4, v16

    move-object v5, v14

    move v6, v15

    move v7, v11

    move v8, v12

    invoke-virtual/range {v1 .. v8}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onMoved(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;ILandroid/support/v7/widget/RecyclerView$ViewHolder;III)V

    .line 863
    :cond_5
    return-void
.end method

.method obtainVelocityTracker()V
    .locals 1

    .line 912
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 913
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 915
    :cond_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 916
    return-void
.end method

.method public onChildViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 867
    return-void
.end method

.method public onChildViewDetachedFromWindow(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 871
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V

    .line 872
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 873
    .local v0, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-nez v0, :cond_0

    .line 874
    return-void

    .line 876
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-ne v0, v1, :cond_1

    .line 877
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/helper/ItemTouchHelper;->select(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    goto :goto_0

    .line 879
    :cond_1
    invoke-virtual {p0, v0, v2}, Landroid/support/v7/widget/helper/ItemTouchHelper;->endRecoverAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)I

    .line 880
    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 881
    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v2, v0}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->clearView(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 884
    :cond_2
    :goto_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 10
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .line 540
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mOverdrawChildPosition:I

    .line 541
    const/4 v0, 0x0

    .line 541
    .local v0, "dx":F
    const/4 v1, 0x0

    .line 542
    .local v1, "dy":F
    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v2, :cond_0

    .line 543
    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    invoke-direct {p0, v2}, Landroid/support/v7/widget/helper/ItemTouchHelper;->getSelectedDxDy([F)V

    .line 544
    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    const/4 v3, 0x0

    aget v0, v2, v3

    .line 545
    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    const/4 v3, 0x1

    aget v1, v2, v3

    .line 547
    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget-object v5, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    iget v7, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActionState:I

    move-object v3, p1

    move-object v4, p2

    move v8, v0

    move v9, v1

    invoke-virtual/range {v2 .. v9}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;IFF)V

    .line 549
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 10
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .line 527
    const/4 v0, 0x0

    .line 527
    .local v0, "dx":F
    const/4 v1, 0x0

    .line 528
    .local v1, "dy":F
    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v2, :cond_0

    .line 529
    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    invoke-direct {p0, v2}, Landroid/support/v7/widget/helper/ItemTouchHelper;->getSelectedDxDy([F)V

    .line 530
    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    const/4 v3, 0x0

    aget v0, v2, v3

    .line 531
    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    const/4 v3, 0x1

    aget v1, v2, v3

    .line 533
    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget-object v5, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    iget v7, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActionState:I

    move-object v3, p1

    move-object v4, p2

    move v8, v0

    move v9, v1

    invoke-virtual/range {v2 .. v9}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;IFF)V

    .line 535
    return-void
.end method

.method postDispatchSwipe(Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;I)V
    .locals 2
    .param p1, "anim"    # Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;
    .param p2, "swipeDir"    # I

    .line 680
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/helper/ItemTouchHelper$4;

    invoke-direct {v1, p0, p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper$4;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 699
    return-void
.end method

.method removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 1289
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 1290
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 1292
    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mChildDrawingOrderCallback:Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;

    if-eqz v1, :cond_0

    .line 1293
    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setChildDrawingOrderCallback(Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;)V

    .line 1296
    :cond_0
    return-void
.end method

.method scrollIfNecessary()Z
    .locals 18

    .line 715
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    const/4 v2, 0x0

    const-wide/high16 v3, -0x8000000000000000L

    if-nez v1, :cond_0

    .line 716
    iput-wide v3, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 717
    return v2

    .line 719
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 720
    .local v5, "now":J
    iget-wide v7, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    cmp-long v1, v7, v3

    if-nez v1, :cond_1

    const-wide/16 v7, 0x0

    move-wide/from16 v16, v7

    goto :goto_0

    :cond_1
    iget-wide v7, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    sub-long v9, v5, v7

    move-wide/from16 v16, v9

    .line 722
    .local v16, "scrollDuration":J
    :goto_0
    iget-object v1, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    .line 723
    .local v1, "lm":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    iget-object v7, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    if-nez v7, :cond_2

    .line 724
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    .line 726
    :cond_2
    const/4 v7, 0x0

    .line 727
    .local v7, "scrollX":I
    const/4 v8, 0x0

    .line 728
    .local v8, "scrollY":I
    iget-object v9, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v10, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v9, v10}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 729
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_4

    .line 730
    iget v9, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedStartX:F

    iget v11, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    add-float/2addr v9, v11

    float-to-int v9, v9

    .line 731
    .local v9, "curX":I
    iget-object v11, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    sub-int v11, v9, v11

    iget-object v12, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v12}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v12

    sub-int/2addr v11, v12

    .line 732
    .local v11, "leftDiff":I
    iget v12, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    cmpg-float v12, v12, v10

    if-gez v12, :cond_3

    if-gez v11, :cond_3

    .line 733
    move v7, v11

    goto :goto_1

    .line 734
    :cond_3
    iget v12, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    cmpl-float v12, v12, v10

    if-lez v12, :cond_4

    .line 735
    iget-object v12, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v12, v12, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 736
    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v12

    add-int/2addr v12, v9

    iget-object v13, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    add-int/2addr v12, v13

    iget-object v13, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 737
    invoke-virtual {v13}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v13

    iget-object v14, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v14}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v14

    sub-int/2addr v13, v14

    sub-int/2addr v12, v13

    .line 738
    .local v12, "rightDiff":I
    if-lez v12, :cond_4

    .line 739
    move v7, v12

    .line 743
    .end local v9    # "curX":I
    .end local v11    # "leftDiff":I
    .end local v12    # "rightDiff":I
    :cond_4
    :goto_1
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 744
    iget v9, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedStartY:F

    iget v11, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    add-float/2addr v9, v11

    float-to-int v9, v9

    .line 745
    .local v9, "curY":I
    iget-object v11, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    sub-int v11, v9, v11

    iget-object v12, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v12}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v12

    sub-int/2addr v11, v12

    .line 746
    .local v11, "topDiff":I
    iget v12, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    cmpg-float v12, v12, v10

    if-gez v12, :cond_5

    if-gez v11, :cond_5

    .line 747
    move v8, v11

    goto :goto_2

    .line 748
    :cond_5
    iget v12, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    cmpl-float v10, v12, v10

    if-lez v10, :cond_6

    .line 749
    iget-object v10, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v10, v9

    iget-object v12, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v12

    iget-object v12, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 750
    invoke-virtual {v12}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v12

    iget-object v13, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v13}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v13

    sub-int/2addr v12, v13

    sub-int/2addr v10, v12

    .line 751
    .local v10, "bottomDiff":I
    if-lez v10, :cond_6

    .line 752
    move v8, v10

    .line 756
    .end local v9    # "curY":I
    .end local v10    # "bottomDiff":I
    .end local v11    # "topDiff":I
    :cond_6
    :goto_2
    if-eqz v7, :cond_7

    .line 757
    iget-object v11, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget-object v12, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v9, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 758
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v13

    iget-object v9, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 759
    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v15

    .line 757
    move v14, v7

    invoke-virtual/range {v11 .. v17}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->interpolateOutOfBoundsScroll(Landroid/support/v7/widget/RecyclerView;IIIJ)I

    move-result v7

    .line 761
    :cond_7
    if-eqz v8, :cond_8

    .line 762
    iget-object v9, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget-object v10, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v11, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v11, v11, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 763
    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v11

    iget-object v12, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 764
    invoke-virtual {v12}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v13

    .line 762
    move v12, v8

    move-wide/from16 v14, v16

    invoke-virtual/range {v9 .. v15}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->interpolateOutOfBoundsScroll(Landroid/support/v7/widget/RecyclerView;IIIJ)I

    move-result v8

    .line 766
    :cond_8
    if-nez v7, :cond_a

    if-eqz v8, :cond_9

    goto :goto_3

    .line 773
    :cond_9
    iput-wide v3, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 774
    return v2

    .line 767
    :cond_a
    :goto_3
    iget-wide v9, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    cmp-long v2, v9, v3

    if-nez v2, :cond_b

    .line 768
    iput-wide v5, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 770
    :cond_b
    iget-object v2, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v7, v8}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    .line 771
    const/4 v2, 0x1

    return v2
.end method

.method select(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 28
    .param p1, "selected"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "actionState"    # I

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    .line 559
    move/from16 v13, p2

    iget-object v0, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-ne v12, v0, :cond_0

    iget v0, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActionState:I

    if-ne v13, v0, :cond_0

    .line 560
    return-void

    .line 562
    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 563
    iget v14, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActionState:I

    .line 565
    .local v14, "prevActionState":I
    const/4 v15, 0x1

    invoke-virtual {v11, v12, v15}, Landroid/support/v7/widget/helper/ItemTouchHelper;->endRecoverAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)I

    .line 566
    iput v13, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActionState:I

    .line 567
    const/4 v10, 0x2

    if-ne v13, v10, :cond_1

    .line 571
    iget-object v0, v12, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iput-object v0, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 572
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/helper/ItemTouchHelper;->addChildDrawingOrderCallback()V

    .line 574
    :cond_1
    const/16 v9, 0x8

    mul-int v0, v9, v13

    add-int/2addr v0, v9

    shl-int v0, v15, v0

    add-int/lit8 v16, v0, -0x1

    .line 576
    .local v16, "actionStateMask":I
    const/16 v17, 0x0

    .line 578
    .local v17, "preventLayout":Z
    iget-object v0, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    const/4 v8, 0x0

    if-eqz v0, :cond_7

    .line 579
    iget-object v7, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 580
    .local v7, "prevSelected":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v0, v7, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 581
    if-ne v14, v10, :cond_2

    .line 582
    move v0, v8

    goto :goto_0

    :cond_2
    invoke-direct {v11, v7}, Landroid/support/v7/widget/helper/ItemTouchHelper;->swipeIfNecessary(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v0

    :goto_0
    move v6, v0

    .line 583
    .local v6, "swipeDir":I
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/helper/ItemTouchHelper;->releaseVelocityTracker()V

    .line 587
    const/4 v0, 0x4

    if-eq v6, v0, :cond_3

    if-eq v6, v9, :cond_3

    const/16 v1, 0x10

    if-eq v6, v1, :cond_3

    const/16 v1, 0x20

    if-eq v6, v1, :cond_3

    packed-switch v6, :pswitch_data_0

    .line 601
    const/4 v1, 0x0

    .line 602
    .local v1, "targetTranslateX":F
    const/4 v2, 0x0

    .line 602
    .end local v1    # "targetTranslateX":F
    .local v2, "targetTranslateY":F
    .local v18, "targetTranslateX":F
    :goto_1
    move/from16 v18, v1

    goto :goto_2

    .line 597
    .end local v2    # "targetTranslateY":F
    .end local v18    # "targetTranslateX":F
    :pswitch_0
    const/4 v1, 0x0

    .line 598
    .restart local v1    # "targetTranslateX":F
    iget v2, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    iget-object v3, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    .line 599
    .restart local v2    # "targetTranslateY":F
    goto :goto_1

    .line 592
    .end local v1    # "targetTranslateX":F
    .end local v2    # "targetTranslateY":F
    :cond_3
    const/4 v2, 0x0

    .line 593
    .restart local v2    # "targetTranslateY":F
    iget v1, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    iget-object v3, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v1, v3

    .line 594
    .restart local v1    # "targetTranslateX":F
    goto :goto_1

    .line 602
    .end local v1    # "targetTranslateX":F
    .restart local v18    # "targetTranslateX":F
    :goto_2
    move/from16 v19, v2

    .line 604
    .end local v2    # "targetTranslateY":F
    .local v19, "targetTranslateY":F
    if-ne v14, v10, :cond_4

    .line 605
    const/16 v0, 0x8

    .line 605
    .local v0, "animationType":I
    :goto_3
    goto :goto_4

    .line 606
    .end local v0    # "animationType":I
    :cond_4
    if-lez v6, :cond_5

    .line 607
    const/4 v0, 0x2

    goto :goto_3

    .line 609
    :cond_5
    nop

    .line 609
    .restart local v0    # "animationType":I
    :goto_4
    move v5, v0

    .line 611
    .end local v0    # "animationType":I
    .local v5, "animationType":I
    iget-object v0, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    invoke-direct {v11, v0}, Landroid/support/v7/widget/helper/ItemTouchHelper;->getSelectedDxDy([F)V

    .line 612
    iget-object v0, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    aget v20, v0, v8

    .line 613
    .local v20, "currentTranslateX":F
    iget-object v0, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    aget v21, v0, v15

    .line 614
    .local v21, "currentTranslateY":F
    new-instance v22, Landroid/support/v7/widget/helper/ItemTouchHelper$3;

    move-object/from16 v0, v22

    move-object v1, v11

    move-object v2, v7

    move v3, v5

    move v4, v14

    move v15, v5

    move/from16 v5, v20

    .line 614
    .end local v5    # "animationType":I
    .local v15, "animationType":I
    move/from16 v23, v6

    move/from16 v6, v21

    .line 614
    .end local v6    # "swipeDir":I
    .local v23, "swipeDir":I
    move-object/from16 v24, v7

    move/from16 v7, v18

    .line 614
    .end local v7    # "prevSelected":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .local v24, "prevSelected":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    move/from16 v25, v14

    move v14, v8

    move/from16 v8, v19

    .line 614
    .end local v14    # "prevActionState":I
    .local v25, "prevActionState":I
    move/from16 v26, v9

    move/from16 v9, v23

    move v14, v10

    move-object/from16 v10, v24

    invoke-direct/range {v0 .. v10}, Landroid/support/v7/widget/helper/ItemTouchHelper$3;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/support/v7/widget/RecyclerView$ViewHolder;IIFFFFILandroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 643
    .local v0, "rv":Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;
    iget-object v1, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget-object v2, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    sub-float v3, v18, v20

    sub-float v4, v19, v21

    invoke-virtual {v1, v2, v15, v3, v4}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getAnimationDuration(Landroid/support/v7/widget/RecyclerView;IFF)J

    move-result-wide v1

    .line 645
    .local v1, "duration":J
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->setDuration(J)V

    .line 646
    iget-object v3, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 647
    invoke-virtual {v0}, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->start()V

    .line 648
    const/4 v0, 0x1

    .line 649
    .end local v1    # "duration":J
    .end local v15    # "animationType":I
    .end local v17    # "preventLayout":Z
    .end local v18    # "targetTranslateX":F
    .end local v19    # "targetTranslateY":F
    .end local v20    # "currentTranslateX":F
    .end local v21    # "currentTranslateY":F
    .end local v23    # "swipeDir":I
    .local v0, "preventLayout":Z
    nop

    .line 653
    move/from16 v17, v0

    move-object/from16 v0, v24

    goto :goto_5

    .line 650
    .end local v0    # "preventLayout":Z
    .end local v24    # "prevSelected":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .end local v25    # "prevActionState":I
    .restart local v7    # "prevSelected":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .restart local v14    # "prevActionState":I
    .restart local v17    # "preventLayout":Z
    :cond_6
    move-object/from16 v24, v7

    move/from16 v26, v9

    move/from16 v25, v14

    move v14, v10

    .line 650
    .end local v7    # "prevSelected":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .end local v14    # "prevActionState":I
    .restart local v24    # "prevSelected":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .restart local v25    # "prevActionState":I
    move-object/from16 v0, v24

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 650
    .end local v24    # "prevSelected":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .local v0, "prevSelected":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {v11, v1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V

    .line 651
    iget-object v1, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget-object v2, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v2, v0}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->clearView(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 653
    :goto_5
    const/4 v1, 0x0

    iput-object v1, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 653
    .end local v0    # "prevSelected":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    goto :goto_6

    .line 655
    .end local v25    # "prevActionState":I
    .restart local v14    # "prevActionState":I
    :cond_7
    move/from16 v26, v9

    move/from16 v25, v14

    move v14, v10

    .line 655
    .end local v14    # "prevActionState":I
    .restart local v25    # "prevActionState":I
    :goto_6
    if-eqz v12, :cond_8

    .line 656
    iget-object v0, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget-object v1, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 657
    invoke-virtual {v0, v1, v12}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getAbsoluteMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v0

    and-int v0, v0, v16

    iget v1, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActionState:I

    mul-int/lit8 v1, v1, 0x8

    shr-int/2addr v0, v1

    iput v0, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedFlags:I

    .line 659
    iget-object v0, v12, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iput v0, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedStartX:F

    .line 660
    iget-object v0, v12, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    iput v0, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedStartY:F

    .line 661
    iput-object v12, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 663
    if-ne v13, v14, :cond_8

    .line 664
    iget-object v0, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_7

    .line 667
    :cond_8
    const/4 v1, 0x0

    :goto_7
    iget-object v0, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 668
    .local v0, "rvParent":Landroid/view/ViewParent;
    if-eqz v0, :cond_a

    .line 669
    iget-object v2, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v2, :cond_9

    const/4 v1, 0x1

    nop

    :cond_9
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 671
    :cond_a
    if-nez v17, :cond_b

    .line 672
    iget-object v1, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->requestSimpleAnimationsInNextLayout()V

    .line 674
    :cond_b
    iget-object v1, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget-object v2, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget v3, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActionState:I

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onSelectedChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 675
    iget-object v1, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 676
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public startDrag(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 1067
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->hasDragFlag(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1068
    const-string v0, "ItemTouchHelper"

    const-string v1, "Start drag has been called but dragging is not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    return-void

    .line 1071
    :cond_0
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eq v0, v1, :cond_1

    .line 1072
    const-string v0, "ItemTouchHelper"

    const-string v1, "Start drag has been called with a view holder which is not a child of the RecyclerView which is controlled by this ItemTouchHelper."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    return-void

    .line 1076
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/helper/ItemTouchHelper;->obtainVelocityTracker()V

    .line 1077
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    iput v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    .line 1078
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/helper/ItemTouchHelper;->select(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 1079
    return-void
.end method

.method public startSwipe(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 1114
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->hasSwipeFlag(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1115
    const-string v0, "ItemTouchHelper"

    const-string v1, "Start swipe has been called but swiping is not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    return-void

    .line 1118
    :cond_0
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eq v0, v1, :cond_1

    .line 1119
    const-string v0, "ItemTouchHelper"

    const-string v1, "Start swipe has been called with a view holder which is not a child of the RecyclerView controlled by this ItemTouchHelper."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    return-void

    .line 1123
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/helper/ItemTouchHelper;->obtainVelocityTracker()V

    .line 1124
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    iput v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    .line 1125
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/helper/ItemTouchHelper;->select(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 1126
    return-void
.end method

.method updateDxDy(Landroid/view/MotionEvent;II)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "directionFlags"    # I
    .param p3, "pointerIndex"    # I

    .line 1143
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 1144
    .local v0, "x":F
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    .line 1147
    .local v1, "y":F
    iget v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mInitialTouchX:F

    sub-float v2, v0, v2

    iput v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    .line 1148
    iget v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mInitialTouchY:F

    sub-float v2, v1, v2

    iput v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    .line 1149
    and-int/lit8 v2, p2, 0x4

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 1150
    iget v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    .line 1152
    :cond_0
    and-int/lit8 v2, p2, 0x8

    if-nez v2, :cond_1

    .line 1153
    iget v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    .line 1155
    :cond_1
    and-int/lit8 v2, p2, 0x1

    if-nez v2, :cond_2

    .line 1156
    iget v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    .line 1158
    :cond_2
    and-int/lit8 v2, p2, 0x2

    if-nez v2, :cond_3

    .line 1159
    iget v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    .line 1161
    :cond_3
    return-void
.end method
