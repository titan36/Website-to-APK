.class Landroid/support/v7/widget/helper/ItemTouchHelper$2;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/helper/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/helper/ItemTouchHelper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v7/widget/helper/ItemTouchHelper;

    .line 300
    iput-object p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 303
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

    invoke-virtual {v0, p2}, Landroid/support/v4/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 307
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 308
    .local v0, "action":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 309
    iget-object v3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, v3, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    .line 310
    iget-object v3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, v3, Landroid/support/v7/widget/helper/ItemTouchHelper;->mInitialTouchX:F

    .line 311
    iget-object v3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, v3, Landroid/support/v7/widget/helper/ItemTouchHelper;->mInitialTouchY:F

    .line 312
    iget-object v3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-virtual {v3}, Landroid/support/v7/widget/helper/ItemTouchHelper;->obtainVelocityTracker()V

    .line 313
    iget-object v3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v3, v3, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-nez v3, :cond_5

    .line 314
    iget-object v3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-virtual {v3, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper;->findAnimation(Landroid/view/MotionEvent;)Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;

    move-result-object v3

    .line 315
    .local v3, "animation":Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;
    if-eqz v3, :cond_1

    .line 316
    iget-object v4, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget v5, v4, Landroid/support/v7/widget/helper/ItemTouchHelper;->mInitialTouchX:F

    iget v6, v3, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mX:F

    sub-float/2addr v5, v6

    iput v5, v4, Landroid/support/v7/widget/helper/ItemTouchHelper;->mInitialTouchX:F

    .line 317
    iget-object v4, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget v5, v4, Landroid/support/v7/widget/helper/ItemTouchHelper;->mInitialTouchY:F

    iget v6, v3, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mY:F

    sub-float/2addr v5, v6

    iput v5, v4, Landroid/support/v7/widget/helper/ItemTouchHelper;->mInitialTouchY:F

    .line 318
    iget-object v4, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v5, v3, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v4, v5, v1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->endRecoverAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)I

    .line 319
    iget-object v4, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v4, v4, Landroid/support/v7/widget/helper/ItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    iget-object v5, v3, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v4, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 320
    iget-object v4, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v4, v4, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget-object v5, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v5, v5, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, v3, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->clearView(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 322
    :cond_0
    iget-object v4, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v5, v3, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget v6, v3, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mActionState:I

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/helper/ItemTouchHelper;->select(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 323
    iget-object v4, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v5, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget v5, v5, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedFlags:I

    invoke-virtual {v4, p2, v5, v2}, Landroid/support/v7/widget/helper/ItemTouchHelper;->updateDxDy(Landroid/view/MotionEvent;II)V

    .line 325
    .end local v3    # "animation":Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;
    :cond_1
    goto :goto_1

    .line 326
    :cond_2
    const/4 v3, 0x3

    const/4 v4, -0x1

    if-eq v0, v3, :cond_4

    if-ne v0, v1, :cond_3

    goto :goto_0

    .line 329
    :cond_3
    iget-object v3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget v3, v3, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    if-eq v3, v4, :cond_5

    .line 332
    iget-object v3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget v3, v3, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 336
    .local v3, "index":I
    if-ltz v3, :cond_5

    .line 337
    iget-object v4, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-virtual {v4, v0, p2, v3}, Landroid/support/v7/widget/helper/ItemTouchHelper;->checkSelectForSwipe(ILandroid/view/MotionEvent;I)Z

    .line 337
    .end local v3    # "index":I
    goto :goto_1

    .line 327
    :cond_4
    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iput v4, v3, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    .line 328
    iget-object v3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Landroid/support/v7/widget/helper/ItemTouchHelper;->select(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 340
    :cond_5
    :goto_1
    iget-object v3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v3, v3, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_6

    .line 341
    iget-object v3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v3, v3, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 343
    :cond_6
    iget-object v3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v3, v3, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v3, :cond_7

    goto :goto_2

    :cond_7
    move v1, v2

    :goto_2
    return v1
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 3
    .param p1, "disallowIntercept"    # Z

    .line 406
    if-nez p1, :cond_0

    .line 407
    return-void

    .line 409
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/helper/ItemTouchHelper;->select(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 410
    return-void
.end method

.method public onTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 348
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

    invoke-virtual {v0, p2}, Landroid/support/v4/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 353
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 356
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 357
    return-void

    .line 359
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 360
    .local v0, "action":I
    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget v2, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 361
    .local v2, "activePointerIndex":I
    if-ltz v2, :cond_2

    .line 362
    iget-object v3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-virtual {v3, v0, p2, v2}, Landroid/support/v7/widget/helper/ItemTouchHelper;->checkSelectForSwipe(ILandroid/view/MotionEvent;I)Z

    .line 364
    :cond_2
    iget-object v3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v3, v3, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 365
    .local v3, "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-nez v3, :cond_3

    .line 366
    return-void

    .line 368
    :cond_3
    const/4 v4, 0x6

    const/4 v5, 0x0

    if-eq v0, v4, :cond_5

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 381
    :pswitch_0
    iget-object v4, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v4, v4, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v4, :cond_4

    .line 382
    iget-object v4, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v4, v4, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0

    .line 371
    :pswitch_1
    if-ltz v2, :cond_7

    .line 372
    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v4, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget v4, v4, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedFlags:I

    invoke-virtual {v1, p2, v4, v2}, Landroid/support/v7/widget/helper/ItemTouchHelper;->updateDxDy(Landroid/view/MotionEvent;II)V

    .line 373
    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/helper/ItemTouchHelper;->moveIfNecessary(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 374
    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v1, v1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v4, v4, Landroid/support/v7/widget/helper/ItemTouchHelper;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 375
    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v1, v1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 376
    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v1, v1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    goto :goto_1

    .line 386
    :cond_4
    :goto_0
    :pswitch_2
    iget-object v4, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Landroid/support/v7/widget/helper/ItemTouchHelper;->select(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 387
    iget-object v4, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iput v1, v4, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    .line 388
    goto :goto_1

    .line 390
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 391
    .local v1, "pointerIndex":I
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 392
    .local v4, "pointerId":I
    iget-object v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget v6, v6, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    if-ne v4, v6, :cond_7

    .line 395
    if-nez v1, :cond_6

    const/4 v5, 0x1

    nop

    .line 396
    .local v5, "newPointerIndex":I
    :cond_6
    iget-object v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, v6, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    .line 397
    iget-object v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v7, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget v7, v7, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedFlags:I

    invoke-virtual {v6, p2, v7, v1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->updateDxDy(Landroid/view/MotionEvent;II)V

    .line 398
    .end local v5    # "newPointerIndex":I
    nop

    .line 402
    .end local v1    # "pointerIndex":I
    .end local v4    # "pointerId":I
    :cond_7
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
