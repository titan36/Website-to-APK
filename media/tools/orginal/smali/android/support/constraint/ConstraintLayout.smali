.class public Landroid/support/constraint/ConstraintLayout;
.super Landroid/view/ViewGroup;
.source "ConstraintLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/ConstraintLayout$LayoutParams;
    }
.end annotation


# static fields
.field static final ALLOWS_EMBEDDED:Z = false

.field private static final DEBUG:Z = false

.field public static final DESIGN_INFO_ID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ConstraintLayout"

.field private static final USE_CONSTRAINTS_HELPER:Z = true

.field public static final VERSION:Ljava/lang/String; = "ConstraintLayout-1.1.0"


# instance fields
.field mChildrenByIds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mConstraintHelpers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/ConstraintHelper;",
            ">;"
        }
    .end annotation
.end field

.field private mConstraintSet:Landroid/support/constraint/ConstraintSet;

.field private mConstraintSetId:I

.field private mDesignIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDirtyHierarchy:Z

.field private mLastMeasureHeight:I

.field mLastMeasureHeightMode:I

.field mLastMeasureHeightSize:I

.field private mLastMeasureWidth:I

.field mLastMeasureWidthMode:I

.field mLastMeasureWidthSize:I

.field mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mMetrics:Landroid/support/constraint/solver/Metrics;

.field private mMinHeight:I

.field private mMinWidth:I

.field private mOptimizationLevel:I

.field private final mVariableDimensionsWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 560
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 489
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 492
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 497
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    .line 499
    new-instance v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 501
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    .line 502
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    .line 503
    const v1, 0x7fffffff

    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    .line 504
    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    .line 506
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    .line 507
    const/4 v1, 0x3

    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mOptimizationLevel:I

    .line 508
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    .line 510
    const/4 v2, -0x1

    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSetId:I

    .line 512
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    .line 515
    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidth:I

    .line 516
    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeight:I

    .line 517
    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidthSize:I

    .line 518
    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeightSize:I

    .line 519
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidthMode:I

    .line 520
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeightMode:I

    .line 561
    invoke-direct {p0, v1}, Landroid/support/constraint/ConstraintLayout;->init(Landroid/util/AttributeSet;)V

    .line 562
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 565
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 489
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 492
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 497
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    .line 499
    new-instance v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 501
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    .line 502
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    .line 503
    const v1, 0x7fffffff

    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    .line 504
    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    .line 506
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    .line 507
    const/4 v1, 0x3

    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mOptimizationLevel:I

    .line 508
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    .line 510
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSetId:I

    .line 512
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    .line 515
    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidth:I

    .line 516
    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeight:I

    .line 517
    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidthSize:I

    .line 518
    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeightSize:I

    .line 519
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidthMode:I

    .line 520
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeightMode:I

    .line 566
    invoke-direct {p0, p2}, Landroid/support/constraint/ConstraintLayout;->init(Landroid/util/AttributeSet;)V

    .line 567
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 570
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 489
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 492
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 497
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    .line 499
    new-instance v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 501
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    .line 502
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    .line 503
    const v1, 0x7fffffff

    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    .line 504
    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    .line 506
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    .line 507
    const/4 v1, 0x3

    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mOptimizationLevel:I

    .line 508
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    .line 510
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSetId:I

    .line 512
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    .line 515
    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidth:I

    .line 516
    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeight:I

    .line 517
    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidthSize:I

    .line 518
    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeightSize:I

    .line 519
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidthMode:I

    .line 520
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeightMode:I

    .line 571
    invoke-direct {p0, p2}, Landroid/support/constraint/ConstraintLayout;->init(Landroid/util/AttributeSet;)V

    .line 572
    return-void
.end method

.method private final getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .locals 2
    .param p1, "id"    # I

    .line 1120
    if-nez p1, :cond_0

    .line 1121
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    return-object v0

    .line 1123
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1124
    .local v0, "view":Landroid/view/View;
    if-ne v0, p0, :cond_1

    .line 1125
    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    return-object v1

    .line 1127
    :cond_1
    if-nez v0, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iget-object v1, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    :goto_0
    return-object v1
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 585
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0, p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setCompanionWidget(Ljava/lang/Object;)V

    .line 586
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 587
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    .line 588
    if-eqz p1, :cond_7

    .line 589
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 590
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .line 591
    .local v2, "N":I
    const/4 v3, 0x0

    move v4, v3

    .line 591
    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_6

    .line 592
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v5

    .line 593
    .local v5, "attr":I
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_android_minWidth:I

    if-ne v5, v6, :cond_0

    .line 594
    iget v6, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    goto :goto_2

    .line 595
    :cond_0
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_android_minHeight:I

    if-ne v5, v6, :cond_1

    .line 596
    iget v6, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    goto :goto_2

    .line 597
    :cond_1
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_android_maxWidth:I

    if-ne v5, v6, :cond_2

    .line 598
    iget v6, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    goto :goto_2

    .line 599
    :cond_2
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_android_maxHeight:I

    if-ne v5, v6, :cond_3

    .line 600
    iget v6, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    goto :goto_2

    .line 601
    :cond_3
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_optimizationLevel:I

    if-ne v5, v6, :cond_4

    .line 602
    iget v6, p0, Landroid/support/constraint/ConstraintLayout;->mOptimizationLevel:I

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/ConstraintLayout;->mOptimizationLevel:I

    goto :goto_2

    .line 603
    :cond_4
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_constraintSet:I

    if-ne v5, v6, :cond_5

    .line 604
    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 606
    .local v6, "id":I
    :try_start_0
    new-instance v7, Landroid/support/constraint/ConstraintSet;

    invoke-direct {v7}, Landroid/support/constraint/ConstraintSet;-><init>()V

    iput-object v7, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    .line 607
    iget-object v7, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Landroid/support/constraint/ConstraintSet;->load(Landroid/content/Context;I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 610
    goto :goto_1

    .line 608
    :catch_0
    move-exception v7

    .line 609
    .local v7, "e":Landroid/content/res/Resources$NotFoundException;
    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    .line 611
    .end local v7    # "e":Landroid/content/res/Resources$NotFoundException;
    :goto_1
    iput v6, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSetId:I

    .line 591
    .end local v5    # "attr":I
    .end local v6    # "id":I
    :cond_5
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 614
    .end local v4    # "i":I
    :cond_6
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 616
    .end local v1    # "a":Landroid/content/res/TypedArray;
    .end local v2    # "N":I
    :cond_7
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget v1, p0, Landroid/support/constraint/ConstraintLayout;->mOptimizationLevel:I

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setOptimizationLevel(I)V

    .line 617
    return-void
.end method

.method private internalMeasureChildren(II)V
    .locals 22
    .param p1, "parentWidthSpec"    # I
    .param p2, "parentHeightSpec"    # I

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1144
    move/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    .line 1145
    .local v3, "heightPadding":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    .line 1147
    .local v4, "widthPadding":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v5

    .line 1148
    .local v5, "widgetsCount":I
    const/4 v7, 0x0

    .line 1148
    .local v7, "i":I
    :goto_0
    if-ge v7, v5, :cond_13

    .line 1149
    invoke-virtual {v0, v7}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1150
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_0

    .line 1151
    nop

    .line 1148
    .end local v3    # "heightPadding":I
    .end local v8    # "child":Landroid/view/View;
    .local v21, "heightPadding":I
    :goto_1
    move/from16 v21, v3

    goto/16 :goto_a

    .line 1153
    .end local v21    # "heightPadding":I
    .restart local v3    # "heightPadding":I
    .restart local v8    # "child":Landroid/view/View;
    :cond_0
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 1154
    .local v9, "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    iget-object v10, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1155
    .local v10, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-boolean v11, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    if-nez v11, :cond_11

    iget-boolean v11, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isHelper:Z

    if-eqz v11, :cond_1

    .line 1156
    goto :goto_1

    .line 1158
    :cond_1
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVisibility(I)V

    .line 1160
    iget v11, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    .line 1161
    .local v11, "width":I
    iget v12, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    .line 1165
    .local v12, "height":I
    iget-boolean v13, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    const/4 v14, 0x1

    const/4 v15, -0x1

    if-nez v13, :cond_4

    iget-boolean v13, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    if-nez v13, :cond_4

    iget-boolean v13, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    if-nez v13, :cond_2

    iget v13, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    if-eq v13, v14, :cond_4

    :cond_2
    iget v13, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    if-eq v13, v15, :cond_4

    iget-boolean v13, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    if-nez v13, :cond_3

    iget v13, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    if-eq v13, v14, :cond_4

    iget v13, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    if-ne v13, v15, :cond_3

    goto :goto_2

    :cond_3
    const/4 v13, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    move v13, v14

    .line 1175
    .local v13, "doMeasure":Z
    :goto_3
    const/16 v16, 0x0

    .line 1176
    .local v16, "didWrapMeasureWidth":Z
    const/16 v17, 0x0

    .line 1178
    .local v17, "didWrapMeasureHeight":Z
    if-eqz v13, :cond_e

    .line 1182
    const/4 v6, -0x2

    if-nez v11, :cond_5

    .line 1183
    invoke-static {v1, v4, v6}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v18

    .line 1185
    .local v18, "childWidthMeasureSpec":I
    const/16 v16, 0x1

    goto :goto_4

    .line 1186
    .end local v18    # "childWidthMeasureSpec":I
    :cond_5
    if-ne v11, v15, :cond_6

    .line 1187
    invoke-static {v1, v4, v15}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v18

    .line 1187
    .restart local v18    # "childWidthMeasureSpec":I
    goto :goto_4

    .line 1190
    .end local v18    # "childWidthMeasureSpec":I
    :cond_6
    if-ne v11, v6, :cond_7

    .line 1191
    const/16 v16, 0x1

    .line 1193
    :cond_7
    invoke-static {v1, v4, v11}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v18

    .line 1193
    .restart local v18    # "childWidthMeasureSpec":I
    :goto_4
    move/from16 v19, v18

    .line 1196
    .end local v18    # "childWidthMeasureSpec":I
    .local v19, "childWidthMeasureSpec":I
    if-nez v12, :cond_8

    .line 1197
    invoke-static {v2, v3, v6}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v18

    .line 1199
    .local v18, "childHeightMeasureSpec":I
    const/16 v17, 0x1

    goto :goto_5

    .line 1200
    .end local v18    # "childHeightMeasureSpec":I
    :cond_8
    if-ne v12, v15, :cond_9

    .line 1201
    invoke-static {v2, v3, v15}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v18

    .line 1201
    .restart local v18    # "childHeightMeasureSpec":I
    goto :goto_5

    .line 1204
    .end local v18    # "childHeightMeasureSpec":I
    :cond_9
    if-ne v12, v6, :cond_a

    .line 1205
    const/16 v17, 0x1

    .line 1207
    :cond_a
    invoke-static {v2, v3, v12}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v18

    .line 1207
    .restart local v18    # "childHeightMeasureSpec":I
    :goto_5
    move/from16 v20, v18

    .line 1210
    .end local v18    # "childHeightMeasureSpec":I
    .local v20, "childHeightMeasureSpec":I
    move/from16 v14, v19

    move/from16 v15, v20

    invoke-virtual {v8, v14, v15}, Landroid/view/View;->measure(II)V

    .line 1211
    .end local v19    # "childWidthMeasureSpec":I
    .end local v20    # "childHeightMeasureSpec":I
    .local v14, "childWidthMeasureSpec":I
    .local v15, "childHeightMeasureSpec":I
    iget-object v6, v0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    if-eqz v6, :cond_b

    .line 1212
    iget-object v6, v0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    iget-wide v0, v6, Landroid/support/constraint/solver/Metrics;->measures:J

    const-wide/16 v18, 0x1

    move/from16 v21, v3

    add-long v2, v0, v18

    .line 1212
    .end local v3    # "heightPadding":I
    .restart local v21    # "heightPadding":I
    iput-wide v2, v6, Landroid/support/constraint/solver/Metrics;->measures:J

    goto :goto_6

    .line 1215
    .end local v21    # "heightPadding":I
    .restart local v3    # "heightPadding":I
    :cond_b
    move/from16 v21, v3

    .line 1215
    .end local v3    # "heightPadding":I
    .restart local v21    # "heightPadding":I
    :goto_6
    const/4 v0, -0x2

    if-ne v11, v0, :cond_c

    const/4 v1, 0x1

    goto :goto_7

    :cond_c
    const/4 v1, 0x0

    :goto_7
    invoke-virtual {v10, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidthWrapContent(Z)V

    .line 1216
    if-ne v12, v0, :cond_d

    const/4 v0, 0x1

    goto :goto_8

    :cond_d
    const/4 v0, 0x0

    :goto_8
    invoke-virtual {v10, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeightWrapContent(Z)V

    .line 1217
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 1218
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 1218
    .end local v14    # "childWidthMeasureSpec":I
    .end local v15    # "childHeightMeasureSpec":I
    goto :goto_9

    .line 1221
    .end local v21    # "heightPadding":I
    .restart local v3    # "heightPadding":I
    :cond_e
    move/from16 v21, v3

    .line 1221
    .end local v3    # "heightPadding":I
    .restart local v21    # "heightPadding":I
    :goto_9
    invoke-virtual {v10, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 1222
    invoke-virtual {v10, v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 1224
    if-eqz v16, :cond_f

    .line 1225
    invoke-virtual {v10, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWrapWidth(I)V

    .line 1227
    :cond_f
    if-eqz v17, :cond_10

    .line 1228
    invoke-virtual {v10, v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWrapHeight(I)V

    .line 1231
    :cond_10
    iget-boolean v0, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    if-eqz v0, :cond_12

    .line 1232
    invoke-virtual {v8}, Landroid/view/View;->getBaseline()I

    move-result v0

    .line 1233
    .local v0, "baseline":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    .line 1234
    invoke-virtual {v10, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setBaselineDistance(I)V

    .line 1234
    .end local v0    # "baseline":I
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .end local v10    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v11    # "width":I
    .end local v12    # "height":I
    .end local v13    # "doMeasure":Z
    .end local v16    # "didWrapMeasureWidth":Z
    .end local v17    # "didWrapMeasureHeight":Z
    goto :goto_a

    .line 1148
    .end local v21    # "heightPadding":I
    .restart local v3    # "heightPadding":I
    :cond_11
    move/from16 v21, v3

    .line 1148
    .end local v3    # "heightPadding":I
    .restart local v21    # "heightPadding":I
    :cond_12
    :goto_a
    add-int/lit8 v7, v7, 0x1

    move/from16 v3, v21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    goto/16 :goto_0

    .line 1238
    .end local v7    # "i":I
    .end local v21    # "heightPadding":I
    .restart local v3    # "heightPadding":I
    :cond_13
    move/from16 v21, v3

    .line 1238
    .end local v3    # "heightPadding":I
    .restart local v21    # "heightPadding":I
    return-void
.end method

.method private internalMeasureDimensions(II)V
    .locals 33
    .param p1, "parentWidthSpec"    # I
    .param p2, "parentHeightSpec"    # I

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1266
    move/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    .line 1267
    .local v3, "heightPadding":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    .line 1269
    .local v4, "widthPadding":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v5

    .line 1270
    .local v5, "widgetsCount":I
    const/4 v7, 0x0

    .line 1270
    .local v7, "i":I
    :goto_0
    const/16 v10, 0x8

    const/4 v13, -0x2

    if-ge v7, v5, :cond_e

    .line 1271
    invoke-virtual {v0, v7}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 1272
    .local v14, "child":Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v15

    if-ne v15, v10, :cond_0

    .line 1273
    nop

    .line 1270
    .end local v3    # "heightPadding":I
    .end local v4    # "widthPadding":I
    .end local v5    # "widgetsCount":I
    .end local v14    # "child":Landroid/view/View;
    .local v21, "heightPadding":I
    .local v22, "widthPadding":I
    .local v23, "widgetsCount":I
    :goto_1
    move/from16 v21, v3

    move/from16 v22, v4

    move/from16 v23, v5

    goto/16 :goto_6

    .line 1275
    .end local v21    # "heightPadding":I
    .end local v22    # "widthPadding":I
    .end local v23    # "widgetsCount":I
    .restart local v3    # "heightPadding":I
    .restart local v4    # "widthPadding":I
    .restart local v5    # "widgetsCount":I
    .restart local v14    # "child":Landroid/view/View;
    :cond_0
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 1276
    .local v10, "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    iget-object v15, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1277
    .local v15, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-boolean v6, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    if-nez v6, :cond_c

    iget-boolean v6, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isHelper:Z

    if-eqz v6, :cond_1

    .line 1278
    goto :goto_1

    .line 1280
    :cond_1
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v6

    invoke-virtual {v15, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVisibility(I)V

    .line 1282
    iget v6, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    .line 1283
    .local v6, "width":I
    iget v12, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    .line 1285
    .local v12, "height":I
    if-eqz v6, :cond_b

    if-nez v12, :cond_2

    .line 1286
    move/from16 v21, v3

    move/from16 v22, v4

    move/from16 v23, v5

    goto/16 :goto_5

    .line 1291
    :cond_2
    const/16 v16, 0x0

    .line 1292
    .local v16, "didWrapMeasureWidth":Z
    const/16 v17, 0x0

    .line 1296
    .local v17, "didWrapMeasureHeight":Z
    if-ne v6, v13, :cond_3

    .line 1297
    const/16 v16, 0x1

    .line 1299
    :cond_3
    invoke-static {v1, v4, v6}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v11

    .line 1301
    .local v11, "childWidthMeasureSpec":I
    if-ne v12, v13, :cond_4

    .line 1302
    const/16 v17, 0x1

    .line 1304
    :cond_4
    invoke-static {v2, v3, v12}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v13

    .line 1306
    .local v13, "childHeightMeasureSpec":I
    invoke-virtual {v14, v11, v13}, Landroid/view/View;->measure(II)V

    .line 1307
    iget-object v8, v0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    if-eqz v8, :cond_5

    .line 1308
    iget-object v8, v0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    move/from16 v21, v3

    iget-wide v2, v8, Landroid/support/constraint/solver/Metrics;->measures:J

    .line 1308
    .end local v3    # "heightPadding":I
    .restart local v21    # "heightPadding":I
    move/from16 v22, v4

    move/from16 v23, v5

    const-wide/16 v18, 0x1

    add-long v4, v2, v18

    .line 1308
    .end local v4    # "widthPadding":I
    .end local v5    # "widgetsCount":I
    .restart local v22    # "widthPadding":I
    .restart local v23    # "widgetsCount":I
    iput-wide v4, v8, Landroid/support/constraint/solver/Metrics;->measures:J

    goto :goto_2

    .line 1311
    .end local v21    # "heightPadding":I
    .end local v22    # "widthPadding":I
    .end local v23    # "widgetsCount":I
    .restart local v3    # "heightPadding":I
    .restart local v4    # "widthPadding":I
    .restart local v5    # "widgetsCount":I
    :cond_5
    move/from16 v21, v3

    move/from16 v22, v4

    move/from16 v23, v5

    .line 1311
    .end local v3    # "heightPadding":I
    .end local v4    # "widthPadding":I
    .end local v5    # "widgetsCount":I
    .restart local v21    # "heightPadding":I
    .restart local v22    # "widthPadding":I
    .restart local v23    # "widgetsCount":I
    :goto_2
    const/4 v2, -0x2

    if-ne v6, v2, :cond_6

    const/4 v3, 0x1

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v15, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidthWrapContent(Z)V

    .line 1312
    if-ne v12, v2, :cond_7

    const/4 v2, 0x1

    goto :goto_4

    :cond_7
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {v15, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeightWrapContent(Z)V

    .line 1313
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 1314
    .end local v6    # "width":I
    .local v2, "width":I
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 1316
    .end local v12    # "height":I
    .local v3, "height":I
    invoke-virtual {v15, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 1317
    invoke-virtual {v15, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 1319
    if-eqz v16, :cond_8

    .line 1320
    invoke-virtual {v15, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWrapWidth(I)V

    .line 1322
    :cond_8
    if-eqz v17, :cond_9

    .line 1323
    invoke-virtual {v15, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWrapHeight(I)V

    .line 1326
    :cond_9
    iget-boolean v4, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    if-eqz v4, :cond_a

    .line 1327
    invoke-virtual {v14}, Landroid/view/View;->getBaseline()I

    move-result v4

    .line 1328
    .local v4, "baseline":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_a

    .line 1329
    invoke-virtual {v15, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setBaselineDistance(I)V

    .line 1333
    .end local v4    # "baseline":I
    :cond_a
    iget-boolean v4, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    if-eqz v4, :cond_d

    iget-boolean v4, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    if-eqz v4, :cond_d

    .line 1334
    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->resolve(I)V

    .line 1335
    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->resolve(I)V

    .line 1335
    .end local v2    # "width":I
    .end local v3    # "height":I
    .end local v10    # "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .end local v11    # "childWidthMeasureSpec":I
    .end local v13    # "childHeightMeasureSpec":I
    .end local v14    # "child":Landroid/view/View;
    .end local v15    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v16    # "didWrapMeasureWidth":Z
    .end local v17    # "didWrapMeasureHeight":Z
    goto :goto_6

    .line 1286
    .end local v21    # "heightPadding":I
    .end local v22    # "widthPadding":I
    .end local v23    # "widgetsCount":I
    .local v3, "heightPadding":I
    .local v4, "widthPadding":I
    .restart local v5    # "widgetsCount":I
    .restart local v6    # "width":I
    .restart local v10    # "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .restart local v12    # "height":I
    .restart local v14    # "child":Landroid/view/View;
    .restart local v15    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_b
    move/from16 v21, v3

    move/from16 v22, v4

    move/from16 v23, v5

    .line 1286
    .end local v3    # "heightPadding":I
    .end local v4    # "widthPadding":I
    .end local v5    # "widgetsCount":I
    .restart local v21    # "heightPadding":I
    .restart local v22    # "widthPadding":I
    .restart local v23    # "widgetsCount":I
    :goto_5
    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->invalidate()V

    .line 1287
    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->invalidate()V

    .line 1288
    goto :goto_6

    .line 1270
    .end local v6    # "width":I
    .end local v10    # "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .end local v12    # "height":I
    .end local v14    # "child":Landroid/view/View;
    .end local v15    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v21    # "heightPadding":I
    .end local v22    # "widthPadding":I
    .end local v23    # "widgetsCount":I
    .restart local v3    # "heightPadding":I
    .restart local v4    # "widthPadding":I
    .restart local v5    # "widgetsCount":I
    :cond_c
    move/from16 v21, v3

    move/from16 v22, v4

    move/from16 v23, v5

    .line 1270
    .end local v3    # "heightPadding":I
    .end local v4    # "widthPadding":I
    .end local v5    # "widgetsCount":I
    .restart local v21    # "heightPadding":I
    .restart local v22    # "widthPadding":I
    .restart local v23    # "widgetsCount":I
    :cond_d
    :goto_6
    add-int/lit8 v7, v7, 0x1

    move/from16 v3, v21

    move/from16 v4, v22

    move/from16 v5, v23

    move/from16 v2, p2

    goto/16 :goto_0

    .line 1340
    .end local v7    # "i":I
    .end local v21    # "heightPadding":I
    .end local v22    # "widthPadding":I
    .end local v23    # "widgetsCount":I
    .restart local v3    # "heightPadding":I
    .restart local v4    # "widthPadding":I
    .restart local v5    # "widgetsCount":I
    :cond_e
    move/from16 v21, v3

    move/from16 v22, v4

    move/from16 v23, v5

    .line 1340
    .end local v3    # "heightPadding":I
    .end local v4    # "widthPadding":I
    .end local v5    # "widgetsCount":I
    .restart local v21    # "heightPadding":I
    .restart local v22    # "widthPadding":I
    .restart local v23    # "widgetsCount":I
    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->solveGraph()V

    .line 1342
    const/4 v2, 0x0

    .line 1342
    .local v2, "i":I
    :goto_7
    move/from16 v3, v23

    if-ge v2, v3, :cond_2b

    .line 1343
    .end local v23    # "widgetsCount":I
    .local v3, "widgetsCount":I
    invoke-virtual {v0, v2}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1344
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-ne v5, v10, :cond_f

    .line 1345
    nop

    .line 1342
    .end local v2    # "i":I
    .end local v3    # "widgetsCount":I
    .end local v4    # "child":Landroid/view/View;
    .end local v21    # "heightPadding":I
    .end local v22    # "widthPadding":I
    .local v24, "widgetsCount":I
    .local v25, "i":I
    .local v30, "heightPadding":I
    .local v31, "widthPadding":I
    :goto_8
    move/from16 v25, v2

    move/from16 v24, v3

    move/from16 v30, v21

    move/from16 v31, v22

    const/4 v1, -0x2

    const/4 v8, -0x1

    const-wide/16 v18, 0x1

    goto/16 :goto_15

    .line 1347
    .end local v24    # "widgetsCount":I
    .end local v25    # "i":I
    .end local v30    # "heightPadding":I
    .end local v31    # "widthPadding":I
    .restart local v2    # "i":I
    .restart local v3    # "widgetsCount":I
    .restart local v4    # "child":Landroid/view/View;
    .restart local v21    # "heightPadding":I
    .restart local v22    # "widthPadding":I
    :cond_f
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 1348
    .local v5, "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    iget-object v6, v5, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1349
    .local v6, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-boolean v7, v5, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    if-nez v7, :cond_29

    iget-boolean v7, v5, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isHelper:Z

    if-eqz v7, :cond_10

    .line 1350
    goto :goto_8

    .line 1352
    :cond_10
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVisibility(I)V

    .line 1354
    iget v7, v5, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    .line 1355
    .local v7, "width":I
    iget v8, v5, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    .line 1357
    .local v8, "height":I
    if-eqz v7, :cond_11

    if-eqz v8, :cond_11

    .line 1358
    goto :goto_8

    .line 1361
    :cond_11
    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v9

    .line 1362
    .local v9, "left":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    sget-object v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v11

    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v11

    .line 1363
    .local v11, "right":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v12

    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v12

    if-eqz v12, :cond_12

    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 1364
    invoke-virtual {v6, v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v12

    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v12

    if-eqz v12, :cond_12

    const/4 v12, 0x1

    goto :goto_9

    :cond_12
    const/4 v12, 0x0

    .line 1365
    .local v12, "bothHorizontal":Z
    :goto_9
    sget-object v13, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v13

    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v13

    .line 1366
    .local v13, "top":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    sget-object v14, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v14}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v14

    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v14

    .line 1367
    .local v14, "bottom":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v15

    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v15

    if-eqz v15, :cond_13

    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 1368
    invoke-virtual {v6, v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v15

    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v15

    if-eqz v15, :cond_13

    const/4 v15, 0x1

    goto :goto_a

    :cond_13
    const/4 v15, 0x0

    .line 1370
    .local v15, "bothVertical":Z
    :goto_a
    if-nez v7, :cond_14

    if-nez v8, :cond_14

    if-eqz v12, :cond_14

    if-eqz v15, :cond_14

    .line 1371
    goto/16 :goto_8

    .line 1374
    :cond_14
    const/16 v16, 0x0

    .line 1375
    .restart local v16    # "didWrapMeasureWidth":Z
    const/16 v17, 0x0

    .line 1376
    .restart local v17    # "didWrapMeasureHeight":Z
    iget-object v10, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v10

    move/from16 v24, v3

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1376
    .end local v3    # "widgetsCount":I
    .restart local v24    # "widgetsCount":I
    if-eq v10, v3, :cond_15

    const/4 v3, 0x1

    goto :goto_b

    :cond_15
    const/4 v3, 0x0

    .line 1377
    .local v3, "resolveWidth":Z
    :goto_b
    iget-object v10, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v10

    move/from16 v25, v2

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1377
    .end local v2    # "i":I
    .restart local v25    # "i":I
    if-eq v10, v2, :cond_16

    const/4 v2, 0x1

    goto :goto_c

    :cond_16
    const/4 v2, 0x0

    .line 1382
    .local v2, "resolveHeight":Z
    :goto_c
    if-nez v3, :cond_17

    .line 1383
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->invalidate()V

    .line 1385
    :cond_17
    if-nez v2, :cond_18

    .line 1386
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->invalidate()V

    .line 1388
    :cond_18
    if-nez v7, :cond_1a

    .line 1389
    if-eqz v3, :cond_19

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isSpreadWidth()Z

    move-result v10

    if-eqz v10, :cond_19

    if-eqz v12, :cond_19

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->isResolved()Z

    move-result v10

    if-eqz v10, :cond_19

    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->isResolved()Z

    move-result v10

    if-eqz v10, :cond_19

    .line 1390
    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->getResolvedValue()F

    move-result v10

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->getResolvedValue()F

    move-result v23

    sub-float v10, v10, v23

    float-to-int v7, v10

    .line 1391
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->resolve(I)V

    .line 1392
    move/from16 v10, v22

    invoke-static {v1, v10, v7}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v22

    .line 1392
    .local v10, "widthPadding":I
    .local v22, "childWidthMeasureSpec":I
    goto :goto_d

    .line 1395
    .end local v10    # "widthPadding":I
    .local v22, "widthPadding":I
    :cond_19
    move/from16 v10, v22

    .line 1395
    .end local v22    # "widthPadding":I
    .restart local v10    # "widthPadding":I
    move/from16 v26, v3

    const/4 v3, -0x2

    invoke-static {v1, v10, v3}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v22

    .line 1397
    .end local v3    # "resolveWidth":Z
    .local v22, "childWidthMeasureSpec":I
    .local v26, "resolveWidth":Z
    const/16 v16, 0x1

    .line 1398
    const/4 v3, 0x0

    .line 1407
    :goto_d
    move/from16 v26, v3

    goto :goto_e

    .line 1400
    .end local v10    # "widthPadding":I
    .end local v26    # "resolveWidth":Z
    .restart local v3    # "resolveWidth":Z
    .local v22, "widthPadding":I
    :cond_1a
    move/from16 v26, v3

    move/from16 v10, v22

    .line 1400
    .end local v3    # "resolveWidth":Z
    .end local v22    # "widthPadding":I
    .restart local v10    # "widthPadding":I
    .restart local v26    # "resolveWidth":Z
    const/4 v3, -0x1

    if-ne v7, v3, :cond_1b

    .line 1401
    invoke-static {v1, v10, v3}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v22

    .line 1401
    .local v22, "childWidthMeasureSpec":I
    goto :goto_e

    .line 1404
    .end local v22    # "childWidthMeasureSpec":I
    :cond_1b
    const/4 v3, -0x2

    if-ne v7, v3, :cond_1c

    .line 1405
    const/4 v3, 0x1

    .line 1407
    .end local v16    # "didWrapMeasureWidth":Z
    .local v3, "didWrapMeasureWidth":Z
    move/from16 v16, v3

    .line 1407
    .end local v3    # "didWrapMeasureWidth":Z
    .restart local v16    # "didWrapMeasureWidth":Z
    :cond_1c
    invoke-static {v1, v10, v7}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v22

    .line 1407
    .restart local v22    # "childWidthMeasureSpec":I
    :goto_e
    move/from16 v3, v22

    .line 1410
    .end local v22    # "childWidthMeasureSpec":I
    .local v3, "childWidthMeasureSpec":I
    if-nez v8, :cond_1e

    .line 1411
    if-eqz v2, :cond_1d

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isSpreadHeight()Z

    move-result v22

    if-eqz v22, :cond_1d

    if-eqz v15, :cond_1d

    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->isResolved()Z

    move-result v22

    if-eqz v22, :cond_1d

    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->isResolved()Z

    move-result v22

    if-eqz v22, :cond_1d

    .line 1412
    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->getResolvedValue()F

    move-result v22

    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->getResolvedValue()F

    move-result v23

    sub-float v1, v22, v23

    float-to-int v8, v1

    .line 1413
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->resolve(I)V

    .line 1414
    move/from16 v27, v2

    move/from16 v2, v21

    move/from16 v1, p2

    invoke-static {v1, v2, v8}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v20

    .line 1429
    .end local v21    # "heightPadding":I
    .local v2, "heightPadding":I
    .local v20, "childHeightMeasureSpec":I
    .local v27, "resolveHeight":Z
    move-object/from16 v28, v9

    goto :goto_f

    .line 1417
    .end local v20    # "childHeightMeasureSpec":I
    .end local v27    # "resolveHeight":Z
    .local v2, "resolveHeight":Z
    .restart local v21    # "heightPadding":I
    :cond_1d
    move/from16 v27, v2

    move/from16 v2, v21

    move/from16 v1, p2

    .line 1417
    .end local v21    # "heightPadding":I
    .local v2, "heightPadding":I
    .restart local v27    # "resolveHeight":Z
    move-object/from16 v28, v9

    const/4 v9, -0x2

    invoke-static {v1, v2, v9}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v20

    .line 1419
    .end local v9    # "left":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .restart local v20    # "childHeightMeasureSpec":I
    .local v28, "left":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    const/16 v17, 0x1

    .line 1420
    const/4 v9, 0x0

    .line 1429
    .end local v27    # "resolveHeight":Z
    .local v9, "resolveHeight":Z
    move/from16 v27, v9

    goto :goto_f

    .line 1422
    .end local v20    # "childHeightMeasureSpec":I
    .end local v28    # "left":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .local v2, "resolveHeight":Z
    .local v9, "left":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .restart local v21    # "heightPadding":I
    :cond_1e
    move/from16 v27, v2

    move-object/from16 v28, v9

    move/from16 v2, v21

    move/from16 v1, p2

    .line 1422
    .end local v9    # "left":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .end local v21    # "heightPadding":I
    .local v2, "heightPadding":I
    .restart local v27    # "resolveHeight":Z
    .restart local v28    # "left":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    const/4 v9, -0x1

    if-ne v8, v9, :cond_1f

    .line 1423
    invoke-static {v1, v2, v9}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v20

    .line 1423
    .restart local v20    # "childHeightMeasureSpec":I
    goto :goto_f

    .line 1426
    .end local v20    # "childHeightMeasureSpec":I
    :cond_1f
    const/4 v9, -0x2

    if-ne v8, v9, :cond_20

    .line 1427
    const/4 v9, 0x1

    .line 1429
    .end local v17    # "didWrapMeasureHeight":Z
    .local v9, "didWrapMeasureHeight":Z
    move/from16 v17, v9

    .line 1429
    .end local v9    # "didWrapMeasureHeight":Z
    .restart local v17    # "didWrapMeasureHeight":Z
    :cond_20
    invoke-static {v1, v2, v8}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v20

    .line 1429
    .restart local v20    # "childHeightMeasureSpec":I
    :goto_f
    move/from16 v9, v20

    .line 1432
    .end local v20    # "childHeightMeasureSpec":I
    .local v9, "childHeightMeasureSpec":I
    invoke-virtual {v4, v3, v9}, Landroid/view/View;->measure(II)V

    .line 1433
    iget-object v1, v0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    if-eqz v1, :cond_21

    .line 1434
    iget-object v1, v0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    move/from16 v30, v2

    move/from16 v29, v3

    iget-wide v2, v1, Landroid/support/constraint/solver/Metrics;->measures:J

    .line 1434
    .end local v2    # "heightPadding":I
    .end local v3    # "childWidthMeasureSpec":I
    .local v29, "childWidthMeasureSpec":I
    .restart local v30    # "heightPadding":I
    move/from16 v32, v9

    move/from16 v31, v10

    const-wide/16 v18, 0x1

    add-long v9, v2, v18

    .line 1434
    .end local v9    # "childHeightMeasureSpec":I
    .end local v10    # "widthPadding":I
    .restart local v31    # "widthPadding":I
    .local v32, "childHeightMeasureSpec":I
    iput-wide v9, v1, Landroid/support/constraint/solver/Metrics;->measures:J

    goto :goto_10

    .line 1437
    .end local v29    # "childWidthMeasureSpec":I
    .end local v30    # "heightPadding":I
    .end local v31    # "widthPadding":I
    .end local v32    # "childHeightMeasureSpec":I
    .restart local v2    # "heightPadding":I
    .restart local v3    # "childWidthMeasureSpec":I
    .restart local v9    # "childHeightMeasureSpec":I
    .restart local v10    # "widthPadding":I
    :cond_21
    move/from16 v30, v2

    move/from16 v29, v3

    move/from16 v32, v9

    move/from16 v31, v10

    const-wide/16 v18, 0x1

    .line 1437
    .end local v2    # "heightPadding":I
    .end local v3    # "childWidthMeasureSpec":I
    .end local v9    # "childHeightMeasureSpec":I
    .end local v10    # "widthPadding":I
    .restart local v29    # "childWidthMeasureSpec":I
    .restart local v30    # "heightPadding":I
    .restart local v31    # "widthPadding":I
    .restart local v32    # "childHeightMeasureSpec":I
    :goto_10
    const/4 v1, -0x2

    if-ne v7, v1, :cond_22

    const/4 v2, 0x1

    goto :goto_11

    :cond_22
    const/4 v2, 0x0

    :goto_11
    invoke-virtual {v6, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidthWrapContent(Z)V

    .line 1438
    if-ne v8, v1, :cond_23

    const/4 v2, 0x1

    goto :goto_12

    :cond_23
    const/4 v2, 0x0

    :goto_12
    invoke-virtual {v6, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeightWrapContent(Z)V

    .line 1439
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 1440
    .end local v7    # "width":I
    .local v2, "width":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 1442
    .end local v8    # "height":I
    .local v3, "height":I
    invoke-virtual {v6, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 1443
    invoke-virtual {v6, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 1445
    if-eqz v16, :cond_24

    .line 1446
    invoke-virtual {v6, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWrapWidth(I)V

    .line 1448
    :cond_24
    if-eqz v17, :cond_25

    .line 1449
    invoke-virtual {v6, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWrapHeight(I)V

    .line 1451
    :cond_25
    if-eqz v26, :cond_26

    .line 1452
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->resolve(I)V

    goto :goto_13

    .line 1454
    :cond_26
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->remove()V

    .line 1456
    :goto_13
    if-eqz v27, :cond_27

    .line 1457
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->resolve(I)V

    goto :goto_14

    .line 1459
    :cond_27
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->remove()V

    .line 1462
    :goto_14
    iget-boolean v7, v5, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    if-eqz v7, :cond_28

    .line 1463
    invoke-virtual {v4}, Landroid/view/View;->getBaseline()I

    move-result v7

    .line 1464
    .local v7, "baseline":I
    const/4 v8, -0x1

    if-eq v7, v8, :cond_2a

    .line 1465
    invoke-virtual {v6, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setBaselineDistance(I)V

    .line 1465
    .end local v2    # "width":I
    .end local v3    # "height":I
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .end local v6    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v7    # "baseline":I
    .end local v11    # "right":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .end local v12    # "bothHorizontal":Z
    .end local v13    # "top":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .end local v14    # "bottom":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .end local v15    # "bothVertical":Z
    .end local v16    # "didWrapMeasureWidth":Z
    .end local v17    # "didWrapMeasureHeight":Z
    .end local v26    # "resolveWidth":Z
    .end local v27    # "resolveHeight":Z
    .end local v28    # "left":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .end local v29    # "childWidthMeasureSpec":I
    .end local v32    # "childHeightMeasureSpec":I
    goto :goto_15

    .line 1342
    :cond_28
    const/4 v8, -0x1

    goto :goto_15

    .line 1342
    .end local v24    # "widgetsCount":I
    .end local v25    # "i":I
    .end local v30    # "heightPadding":I
    .end local v31    # "widthPadding":I
    .local v2, "i":I
    .local v3, "widgetsCount":I
    .restart local v21    # "heightPadding":I
    .local v22, "widthPadding":I
    :cond_29
    move/from16 v25, v2

    move/from16 v24, v3

    move/from16 v30, v21

    move/from16 v31, v22

    const/4 v1, -0x2

    const/4 v8, -0x1

    const-wide/16 v18, 0x1

    .line 1342
    .end local v2    # "i":I
    .end local v3    # "widgetsCount":I
    .end local v21    # "heightPadding":I
    .end local v22    # "widthPadding":I
    .restart local v24    # "widgetsCount":I
    .restart local v25    # "i":I
    .restart local v30    # "heightPadding":I
    .restart local v31    # "widthPadding":I
    :cond_2a
    :goto_15
    add-int/lit8 v2, v25, 0x1

    .line 1342
    .end local v25    # "i":I
    .restart local v2    # "i":I
    move/from16 v23, v24

    move/from16 v21, v30

    move/from16 v22, v31

    move/from16 v1, p1

    const/16 v10, 0x8

    goto/16 :goto_7

    .line 1469
    .end local v2    # "i":I
    .end local v24    # "widgetsCount":I
    .end local v30    # "heightPadding":I
    .end local v31    # "widthPadding":I
    .restart local v3    # "widgetsCount":I
    .restart local v21    # "heightPadding":I
    .restart local v22    # "widthPadding":I
    :cond_2b
    move/from16 v24, v3

    move/from16 v30, v21

    move/from16 v31, v22

    .line 1469
    .end local v3    # "widgetsCount":I
    .end local v21    # "heightPadding":I
    .end local v22    # "widthPadding":I
    .restart local v24    # "widgetsCount":I
    .restart local v30    # "heightPadding":I
    .restart local v31    # "widthPadding":I
    return-void
.end method

.method private setChildrenConstraints()V
    .locals 33

    .line 798
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->isInEditMode()Z

    move-result v2

    .line 800
    .local v2, "isInEditMode":Z
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v3

    .line 801
    .local v3, "count":I
    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eqz v2, :cond_1

    .line 805
    move v6, v4

    .line 805
    .local v6, "i":I
    :goto_0
    if-ge v6, v3, :cond_1

    .line 806
    invoke-virtual {v1, v6}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 808
    .local v7, "view":Landroid/view/View;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v8

    .line 809
    .local v8, "IdAsString":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v4, v8, v9}, Landroid/support/constraint/ConstraintLayout;->setDesignInformation(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 810
    const/16 v9, 0x2f

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 811
    .local v9, "slashIndex":I
    if-eq v9, v5, :cond_0

    .line 812
    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    .line 814
    :cond_0
    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v10

    invoke-direct {v1, v10}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setDebugName(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 817
    .end local v8    # "IdAsString":Ljava/lang/String;
    .end local v9    # "slashIndex":I
    goto :goto_1

    .line 815
    :catch_0
    move-exception v0

    .line 805
    .end local v7    # "view":Landroid/view/View;
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 822
    .end local v6    # "i":I
    :cond_1
    move v6, v4

    .line 822
    .restart local v6    # "i":I
    :goto_2
    if-ge v6, v3, :cond_3

    .line 823
    invoke-virtual {v1, v6}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 824
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v1, v7}, Landroid/support/constraint/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v8

    .line 825
    .local v8, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-nez v8, :cond_2

    .line 826
    goto :goto_3

    .line 828
    :cond_2
    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->reset()V

    .line 822
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 831
    .end local v6    # "i":I
    :cond_3
    iget v6, v1, Landroid/support/constraint/ConstraintLayout;->mConstraintSetId:I

    if-eq v6, v5, :cond_5

    .line 832
    move v6, v4

    .line 832
    .restart local v6    # "i":I
    :goto_4
    if-ge v6, v3, :cond_5

    .line 833
    invoke-virtual {v1, v6}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 834
    .restart local v7    # "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v8

    iget v9, v1, Landroid/support/constraint/ConstraintLayout;->mConstraintSetId:I

    if-ne v8, v9, :cond_4

    instance-of v8, v7, Landroid/support/constraint/Constraints;

    if-eqz v8, :cond_4

    .line 835
    move-object v8, v7

    check-cast v8, Landroid/support/constraint/Constraints;

    invoke-virtual {v8}, Landroid/support/constraint/Constraints;->getConstraintSet()Landroid/support/constraint/ConstraintSet;

    move-result-object v8

    iput-object v8, v1, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    .line 832
    .end local v7    # "child":Landroid/view/View;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 839
    .end local v6    # "i":I
    :cond_5
    iget-object v6, v1, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    if-eqz v6, :cond_6

    .line 840
    iget-object v6, v1, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    invoke-virtual {v6, v1}, Landroid/support/constraint/ConstraintSet;->applyToInternal(Landroid/support/constraint/ConstraintLayout;)V

    .line 843
    :cond_6
    iget-object v6, v1, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->removeAllChildren()V

    .line 845
    iget-object v6, v1, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 846
    .local v6, "helperCount":I
    if-lez v6, :cond_7

    .line 847
    move v7, v4

    .line 847
    .local v7, "i":I
    :goto_5
    if-ge v7, v6, :cond_7

    .line 848
    iget-object v8, v1, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/constraint/ConstraintHelper;

    .line 849
    .local v8, "helper":Landroid/support/constraint/ConstraintHelper;
    invoke-virtual {v8, v1}, Landroid/support/constraint/ConstraintHelper;->updatePreLayout(Landroid/support/constraint/ConstraintLayout;)V

    .line 847
    .end local v8    # "helper":Landroid/support/constraint/ConstraintHelper;
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 853
    .end local v7    # "i":I
    :cond_7
    move v7, v4

    .line 853
    .restart local v7    # "i":I
    :goto_6
    if-ge v7, v3, :cond_9

    .line 854
    invoke-virtual {v1, v7}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 855
    .local v8, "child":Landroid/view/View;
    instance-of v9, v8, Landroid/support/constraint/Placeholder;

    if-eqz v9, :cond_8

    .line 856
    move-object v9, v8

    check-cast v9, Landroid/support/constraint/Placeholder;

    invoke-virtual {v9, v1}, Landroid/support/constraint/Placeholder;->updatePreLayout(Landroid/support/constraint/ConstraintLayout;)V

    .line 853
    .end local v8    # "child":Landroid/view/View;
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 859
    .end local v7    # "i":I
    :cond_9
    move v7, v4

    .line 859
    .restart local v7    # "i":I
    :goto_7
    if-ge v7, v3, :cond_36

    .line 860
    invoke-virtual {v1, v7}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 861
    .restart local v8    # "child":Landroid/view/View;
    invoke-virtual {v1, v8}, Landroid/support/constraint/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v15

    .line 862
    .local v15, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-nez v15, :cond_a

    .line 863
    nop

    .line 859
    move/from16 v17, v3

    move v9, v4

    move v10, v5

    move/from16 v23, v6

    goto/16 :goto_16

    .line 865
    :cond_a
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    move-object v14, v9

    check-cast v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 866
    .local v14, "layoutParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    invoke-virtual {v14}, Landroid/support/constraint/ConstraintLayout$LayoutParams;->validate()V

    .line 867
    iget-boolean v9, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->helped:Z

    if-eqz v9, :cond_b

    .line 868
    iput-boolean v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->helped:Z

    goto :goto_8

    .line 870
    :cond_b
    if-eqz v2, :cond_c

    .line 875
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v9

    .line 876
    .local v9, "IdAsString":Ljava/lang/String;
    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v4, v9, v10}, Landroid/support/constraint/ConstraintLayout;->setDesignInformation(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 877
    const-string v10, "id/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v10, v10, 0x3

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    .line 878
    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v10

    invoke-direct {v1, v10}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setDebugName(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 881
    .end local v9    # "IdAsString":Ljava/lang/String;
    goto :goto_8

    .line 879
    :catch_1
    move-exception v0

    .line 884
    :cond_c
    :goto_8
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    invoke-virtual {v15, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVisibility(I)V

    .line 885
    iget-boolean v9, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isInPlaceholder:Z

    if-eqz v9, :cond_d

    .line 886
    const/16 v9, 0x8

    invoke-virtual {v15, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVisibility(I)V

    .line 888
    :cond_d
    invoke-virtual {v15, v8}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setCompanionWidget(Ljava/lang/Object;)V

    .line 889
    iget-object v9, v1, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v9, v15}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->add(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 891
    iget-boolean v9, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    if-eqz v9, :cond_e

    iget-boolean v9, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    if-nez v9, :cond_f

    .line 892
    :cond_e
    iget-object v9, v1, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 895
    :cond_f
    iget-boolean v9, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    const/16 v10, 0x11

    if-eqz v9, :cond_15

    .line 896
    move-object v9, v15

    check-cast v9, Landroid/support/constraint/solver/widgets/Guideline;

    .line 897
    .local v9, "guideline":Landroid/support/constraint/solver/widgets/Guideline;
    iget v11, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedGuideBegin:I

    .line 898
    .local v11, "resolvedGuideBegin":I
    iget v12, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedGuideEnd:I

    .line 899
    .local v12, "resolvedGuideEnd":I
    iget v13, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedGuidePercent:F

    .line 900
    .local v13, "resolvedGuidePercent":F
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v4, v10, :cond_10

    .line 901
    iget v11, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    .line 902
    iget v12, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    .line 903
    iget v13, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    .line 905
    :cond_10
    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v4, v13, v4

    if-eqz v4, :cond_11

    .line 906
    invoke-virtual {v9, v13}, Landroid/support/constraint/solver/widgets/Guideline;->setGuidePercent(F)V

    goto :goto_9

    .line 907
    :cond_11
    if-eq v11, v5, :cond_12

    .line 908
    invoke-virtual {v9, v11}, Landroid/support/constraint/solver/widgets/Guideline;->setGuideBegin(I)V

    goto :goto_9

    .line 909
    :cond_12
    if-eq v12, v5, :cond_13

    .line 910
    invoke-virtual {v9, v12}, Landroid/support/constraint/solver/widgets/Guideline;->setGuideEnd(I)V

    .line 912
    .end local v9    # "guideline":Landroid/support/constraint/solver/widgets/Guideline;
    .end local v11    # "resolvedGuideBegin":I
    .end local v12    # "resolvedGuideEnd":I
    .end local v13    # "resolvedGuidePercent":F
    :cond_13
    :goto_9
    nop

    .line 859
    .end local v3    # "count":I
    .end local v6    # "helperCount":I
    .end local v8    # "child":Landroid/view/View;
    .end local v14    # "layoutParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .end local v15    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v17, "count":I
    .local v23, "helperCount":I
    :cond_14
    move/from16 v17, v3

    move v10, v5

    move/from16 v23, v6

    const/4 v9, 0x0

    goto/16 :goto_16

    .line 912
    .end local v17    # "count":I
    .end local v23    # "helperCount":I
    .restart local v3    # "count":I
    .restart local v6    # "helperCount":I
    .restart local v8    # "child":Landroid/view/View;
    .restart local v14    # "layoutParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .restart local v15    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_15
    iget v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    if-ne v4, v5, :cond_16

    iget v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    if-ne v4, v5, :cond_16

    iget v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    if-ne v4, v5, :cond_16

    iget v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    if-ne v4, v5, :cond_16

    iget v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    if-ne v4, v5, :cond_16

    iget v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    if-ne v4, v5, :cond_16

    iget v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    if-ne v4, v5, :cond_16

    iget v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    if-ne v4, v5, :cond_16

    iget v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    if-ne v4, v5, :cond_16

    iget v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    if-ne v4, v5, :cond_16

    iget v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    if-ne v4, v5, :cond_16

    iget v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    if-ne v4, v5, :cond_16

    iget v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    if-ne v4, v5, :cond_16

    iget v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    if-ne v4, v5, :cond_16

    iget v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    if-ne v4, v5, :cond_16

    iget v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleConstraint:I

    if-ne v4, v5, :cond_16

    iget v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    if-eq v4, v5, :cond_16

    iget v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    if-ne v4, v5, :cond_14

    .line 932
    :cond_16
    iget v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    .line 933
    .local v4, "resolvedLeftToLeft":I
    iget v9, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    .line 934
    .local v9, "resolvedLeftToRight":I
    iget v11, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    .line 935
    .local v11, "resolvedRightToLeft":I
    iget v12, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    .line 936
    .local v12, "resolvedRightToRight":I
    iget v13, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 937
    .local v13, "resolveGoneLeftMargin":I
    iget v5, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 938
    .local v5, "resolveGoneRightMargin":I
    iget v10, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    .line 940
    .local v10, "resolvedHorizontalBias":F
    move/from16 v17, v3

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 940
    .end local v3    # "count":I
    .restart local v17    # "count":I
    move/from16 v18, v4

    const/16 v4, 0x11

    if-ge v3, v4, :cond_1d

    .line 943
    .end local v4    # "resolvedLeftToLeft":I
    .local v18, "resolvedLeftToLeft":I
    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 944
    .end local v18    # "resolvedLeftToLeft":I
    .local v3, "resolvedLeftToLeft":I
    iget v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 945
    .end local v9    # "resolvedLeftToRight":I
    .local v4, "resolvedLeftToRight":I
    iget v11, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 946
    iget v12, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 947
    iget v9, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    .line 948
    .end local v13    # "resolveGoneLeftMargin":I
    .local v9, "resolveGoneLeftMargin":I
    iget v5, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneRightMargin:I

    .line 949
    iget v10, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 951
    const/4 v13, -0x1

    if-ne v3, v13, :cond_18

    if-ne v4, v13, :cond_18

    .line 952
    move/from16 v19, v3

    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    .line 952
    .end local v3    # "resolvedLeftToLeft":I
    .local v19, "resolvedLeftToLeft":I
    if-eq v3, v13, :cond_17

    .line 953
    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    .line 958
    .end local v19    # "resolvedLeftToLeft":I
    .restart local v3    # "resolvedLeftToLeft":I
    move/from16 v32, v4

    move v4, v3

    move/from16 v3, v32

    goto :goto_b

    .line 954
    .end local v3    # "resolvedLeftToLeft":I
    .restart local v19    # "resolvedLeftToLeft":I
    :cond_17
    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    if-eq v3, v13, :cond_19

    .line 955
    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 955
    .end local v4    # "resolvedLeftToRight":I
    .local v3, "resolvedLeftToRight":I
    goto :goto_a

    .line 958
    .end local v19    # "resolvedLeftToLeft":I
    .local v3, "resolvedLeftToLeft":I
    .restart local v4    # "resolvedLeftToRight":I
    :cond_18
    move/from16 v19, v3

    .line 958
    .end local v3    # "resolvedLeftToLeft":I
    .restart local v19    # "resolvedLeftToLeft":I
    :cond_19
    move v3, v4

    .line 958
    .end local v19    # "resolvedLeftToLeft":I
    .local v3, "resolvedLeftToRight":I
    .local v4, "resolvedLeftToLeft":I
    :goto_a
    move/from16 v4, v19

    :goto_b
    if-ne v11, v13, :cond_1b

    if-ne v12, v13, :cond_1b

    .line 959
    move/from16 v20, v3

    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    .line 959
    .end local v3    # "resolvedLeftToRight":I
    .local v20, "resolvedLeftToRight":I
    if-eq v3, v13, :cond_1a

    .line 960
    iget v11, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    goto :goto_c

    .line 961
    :cond_1a
    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    if-eq v3, v13, :cond_1c

    .line 962
    iget v12, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    goto :goto_c

    .line 968
    .end local v20    # "resolvedLeftToRight":I
    .restart local v3    # "resolvedLeftToRight":I
    :cond_1b
    move/from16 v20, v3

    .line 968
    .end local v3    # "resolvedLeftToRight":I
    .end local v9    # "resolveGoneLeftMargin":I
    .end local v10    # "resolvedHorizontalBias":F
    .local v5, "resolvedLeftToRight":I
    .local v11, "resolvedHorizontalBias":F
    .local v13, "resolvedRightToLeft":I
    .local v16, "resolveGoneLeftMargin":I
    .local v18, "resolveGoneRightMargin":I
    :cond_1c
    :goto_c
    move/from16 v18, v5

    move/from16 v16, v9

    move v3, v13

    move/from16 v5, v20

    goto :goto_d

    .line 968
    .end local v4    # "resolvedLeftToLeft":I
    .end local v16    # "resolveGoneLeftMargin":I
    .local v5, "resolveGoneRightMargin":I
    .local v9, "resolvedLeftToRight":I
    .restart local v10    # "resolvedHorizontalBias":F
    .local v11, "resolvedRightToLeft":I
    .local v13, "resolveGoneLeftMargin":I
    .local v18, "resolvedLeftToLeft":I
    :cond_1d
    const/4 v3, -0x1

    move/from16 v16, v13

    move/from16 v4, v18

    move/from16 v18, v5

    move v5, v9

    .line 968
    .end local v9    # "resolvedLeftToRight":I
    .end local v10    # "resolvedHorizontalBias":F
    .restart local v4    # "resolvedLeftToLeft":I
    .local v5, "resolvedLeftToRight":I
    .local v11, "resolvedHorizontalBias":F
    .local v13, "resolvedRightToLeft":I
    .restart local v16    # "resolveGoneLeftMargin":I
    .local v18, "resolveGoneRightMargin":I
    :goto_d
    move v13, v11

    move v11, v10

    iget v9, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleConstraint:I

    if-eq v9, v3, :cond_1f

    .line 969
    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleConstraint:I

    invoke-direct {v1, v3}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v3

    .line 970
    .local v3, "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v3, :cond_1e

    .line 971
    iget v9, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleAngle:F

    iget v10, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleRadius:I

    invoke-virtual {v15, v3, v9, v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connectCircularConstraint(Landroid/support/constraint/solver/widgets/ConstraintWidget;FI)V

    .line 973
    .end local v3    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_1e
    nop

    .line 1069
    move/from16 v21, v4

    move/from16 v23, v6

    move-object/from16 v24, v8

    move v4, v11

    move v3, v12

    move v6, v13

    move-object v8, v14

    goto/16 :goto_13

    .line 975
    :cond_1f
    const/4 v3, -0x1

    if-eq v4, v3, :cond_21

    .line 976
    invoke-direct {v1, v4}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v3

    .line 977
    .restart local v3    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v3, :cond_20

    .line 978
    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v19, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    iget v9, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftMargin:I

    move/from16 v20, v9

    move-object v9, v15

    move/from16 v21, v4

    move v4, v11

    move-object v11, v3

    .line 978
    .end local v11    # "resolvedHorizontalBias":F
    .local v4, "resolvedHorizontalBias":F
    .local v21, "resolvedLeftToLeft":I
    move-object/from16 v22, v3

    move v3, v12

    move-object/from16 v12, v19

    .line 978
    .end local v12    # "resolvedRightToRight":I
    .local v3, "resolvedRightToRight":I
    .local v22, "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move/from16 v23, v6

    move v6, v13

    move/from16 v13, v20

    .line 978
    .end local v13    # "resolvedRightToLeft":I
    .local v6, "resolvedRightToLeft":I
    .restart local v23    # "helperCount":I
    move-object/from16 v24, v8

    move-object v8, v14

    move/from16 v14, v16

    .line 978
    .end local v14    # "layoutParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .local v8, "layoutParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .local v24, "child":Landroid/view/View;
    invoke-virtual/range {v9 .. v14}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    .line 978
    .end local v22    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    goto :goto_e

    .line 982
    .end local v3    # "resolvedRightToRight":I
    .end local v21    # "resolvedLeftToLeft":I
    .end local v23    # "helperCount":I
    .end local v24    # "child":Landroid/view/View;
    .local v4, "resolvedLeftToLeft":I
    .local v6, "helperCount":I
    .local v8, "child":Landroid/view/View;
    .restart local v11    # "resolvedHorizontalBias":F
    .restart local v12    # "resolvedRightToRight":I
    .restart local v13    # "resolvedRightToLeft":I
    .restart local v14    # "layoutParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    :cond_20
    move/from16 v21, v4

    move/from16 v23, v6

    move-object/from16 v24, v8

    move v4, v11

    move v3, v12

    move v6, v13

    move-object v8, v14

    .line 982
    .end local v11    # "resolvedHorizontalBias":F
    .end local v12    # "resolvedRightToRight":I
    .end local v13    # "resolvedRightToLeft":I
    .end local v14    # "layoutParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .restart local v3    # "resolvedRightToRight":I
    .local v4, "resolvedHorizontalBias":F
    .local v6, "resolvedRightToLeft":I
    .local v8, "layoutParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .restart local v21    # "resolvedLeftToLeft":I
    .restart local v23    # "helperCount":I
    .restart local v24    # "child":Landroid/view/View;
    :goto_e
    goto :goto_f

    .line 982
    .end local v3    # "resolvedRightToRight":I
    .end local v21    # "resolvedLeftToLeft":I
    .end local v23    # "helperCount":I
    .end local v24    # "child":Landroid/view/View;
    .local v4, "resolvedLeftToLeft":I
    .local v6, "helperCount":I
    .local v8, "child":Landroid/view/View;
    .restart local v11    # "resolvedHorizontalBias":F
    .restart local v12    # "resolvedRightToRight":I
    .restart local v13    # "resolvedRightToLeft":I
    .restart local v14    # "layoutParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    :cond_21
    move/from16 v21, v4

    move/from16 v23, v6

    move-object/from16 v24, v8

    move v4, v11

    move v3, v12

    move v6, v13

    move-object v8, v14

    .line 982
    .end local v11    # "resolvedHorizontalBias":F
    .end local v12    # "resolvedRightToRight":I
    .end local v13    # "resolvedRightToLeft":I
    .end local v14    # "layoutParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .restart local v3    # "resolvedRightToRight":I
    .local v4, "resolvedHorizontalBias":F
    .local v6, "resolvedRightToLeft":I
    .local v8, "layoutParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .restart local v21    # "resolvedLeftToLeft":I
    .restart local v23    # "helperCount":I
    .restart local v24    # "child":Landroid/view/View;
    const/4 v9, -0x1

    if-eq v5, v9, :cond_22

    .line 983
    invoke-direct {v1, v5}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v19

    .line 984
    .local v19, "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v19, :cond_22

    .line 985
    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    iget v13, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftMargin:I

    move-object v9, v15

    move-object/from16 v11, v19

    move/from16 v14, v16

    invoke-virtual/range {v9 .. v14}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    .line 992
    .end local v19    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_22
    :goto_f
    const/4 v9, -0x1

    if-eq v6, v9, :cond_24

    .line 993
    invoke-direct {v1, v6}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v19

    .line 994
    .restart local v19    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v19, :cond_23

    .line 995
    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    iget v13, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightMargin:I

    move-object v9, v15

    move-object/from16 v11, v19

    move/from16 v14, v18

    invoke-virtual/range {v9 .. v14}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    .line 999
    .end local v19    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_23
    goto :goto_10

    :cond_24
    const/4 v9, -0x1

    if-eq v3, v9, :cond_25

    .line 1000
    invoke-direct {v1, v3}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v19

    .line 1001
    .restart local v19    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v19, :cond_25

    .line 1002
    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    iget v13, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightMargin:I

    move-object v9, v15

    move-object/from16 v11, v19

    move/from16 v14, v18

    invoke-virtual/range {v9 .. v14}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    .line 1009
    .end local v19    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_25
    :goto_10
    iget v9, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_27

    .line 1010
    iget v9, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    invoke-direct {v1, v9}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v19

    .line 1011
    .restart local v19    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v19, :cond_26

    .line 1012
    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    iget v13, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topMargin:I

    iget v14, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneTopMargin:I

    move-object v9, v15

    move-object/from16 v11, v19

    invoke-virtual/range {v9 .. v14}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    .line 1016
    .end local v19    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_26
    goto :goto_11

    :cond_27
    iget v9, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_28

    .line 1017
    iget v9, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    invoke-direct {v1, v9}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v19

    .line 1018
    .restart local v19    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v19, :cond_28

    .line 1019
    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    iget v13, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topMargin:I

    iget v14, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneTopMargin:I

    move-object v9, v15

    move-object/from16 v11, v19

    invoke-virtual/range {v9 .. v14}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    .line 1026
    .end local v19    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_28
    :goto_11
    iget v9, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_2a

    .line 1027
    iget v9, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    invoke-direct {v1, v9}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v19

    .line 1028
    .restart local v19    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v19, :cond_29

    .line 1029
    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    iget v13, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomMargin:I

    iget v14, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    move-object v9, v15

    move-object/from16 v11, v19

    invoke-virtual/range {v9 .. v14}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    .line 1033
    .end local v19    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_29
    goto :goto_12

    :cond_2a
    iget v9, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_2b

    .line 1034
    iget v9, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    invoke-direct {v1, v9}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v19

    .line 1035
    .restart local v19    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v19, :cond_2b

    .line 1036
    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    iget v13, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomMargin:I

    iget v14, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    move-object v9, v15

    move-object/from16 v11, v19

    invoke-virtual/range {v9 .. v14}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    .line 1043
    .end local v19    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_2b
    :goto_12
    iget v9, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_2c

    .line 1044
    iget-object v9, v1, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    iget v10, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 1045
    .local v9, "view":Landroid/view/View;
    iget v10, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    invoke-direct {v1, v10}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v10

    .line 1046
    .local v10, "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v10, :cond_2c

    if-eqz v9, :cond_2c

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    instance-of v11, v11, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    if-eqz v11, :cond_2c

    .line 1047
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 1048
    .local v11, "targetParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    const/4 v12, 0x1

    iput-boolean v12, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    .line 1049
    iput-boolean v12, v11, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    .line 1050
    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v15, v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v12

    .line 1051
    .local v12, "baseline":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    sget-object v13, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 1052
    invoke-virtual {v10, v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v13

    .line 1053
    .local v13, "targetBaseline":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    const/16 v27, 0x0

    const/16 v28, -0x1

    sget-object v29, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    const/16 v30, 0x0

    const/16 v31, 0x1

    move-object/from16 v25, v12

    move-object/from16 v26, v13

    invoke-virtual/range {v25 .. v31}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;IILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;IZ)Z

    .line 1056
    sget-object v14, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v15, v14}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v14

    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1057
    sget-object v14, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v15, v14}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v14

    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1061
    .end local v9    # "view":Landroid/view/View;
    .end local v10    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v11    # "targetParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .end local v12    # "baseline":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v13    # "targetBaseline":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_2c
    const/4 v9, 0x0

    cmpl-float v10, v4, v9

    const/high16 v11, 0x3f000000    # 0.5f

    if-ltz v10, :cond_2d

    cmpl-float v10, v4, v11

    if-eqz v10, :cond_2d

    .line 1062
    invoke-virtual {v15, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalBiasPercent(F)V

    .line 1064
    :cond_2d
    iget v10, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    cmpl-float v9, v10, v9

    if-ltz v9, :cond_2e

    iget v9, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    cmpl-float v9, v9, v11

    if-eqz v9, :cond_2e

    .line 1065
    iget v9, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    invoke-virtual {v15, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalBiasPercent(F)V

    .line 1069
    :cond_2e
    :goto_13
    if-eqz v2, :cond_30

    iget v9, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_2f

    iget v9, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    if-eq v9, v10, :cond_30

    .line 1071
    :cond_2f
    iget v9, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    iget v10, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    invoke-virtual {v15, v9, v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setOrigin(II)V

    .line 1075
    :cond_30
    iget-boolean v9, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    if-nez v9, :cond_32

    .line 1076
    iget v9, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_31

    .line 1077
    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v15, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1078
    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v15, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v9

    iget v10, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftMargin:I

    iput v10, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 1079
    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v15, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v9

    iget v10, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightMargin:I

    iput v10, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    goto :goto_14

    .line 1081
    :cond_31
    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v15, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1082
    const/4 v9, 0x0

    invoke-virtual {v15, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    goto :goto_14

    .line 1085
    :cond_32
    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v15, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1086
    iget v9, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    invoke-virtual {v15, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 1088
    :goto_14
    iget-boolean v9, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    if-nez v9, :cond_34

    .line 1089
    iget v9, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_33

    .line 1090
    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v15, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1091
    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v15, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v9

    iget v11, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topMargin:I

    iput v11, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 1092
    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v15, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v9

    iget v11, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomMargin:I

    iput v11, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 1102
    const/4 v9, 0x0

    goto :goto_15

    .line 1094
    :cond_33
    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v15, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1095
    const/4 v9, 0x0

    invoke-virtual {v15, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    goto :goto_15

    .line 1098
    :cond_34
    const/4 v9, 0x0

    const/4 v10, -0x1

    sget-object v11, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v15, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1099
    iget v11, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    invoke-virtual {v15, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 1102
    :goto_15
    iget-object v11, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    if-eqz v11, :cond_35

    .line 1103
    iget-object v11, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    invoke-virtual {v15, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setDimensionRatio(Ljava/lang/String;)V

    .line 1105
    :cond_35
    iget v11, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalWeight:F

    invoke-virtual {v15, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalWeight(F)V

    .line 1106
    iget v11, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalWeight:F

    invoke-virtual {v15, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalWeight(F)V

    .line 1107
    iget v11, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    invoke-virtual {v15, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalChainStyle(I)V

    .line 1108
    iget v11, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    invoke-virtual {v15, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalChainStyle(I)V

    .line 1109
    iget v11, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    iget v12, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    iget v13, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    iget v14, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    invoke-virtual {v15, v11, v12, v13, v14}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalMatchStyle(IIIF)V

    .line 1112
    iget v11, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    iget v12, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    iget v13, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    iget v14, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    invoke-virtual {v15, v11, v12, v13, v14}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalMatchStyle(IIIF)V

    .line 859
    .end local v3    # "resolvedRightToRight":I
    .end local v4    # "resolvedHorizontalBias":F
    .end local v5    # "resolvedLeftToRight":I
    .end local v6    # "resolvedRightToLeft":I
    .end local v8    # "layoutParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .end local v15    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v16    # "resolveGoneLeftMargin":I
    .end local v18    # "resolveGoneRightMargin":I
    .end local v21    # "resolvedLeftToLeft":I
    .end local v24    # "child":Landroid/view/View;
    :goto_16
    add-int/lit8 v7, v7, 0x1

    move v4, v9

    move v5, v10

    move/from16 v3, v17

    move/from16 v6, v23

    goto/16 :goto_7

    .line 1117
    .end local v7    # "i":I
    .end local v17    # "count":I
    .end local v23    # "helperCount":I
    .local v3, "count":I
    .local v6, "helperCount":I
    :cond_36
    move/from16 v17, v3

    move/from16 v23, v6

    .line 1117
    .end local v3    # "count":I
    .end local v6    # "helperCount":I
    .restart local v17    # "count":I
    .restart local v23    # "helperCount":I
    return-void
.end method

.method private setSelfDimensionBehaviour(II)V
    .locals 15
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    move-object v0, p0

    .line 1738
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1739
    .local v1, "widthMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 1740
    .local v2, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 1741
    .local v3, "heightMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 1743
    .local v4, "heightSize":I
    invoke-virtual {v0}, Landroid/support/constraint/ConstraintLayout;->getPaddingTop()I

    move-result v5

    invoke-virtual {v0}, Landroid/support/constraint/ConstraintLayout;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    .line 1744
    .local v5, "heightPadding":I
    invoke-virtual {v0}, Landroid/support/constraint/ConstraintLayout;->getPaddingLeft()I

    move-result v6

    invoke-virtual {v0}, Landroid/support/constraint/ConstraintLayout;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    .line 1746
    .local v6, "widthPadding":I
    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1747
    .local v7, "widthBehaviour":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1748
    .local v8, "heightBehaviour":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    const/4 v9, 0x0

    .line 1749
    .local v9, "desiredWidth":I
    const/4 v10, 0x0

    .line 1751
    .local v10, "desiredHeight":I
    invoke-virtual {v0}, Landroid/support/constraint/ConstraintLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    .line 1752
    .local v11, "params":Landroid/view/ViewGroup$LayoutParams;
    const/high16 v12, 0x40000000    # 2.0f

    const/high16 v13, -0x80000000

    if-eq v1, v13, :cond_2

    if-eqz v1, :cond_1

    if-eq v1, v12, :cond_0

    goto :goto_0

    .line 1763
    :cond_0
    iget v14, v0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    invoke-static {v14, v2}, Ljava/lang/Math;->min(II)I

    move-result v14

    sub-int v9, v14, v6

    goto :goto_0

    .line 1759
    :cond_1
    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1761
    goto :goto_0

    .line 1754
    :cond_2
    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1755
    move v9, v2

    .line 1757
    nop

    .line 1766
    :goto_0
    if-eq v3, v13, :cond_5

    if-eqz v3, :cond_4

    if-eq v3, v12, :cond_3

    goto :goto_1

    .line 1777
    :cond_3
    iget v12, v0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    invoke-static {v12, v4}, Ljava/lang/Math;->min(II)I

    move-result v12

    sub-int v10, v12, v5

    goto :goto_1

    .line 1773
    :cond_4
    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1775
    goto :goto_1

    .line 1768
    :cond_5
    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1769
    move v10, v4

    .line 1771
    nop

    .line 1781
    :goto_1
    iget-object v12, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setMinWidth(I)V

    .line 1782
    iget-object v12, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v12, v13}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setMinHeight(I)V

    .line 1783
    iget-object v12, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v12, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1784
    iget-object v12, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v12, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 1785
    iget-object v12, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v12, v8}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1786
    iget-object v12, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v12, v10}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 1787
    iget-object v12, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget v13, v0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    invoke-virtual {v0}, Landroid/support/constraint/ConstraintLayout;->getPaddingLeft()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-virtual {v0}, Landroid/support/constraint/ConstraintLayout;->getPaddingRight()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-virtual {v12, v13}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setMinWidth(I)V

    .line 1788
    iget-object v12, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget v13, v0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    invoke-virtual {v0}, Landroid/support/constraint/ConstraintLayout;->getPaddingTop()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-virtual {v0}, Landroid/support/constraint/ConstraintLayout;->getPaddingBottom()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-virtual {v12, v13}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setMinHeight(I)V

    .line 1789
    return-void
.end method

.method private updateHierarchy()V
    .locals 5

    .line 781
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v0

    .line 783
    .local v0, "count":I
    const/4 v1, 0x0

    .line 784
    .local v1, "recompute":Z
    const/4 v2, 0x0

    .line 784
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 785
    invoke-virtual {p0, v2}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 786
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->isLayoutRequested()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 787
    const/4 v1, 0x1

    .line 788
    goto :goto_1

    .line 784
    .end local v3    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 791
    .end local v2    # "i":I
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 792
    iget-object v2, p0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 793
    invoke-direct {p0}, Landroid/support/constraint/ConstraintLayout;->setChildrenConstraints()V

    .line 795
    :cond_2
    return-void
.end method

.method private updatePostMeasures()V
    .locals 5

    .line 1241
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v0

    .line 1242
    .local v0, "widgetsCount":I
    const/4 v1, 0x0

    move v2, v1

    .line 1242
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1243
    invoke-virtual {p0, v2}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1244
    .local v3, "child":Landroid/view/View;
    instance-of v4, v3, Landroid/support/constraint/Placeholder;

    if-eqz v4, :cond_0

    .line 1245
    move-object v4, v3

    check-cast v4, Landroid/support/constraint/Placeholder;

    invoke-virtual {v4, p0}, Landroid/support/constraint/Placeholder;->updatePostMeasure(Landroid/support/constraint/ConstraintLayout;)V

    .line 1242
    .end local v3    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1249
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1250
    .local v2, "helperCount":I
    if-lez v2, :cond_2

    .line 1251
    nop

    .line 1251
    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 1252
    iget-object v3, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/ConstraintHelper;

    .line 1253
    .local v3, "helper":Landroid/support/constraint/ConstraintHelper;
    invoke-virtual {v3, p0}, Landroid/support/constraint/ConstraintHelper;->updatePostMeasure(Landroid/support/constraint/ConstraintLayout;)V

    .line 1251
    .end local v3    # "helper":Landroid/support/constraint/ConstraintHelper;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1256
    .end local v1    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 624
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 625
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 626
    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    .line 628
    :cond_0
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1936
    instance-of v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    return v0
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 26
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1963
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1964
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1965
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v0

    .line 1966
    .local v0, "count":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 1967
    .local v1, "cw":F
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    .line 1968
    .local v2, "ch":F
    const/high16 v3, 0x44870000    # 1080.0f

    .line 1969
    .local v3, "ow":F
    const/high16 v4, 0x44f00000    # 1920.0f

    .line 1970
    .local v4, "oh":F
    const/4 v5, 0x0

    move v6, v5

    .line 1970
    .local v6, "i":I
    :goto_0
    if-ge v6, v0, :cond_2

    .line 1971
    move-object/from16 v7, p0

    invoke-virtual {v7, v6}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1972
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_0

    .line 1973
    nop

    .line 1970
    move/from16 v22, v0

    move/from16 v23, v1

    move/from16 v24, v2

    move/from16 v25, v3

    goto/16 :goto_1

    .line 1975
    :cond_0
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    .line 1976
    .local v9, "tag":Ljava/lang/Object;
    if-eqz v9, :cond_1

    instance-of v10, v9, Ljava/lang/String;

    if-eqz v10, :cond_1

    .line 1977
    move-object v10, v9

    check-cast v10, Ljava/lang/String;

    .line 1978
    .local v10, "coordinates":Ljava/lang/String;
    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 1979
    .local v11, "split":[Ljava/lang/String;
    array-length v12, v11

    const/4 v13, 0x4

    if-ne v12, v13, :cond_1

    .line 1980
    aget-object v12, v11, v5

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 1981
    .local v12, "x":I
    const/4 v13, 0x1

    aget-object v13, v11, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 1982
    .local v13, "y":I
    const/4 v14, 0x2

    aget-object v14, v11, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 1983
    .local v14, "w":I
    const/4 v15, 0x3

    aget-object v15, v11, v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 1984
    .local v15, "h":I
    int-to-float v5, v12

    div-float/2addr v5, v3

    mul-float/2addr v5, v1

    float-to-int v5, v5

    .line 1985
    .end local v12    # "x":I
    .local v5, "x":I
    int-to-float v12, v13

    div-float/2addr v12, v4

    mul-float/2addr v12, v2

    float-to-int v12, v12

    .line 1986
    .end local v13    # "y":I
    .local v12, "y":I
    int-to-float v13, v14

    div-float/2addr v13, v3

    mul-float/2addr v13, v1

    float-to-int v13, v13

    .line 1987
    .end local v14    # "w":I
    .local v13, "w":I
    int-to-float v14, v15

    div-float/2addr v14, v4

    mul-float/2addr v14, v2

    float-to-int v14, v14

    .line 1988
    .end local v15    # "h":I
    .local v14, "h":I
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    .line 1989
    .local v15, "paint":Landroid/graphics/Paint;
    move/from16 v22, v0

    const/high16 v0, -0x10000

    .line 1989
    .end local v0    # "count":I
    .local v22, "count":I
    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1990
    int-to-float v0, v5

    move/from16 v23, v1

    int-to-float v1, v12

    .line 1990
    .end local v1    # "cw":F
    .local v23, "cw":F
    move/from16 v24, v2

    add-int v2, v5, v13

    .line 1990
    .end local v2    # "ch":F
    .local v24, "ch":F
    int-to-float v2, v2

    move/from16 v25, v3

    int-to-float v3, v12

    .line 1990
    .end local v3    # "ow":F
    .local v25, "ow":F
    move-object/from16 v16, p1

    move/from16 v17, v0

    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    move-object/from16 v21, v15

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1991
    add-int v0, v5, v13

    int-to-float v0, v0

    int-to-float v1, v12

    add-int v2, v5, v13

    int-to-float v2, v2

    add-int v3, v12, v14

    int-to-float v3, v3

    move/from16 v17, v0

    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1992
    add-int v0, v5, v13

    int-to-float v0, v0

    add-int v1, v12, v14

    int-to-float v1, v1

    int-to-float v2, v5

    add-int v3, v12, v14

    int-to-float v3, v3

    move/from16 v17, v0

    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1993
    int-to-float v0, v5

    add-int v1, v12, v14

    int-to-float v1, v1

    int-to-float v2, v5

    int-to-float v3, v12

    move/from16 v17, v0

    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1994
    const v0, -0xff0100

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1995
    int-to-float v0, v5

    int-to-float v1, v12

    add-int v2, v5, v13

    int-to-float v2, v2

    add-int v3, v12, v14

    int-to-float v3, v3

    move/from16 v17, v0

    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1996
    int-to-float v0, v5

    add-int v1, v12, v14

    int-to-float v1, v1

    add-int v2, v5, v13

    int-to-float v2, v2

    int-to-float v3, v12

    move/from16 v17, v0

    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1996
    .end local v5    # "x":I
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "tag":Ljava/lang/Object;
    .end local v10    # "coordinates":Ljava/lang/String;
    .end local v11    # "split":[Ljava/lang/String;
    .end local v12    # "y":I
    .end local v13    # "w":I
    .end local v14    # "h":I
    .end local v15    # "paint":Landroid/graphics/Paint;
    goto :goto_1

    .line 1970
    .end local v22    # "count":I
    .end local v23    # "cw":F
    .end local v24    # "ch":F
    .end local v25    # "ow":F
    .restart local v0    # "count":I
    .restart local v1    # "cw":F
    .restart local v2    # "ch":F
    .restart local v3    # "ow":F
    :cond_1
    move/from16 v22, v0

    move/from16 v23, v1

    move/from16 v24, v2

    move/from16 v25, v3

    .line 1970
    .end local v0    # "count":I
    .end local v1    # "cw":F
    .end local v2    # "ch":F
    .end local v3    # "ow":F
    .restart local v22    # "count":I
    .restart local v23    # "cw":F
    .restart local v24    # "ch":F
    .restart local v25    # "ow":F
    :goto_1
    add-int/lit8 v6, v6, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    const/4 v5, 0x0

    goto/16 :goto_0

    .line 2001
    .end local v4    # "oh":F
    .end local v6    # "i":I
    .end local v22    # "count":I
    .end local v23    # "cw":F
    .end local v24    # "ch":F
    .end local v25    # "ow":F
    :cond_2
    move-object/from16 v7, p0

    return-void
.end method

.method public fillMetrics(Landroid/support/constraint/solver/Metrics;)V
    .locals 1
    .param p1, "metrics"    # Landroid/support/constraint/solver/Metrics;

    .line 1479
    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    .line 1480
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->fillMetrics(Landroid/support/constraint/solver/Metrics;)V

    .line 1481
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .locals 2

    .line 1920
    new-instance v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/support/constraint/ConstraintLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 475
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->generateDefaultLayoutParams()Landroid/support/constraint/ConstraintLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 1912
    new-instance v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/constraint/ConstraintLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 475
    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/constraint/ConstraintLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1928
    new-instance v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/constraint/ConstraintLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getDesignInformation(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "type"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 550
    if-nez p1, :cond_0

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 551
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    .line 552
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 553
    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 556
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMaxHeight()I
    .locals 1

    .line 777
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .line 767
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    return v0
.end method

.method public getMinHeight()I
    .locals 1

    .line 730
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    return v0
.end method

.method public getMinWidth()I
    .locals 1

    .line 720
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    return v0
.end method

.method public getOptimizationLevel()I
    .locals 1

    .line 1905
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getOptimizationLevel()I

    move-result v0

    return v0
.end method

.method public getViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    .line 1955
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final getViewWidget(Landroid/view/View;)Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 1137
    if-ne p1, p0, :cond_0

    .line 1138
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    return-object v0

    .line 1140
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    :goto_0
    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 14
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    move-object v0, p0

    .line 1815
    invoke-virtual {v0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v1

    .line 1816
    .local v1, "widgetsCount":I
    invoke-virtual {v0}, Landroid/support/constraint/ConstraintLayout;->isInEditMode()Z

    move-result v2

    .line 1817
    .local v2, "isInEditMode":Z
    const/4 v3, 0x0

    move v4, v3

    .line 1817
    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_3

    .line 1818
    invoke-virtual {v0, v4}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1819
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 1820
    .local v6, "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    iget-object v7, v6, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1822
    .local v7, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_0

    iget-boolean v8, v6, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    if-nez v8, :cond_0

    iget-boolean v8, v6, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isHelper:Z

    if-nez v8, :cond_0

    if-nez v2, :cond_0

    .line 1825
    goto :goto_1

    .line 1827
    :cond_0
    iget-boolean v8, v6, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isInPlaceholder:Z

    if-eqz v8, :cond_1

    .line 1828
    goto :goto_1

    .line 1830
    :cond_1
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDrawX()I

    move-result v8

    .line 1831
    .local v8, "l":I
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDrawY()I

    move-result v9

    .line 1832
    .local v9, "t":I
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v10

    add-int/2addr v10, v8

    .line 1833
    .local v10, "r":I
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v11

    add-int/2addr v11, v9

    .line 1855
    .local v11, "b":I
    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    .line 1856
    instance-of v12, v5, Landroid/support/constraint/Placeholder;

    if-eqz v12, :cond_2

    .line 1857
    move-object v12, v5

    check-cast v12, Landroid/support/constraint/Placeholder;

    .line 1858
    .local v12, "holder":Landroid/support/constraint/Placeholder;
    invoke-virtual {v12}, Landroid/support/constraint/Placeholder;->getContent()Landroid/view/View;

    move-result-object v13

    .line 1859
    .local v13, "content":Landroid/view/View;
    if-eqz v13, :cond_2

    .line 1860
    invoke-virtual {v13, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1861
    invoke-virtual {v13, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    .line 1817
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .end local v7    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v8    # "l":I
    .end local v9    # "t":I
    .end local v10    # "r":I
    .end local v11    # "b":I
    .end local v12    # "holder":Landroid/support/constraint/Placeholder;
    .end local v13    # "content":Landroid/view/View;
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1865
    .end local v4    # "i":I
    :cond_3
    iget-object v4, v0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1866
    .local v4, "helperCount":I
    if-lez v4, :cond_4

    .line 1867
    nop

    .line 1867
    .local v3, "i":I
    :goto_2
    if-ge v3, v4, :cond_4

    .line 1868
    iget-object v5, v0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/constraint/ConstraintHelper;

    .line 1869
    .local v5, "helper":Landroid/support/constraint/ConstraintHelper;
    invoke-virtual {v5, v0}, Landroid/support/constraint/ConstraintHelper;->updatePostLayout(Landroid/support/constraint/ConstraintLayout;)V

    .line 1867
    .end local v5    # "helper":Landroid/support/constraint/ConstraintHelper;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1872
    .end local v3    # "i":I
    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 55
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1488
    move/from16 v2, p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1489
    .local v3, "time":J
    const/4 v5, 0x0

    .line 1490
    .local v5, "REMEASURES_A":I
    const/4 v6, 0x0

    .line 1496
    .local v6, "REMEASURES_B":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 1497
    .local v7, "widthMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 1498
    .local v8, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 1499
    .local v9, "heightMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 1501
    .local v10, "heightSize":I
    iget v11, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidth:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_0

    iget v11, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeight:I

    if-eq v11, v12, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    .line 1502
    .local v11, "validLastMeasure":Z
    :goto_0
    const/high16 v15, 0x40000000    # 2.0f

    if-ne v7, v15, :cond_1

    if-ne v9, v15, :cond_1

    iget v12, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidth:I

    if-ne v8, v12, :cond_1

    iget v12, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeight:I

    if-ne v10, v12, :cond_1

    const/4 v12, 0x1

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    .line 1504
    .local v12, "sameSize":Z
    :goto_1
    iget v13, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidthMode:I

    if-ne v7, v13, :cond_2

    iget v13, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeightMode:I

    if-ne v9, v13, :cond_2

    const/4 v13, 0x1

    goto :goto_2

    :cond_2
    const/4 v13, 0x0

    .line 1505
    .local v13, "sameMode":Z
    :goto_2
    if-eqz v13, :cond_3

    iget v14, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidthSize:I

    if-ne v8, v14, :cond_3

    iget v14, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeightSize:I

    if-ne v10, v14, :cond_3

    const/4 v14, 0x1

    goto :goto_3

    :cond_3
    const/4 v14, 0x0

    .line 1507
    .local v14, "sameMeasure":Z
    :goto_3
    const/high16 v15, -0x80000000

    if-eqz v13, :cond_4

    if-ne v7, v15, :cond_4

    const/high16 v15, 0x40000000    # 2.0f

    if-ne v9, v15, :cond_4

    iget v15, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidth:I

    if-lt v8, v15, :cond_4

    iget v15, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeight:I

    if-ne v10, v15, :cond_4

    const/4 v15, 0x1

    goto :goto_4

    :cond_4
    const/4 v15, 0x0

    .line 1510
    .local v15, "fitSizeWidth":Z
    :goto_4
    if-eqz v13, :cond_5

    move-wide/from16 v18, v3

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v7, v3, :cond_6

    .line 1510
    .end local v3    # "time":J
    .local v18, "time":J
    const/high16 v3, -0x80000000

    if-ne v9, v3, :cond_6

    iget v3, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidth:I

    if-ne v8, v3, :cond_6

    iget v3, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeight:I

    if-lt v10, v3, :cond_6

    const/4 v3, 0x1

    goto :goto_5

    .line 1510
    .end local v18    # "time":J
    .restart local v3    # "time":J
    :cond_5
    move-wide/from16 v18, v3

    .line 1510
    .end local v3    # "time":J
    .restart local v18    # "time":J
    :cond_6
    const/4 v3, 0x0

    .line 1518
    .local v3, "fitSizeHeight":Z
    :goto_5
    iput v7, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidthMode:I

    .line 1519
    iput v9, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeightMode:I

    .line 1520
    iput v8, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidthSize:I

    .line 1521
    iput v10, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeightSize:I

    .line 1523
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingLeft()I

    move-result v4

    .line 1524
    .local v4, "paddingLeft":I
    move/from16 v20, v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingTop()I

    move-result v3

    .line 1526
    .local v3, "paddingTop":I
    .local v20, "fitSizeHeight":Z
    move/from16 v21, v5

    iget-object v5, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 1526
    .end local v5    # "REMEASURES_A":I
    .local v21, "REMEASURES_A":I
    invoke-virtual {v5, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setX(I)V

    .line 1527
    iget-object v5, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v5, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setY(I)V

    .line 1528
    iget-object v5, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move/from16 v22, v6

    iget v6, v0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    .line 1528
    .end local v6    # "REMEASURES_B":I
    .local v22, "REMEASURES_B":I
    invoke-virtual {v5, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setMaxWidth(I)V

    .line 1529
    iget-object v5, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget v6, v0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    invoke-virtual {v5, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setMaxHeight(I)V

    .line 1531
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x11

    if-lt v5, v6, :cond_8

    .line 1532
    iget-object v5, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getLayoutDirection()I

    move-result v6

    move/from16 v23, v7

    const/4 v7, 0x1

    if-ne v6, v7, :cond_7

    .line 1532
    .end local v7    # "widthMode":I
    .local v23, "widthMode":I
    move v6, v7

    goto :goto_6

    :cond_7
    const/4 v6, 0x0

    :goto_6
    invoke-virtual {v5, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setRtl(Z)V

    goto :goto_7

    .line 1535
    .end local v23    # "widthMode":I
    .restart local v7    # "widthMode":I
    :cond_8
    move/from16 v23, v7

    const/4 v7, 0x1

    .line 1535
    .end local v7    # "widthMode":I
    .restart local v23    # "widthMode":I
    :goto_7
    invoke-direct/range {p0 .. p2}, Landroid/support/constraint/ConstraintLayout;->setSelfDimensionBehaviour(II)V

    .line 1536
    iget-object v5, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v5

    .line 1537
    .local v5, "startingWidth":I
    iget-object v6, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v6

    .line 1538
    .local v6, "startingHeight":I
    iget-boolean v7, v0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    if-eqz v7, :cond_9

    .line 1539
    const/4 v7, 0x0

    iput-boolean v7, v0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    .line 1540
    invoke-direct/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->updateHierarchy()V

    goto :goto_8

    .line 1543
    :cond_9
    const/4 v7, 0x0

    :goto_8
    iget v7, v0, Landroid/support/constraint/ConstraintLayout;->mOptimizationLevel:I

    move/from16 v26, v8

    const/16 v8, 0x8

    .line 1543
    .end local v8    # "widthSize":I
    .local v26, "widthSize":I
    and-int/2addr v7, v8

    if-ne v7, v8, :cond_a

    const/4 v7, 0x1

    goto :goto_9

    :cond_a
    const/4 v7, 0x0

    .line 1545
    .local v7, "optimiseDimensions":Z
    :goto_9
    if-eqz v7, :cond_b

    .line 1546
    iget-object v8, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->preOptimize()V

    .line 1547
    iget-object v8, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v8, v5, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->optimizeForDimensions(II)V

    .line 1548
    invoke-direct/range {p0 .. p2}, Landroid/support/constraint/ConstraintLayout;->internalMeasureDimensions(II)V

    goto :goto_a

    .line 1550
    :cond_b
    invoke-direct/range {p0 .. p2}, Landroid/support/constraint/ConstraintLayout;->internalMeasureChildren(II)V

    .line 1552
    :goto_a
    invoke-direct/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->updatePostMeasures()V

    .line 1561
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v8

    if-lez v8, :cond_c

    .line 1562
    const-string v8, "First pass"

    invoke-virtual {v0, v8}, Landroid/support/constraint/ConstraintLayout;->solveLinearSystem(Ljava/lang/String;)V

    .line 1564
    :cond_c
    const/4 v8, 0x0

    .line 1567
    .local v8, "childState":I
    move/from16 v27, v8

    iget-object v8, v0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    .line 1567
    .end local v8    # "childState":I
    .local v27, "childState":I
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1569
    .local v8, "sizeDependentWidgetsCount":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingBottom()I

    move-result v16

    move/from16 v28, v9

    add-int v9, v3, v16

    .line 1570
    .local v9, "heightPadding":I
    .local v28, "heightMode":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingRight()I

    move-result v16

    move/from16 v29, v3

    add-int v3, v4, v16

    .line 1576
    .local v3, "widthPadding":I
    .local v29, "paddingTop":I
    move/from16 v30, v4

    .line 1576
    .end local v4    # "paddingLeft":I
    .local v30, "paddingLeft":I
    if-lez v8, :cond_2b

    .line 1577
    const/16 v16, 0x0

    .line 1578
    .local v16, "needSolverPass":Z
    iget-object v4, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v4

    move/from16 v31, v10

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1578
    .end local v10    # "heightSize":I
    .local v31, "heightSize":I
    if-ne v4, v10, :cond_d

    const/4 v4, 0x1

    goto :goto_b

    :cond_d
    const/4 v4, 0x0

    .line 1580
    .local v4, "containerWrapWidth":Z
    :goto_b
    iget-object v10, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v10

    move/from16 v32, v11

    sget-object v11, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1580
    .end local v11    # "validLastMeasure":Z
    .local v32, "validLastMeasure":Z
    if-ne v10, v11, :cond_e

    const/16 v24, 0x1

    goto :goto_c

    :cond_e
    const/16 v24, 0x0

    :goto_c
    move/from16 v10, v24

    .line 1582
    .local v10, "containerWrapHeight":Z
    iget-object v11, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v11

    move/from16 v33, v12

    iget v12, v0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    .line 1582
    .end local v12    # "sameSize":Z
    .local v33, "sameSize":Z
    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1583
    .local v11, "minWidth":I
    iget-object v12, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v12

    move/from16 v34, v11

    iget v11, v0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    .line 1583
    .end local v11    # "minWidth":I
    .local v34, "minWidth":I
    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1584
    .local v11, "minHeight":I
    move/from16 v35, v13

    move/from16 v36, v14

    move/from16 v14, v27

    move/from16 v12, v34

    move v13, v11

    const/4 v11, 0x0

    .line 1584
    .end local v27    # "childState":I
    .end local v34    # "minWidth":I
    .local v11, "i":I
    .local v12, "minWidth":I
    .local v13, "minHeight":I
    .local v14, "childState":I
    .local v35, "sameMode":Z
    .local v36, "sameMeasure":Z
    :goto_d
    const-wide/16 v37, 0x1

    if-ge v11, v8, :cond_20

    .line 1585
    move/from16 v39, v15

    iget-object v15, v0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    .line 1585
    .end local v15    # "fitSizeWidth":Z
    .local v39, "fitSizeWidth":Z
    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1586
    .local v15, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    move-result-object v17

    move/from16 v40, v8

    move-object/from16 v8, v17

    check-cast v8, Landroid/view/View;

    .line 1587
    .local v8, "child":Landroid/view/View;
    .local v40, "sizeDependentWidgetsCount":I
    if-nez v8, :cond_f

    .line 1588
    nop

    .line 1584
    move/from16 v42, v5

    move/from16 v41, v6

    .line 1584
    .end local v5    # "startingWidth":I
    .end local v6    # "startingHeight":I
    .end local v8    # "child":Landroid/view/View;
    .end local v11    # "i":I
    .end local v15    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v41, "startingHeight":I
    .local v42, "startingWidth":I
    .local v43, "i":I
    :goto_e
    move/from16 v43, v11

    goto/16 :goto_14

    .line 1590
    .end local v41    # "startingHeight":I
    .end local v42    # "startingWidth":I
    .end local v43    # "i":I
    .restart local v5    # "startingWidth":I
    .restart local v6    # "startingHeight":I
    .restart local v8    # "child":Landroid/view/View;
    .restart local v11    # "i":I
    .restart local v15    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_f
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    move/from16 v41, v6

    move-object/from16 v6, v17

    check-cast v6, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 1591
    .local v6, "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .restart local v41    # "startingHeight":I
    move/from16 v42, v5

    iget-boolean v5, v6, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isHelper:Z

    .line 1591
    .end local v5    # "startingWidth":I
    .restart local v42    # "startingWidth":I
    if-nez v5, :cond_1f

    iget-boolean v5, v6, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    if-eqz v5, :cond_10

    .line 1592
    goto :goto_e

    .line 1594
    :cond_10
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v5

    move/from16 v43, v11

    const/16 v11, 0x8

    if-ne v5, v11, :cond_11

    .line 1595
    .end local v11    # "i":I
    .restart local v43    # "i":I
    goto/16 :goto_14

    .line 1598
    :cond_11
    if-eqz v7, :cond_12

    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->isResolved()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1599
    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->isResolved()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1600
    goto/16 :goto_14

    .line 1602
    :cond_12
    const/4 v5, 0x0

    .line 1603
    .local v5, "widthSpec":I
    const/16 v17, 0x0

    .line 1605
    .local v17, "heightSpec":I
    iget v11, v6, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    move/from16 v44, v5

    const/4 v5, -0x2

    .line 1605
    .end local v5    # "widthSpec":I
    .local v44, "widthSpec":I
    if-ne v11, v5, :cond_13

    iget-boolean v11, v6, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    if-eqz v11, :cond_13

    .line 1606
    iget v11, v6, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    invoke-static {v1, v3, v11}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v11

    goto :goto_f

    .line 1608
    :cond_13
    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v11

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v11, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 1610
    .end local v44    # "widthSpec":I
    .local v11, "widthSpec":I
    :goto_f
    iget v5, v6, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    const/4 v1, -0x2

    if-ne v5, v1, :cond_14

    iget-boolean v1, v6, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    if-eqz v1, :cond_14

    .line 1611
    iget v1, v6, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    invoke-static {v2, v9, v1}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v1

    goto :goto_10

    .line 1613
    :cond_14
    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1617
    .end local v17    # "heightSpec":I
    .local v1, "heightSpec":I
    :goto_10
    invoke-virtual {v8, v11, v1}, Landroid/view/View;->measure(II)V

    .line 1618
    iget-object v5, v0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    if-eqz v5, :cond_15

    .line 1619
    iget-object v5, v0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    move/from16 v45, v1

    iget-wide v1, v5, Landroid/support/constraint/solver/Metrics;->additionalMeasures:J

    .line 1619
    .end local v1    # "heightSpec":I
    .local v45, "heightSpec":I
    move/from16 v46, v13

    move/from16 v47, v14

    add-long v13, v1, v37

    .line 1619
    .end local v13    # "minHeight":I
    .end local v14    # "childState":I
    .local v46, "minHeight":I
    .local v47, "childState":I
    iput-wide v13, v5, Landroid/support/constraint/solver/Metrics;->additionalMeasures:J

    goto :goto_11

    .line 1622
    .end local v45    # "heightSpec":I
    .end local v46    # "minHeight":I
    .end local v47    # "childState":I
    .restart local v1    # "heightSpec":I
    .restart local v13    # "minHeight":I
    .restart local v14    # "childState":I
    :cond_15
    move/from16 v45, v1

    move/from16 v46, v13

    move/from16 v47, v14

    .line 1622
    .end local v1    # "heightSpec":I
    .end local v13    # "minHeight":I
    .end local v14    # "childState":I
    .restart local v45    # "heightSpec":I
    .restart local v46    # "minHeight":I
    .restart local v47    # "childState":I
    :goto_11
    add-int/lit8 v21, v21, 0x1

    .line 1624
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 1625
    .local v1, "measuredWidth":I
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 1627
    .local v2, "measuredHeight":I
    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v5

    if-eq v1, v5, :cond_18

    .line 1628
    invoke-virtual {v15, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 1629
    if-eqz v7, :cond_16

    .line 1630
    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->resolve(I)V

    .line 1632
    :cond_16
    if-eqz v4, :cond_17

    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getRight()I

    move-result v5

    if-le v5, v12, :cond_17

    .line 1633
    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getRight()I

    move-result v5

    sget-object v13, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 1634
    invoke-virtual {v15, v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v13

    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v13

    add-int/2addr v5, v13

    .line 1635
    .local v5, "w":I
    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1637
    .end local v12    # "minWidth":I
    .local v5, "minWidth":I
    move v12, v5

    .line 1637
    .end local v5    # "minWidth":I
    .restart local v12    # "minWidth":I
    :cond_17
    const/16 v16, 0x1

    .line 1639
    :cond_18
    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v5

    if-eq v2, v5, :cond_1c

    .line 1640
    invoke-virtual {v15, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 1641
    if-eqz v7, :cond_19

    .line 1642
    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->resolve(I)V

    .line 1644
    :cond_19
    if-eqz v10, :cond_1a

    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBottom()I

    move-result v5

    move/from16 v13, v46

    if-le v5, v13, :cond_1b

    .line 1645
    .end local v46    # "minHeight":I
    .restart local v13    # "minHeight":I
    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBottom()I

    move-result v5

    sget-object v14, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 1646
    invoke-virtual {v15, v14}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v14

    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v14

    add-int/2addr v5, v14

    .line 1647
    .local v5, "h":I
    invoke-static {v13, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1649
    .end local v13    # "minHeight":I
    .local v5, "minHeight":I
    move v13, v5

    goto :goto_12

    .line 1649
    .end local v5    # "minHeight":I
    .restart local v46    # "minHeight":I
    :cond_1a
    move/from16 v13, v46

    .line 1649
    .end local v46    # "minHeight":I
    .restart local v13    # "minHeight":I
    :cond_1b
    :goto_12
    const/16 v16, 0x1

    goto :goto_13

    .line 1651
    .end local v13    # "minHeight":I
    .restart local v46    # "minHeight":I
    :cond_1c
    move/from16 v13, v46

    .line 1651
    .end local v46    # "minHeight":I
    .restart local v13    # "minHeight":I
    :goto_13
    iget-boolean v5, v6, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    if-eqz v5, :cond_1d

    .line 1652
    invoke-virtual {v8}, Landroid/view/View;->getBaseline()I

    move-result v5

    .line 1653
    .local v5, "baseline":I
    const/4 v14, -0x1

    if-eq v5, v14, :cond_1d

    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v14

    if-eq v5, v14, :cond_1d

    .line 1654
    invoke-virtual {v15, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setBaselineDistance(I)V

    .line 1655
    const/16 v16, 0x1

    .line 1659
    .end local v5    # "baseline":I
    :cond_1d
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0xb

    if-lt v5, v14, :cond_1e

    .line 1660
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredState()I

    move-result v5

    move/from16 v14, v47

    invoke-static {v14, v5}, Landroid/support/constraint/ConstraintLayout;->combineMeasuredStates(II)I

    move-result v14

    .line 1660
    .end local v1    # "measuredWidth":I
    .end local v2    # "measuredHeight":I
    .end local v6    # "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .end local v8    # "child":Landroid/view/View;
    .end local v11    # "widthSpec":I
    .end local v15    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v45    # "heightSpec":I
    .end local v47    # "childState":I
    .restart local v14    # "childState":I
    goto :goto_14

    .line 1584
    .end local v14    # "childState":I
    .restart local v47    # "childState":I
    :cond_1e
    move/from16 v14, v47

    .line 1584
    .end local v47    # "childState":I
    .restart local v14    # "childState":I
    goto :goto_14

    .line 1584
    .end local v43    # "i":I
    .local v11, "i":I
    :cond_1f
    move/from16 v43, v11

    .line 1584
    .end local v11    # "i":I
    .restart local v43    # "i":I
    :goto_14
    add-int/lit8 v11, v43, 0x1

    .line 1584
    .end local v43    # "i":I
    .restart local v11    # "i":I
    move/from16 v15, v39

    move/from16 v8, v40

    move/from16 v6, v41

    move/from16 v5, v42

    move/from16 v1, p1

    move/from16 v2, p2

    goto/16 :goto_d

    .line 1663
    .end local v11    # "i":I
    .end local v39    # "fitSizeWidth":Z
    .end local v40    # "sizeDependentWidgetsCount":I
    .end local v41    # "startingHeight":I
    .end local v42    # "startingWidth":I
    .local v5, "startingWidth":I
    .local v6, "startingHeight":I
    .local v8, "sizeDependentWidgetsCount":I
    .local v15, "fitSizeWidth":Z
    :cond_20
    move/from16 v42, v5

    move/from16 v41, v6

    move/from16 v40, v8

    move/from16 v39, v15

    .line 1663
    .end local v5    # "startingWidth":I
    .end local v6    # "startingHeight":I
    .end local v8    # "sizeDependentWidgetsCount":I
    .end local v15    # "fitSizeWidth":Z
    .restart local v39    # "fitSizeWidth":Z
    .restart local v40    # "sizeDependentWidgetsCount":I
    .restart local v41    # "startingHeight":I
    .restart local v42    # "startingWidth":I
    if-eqz v16, :cond_24

    .line 1664
    iget-object v1, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move/from16 v2, v42

    invoke-virtual {v1, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 1665
    .end local v42    # "startingWidth":I
    .local v2, "startingWidth":I
    iget-object v1, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move/from16 v5, v41

    invoke-virtual {v1, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 1666
    .end local v41    # "startingHeight":I
    .local v5, "startingHeight":I
    if-eqz v7, :cond_21

    .line 1667
    iget-object v1, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->solveGraph()V

    .line 1669
    :cond_21
    const-string v1, "2nd pass"

    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->solveLinearSystem(Ljava/lang/String;)V

    .line 1670
    const/4 v1, 0x0

    .line 1671
    .end local v16    # "needSolverPass":Z
    .local v1, "needSolverPass":Z
    iget-object v6, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v6

    if-ge v6, v12, :cond_22

    .line 1672
    iget-object v6, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v6, v12}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 1673
    const/4 v1, 0x1

    .line 1675
    :cond_22
    iget-object v6, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v6

    if-ge v6, v13, :cond_23

    .line 1676
    iget-object v6, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v6, v13}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 1677
    const/4 v1, 0x1

    .line 1679
    .end local v1    # "needSolverPass":Z
    .restart local v16    # "needSolverPass":Z
    :cond_23
    move/from16 v16, v1

    if-eqz v16, :cond_25

    .line 1680
    const-string v1, "3rd pass"

    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->solveLinearSystem(Ljava/lang/String;)V

    goto :goto_15

    .line 1683
    .end local v2    # "startingWidth":I
    .end local v5    # "startingHeight":I
    .restart local v41    # "startingHeight":I
    .restart local v42    # "startingWidth":I
    :cond_24
    move/from16 v5, v41

    move/from16 v2, v42

    .line 1683
    .end local v41    # "startingHeight":I
    .end local v42    # "startingWidth":I
    .restart local v2    # "startingWidth":I
    .restart local v5    # "startingHeight":I
    :cond_25
    :goto_15
    move/from16 v6, v22

    const/16 v25, 0x0

    .line 1683
    .end local v22    # "REMEASURES_B":I
    .local v6, "REMEASURES_B":I
    .local v25, "i":I
    :goto_16
    move/from16 v1, v25

    .line 1683
    .end local v25    # "i":I
    .local v1, "i":I
    move/from16 v8, v40

    if-ge v1, v8, :cond_2a

    .line 1684
    .end local v40    # "sizeDependentWidgetsCount":I
    .restart local v8    # "sizeDependentWidgetsCount":I
    iget-object v11, v0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1685
    .local v11, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    .line 1686
    .local v15, "child":Landroid/view/View;
    if-nez v15, :cond_26

    .line 1687
    nop

    .line 1683
    move/from16 v48, v2

    move/from16 v49, v4

    goto :goto_17

    .line 1689
    :cond_26
    move/from16 v48, v2

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 1689
    .end local v2    # "startingWidth":I
    .local v48, "startingWidth":I
    move/from16 v49, v4

    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v4

    .line 1689
    .end local v4    # "containerWrapWidth":Z
    .local v49, "containerWrapWidth":Z
    if-ne v2, v4, :cond_28

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v4

    if-eq v2, v4, :cond_27

    goto :goto_18

    .line 1683
    .end local v11    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v15    # "child":Landroid/view/View;
    .end local v48    # "startingWidth":I
    .end local v49    # "containerWrapWidth":Z
    .restart local v2    # "startingWidth":I
    .restart local v4    # "containerWrapWidth":Z
    :cond_27
    :goto_17
    move/from16 v50, v5

    move/from16 v51, v7

    move/from16 v52, v8

    move/from16 v53, v10

    .line 1683
    .end local v2    # "startingWidth":I
    .end local v4    # "containerWrapWidth":Z
    .restart local v48    # "startingWidth":I
    .restart local v49    # "containerWrapWidth":Z
    goto :goto_1a

    .line 1690
    .restart local v11    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v15    # "child":Landroid/view/View;
    :cond_28
    :goto_18
    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1691
    .local v2, "widthSpec":I
    move/from16 v50, v5

    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v5

    .line 1691
    .end local v5    # "startingHeight":I
    .local v50, "startingHeight":I
    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 1692
    .local v5, "heightSpec":I
    invoke-virtual {v15, v2, v5}, Landroid/view/View;->measure(II)V

    .line 1693
    iget-object v4, v0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    if-eqz v4, :cond_29

    .line 1694
    iget-object v4, v0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    move/from16 v51, v7

    move/from16 v52, v8

    iget-wide v7, v4, Landroid/support/constraint/solver/Metrics;->additionalMeasures:J

    .line 1694
    .end local v7    # "optimiseDimensions":Z
    .end local v8    # "sizeDependentWidgetsCount":I
    .local v51, "optimiseDimensions":Z
    .local v52, "sizeDependentWidgetsCount":I
    move/from16 v53, v10

    move-object/from16 v54, v11

    add-long v10, v7, v37

    .line 1694
    .end local v10    # "containerWrapHeight":Z
    .end local v11    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v53, "containerWrapHeight":Z
    .local v54, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iput-wide v10, v4, Landroid/support/constraint/solver/Metrics;->additionalMeasures:J

    goto :goto_19

    .line 1697
    .end local v51    # "optimiseDimensions":Z
    .end local v52    # "sizeDependentWidgetsCount":I
    .end local v53    # "containerWrapHeight":Z
    .end local v54    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v7    # "optimiseDimensions":Z
    .restart local v8    # "sizeDependentWidgetsCount":I
    .restart local v10    # "containerWrapHeight":Z
    .restart local v11    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_29
    move/from16 v51, v7

    move/from16 v52, v8

    move/from16 v53, v10

    move-object/from16 v54, v11

    .line 1697
    .end local v7    # "optimiseDimensions":Z
    .end local v8    # "sizeDependentWidgetsCount":I
    .end local v10    # "containerWrapHeight":Z
    .end local v11    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v51    # "optimiseDimensions":Z
    .restart local v52    # "sizeDependentWidgetsCount":I
    .restart local v53    # "containerWrapHeight":Z
    .restart local v54    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_19
    add-int/lit8 v6, v6, 0x1

    .line 1683
    .end local v2    # "widthSpec":I
    .end local v5    # "heightSpec":I
    .end local v15    # "child":Landroid/view/View;
    .end local v54    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_1a
    add-int/lit8 v25, v1, 0x1

    .line 1683
    .end local v1    # "i":I
    .restart local v25    # "i":I
    move/from16 v2, v48

    move/from16 v4, v49

    move/from16 v5, v50

    move/from16 v7, v51

    move/from16 v40, v52

    move/from16 v10, v53

    goto/16 :goto_16

    .line 1702
    .end local v12    # "minWidth":I
    .end local v13    # "minHeight":I
    .end local v16    # "needSolverPass":Z
    .end local v25    # "i":I
    .end local v48    # "startingWidth":I
    .end local v49    # "containerWrapWidth":Z
    .end local v50    # "startingHeight":I
    .end local v51    # "optimiseDimensions":Z
    .end local v52    # "sizeDependentWidgetsCount":I
    .end local v53    # "containerWrapHeight":Z
    .local v2, "startingWidth":I
    .local v5, "startingHeight":I
    .restart local v7    # "optimiseDimensions":Z
    .restart local v8    # "sizeDependentWidgetsCount":I
    :cond_2a
    move/from16 v48, v2

    move/from16 v50, v5

    move/from16 v51, v7

    move/from16 v52, v8

    .line 1702
    .end local v2    # "startingWidth":I
    .end local v5    # "startingHeight":I
    .end local v7    # "optimiseDimensions":Z
    .end local v8    # "sizeDependentWidgetsCount":I
    .restart local v48    # "startingWidth":I
    .restart local v50    # "startingHeight":I
    .restart local v51    # "optimiseDimensions":Z
    .restart local v52    # "sizeDependentWidgetsCount":I
    goto :goto_1b

    .line 1702
    .end local v31    # "heightSize":I
    .end local v32    # "validLastMeasure":Z
    .end local v33    # "sameSize":Z
    .end local v35    # "sameMode":Z
    .end local v36    # "sameMeasure":Z
    .end local v39    # "fitSizeWidth":Z
    .end local v48    # "startingWidth":I
    .end local v50    # "startingHeight":I
    .end local v51    # "optimiseDimensions":Z
    .end local v52    # "sizeDependentWidgetsCount":I
    .local v5, "startingWidth":I
    .local v6, "startingHeight":I
    .restart local v7    # "optimiseDimensions":Z
    .restart local v8    # "sizeDependentWidgetsCount":I
    .local v10, "heightSize":I
    .local v11, "validLastMeasure":Z
    .local v12, "sameSize":Z
    .local v13, "sameMode":Z
    .local v14, "sameMeasure":Z
    .local v15, "fitSizeWidth":Z
    .restart local v22    # "REMEASURES_B":I
    .restart local v27    # "childState":I
    :cond_2b
    move/from16 v48, v5

    move/from16 v50, v6

    move/from16 v51, v7

    move/from16 v52, v8

    move/from16 v31, v10

    move/from16 v32, v11

    move/from16 v33, v12

    move/from16 v35, v13

    move/from16 v36, v14

    move/from16 v39, v15

    move/from16 v6, v22

    move/from16 v14, v27

    .line 1702
    .end local v5    # "startingWidth":I
    .end local v7    # "optimiseDimensions":Z
    .end local v8    # "sizeDependentWidgetsCount":I
    .end local v10    # "heightSize":I
    .end local v11    # "validLastMeasure":Z
    .end local v12    # "sameSize":Z
    .end local v13    # "sameMode":Z
    .end local v15    # "fitSizeWidth":Z
    .end local v22    # "REMEASURES_B":I
    .end local v27    # "childState":I
    .local v6, "REMEASURES_B":I
    .local v14, "childState":I
    .restart local v31    # "heightSize":I
    .restart local v32    # "validLastMeasure":Z
    .restart local v33    # "sameSize":Z
    .restart local v35    # "sameMode":Z
    .restart local v36    # "sameMeasure":Z
    .restart local v39    # "fitSizeWidth":Z
    .restart local v48    # "startingWidth":I
    .restart local v50    # "startingHeight":I
    .restart local v51    # "optimiseDimensions":Z
    .restart local v52    # "sizeDependentWidgetsCount":I
    :goto_1b
    iget-object v1, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v1

    add-int/2addr v1, v3

    .line 1703
    .local v1, "androidLayoutWidth":I
    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v2

    add-int/2addr v2, v9

    .line 1705
    .local v2, "androidLayoutHeight":I
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_2e

    .line 1706
    move/from16 v4, p1

    invoke-static {v1, v4, v14}, Landroid/support/constraint/ConstraintLayout;->resolveSizeAndState(III)I

    move-result v5

    .line 1707
    .local v5, "resolvedWidthSize":I
    shl-int/lit8 v7, v14, 0x10

    move/from16 v8, p2

    invoke-static {v2, v8, v7}, Landroid/support/constraint/ConstraintLayout;->resolveSizeAndState(III)I

    move-result v7

    .line 1709
    .local v7, "resolvedHeightSize":I
    const v10, 0xffffff

    and-int/2addr v5, v10

    .line 1710
    and-int/2addr v7, v10

    .line 1711
    iget v10, v0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    invoke-static {v10, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1712
    iget v10, v0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    invoke-static {v10, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1713
    iget-object v10, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->isWidthMeasuredTooSmall()Z

    move-result v10

    const/high16 v11, 0x1000000

    if-eqz v10, :cond_2c

    .line 1714
    or-int/2addr v5, v11

    .line 1716
    :cond_2c
    iget-object v10, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->isHeightMeasuredTooSmall()Z

    move-result v10

    if-eqz v10, :cond_2d

    .line 1717
    or-int/2addr v7, v11

    .line 1719
    :cond_2d
    invoke-virtual {v0, v5, v7}, Landroid/support/constraint/ConstraintLayout;->setMeasuredDimension(II)V

    .line 1720
    iput v5, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidth:I

    .line 1721
    iput v7, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeight:I

    .line 1722
    .end local v5    # "resolvedWidthSize":I
    .end local v7    # "resolvedHeightSize":I
    goto :goto_1c

    .line 1723
    :cond_2e
    move/from16 v4, p1

    move/from16 v8, p2

    invoke-virtual {v0, v1, v2}, Landroid/support/constraint/ConstraintLayout;->setMeasuredDimension(II)V

    .line 1724
    iput v1, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidth:I

    .line 1725
    iput v2, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeight:I

    .line 1735
    :goto_1c
    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .line 646
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 647
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 649
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    .line 650
    .local v0, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    instance-of v1, p1, Landroid/support/constraint/Guideline;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 651
    instance-of v1, v0, Landroid/support/constraint/solver/widgets/Guideline;

    if-nez v1, :cond_1

    .line 652
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 653
    .local v1, "layoutParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    new-instance v3, Landroid/support/constraint/solver/widgets/Guideline;

    invoke-direct {v3}, Landroid/support/constraint/solver/widgets/Guideline;-><init>()V

    iput-object v3, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 654
    iput-boolean v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    .line 655
    iget-object v3, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    check-cast v3, Landroid/support/constraint/solver/widgets/Guideline;

    iget v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    invoke-virtual {v3, v4}, Landroid/support/constraint/solver/widgets/Guideline;->setOrientation(I)V

    .line 658
    .end local v1    # "layoutParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    :cond_1
    instance-of v1, p1, Landroid/support/constraint/ConstraintHelper;

    if-eqz v1, :cond_2

    .line 659
    move-object v1, p1

    check-cast v1, Landroid/support/constraint/ConstraintHelper;

    .line 660
    .local v1, "helper":Landroid/support/constraint/ConstraintHelper;
    invoke-virtual {v1}, Landroid/support/constraint/ConstraintHelper;->validateParams()V

    .line 661
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 662
    .local v3, "layoutParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    iput-boolean v2, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isHelper:Z

    .line 663
    iget-object v4, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 664
    iget-object v4, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 667
    .end local v1    # "helper":Landroid/support/constraint/ConstraintHelper;
    .end local v3    # "layoutParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    :cond_2
    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v1, v3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 668
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    .line 669
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 676
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 677
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 679
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 680
    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    .line 681
    .local v0, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->remove(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 682
    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 683
    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 684
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    .line 685
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 635
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 636
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 637
    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintLayout;->onViewRemoved(Landroid/view/View;)V

    .line 639
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 3112
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 3113
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    .line 3115
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidth:I

    .line 3116
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeight:I

    .line 3117
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidthSize:I

    .line 3118
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeightSize:I

    .line 3119
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidthMode:I

    .line 3120
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeightMode:I

    .line 3121
    return-void
.end method

.method public setConstraintSet(Landroid/support/constraint/ConstraintSet;)V
    .locals 0
    .param p1, "set"    # Landroid/support/constraint/ConstraintSet;

    .line 1944
    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    .line 1945
    return-void
.end method

.method public setDesignInformation(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "value1"    # Ljava/lang/Object;
    .param p3, "value2"    # Ljava/lang/Object;

    .line 532
    if-nez p1, :cond_2

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_2

    instance-of v0, p3, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 533
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 534
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    .line 536
    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    .line 537
    .local v0, "name":Ljava/lang/String;
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 538
    .local v1, "index":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 539
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 541
    :cond_1
    move-object v2, p3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 542
    .local v2, "id":I
    iget-object v3, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "index":I
    .end local v2    # "id":I
    :cond_2
    return-void
.end method

.method public setId(I)V
    .locals 2
    .param p1, "id"    # I

    .line 579
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 580
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setId(I)V

    .line 581
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 582
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 1
    .param p1, "value"    # I

    .line 752
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    if-ne p1, v0, :cond_0

    .line 753
    return-void

    .line 755
    :cond_0
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    .line 756
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->requestLayout()V

    .line 757
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 1
    .param p1, "value"    # I

    .line 739
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    if-ne p1, v0, :cond_0

    .line 740
    return-void

    .line 742
    :cond_0
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    .line 743
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->requestLayout()V

    .line 744
    return-void
.end method

.method public setMinHeight(I)V
    .locals 1
    .param p1, "value"    # I

    .line 706
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    if-ne p1, v0, :cond_0

    .line 707
    return-void

    .line 709
    :cond_0
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    .line 710
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->requestLayout()V

    .line 711
    return-void
.end method

.method public setMinWidth(I)V
    .locals 1
    .param p1, "value"    # I

    .line 693
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    if-ne p1, v0, :cond_0

    .line 694
    return-void

    .line 696
    :cond_0
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    .line 697
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->requestLayout()V

    .line 698
    return-void
.end method

.method public setOptimizationLevel(I)V
    .locals 1
    .param p1, "level"    # I

    .line 1895
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setOptimizationLevel(I)V

    .line 1896
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .line 3129
    const/4 v0, 0x0

    return v0
.end method

.method protected solveLinearSystem(Ljava/lang/String;)V
    .locals 7
    .param p1, "reason"    # Ljava/lang/String;

    .line 1800
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->layout()V

    .line 1801
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    if-eqz v0, :cond_0

    .line 1802
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    iget-wide v1, v0, Landroid/support/constraint/solver/Metrics;->resolutions:J

    const-wide/16 v3, 0x1

    add-long v5, v1, v3

    iput-wide v5, v0, Landroid/support/constraint/solver/Metrics;->resolutions:J

    .line 1804
    :cond_0
    return-void
.end method
