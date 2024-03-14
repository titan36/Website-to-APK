.class public Landroid/support/design/widget/CoordinatorLayout;
.super Landroid/view/ViewGroup;
.source "CoordinatorLayout.java"

# interfaces
.implements Landroid/support/v4/view/NestedScrollingParent2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/CoordinatorLayout$SavedState;,
        Landroid/support/design/widget/CoordinatorLayout$HierarchyChangeListener;,
        Landroid/support/design/widget/CoordinatorLayout$LayoutParams;,
        Landroid/support/design/widget/CoordinatorLayout$Behavior;,
        Landroid/support/design/widget/CoordinatorLayout$AttachedBehavior;,
        Landroid/support/design/widget/CoordinatorLayout$DefaultBehavior;,
        Landroid/support/design/widget/CoordinatorLayout$ViewElevationComparator;,
        Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;,
        Landroid/support/design/widget/CoordinatorLayout$DispatchChangeEvent;
    }
.end annotation


# static fields
.field static final CONSTRUCTOR_PARAMS:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field static final EVENT_NESTED_SCROLL:I = 0x1

.field static final EVENT_PRE_DRAW:I = 0x0

.field static final EVENT_VIEW_REMOVED:I = 0x2

.field static final TAG:Ljava/lang/String; = "CoordinatorLayout"

.field static final TOP_SORTED_CHILDREN_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private static final TYPE_ON_INTERCEPT:I = 0x0

.field private static final TYPE_ON_TOUCH:I = 0x1

.field static final WIDGET_PACKAGE_NAME:Ljava/lang/String;

.field static final sConstructors:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor<",
            "Landroid/support/design/widget/CoordinatorLayout$Behavior;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static final sRectPool:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mApplyWindowInsetsListener:Landroid/support/v4/view/OnApplyWindowInsetsListener;

.field private mBehaviorTouchView:Landroid/view/View;

.field private final mChildDag:Landroid/support/v4/widget/DirectedAcyclicGraph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/widget/DirectedAcyclicGraph<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mDependencySortedChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mDisallowInterceptReset:Z

.field private mDrawStatusBarBackground:Z

.field private mIsAttachedToWindow:Z

.field private mKeylines:[I

.field private mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

.field private mNeedsPreDrawListener:Z

.field private final mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

.field private mNestedScrollingTarget:Landroid/view/View;

.field mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field private mOnPreDrawListener:Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;

.field private mScrimPaint:Landroid/graphics/Paint;

.field private mStatusBarBackground:Landroid/graphics/drawable/Drawable;

.field private final mTempDependenciesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempIntPair:[I

.field private final mTempList1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 117
    const-class v0, Landroid/support/design/widget/CoordinatorLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    .line 118
    .local v0, "pkg":Ljava/lang/Package;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    sput-object v2, Landroid/support/design/widget/CoordinatorLayout;->WIDGET_PACKAGE_NAME:Ljava/lang/String;

    .line 125
    .end local v0    # "pkg":Ljava/lang/Package;
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    .line 126
    new-instance v0, Landroid/support/design/widget/CoordinatorLayout$ViewElevationComparator;

    invoke-direct {v0}, Landroid/support/design/widget/CoordinatorLayout$ViewElevationComparator;-><init>()V

    sput-object v0, Landroid/support/design/widget/CoordinatorLayout;->TOP_SORTED_CHILDREN_COMPARATOR:Ljava/util/Comparator;

    goto :goto_1

    .line 128
    :cond_1
    sput-object v1, Landroid/support/design/widget/CoordinatorLayout;->TOP_SORTED_CHILDREN_COMPARATOR:Ljava/util/Comparator;

    .line 132
    :goto_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v0, v1

    sput-object v0, Landroid/support/design/widget/CoordinatorLayout;->CONSTRUCTOR_PARAMS:[Ljava/lang/Class;

    .line 137
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/support/design/widget/CoordinatorLayout;->sConstructors:Ljava/lang/ThreadLocal;

    .line 151
    new-instance v0, Landroid/support/v4/util/Pools$SynchronizedPool;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Landroid/support/v4/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/support/design/widget/CoordinatorLayout;->sRectPool:Landroid/support/v4/util/Pools$Pool;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 198
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/CoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 199
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 202
    sget v0, Landroid/support/coreui/R$attr;->coordinatorLayoutStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/widget/CoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 203
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 206
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    .line 168
    new-instance v0, Landroid/support/v4/widget/DirectedAcyclicGraph;

    invoke-direct {v0}, Landroid/support/v4/widget/DirectedAcyclicGraph;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mChildDag:Landroid/support/v4/widget/DirectedAcyclicGraph;

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mTempList1:Ljava/util/List;

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    .line 172
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mTempIntPair:[I

    .line 194
    new-instance v0, Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-direct {v0, p0}, Landroid/support/v4/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    .line 208
    const/4 v0, 0x0

    if-nez p3, :cond_0

    sget-object v1, Landroid/support/coreui/R$styleable;->CoordinatorLayout:[I

    sget v2, Landroid/support/coreui/R$style;->Widget_Support_CoordinatorLayout:I

    .line 209
    invoke-virtual {p1, p2, v1, v0, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/support/coreui/R$styleable;->CoordinatorLayout:[I

    .line 211
    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 213
    .local v1, "a":Landroid/content/res/TypedArray;
    :goto_0
    sget v2, Landroid/support/coreui/R$styleable;->CoordinatorLayout_keylines:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 214
    .local v2, "keylineArrayRes":I
    if-eqz v2, :cond_1

    .line 215
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 216
    .local v3, "res":Landroid/content/res/Resources;
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v4

    iput-object v4, p0, Landroid/support/design/widget/CoordinatorLayout;->mKeylines:[I

    .line 217
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    .line 218
    .local v4, "density":F
    iget-object v5, p0, Landroid/support/design/widget/CoordinatorLayout;->mKeylines:[I

    array-length v5, v5

    .line 219
    .local v5, "count":I
    nop

    .line 219
    .local v0, "i":I
    :goto_1
    if-ge v0, v5, :cond_1

    .line 220
    iget-object v6, p0, Landroid/support/design/widget/CoordinatorLayout;->mKeylines:[I

    iget-object v7, p0, Landroid/support/design/widget/CoordinatorLayout;->mKeylines:[I

    aget v7, v7, v0

    int-to-float v7, v7

    mul-float/2addr v7, v4

    float-to-int v7, v7

    aput v7, v6, v0

    .line 219
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 223
    .end local v0    # "i":I
    .end local v3    # "res":Landroid/content/res/Resources;
    .end local v4    # "density":F
    .end local v5    # "count":I
    :cond_1
    sget v0, Landroid/support/coreui/R$styleable;->CoordinatorLayout_statusBarBackground:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 224
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 226
    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout;->setupForInsets()V

    .line 227
    new-instance v0, Landroid/support/design/widget/CoordinatorLayout$HierarchyChangeListener;

    invoke-direct {v0, p0}, Landroid/support/design/widget/CoordinatorLayout$HierarchyChangeListener;-><init>(Landroid/support/design/widget/CoordinatorLayout;)V

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 228
    return-void
.end method

.method private static acquireTempRect()Landroid/graphics/Rect;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 155
    sget-object v0, Landroid/support/design/widget/CoordinatorLayout;->sRectPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 156
    .local v0, "rect":Landroid/graphics/Rect;
    if-nez v0, :cond_0

    .line 157
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    move-object v0, v1

    .line 159
    :cond_0
    return-object v0
.end method

.method private constrainChildRect(Landroid/support/design/widget/CoordinatorLayout$LayoutParams;Landroid/graphics/Rect;II)V
    .locals 7
    .param p1, "lp"    # Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .param p2, "out"    # Landroid/graphics/Rect;
    .param p3, "childWidth"    # I
    .param p4, "childHeight"    # I

    .line 1042
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v0

    .line 1043
    .local v0, "width":I
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v1

    .line 1046
    .local v1, "height":I
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v2

    iget v3, p1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    iget v3, p2, Landroid/graphics/Rect;->left:I

    .line 1048
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v4

    sub-int v4, v0, v4

    sub-int/2addr v4, p3

    iget v5, p1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v4, v5

    .line 1047
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1046
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1049
    .local v2, "left":I
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v3

    iget v4, p1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, p2, Landroid/graphics/Rect;->top:I

    .line 1051
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v5

    sub-int v5, v1, v5

    sub-int/2addr v5, p4

    iget v6, p1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v5, v6

    .line 1050
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1049
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1053
    .local v3, "top":I
    add-int v4, v2, p3

    add-int v5, v3, p4

    invoke-virtual {p2, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1054
    return-void
.end method

.method private dispatchApplyWindowInsetsToBehaviors(Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 6
    .param p1, "insets"    # Landroid/support/v4/view/WindowInsetsCompat;

    .line 831
    invoke-virtual {p1}, Landroid/support/v4/view/WindowInsetsCompat;->isConsumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 832
    return-object p1

    .line 835
    :cond_0
    const/4 v0, 0x0

    .line 835
    .local v0, "i":I
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v1

    .line 835
    .local v1, "z":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 836
    invoke-virtual {p0, v0}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 837
    .local v2, "child":Landroid/view/View;
    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 838
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 839
    .local v3, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v3}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v4

    .line 841
    .local v4, "b":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    if-eqz v4, :cond_1

    .line 843
    invoke-virtual {v4, p0, v2, p1}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onApplyWindowInsets(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object p1

    .line 844
    invoke-virtual {p1}, Landroid/support/v4/view/WindowInsetsCompat;->isConsumed()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 846
    goto :goto_1

    .line 835
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .end local v4    # "b":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 852
    .end local v0    # "i":I
    .end local v1    # "z":I
    :cond_2
    :goto_1
    return-object p1
.end method

.method private getDesiredAnchoredChildRectWithoutConstraints(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/support/design/widget/CoordinatorLayout$LayoutParams;II)V
    .locals 15
    .param p1, "child"    # Landroid/view/View;
    .param p2, "layoutDirection"    # I
    .param p3, "anchorRect"    # Landroid/graphics/Rect;
    .param p4, "out"    # Landroid/graphics/Rect;
    .param p5, "lp"    # Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .param p6, "childWidth"    # I
    .param p7, "childHeight"    # I

    move/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    .line 968
    iget v3, v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 969
    invoke-static {v3}, Landroid/support/design/widget/CoordinatorLayout;->resolveAnchoredChildGravity(I)I

    move-result v3

    .line 968
    invoke-static {v3, v0}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v3

    .line 970
    .local v3, "absGravity":I
    iget v4, v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    .line 971
    invoke-static {v4}, Landroid/support/design/widget/CoordinatorLayout;->resolveGravity(I)I

    move-result v4

    .line 970
    invoke-static {v4, v0}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v4

    .line 974
    .local v4, "absAnchorGravity":I
    and-int/lit8 v5, v3, 0x7

    .line 975
    .local v5, "hgrav":I
    and-int/lit8 v6, v3, 0x70

    .line 976
    .local v6, "vgrav":I
    and-int/lit8 v7, v4, 0x7

    .line 977
    .local v7, "anchorHgrav":I
    and-int/lit8 v8, v4, 0x70

    .line 985
    .local v8, "anchorVgrav":I
    const/4 v9, 0x5

    const/4 v10, 0x1

    if-eq v7, v10, :cond_1

    if-eq v7, v9, :cond_0

    .line 988
    iget v11, v1, Landroid/graphics/Rect;->left:I

    .line 989
    .local v11, "left":I
    goto :goto_0

    .line 991
    .end local v11    # "left":I
    :cond_0
    iget v11, v1, Landroid/graphics/Rect;->right:I

    .line 992
    .restart local v11    # "left":I
    goto :goto_0

    .line 994
    .end local v11    # "left":I
    :cond_1
    iget v11, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    .line 998
    .restart local v11    # "left":I
    :goto_0
    const/16 v12, 0x50

    const/16 v13, 0x10

    if-eq v8, v13, :cond_3

    if-eq v8, v12, :cond_2

    .line 1001
    iget v12, v1, Landroid/graphics/Rect;->top:I

    .line 1002
    .local v12, "top":I
    goto :goto_1

    .line 1004
    .end local v12    # "top":I
    :cond_2
    iget v12, v1, Landroid/graphics/Rect;->bottom:I

    .line 1005
    .restart local v12    # "top":I
    goto :goto_1

    .line 1007
    .end local v12    # "top":I
    :cond_3
    iget v12, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v12, v14

    .line 1012
    .restart local v12    # "top":I
    :goto_1
    if-eq v5, v10, :cond_5

    if-eq v5, v9, :cond_4

    .line 1015
    sub-int v11, v11, p6

    .line 1016
    goto :goto_2

    .line 1019
    :cond_4
    goto :goto_2

    .line 1021
    :cond_5
    div-int/lit8 v9, p6, 0x2

    sub-int/2addr v11, v9

    .line 1025
    :goto_2
    if-eq v6, v13, :cond_7

    const/16 v9, 0x50

    if-eq v6, v9, :cond_6

    .line 1028
    sub-int v12, v12, p7

    .line 1029
    goto :goto_3

    .line 1032
    :cond_6
    goto :goto_3

    .line 1034
    :cond_7
    div-int/lit8 v9, p7, 0x2

    sub-int/2addr v12, v9

    .line 1038
    :goto_3
    add-int v9, v11, p6

    add-int v10, v12, p7

    move-object/from16 v13, p4

    invoke-virtual {v13, v11, v12, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 1039
    return-void
.end method

.method private getKeyline(I)I
    .locals 4
    .param p1, "index"    # I

    .line 580
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mKeylines:[I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 581
    const-string v0, "CoordinatorLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No keylines defined for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " - attempted index lookup "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    return v1

    .line 585
    :cond_0
    if-ltz p1, :cond_2

    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mKeylines:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    goto :goto_0

    .line 590
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mKeylines:[I

    aget v0, v0, p1

    return v0

    .line 586
    :cond_2
    :goto_0
    const-string v0, "CoordinatorLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Keyline index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " out of range for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    return v1
.end method

.method private getTopSortedChildren(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 416
    .local p1, "out":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 418
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->isChildrenDrawingOrderEnabled()Z

    move-result v0

    .line 419
    .local v0, "useCustomOrder":Z
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v1

    .line 420
    .local v1, "childCount":I
    add-int/lit8 v2, v1, -0x1

    .line 420
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 421
    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, v2}, Landroid/support/design/widget/CoordinatorLayout;->getChildDrawingOrder(II)I

    move-result v3

    goto :goto_1

    :cond_0
    move v3, v2

    .line 422
    .local v3, "childIndex":I
    :goto_1
    invoke-virtual {p0, v3}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 423
    .local v4, "child":Landroid/view/View;
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 420
    .end local v3    # "childIndex":I
    .end local v4    # "child":Landroid/view/View;
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 426
    .end local v2    # "i":I
    :cond_1
    sget-object v2, Landroid/support/design/widget/CoordinatorLayout;->TOP_SORTED_CHILDREN_COMPARATOR:Ljava/util/Comparator;

    if-eqz v2, :cond_2

    .line 427
    sget-object v2, Landroid/support/design/widget/CoordinatorLayout;->TOP_SORTED_CHILDREN_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 429
    :cond_2
    return-void
.end method

.method private hasDependencies(Landroid/view/View;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 1571
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mChildDag:Landroid/support/v4/widget/DirectedAcyclicGraph;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/DirectedAcyclicGraph;->hasOutgoingEdges(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private layoutChild(Landroid/view/View;I)V
    .locals 9
    .param p1, "child"    # Landroid/view/View;
    .param p2, "layoutDirection"    # I

    .line 1171
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1172
    .local v0, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v7

    .line 1173
    .local v7, "parent":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v1

    iget v2, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    .line 1174
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v2

    iget v3, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    .line 1175
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v3, v4

    .line 1176
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v4, v5

    .line 1173
    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1178
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    if-eqz v1, :cond_0

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1179
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1182
    iget v1, v7, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v2}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v7, Landroid/graphics/Rect;->left:I

    .line 1183
    iget v1, v7, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v2}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v7, Landroid/graphics/Rect;->top:I

    .line 1184
    iget v1, v7, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v2}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v7, Landroid/graphics/Rect;->right:I

    .line 1185
    iget v1, v7, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v2}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v7, Landroid/graphics/Rect;->bottom:I

    .line 1188
    :cond_0
    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v8

    .line 1189
    .local v8, "out":Landroid/graphics/Rect;
    iget v1, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    invoke-static {v1}, Landroid/support/design/widget/CoordinatorLayout;->resolveGravity(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 1190
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 1189
    move-object v4, v7

    move-object v5, v8

    move v6, p2

    invoke-static/range {v1 .. v6}, Landroid/support/v4/view/GravityCompat;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 1191
    iget v1, v8, Landroid/graphics/Rect;->left:I

    iget v2, v8, Landroid/graphics/Rect;->top:I

    iget v3, v8, Landroid/graphics/Rect;->right:I

    iget v4, v8, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 1193
    invoke-static {v7}, Landroid/support/design/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1194
    invoke-static {v8}, Landroid/support/design/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1195
    return-void
.end method

.method private layoutChildWithAnchor(Landroid/view/View;Landroid/view/View;I)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "anchor"    # Landroid/view/View;
    .param p3, "layoutDirection"    # I

    .line 1082
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1084
    .local v0, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 1085
    .local v1, "anchorRect":Landroid/graphics/Rect;
    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 1087
    .local v2, "childRect":Landroid/graphics/Rect;
    :try_start_0
    invoke-virtual {p0, p2, v1}, Landroid/support/design/widget/CoordinatorLayout;->getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1088
    invoke-virtual {p0, p1, p3, v1, v2}, Landroid/support/design/widget/CoordinatorLayout;->getDesiredAnchoredChildRect(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1089
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1091
    invoke-static {v1}, Landroid/support/design/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1092
    invoke-static {v2}, Landroid/support/design/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1093
    nop

    .line 1094
    return-void

    .line 1091
    :catchall_0
    move-exception v3

    invoke-static {v1}, Landroid/support/design/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1092
    invoke-static {v2}, Landroid/support/design/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    throw v3
.end method

.method private layoutChildWithKeyline(Landroid/view/View;II)V
    .locals 16
    .param p1, "child"    # Landroid/view/View;
    .param p2, "keyline"    # I
    .param p3, "layoutDirection"    # I

    .line 1108
    move/from16 v0, p3

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1109
    .local v1, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    iget v2, v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 1110
    invoke-static {v2}, Landroid/support/design/widget/CoordinatorLayout;->resolveKeylineGravity(I)I

    move-result v2

    .line 1109
    invoke-static {v2, v0}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v2

    .line 1112
    .local v2, "absGravity":I
    and-int/lit8 v3, v2, 0x7

    .line 1113
    .local v3, "hgrav":I
    and-int/lit8 v4, v2, 0x70

    .line 1114
    .local v4, "vgrav":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v5

    .line 1115
    .local v5, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v6

    .line 1116
    .local v6, "height":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 1117
    .local v7, "childWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 1119
    .local v8, "childHeight":I
    const/4 v9, 0x1

    if-ne v0, v9, :cond_0

    .line 1120
    sub-int v10, v5, p2

    .line 1120
    .end local p2    # "keyline":I
    .local v10, "keyline":I
    goto :goto_0

    .line 1123
    .end local v10    # "keyline":I
    .restart local p2    # "keyline":I
    :cond_0
    move/from16 v10, p2

    .line 1123
    .end local p2    # "keyline":I
    .restart local v10    # "keyline":I
    :goto_0
    move-object/from16 v11, p0

    invoke-direct {v11, v10}, Landroid/support/design/widget/CoordinatorLayout;->getKeyline(I)I

    move-result v12

    sub-int/2addr v12, v7

    .line 1124
    .local v12, "left":I
    const/4 v13, 0x0

    .line 1126
    .local v13, "top":I
    if-eq v3, v9, :cond_2

    const/4 v9, 0x5

    if-eq v3, v9, :cond_1

    .line 1130
    goto :goto_1

    .line 1132
    :cond_1
    add-int/2addr v12, v7

    .line 1133
    goto :goto_1

    .line 1135
    :cond_2
    div-int/lit8 v9, v7, 0x2

    add-int/2addr v12, v9

    .line 1139
    :goto_1
    const/16 v9, 0x10

    if-eq v4, v9, :cond_4

    const/16 v9, 0x50

    if-eq v4, v9, :cond_3

    .line 1143
    goto :goto_2

    .line 1145
    :cond_3
    add-int/2addr v13, v8

    .line 1146
    goto :goto_2

    .line 1148
    :cond_4
    div-int/lit8 v9, v8, 0x2

    add-int/2addr v13, v9

    .line 1153
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v9

    iget v14, v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    add-int/2addr v9, v14

    .line 1155
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v14

    sub-int v14, v5, v14

    sub-int/2addr v14, v7

    iget v15, v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v14, v15

    .line 1154
    invoke-static {v12, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 1153
    invoke-static {v9, v14}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1156
    .end local v12    # "left":I
    .local v9, "left":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v12

    iget v14, v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    add-int/2addr v12, v14

    .line 1158
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v14

    sub-int v14, v6, v14

    sub-int/2addr v14, v8

    iget v15, v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v14, v15

    .line 1157
    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 1156
    invoke-static {v12, v14}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 1160
    .end local v13    # "top":I
    .local v12, "top":I
    add-int v13, v9, v7

    add-int v14, v12, v8

    move-object/from16 v15, p1

    invoke-virtual {v15, v9, v12, v13, v14}, Landroid/view/View;->layout(IIII)V

    .line 1161
    return-void
.end method

.method private offsetChildByInset(Landroid/view/View;Landroid/graphics/Rect;I)V
    .locals 10
    .param p1, "child"    # Landroid/view/View;
    .param p2, "inset"    # Landroid/graphics/Rect;
    .param p3, "layoutDirection"    # I

    .line 1379
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1381
    return-void

    .line 1384
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_b

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    if-gtz v0, :cond_1

    goto/16 :goto_0

    .line 1389
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1390
    .local v0, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v1

    .line 1391
    .local v1, "behavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 1392
    .local v2, "dodgeRect":Landroid/graphics/Rect;
    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 1393
    .local v3, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 1395
    if-eqz v1, :cond_2

    invoke-virtual {v1, p0, p1, v2}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->getInsetDodgeRect(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1397
    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1398
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Rect should be within the child\'s bounds. Rect:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1399
    invoke-virtual {v2}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " | Bounds:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1400
    invoke-virtual {v3}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1403
    :cond_2
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1407
    :cond_3
    invoke-static {v3}, Landroid/support/design/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1409
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1411
    invoke-static {v2}, Landroid/support/design/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1412
    return-void

    .line 1415
    :cond_4
    iget v4, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    invoke-static {v4, p3}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v4

    .line 1418
    .local v4, "absDodgeInsetEdges":I
    const/4 v5, 0x0

    .line 1419
    .local v5, "offsetY":Z
    and-int/lit8 v6, v4, 0x30

    const/16 v7, 0x30

    if-ne v6, v7, :cond_5

    .line 1420
    iget v6, v2, Landroid/graphics/Rect;->top:I

    iget v7, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    sub-int/2addr v6, v7

    iget v7, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetY:I

    sub-int/2addr v6, v7

    .line 1421
    .local v6, "distance":I
    iget v7, p2, Landroid/graphics/Rect;->top:I

    if-ge v6, v7, :cond_5

    .line 1422
    iget v7, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v6

    invoke-direct {p0, p1, v7}, Landroid/support/design/widget/CoordinatorLayout;->setInsetOffsetY(Landroid/view/View;I)V

    .line 1423
    const/4 v5, 0x1

    .line 1426
    .end local v6    # "distance":I
    :cond_5
    and-int/lit8 v6, v4, 0x50

    const/16 v7, 0x50

    if-ne v6, v7, :cond_6

    .line 1427
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v6

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    iget v7, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v6, v7

    iget v7, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetY:I

    add-int/2addr v6, v7

    .line 1428
    .restart local v6    # "distance":I
    iget v7, p2, Landroid/graphics/Rect;->bottom:I

    if-ge v6, v7, :cond_6

    .line 1429
    iget v7, p2, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v6, v7

    invoke-direct {p0, p1, v7}, Landroid/support/design/widget/CoordinatorLayout;->setInsetOffsetY(Landroid/view/View;I)V

    .line 1430
    const/4 v5, 0x1

    .line 1433
    .end local v6    # "distance":I
    :cond_6
    const/4 v6, 0x0

    if-nez v5, :cond_7

    .line 1434
    invoke-direct {p0, p1, v6}, Landroid/support/design/widget/CoordinatorLayout;->setInsetOffsetY(Landroid/view/View;I)V

    .line 1437
    :cond_7
    const/4 v7, 0x0

    .line 1438
    .local v7, "offsetX":Z
    and-int/lit8 v8, v4, 0x3

    const/4 v9, 0x3

    if-ne v8, v9, :cond_8

    .line 1439
    iget v8, v2, Landroid/graphics/Rect;->left:I

    iget v9, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v8, v9

    iget v9, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetX:I

    sub-int/2addr v8, v9

    .line 1440
    .local v8, "distance":I
    iget v9, p2, Landroid/graphics/Rect;->left:I

    if-ge v8, v9, :cond_8

    .line 1441
    iget v9, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v8

    invoke-direct {p0, p1, v9}, Landroid/support/design/widget/CoordinatorLayout;->setInsetOffsetX(Landroid/view/View;I)V

    .line 1442
    const/4 v7, 0x1

    .line 1445
    .end local v8    # "distance":I
    :cond_8
    and-int/lit8 v8, v4, 0x5

    const/4 v9, 0x5

    if-ne v8, v9, :cond_9

    .line 1446
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v8

    iget v9, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    iget v9, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v8, v9

    iget v9, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetX:I

    add-int/2addr v8, v9

    .line 1447
    .restart local v8    # "distance":I
    iget v9, p2, Landroid/graphics/Rect;->right:I

    if-ge v8, v9, :cond_9

    .line 1448
    iget v9, p2, Landroid/graphics/Rect;->right:I

    sub-int v9, v8, v9

    invoke-direct {p0, p1, v9}, Landroid/support/design/widget/CoordinatorLayout;->setInsetOffsetX(Landroid/view/View;I)V

    .line 1449
    const/4 v7, 0x1

    .line 1452
    .end local v8    # "distance":I
    :cond_9
    if-nez v7, :cond_a

    .line 1453
    invoke-direct {p0, p1, v6}, Landroid/support/design/widget/CoordinatorLayout;->setInsetOffsetX(Landroid/view/View;I)V

    .line 1456
    :cond_a
    invoke-static {v2}, Landroid/support/design/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1457
    return-void

    .line 1386
    .end local v0    # "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .end local v1    # "behavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    .end local v2    # "dodgeRect":Landroid/graphics/Rect;
    .end local v3    # "bounds":Landroid/graphics/Rect;
    .end local v4    # "absDodgeInsetEdges":I
    .end local v5    # "offsetY":Z
    .end local v7    # "offsetX":Z
    :cond_b
    :goto_0
    return-void
.end method

.method static parseBehavior(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)Landroid/support/design/widget/CoordinatorLayout$Behavior;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "name"    # Ljava/lang/String;

    .line 594
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 595
    const/4 v0, 0x0

    return-object v0

    .line 599
    :cond_0
    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 601
    .local v0, "fullName":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 602
    .end local v0    # "fullName":Ljava/lang/String;
    :cond_1
    const/16 v0, 0x2e

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_2

    .line 604
    move-object v0, p2

    goto :goto_0

    .line 607
    :cond_2
    sget-object v1, Landroid/support/design/widget/CoordinatorLayout;->WIDGET_PACKAGE_NAME:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/support/design/widget/CoordinatorLayout;->WIDGET_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, p2

    .line 613
    .restart local v0    # "fullName":Ljava/lang/String;
    :goto_1
    :try_start_0
    sget-object v1, Landroid/support/design/widget/CoordinatorLayout;->sConstructors:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 614
    .local v1, "constructors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Constructor<Landroid/support/design/widget/CoordinatorLayout$Behavior;>;>;"
    if-nez v1, :cond_4

    .line 615
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object v1, v2

    .line 616
    sget-object v2, Landroid/support/design/widget/CoordinatorLayout;->sConstructors:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 618
    :cond_4
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Constructor;

    .line 619
    .local v2, "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Landroid/support/design/widget/CoordinatorLayout$Behavior;>;"
    const/4 v3, 0x1

    if-nez v2, :cond_5

    .line 620
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 621
    invoke-virtual {v4, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 622
    .local v4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/support/design/widget/CoordinatorLayout$Behavior;>;"
    sget-object v5, Landroid/support/design/widget/CoordinatorLayout;->CONSTRUCTOR_PARAMS:[Ljava/lang/Class;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    move-object v2, v5

    .line 623
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 624
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    .end local v4    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/support/design/widget/CoordinatorLayout$Behavior;>;"
    :cond_5
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    aput-object p1, v4, v3

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/design/widget/CoordinatorLayout$Behavior;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 627
    .end local v1    # "constructors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Constructor<Landroid/support/design/widget/CoordinatorLayout$Behavior;>;>;"
    .end local v2    # "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Landroid/support/design/widget/CoordinatorLayout$Behavior;>;"
    :catch_0
    move-exception v1

    .line 628
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not inflate Behavior subclass "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private performIntercept(Landroid/view/MotionEvent;I)Z
    .locals 23
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "type"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 432
    const/4 v2, 0x0

    .line 433
    .local v2, "intercepted":Z
    const/4 v3, 0x0

    .line 435
    .local v3, "newBlock":Z
    const/4 v4, 0x0

    .line 437
    .local v4, "cancelEvent":Landroid/view/MotionEvent;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    .line 439
    .local v5, "action":I
    iget-object v6, v0, Landroid/support/design/widget/CoordinatorLayout;->mTempList1:Ljava/util/List;

    .line 440
    .local v6, "topmostChildList":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-direct {v0, v6}, Landroid/support/design/widget/CoordinatorLayout;->getTopSortedChildren(Ljava/util/List;)V

    .line 443
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 444
    .local v7, "childCount":I
    const/4 v8, 0x0

    move-object v9, v4

    move v4, v3

    move v3, v2

    move v2, v8

    .line 444
    .local v2, "i":I
    .local v3, "intercepted":Z
    .local v4, "newBlock":Z
    .local v9, "cancelEvent":Landroid/view/MotionEvent;
    :goto_0
    if-ge v2, v7, :cond_6

    .line 445
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 446
    .local v10, "child":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 447
    .local v11, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v11}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v12

    .line 449
    .local v12, "b":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    if-nez v3, :cond_0

    if-eqz v4, :cond_2

    :cond_0
    if-eqz v5, :cond_2

    .line 452
    if-eqz v12, :cond_5

    .line 453
    if-nez v9, :cond_1

    .line 454
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v21

    .line 455
    .local v21, "now":J
    const/16 v17, 0x3

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-wide/from16 v13, v21

    move-wide/from16 v15, v21

    invoke-static/range {v13 .. v20}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v9

    .line 458
    .end local v21    # "now":J
    :cond_1
    packed-switch p2, :pswitch_data_0

    goto :goto_1

    .line 463
    :pswitch_0
    invoke-virtual {v12, v0, v10, v9}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 460
    :pswitch_1
    invoke-virtual {v12, v0, v10, v9}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onInterceptTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 461
    nop

    .line 464
    :goto_1
    goto :goto_4

    .line 470
    :cond_2
    if-nez v3, :cond_3

    if-eqz v12, :cond_3

    .line 471
    packed-switch p2, :pswitch_data_1

    goto :goto_2

    .line 476
    :pswitch_2
    invoke-virtual {v12, v0, v10, v1}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_2

    .line 473
    :pswitch_3
    invoke-virtual {v12, v0, v10, v1}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onInterceptTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v3

    .line 474
    nop

    .line 479
    :goto_2
    if-eqz v3, :cond_3

    .line 480
    iput-object v10, v0, Landroid/support/design/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    .line 486
    :cond_3
    invoke-virtual {v11}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->didBlockInteraction()Z

    move-result v13

    .line 487
    .local v13, "wasBlocking":Z
    invoke-virtual {v11, v0, v10}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->isBlockingInteractionBelow(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Z

    move-result v14

    .line 488
    .local v14, "isBlocking":Z
    if-eqz v14, :cond_4

    if-nez v13, :cond_4

    const/4 v15, 0x1

    goto :goto_3

    :cond_4
    move v15, v8

    :goto_3
    move v4, v15

    .line 489
    if-eqz v14, :cond_5

    if-nez v4, :cond_5

    .line 492
    goto :goto_5

    .line 444
    .end local v10    # "child":Landroid/view/View;
    .end local v11    # "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .end local v12    # "b":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    .end local v13    # "wasBlocking":Z
    .end local v14    # "isBlocking":Z
    :cond_5
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 496
    .end local v2    # "i":I
    :cond_6
    :goto_5
    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 498
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private prepareChildren()V
    .locals 7

    .line 668
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 669
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mChildDag:Landroid/support/v4/widget/DirectedAcyclicGraph;

    invoke-virtual {v0}, Landroid/support/v4/widget/DirectedAcyclicGraph;->clear()V

    .line 671
    const/4 v0, 0x0

    .line 671
    .local v0, "i":I
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v1

    .line 671
    .local v1, "count":I
    :goto_0
    if-ge v0, v1, :cond_4

    .line 672
    invoke-virtual {p0, v0}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 674
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, v2}, Landroid/support/design/widget/CoordinatorLayout;->getResolvedLayoutParams(Landroid/view/View;)Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-result-object v3

    .line 675
    .local v3, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v3, p0, v2}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->findAnchorView(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/view/View;

    .line 677
    iget-object v4, p0, Landroid/support/design/widget/CoordinatorLayout;->mChildDag:Landroid/support/v4/widget/DirectedAcyclicGraph;

    invoke-virtual {v4, v2}, Landroid/support/v4/widget/DirectedAcyclicGraph;->addNode(Ljava/lang/Object;)V

    .line 680
    const/4 v4, 0x0

    .line 680
    .local v4, "j":I
    :goto_1
    if-ge v4, v1, :cond_3

    .line 681
    if-ne v4, v0, :cond_0

    .line 682
    goto :goto_2

    .line 684
    :cond_0
    invoke-virtual {p0, v4}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 685
    .local v5, "other":Landroid/view/View;
    invoke-virtual {v3, p0, v2, v5}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->dependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 686
    iget-object v6, p0, Landroid/support/design/widget/CoordinatorLayout;->mChildDag:Landroid/support/v4/widget/DirectedAcyclicGraph;

    invoke-virtual {v6, v5}, Landroid/support/v4/widget/DirectedAcyclicGraph;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 688
    iget-object v6, p0, Landroid/support/design/widget/CoordinatorLayout;->mChildDag:Landroid/support/v4/widget/DirectedAcyclicGraph;

    invoke-virtual {v6, v5}, Landroid/support/v4/widget/DirectedAcyclicGraph;->addNode(Ljava/lang/Object;)V

    .line 691
    :cond_1
    iget-object v6, p0, Landroid/support/design/widget/CoordinatorLayout;->mChildDag:Landroid/support/v4/widget/DirectedAcyclicGraph;

    invoke-virtual {v6, v5, v2}, Landroid/support/v4/widget/DirectedAcyclicGraph;->addEdge(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 680
    .end local v5    # "other":Landroid/view/View;
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 671
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .end local v4    # "j":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 697
    .end local v0    # "i":I
    .end local v1    # "count":I
    :cond_4
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mChildDag:Landroid/support/v4/widget/DirectedAcyclicGraph;

    invoke-virtual {v1}, Landroid/support/v4/widget/DirectedAcyclicGraph;->getSortedList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 700
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 701
    return-void
.end method

.method private static releaseTempRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p0, "rect"    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 163
    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    .line 164
    sget-object v0, Landroid/support/design/widget/CoordinatorLayout;->sRectPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0, p0}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 165
    return-void
.end method

.method private resetTouchBehaviors(Z)V
    .locals 17
    .param p1, "notifyOnInterceptTouchEvent"    # Z

    move-object/from16 v0, p0

    .line 384
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v1

    .line 385
    .local v1, "childCount":I
    const/4 v2, 0x0

    move v3, v2

    .line 385
    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 386
    invoke-virtual {v0, v3}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 387
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 388
    .local v5, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v5}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v6

    .line 389
    .local v6, "b":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    if-eqz v6, :cond_1

    .line 390
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    .line 391
    .local v15, "now":J
    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-wide v7, v15

    move-wide v9, v15

    invoke-static/range {v7 .. v14}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v7

    .line 393
    .local v7, "cancelEvent":Landroid/view/MotionEvent;
    if-eqz p1, :cond_0

    .line 394
    invoke-virtual {v6, v0, v4, v7}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onInterceptTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 396
    :cond_0
    invoke-virtual {v6, v0, v4, v7}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 398
    :goto_1
    invoke-virtual {v7}, Landroid/view/MotionEvent;->recycle()V

    .line 385
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .end local v6    # "b":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    .end local v7    # "cancelEvent":Landroid/view/MotionEvent;
    .end local v15    # "now":J
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 402
    .end local v3    # "i":I
    :cond_2
    move v3, v2

    .line 402
    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v1, :cond_3

    .line 403
    invoke-virtual {v0, v3}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 404
    .restart local v4    # "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 405
    .restart local v5    # "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v5}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->resetTouchBehaviorTracking()V

    .line 402
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 407
    .end local v3    # "i":I
    :cond_3
    const/4 v3, 0x0

    iput-object v3, v0, Landroid/support/design/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    .line 408
    iput-boolean v2, v0, Landroid/support/design/widget/CoordinatorLayout;->mDisallowInterceptReset:Z

    .line 409
    return-void
.end method

.method private static resolveAnchoredChildGravity(I)I
    .locals 1
    .param p0, "gravity"    # I

    .line 1225
    if-nez p0, :cond_0

    const/16 v0, 0x11

    goto :goto_0

    :cond_0
    move v0, p0

    :goto_0
    return v0
.end method

.method private static resolveGravity(I)I
    .locals 1
    .param p0, "gravity"    # I

    .line 1203
    and-int/lit8 v0, p0, 0x7

    if-nez v0, :cond_0

    .line 1204
    const v0, 0x800003

    or-int/2addr p0, v0

    .line 1206
    :cond_0
    and-int/lit8 v0, p0, 0x70

    if-nez v0, :cond_1

    .line 1207
    or-int/lit8 p0, p0, 0x30

    .line 1209
    :cond_1
    return p0
.end method

.method private static resolveKeylineGravity(I)I
    .locals 1
    .param p0, "gravity"    # I

    .line 1217
    if-nez p0, :cond_0

    const v0, 0x800035

    goto :goto_0

    :cond_0
    move v0, p0

    :goto_0
    return v0
.end method

.method private setInsetOffsetX(Landroid/view/View;I)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "offsetX"    # I

    .line 1460
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1461
    .local v0, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    iget v1, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetX:I

    if-eq v1, p2, :cond_0

    .line 1462
    iget v1, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetX:I

    sub-int v1, p2, v1

    .line 1463
    .local v1, "dx":I
    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    .line 1464
    iput p2, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetX:I

    .line 1466
    .end local v1    # "dx":I
    :cond_0
    return-void
.end method

.method private setInsetOffsetY(Landroid/view/View;I)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "offsetY"    # I

    .line 1469
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1470
    .local v0, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    iget v1, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetY:I

    if-eq v1, p2, :cond_0

    .line 1471
    iget v1, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetY:I

    sub-int v1, p2, v1

    .line 1472
    .local v1, "dy":I
    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 1473
    iput p2, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetY:I

    .line 1475
    .end local v1    # "dy":I
    :cond_0
    return-void
.end method

.method private setupForInsets()V
    .locals 2

    .line 3199
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 3200
    return-void

    .line 3203
    :cond_0
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3204
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mApplyWindowInsetsListener:Landroid/support/v4/view/OnApplyWindowInsetsListener;

    if-nez v0, :cond_1

    .line 3205
    new-instance v0, Landroid/support/design/widget/CoordinatorLayout$1;

    invoke-direct {v0, p0}, Landroid/support/design/widget/CoordinatorLayout$1;-><init>(Landroid/support/design/widget/CoordinatorLayout;)V

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mApplyWindowInsetsListener:Landroid/support/v4/view/OnApplyWindowInsetsListener;

    .line 3215
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mApplyWindowInsetsListener:Landroid/support/v4/view/OnApplyWindowInsetsListener;

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    .line 3218
    const/16 v0, 0x500

    invoke-virtual {p0, v0}, Landroid/support/design/widget/CoordinatorLayout;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 3221
    :cond_2
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    .line 3223
    :goto_0
    return-void
.end method


# virtual methods
.method addPreDrawListener()V
    .locals 2

    .line 1579
    iget-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mIsAttachedToWindow:Z

    if-eqz v0, :cond_1

    .line 1581
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mOnPreDrawListener:Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;

    if-nez v0, :cond_0

    .line 1582
    new-instance v0, Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;

    invoke-direct {v0, p0}, Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;-><init>(Landroid/support/design/widget/CoordinatorLayout;)V

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mOnPreDrawListener:Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;

    .line 1584
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1585
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mOnPreDrawListener:Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1590
    .end local v0    # "vto":Landroid/view/ViewTreeObserver;
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    .line 1591
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1723
    instance-of v0, p1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public dispatchDependentViewsChanged(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .line 1488
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mChildDag:Landroid/support/v4/widget/DirectedAcyclicGraph;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/DirectedAcyclicGraph;->getIncomingEdges(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1489
    .local v0, "dependents":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1490
    const/4 v1, 0x0

    .line 1490
    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1491
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1492
    .local v2, "child":Landroid/view/View;
    nop

    .line 1493
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1494
    .local v3, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v3}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v4

    .line 1495
    .local v4, "b":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    if-eqz v4, :cond_0

    .line 1496
    invoke-virtual {v4, p0, v2, p1}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    .line 1490
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .end local v4    # "b":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1500
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public doViewsOverlap(Landroid/view/View;Landroid/view/View;)Z
    .locals 6
    .param p1, "first"    # Landroid/view/View;
    .param p2, "second"    # Landroid/view/View;

    .line 1685
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 1686
    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 1687
    .local v0, "firstRect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const/4 v3, 0x1

    if-eq v2, p0, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {p0, p1, v2, v0}, Landroid/support/design/widget/CoordinatorLayout;->getChildRect(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 1688
    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 1689
    .local v2, "secondRect":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eq v4, p0, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    invoke-virtual {p0, p2, v4, v2}, Landroid/support/design/widget/CoordinatorLayout;->getChildRect(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 1691
    :try_start_0
    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    if-gt v4, v5, :cond_2

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    if-gt v4, v5, :cond_2

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v2, Landroid/graphics/Rect;->left:I

    if-lt v4, v5, :cond_2

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    iget v5, v2, Landroid/graphics/Rect;->top:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v4, v5, :cond_2

    .line 1694
    move v1, v3

    goto :goto_2

    .line 1691
    :cond_2
    nop

    .line 1694
    :goto_2
    invoke-static {v0}, Landroid/support/design/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1695
    invoke-static {v2}, Landroid/support/design/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    return v1

    .line 1694
    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroid/support/design/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1695
    invoke-static {v2}, Landroid/support/design/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    throw v1

    .line 1698
    .end local v0    # "firstRect":Landroid/graphics/Rect;
    .end local v2    # "secondRect":Landroid/graphics/Rect;
    :cond_3
    return v1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .line 1230
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1231
    .local v0, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    iget-object v1, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    if-eqz v1, :cond_2

    .line 1232
    iget-object v1, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    invoke-virtual {v1, p0, p2}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->getScrimOpacity(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)F

    move-result v1

    .line 1233
    .local v1, "scrimAlpha":F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_2

    .line 1234
    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->mScrimPaint:Landroid/graphics/Paint;

    if-nez v2, :cond_0

    .line 1235
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->mScrimPaint:Landroid/graphics/Paint;

    .line 1237
    :cond_0
    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->mScrimPaint:Landroid/graphics/Paint;

    iget-object v3, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    invoke-virtual {v3, p0, p2}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->getScrimColor(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1238
    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->mScrimPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0xff

    invoke-static {v3, v4, v5}, Landroid/support/v4/math/MathUtils;->clamp(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1240
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 1241
    .local v2, "saved":I
    invoke-virtual {p2}, Landroid/view/View;->isOpaque()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1244
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v5, v3

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v6, v3

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v7, v3

    .line 1245
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v3

    int-to-float v8, v3

    sget-object v9, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    .line 1244
    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 1248
    :cond_1
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v3

    int-to-float v5, v3

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v3

    int-to-float v6, v3

    .line 1249
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v7, v3

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v8, v3

    iget-object v9, p0, Landroid/support/design/widget/CoordinatorLayout;->mScrimPaint:Landroid/graphics/Paint;

    .line 1248
    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1251
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1254
    .end local v1    # "scrimAlpha":F
    .end local v2    # "saved":I
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    return v1
.end method

.method protected drawableStateChanged()V
    .locals 4

    .line 305
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 307
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getDrawableState()[I

    move-result-object v0

    .line 308
    .local v0, "state":[I
    const/4 v1, 0x0

    .line 310
    .local v1, "changed":Z
    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 311
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 312
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v3

    or-int/2addr v1, v3

    .line 315
    :cond_0
    if-eqz v1, :cond_1

    .line 316
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->invalidate()V

    .line 318
    :cond_1
    return-void
.end method

.method ensurePreDrawListener()V
    .locals 5

    .line 1548
    const/4 v0, 0x0

    .line 1549
    .local v0, "hasDependencies":Z
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v1

    .line 1550
    .local v1, "childCount":I
    const/4 v2, 0x0

    .line 1550
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1551
    invoke-virtual {p0, v2}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1552
    .local v3, "child":Landroid/view/View;
    invoke-direct {p0, v3}, Landroid/support/design/widget/CoordinatorLayout;->hasDependencies(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1553
    const/4 v0, 0x1

    .line 1554
    goto :goto_1

    .line 1550
    .end local v3    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1558
    .end local v2    # "i":I
    :cond_1
    :goto_1
    iget-boolean v2, p0, Landroid/support/design/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    if-eq v0, v2, :cond_3

    .line 1559
    if-eqz v0, :cond_2

    .line 1560
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->addPreDrawListener()V

    goto :goto_2

    .line 1562
    :cond_2
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->removePreDrawListener()V

    .line 1565
    :cond_3
    :goto_2
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .locals 2

    .line 1718
    new-instance v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 112
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->generateDefaultLayoutParams()Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 1703
    new-instance v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .locals 2
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1708
    instance-of v0, p1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 1709
    new-instance v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    invoke-direct {v0, v1}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;-><init>(Landroid/support/design/widget/CoordinatorLayout$LayoutParams;)V

    return-object v0

    .line 1710
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 1711
    new-instance v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 1713
    :cond_1
    new-instance v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 112
    invoke-virtual {p0, p1}, Landroid/support/design/widget/CoordinatorLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 112
    invoke-virtual {p0, p1}, Landroid/support/design/widget/CoordinatorLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method getChildRect(Landroid/view/View;ZLandroid/graphics/Rect;)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "transform"    # Z
    .param p3, "out"    # Landroid/graphics/Rect;

    .line 955
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 959
    :cond_0
    if-eqz p2, :cond_1

    .line 960
    invoke-virtual {p0, p1, p3}, Landroid/support/design/widget/CoordinatorLayout;->getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 962
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 964
    :goto_0
    return-void

    .line 956
    :cond_2
    :goto_1
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    .line 957
    return-void
.end method

.method public getDependencies(Landroid/view/View;)Ljava/util/List;
    .locals 2
    .param p1, "child"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1512
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mChildDag:Landroid/support/v4/widget/DirectedAcyclicGraph;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/DirectedAcyclicGraph;->getOutgoingEdges(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1513
    .local v0, "dependencies":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1514
    if-eqz v0, :cond_0

    .line 1515
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1517
    :cond_0
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    return-object v1
.end method

.method final getDependencySortedChildren()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1540
    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout;->prepareChildren()V

    .line 1541
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDependents(Landroid/view/View;)Ljava/util/List;
    .locals 2
    .param p1, "child"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1530
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mChildDag:Landroid/support/v4/widget/DirectedAcyclicGraph;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/DirectedAcyclicGraph;->getIncomingEdges(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1531
    .local v0, "edges":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1532
    if-eqz v0, :cond_0

    .line 1533
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1535
    :cond_0
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    return-object v1
.end method

.method getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "out"    # Landroid/graphics/Rect;

    .line 711
    invoke-static {p0, p1, p2}, Landroid/support/v4/widget/ViewGroupUtils;->getDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 712
    return-void
.end method

.method getDesiredAnchoredChildRect(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 11
    .param p1, "child"    # Landroid/view/View;
    .param p2, "layoutDirection"    # I
    .param p3, "anchorRect"    # Landroid/graphics/Rect;
    .param p4, "out"    # Landroid/graphics/Rect;

    .line 1066
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1067
    .local v0, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 1068
    .local v9, "childWidth":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 1069
    .local v10, "childHeight":I
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, v0

    move v7, v9

    move v8, v10

    invoke-direct/range {v1 .. v8}, Landroid/support/design/widget/CoordinatorLayout;->getDesiredAnchoredChildRectWithoutConstraints(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/support/design/widget/CoordinatorLayout$LayoutParams;II)V

    .line 1071
    invoke-direct {p0, v0, p4, v9, v10}, Landroid/support/design/widget/CoordinatorLayout;->constrainChildRect(Landroid/support/design/widget/CoordinatorLayout$LayoutParams;Landroid/graphics/Rect;II)V

    .line 1072
    return-void
.end method

.method getLastChildRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "out"    # Landroid/graphics/Rect;

    .line 941
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 942
    .local v0, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getLastChildRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 943
    return-void
.end method

.method public final getLastWindowInsets()Landroid/support/v4/view/WindowInsetsCompat;
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 374
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    return-object v0
.end method

.method public getNestedScrollAxes()I
    .locals 1

    .line 1949
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result v0

    return v0
.end method

.method getResolvedLayoutParams(Landroid/view/View;)Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .locals 8
    .param p1, "child"    # Landroid/view/View;

    .line 633
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 634
    .local v0, "result":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    iget-boolean v1, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    if-nez v1, :cond_4

    .line 635
    instance-of v1, p1, Landroid/support/design/widget/CoordinatorLayout$AttachedBehavior;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 636
    move-object v1, p1

    check-cast v1, Landroid/support/design/widget/CoordinatorLayout$AttachedBehavior;

    invoke-interface {v1}, Landroid/support/design/widget/CoordinatorLayout$AttachedBehavior;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v1

    .line 637
    .local v1, "attachedBehavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    if-nez v1, :cond_0

    .line 638
    const-string v3, "CoordinatorLayout"

    const-string v4, "Attached behavior class is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    :cond_0
    invoke-virtual {v0, v1}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroid/support/design/widget/CoordinatorLayout$Behavior;)V

    .line 641
    iput-boolean v2, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 642
    .end local v1    # "attachedBehavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    goto :goto_2

    .line 644
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 645
    .local v1, "childClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 646
    .local v3, "defaultBehavior":Landroid/support/design/widget/CoordinatorLayout$DefaultBehavior;
    :goto_0
    if-eqz v1, :cond_2

    const-class v4, Landroid/support/design/widget/CoordinatorLayout$DefaultBehavior;

    .line 647
    invoke-virtual {v1, v4}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Landroid/support/design/widget/CoordinatorLayout$DefaultBehavior;

    move-object v3, v4

    if-nez v4, :cond_2

    .line 649
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 651
    :cond_2
    if-eqz v3, :cond_3

    .line 653
    nop

    .line 654
    :try_start_0
    invoke-interface {v3}, Landroid/support/design/widget/CoordinatorLayout$DefaultBehavior;->value()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/design/widget/CoordinatorLayout$Behavior;

    .line 653
    invoke-virtual {v0, v4}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroid/support/design/widget/CoordinatorLayout$Behavior;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 659
    goto :goto_1

    .line 655
    :catch_0
    move-exception v4

    .line 656
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "CoordinatorLayout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Default behavior class "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Landroid/support/design/widget/CoordinatorLayout$DefaultBehavior;->value()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " could not be instantiated. Did you forget"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " a default constructor?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 661
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_1
    iput-boolean v2, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 664
    .end local v1    # "childClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "defaultBehavior":Landroid/support/design/widget/CoordinatorLayout$DefaultBehavior;
    :cond_4
    :goto_2
    return-object v0
.end method

.method public getStatusBarBackground()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 300
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 3

    .line 721
    invoke-super {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 3

    .line 716
    invoke-super {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public isPointInChildBounds(Landroid/view/View;II)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 1667
    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 1668
    .local v0, "r":Landroid/graphics/Rect;
    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/CoordinatorLayout;->getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1670
    :try_start_0
    invoke-virtual {v0, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1672
    invoke-static {v0}, Landroid/support/design/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    return v1

    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroid/support/design/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    throw v1
.end method

.method offsetChildToAnchor(Landroid/view/View;I)V
    .locals 17
    .param p1, "child"    # Landroid/view/View;
    .param p2, "layoutDirection"    # I

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    .line 1616
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1617
    .local v10, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    iget-object v0, v10, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 1618
    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v11

    .line 1619
    .local v11, "anchorRect":Landroid/graphics/Rect;
    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v12

    .line 1620
    .local v12, "childRect":Landroid/graphics/Rect;
    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v13

    .line 1622
    .local v13, "desiredChildRect":Landroid/graphics/Rect;
    iget-object v0, v10, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    invoke-virtual {v8, v0, v11}, Landroid/support/design/widget/CoordinatorLayout;->getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1623
    const/4 v14, 0x0

    invoke-virtual {v8, v9, v14, v12}, Landroid/support/design/widget/CoordinatorLayout;->getChildRect(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 1625
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    .line 1626
    .local v15, "childWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1627
    .local v7, "childHeight":I
    move-object v0, v8

    move-object v1, v9

    move/from16 v2, p2

    move-object v3, v11

    move-object v4, v13

    move-object v5, v10

    move v6, v15

    move/from16 v16, v7

    .line 1627
    .end local v7    # "childHeight":I
    .local v16, "childHeight":I
    invoke-direct/range {v0 .. v7}, Landroid/support/design/widget/CoordinatorLayout;->getDesiredAnchoredChildRectWithoutConstraints(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/support/design/widget/CoordinatorLayout$LayoutParams;II)V

    .line 1629
    iget v0, v13, Landroid/graphics/Rect;->left:I

    iget v1, v12, Landroid/graphics/Rect;->left:I

    if-ne v0, v1, :cond_1

    iget v0, v13, Landroid/graphics/Rect;->top:I

    iget v1, v12, Landroid/graphics/Rect;->top:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    const/4 v14, 0x1

    :goto_1
    move v0, v14

    .line 1631
    .local v0, "changed":Z
    move/from16 v1, v16

    invoke-direct {v8, v10, v13, v15, v1}, Landroid/support/design/widget/CoordinatorLayout;->constrainChildRect(Landroid/support/design/widget/CoordinatorLayout$LayoutParams;Landroid/graphics/Rect;II)V

    .line 1633
    .end local v16    # "childHeight":I
    .local v1, "childHeight":I
    iget v2, v13, Landroid/graphics/Rect;->left:I

    iget v3, v12, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    .line 1634
    .local v2, "dx":I
    iget v3, v13, Landroid/graphics/Rect;->top:I

    iget v4, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    .line 1636
    .local v3, "dy":I
    if-eqz v2, :cond_2

    .line 1637
    invoke-static {v9, v2}, Landroid/support/v4/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    .line 1639
    :cond_2
    if-eqz v3, :cond_3

    .line 1640
    invoke-static {v9, v3}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 1643
    :cond_3
    if-eqz v0, :cond_4

    .line 1645
    invoke-virtual {v10}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v4

    .line 1646
    .local v4, "b":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    if-eqz v4, :cond_4

    .line 1647
    iget-object v5, v10, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    invoke-virtual {v4, v8, v9, v5}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    .line 1651
    .end local v4    # "b":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    :cond_4
    invoke-static {v11}, Landroid/support/design/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1652
    invoke-static {v12}, Landroid/support/design/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1653
    invoke-static {v13}, Landroid/support/design/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1655
    .end local v0    # "changed":Z
    .end local v1    # "childHeight":I
    .end local v2    # "dx":I
    .end local v3    # "dy":I
    .end local v11    # "anchorRect":Landroid/graphics/Rect;
    .end local v12    # "childRect":Landroid/graphics/Rect;
    .end local v13    # "desiredChildRect":Landroid/graphics/Rect;
    .end local v15    # "childWidth":I
    :cond_5
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 237
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 238
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/design/widget/CoordinatorLayout;->resetTouchBehaviors(Z)V

    .line 239
    iget-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    if-eqz v0, :cond_1

    .line 240
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mOnPreDrawListener:Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;

    if-nez v0, :cond_0

    .line 241
    new-instance v0, Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;

    invoke-direct {v0, p0}, Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;-><init>(Landroid/support/design/widget/CoordinatorLayout;)V

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mOnPreDrawListener:Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;

    .line 243
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 244
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mOnPreDrawListener:Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 246
    .end local v0    # "vto":Landroid/view/ViewTreeObserver;
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    if-nez v0, :cond_2

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 249
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 251
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mIsAttachedToWindow:Z

    .line 252
    return-void
.end method

.method final onChildViewsChanged(I)V
    .locals 19
    .param p1, "type"    # I

    move-object/from16 v0, p0

    .line 1274
    move/from16 v1, p1

    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    .line 1275
    .local v2, "layoutDirection":I
    iget-object v3, v0, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 1276
    .local v3, "childCount":I
    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v4

    .line 1277
    .local v4, "inset":Landroid/graphics/Rect;
    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v5

    .line 1278
    .local v5, "drawRect":Landroid/graphics/Rect;
    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v6

    .line 1280
    .local v6, "lastDrawRect":Landroid/graphics/Rect;
    const/4 v8, 0x0

    .line 1280
    .local v8, "i":I
    :goto_0
    if-ge v8, v3, :cond_f

    .line 1281
    iget-object v9, v0, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 1282
    .local v9, "child":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1283
    .local v10, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    if-nez v1, :cond_0

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-ne v11, v12, :cond_0

    .line 1285
    goto/16 :goto_7

    .line 1289
    :cond_0
    const/4 v11, 0x0

    .line 1289
    .local v11, "j":I
    :goto_1
    if-ge v11, v8, :cond_2

    .line 1290
    iget-object v12, v0, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    .line 1292
    .local v12, "checkChild":Landroid/view/View;
    iget-object v13, v10, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    if-ne v13, v12, :cond_1

    .line 1293
    invoke-virtual {v0, v9, v2}, Landroid/support/design/widget/CoordinatorLayout;->offsetChildToAnchor(Landroid/view/View;I)V

    .line 1289
    .end local v12    # "checkChild":Landroid/view/View;
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1298
    .end local v11    # "j":I
    :cond_2
    const/4 v11, 0x1

    invoke-virtual {v0, v9, v11, v5}, Landroid/support/design/widget/CoordinatorLayout;->getChildRect(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 1301
    iget v12, v10, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    if-eqz v12, :cond_7

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_7

    .line 1302
    iget v12, v10, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    invoke-static {v12, v2}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v12

    .line 1304
    .local v12, "absInsetEdge":I
    and-int/lit8 v13, v12, 0x70

    const/16 v14, 0x30

    if-eq v13, v14, :cond_4

    const/16 v14, 0x50

    if-eq v13, v14, :cond_3

    goto :goto_2

    .line 1309
    :cond_3
    iget v13, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v14

    iget v15, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v14, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    iput v13, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    .line 1306
    :cond_4
    iget v13, v4, Landroid/graphics/Rect;->top:I

    iget v14, v5, Landroid/graphics/Rect;->bottom:I

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    iput v13, v4, Landroid/graphics/Rect;->top:I

    .line 1307
    nop

    .line 1312
    :goto_2
    and-int/lit8 v13, v12, 0x7

    const/4 v14, 0x3

    if-eq v13, v14, :cond_6

    const/4 v14, 0x5

    if-eq v13, v14, :cond_5

    .line 1312
    .end local v12    # "absInsetEdge":I
    goto :goto_3

    .line 1317
    .restart local v12    # "absInsetEdge":I
    :cond_5
    iget v13, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v14

    iget v15, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v14, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    iput v13, v4, Landroid/graphics/Rect;->right:I

    .line 1317
    .end local v12    # "absInsetEdge":I
    goto :goto_3

    .line 1314
    .restart local v12    # "absInsetEdge":I
    :cond_6
    iget v13, v4, Landroid/graphics/Rect;->left:I

    iget v14, v5, Landroid/graphics/Rect;->right:I

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    iput v13, v4, Landroid/graphics/Rect;->left:I

    .line 1315
    nop

    .line 1323
    .end local v12    # "absInsetEdge":I
    :cond_7
    :goto_3
    iget v12, v10, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    if-eqz v12, :cond_8

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-nez v12, :cond_8

    .line 1324
    invoke-direct {v0, v9, v4, v2}, Landroid/support/design/widget/CoordinatorLayout;->offsetChildByInset(Landroid/view/View;Landroid/graphics/Rect;I)V

    .line 1327
    :cond_8
    const/4 v12, 0x2

    if-eq v1, v12, :cond_a

    .line 1329
    invoke-virtual {v0, v9, v6}, Landroid/support/design/widget/CoordinatorLayout;->getLastChildRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1330
    invoke-virtual {v6, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 1331
    goto :goto_7

    .line 1333
    :cond_9
    invoke-virtual {v0, v9, v5}, Landroid/support/design/widget/CoordinatorLayout;->recordLastChildRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1337
    :cond_a
    add-int/lit8 v13, v8, 0x1

    .line 1337
    .local v13, "j":I
    :goto_4
    if-ge v13, v3, :cond_e

    .line 1338
    iget-object v14, v0, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    .line 1339
    .local v14, "checkChild":Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1340
    .local v15, "checkLp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v15}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v7

    .line 1342
    .local v7, "b":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    if-eqz v7, :cond_d

    invoke-virtual {v7, v0, v14, v9}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->layoutDependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v16

    if-eqz v16, :cond_d

    .line 1343
    if-nez v1, :cond_b

    invoke-virtual {v15}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getChangedAfterNestedScroll()Z

    move-result v16

    if-eqz v16, :cond_b

    .line 1346
    invoke-virtual {v15}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->resetChangedAfterNestedScroll()V

    .line 1347
    goto :goto_6

    .line 1351
    :cond_b
    if-eq v1, v12, :cond_c

    .line 1360
    invoke-virtual {v7, v0, v14, v9}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v16

    goto :goto_5

    .line 1355
    :cond_c
    invoke-virtual {v7, v0, v14, v9}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onDependentViewRemoved(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V

    .line 1356
    const/16 v16, 0x1

    .line 1357
    .local v16, "handled":Z
    nop

    .line 1360
    :goto_5
    move/from16 v17, v16

    .line 1364
    .end local v16    # "handled":Z
    .local v17, "handled":Z
    if-ne v1, v11, :cond_d

    .line 1367
    move/from16 v11, v17

    invoke-virtual {v15, v11}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->setChangedAfterNestedScroll(Z)V

    .line 1337
    .end local v7    # "b":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    .end local v14    # "checkChild":Landroid/view/View;
    .end local v15    # "checkLp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .end local v17    # "handled":Z
    :cond_d
    :goto_6
    add-int/lit8 v13, v13, 0x1

    const/4 v11, 0x1

    goto :goto_4

    .line 1280
    .end local v9    # "child":Landroid/view/View;
    .end local v10    # "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .end local v13    # "j":I
    :cond_e
    :goto_7
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 1373
    .end local v8    # "i":I
    :cond_f
    invoke-static {v4}, Landroid/support/design/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1374
    invoke-static {v5}, Landroid/support/design/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1375
    invoke-static {v6}, Landroid/support/design/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1376
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 3

    .line 256
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 257
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/design/widget/CoordinatorLayout;->resetTouchBehaviors(Z)V

    .line 258
    iget-boolean v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mOnPreDrawListener:Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;

    if-eqz v1, :cond_0

    .line 259
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 260
    .local v1, "vto":Landroid/view/ViewTreeObserver;
    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->mOnPreDrawListener:Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 262
    .end local v1    # "vto":Landroid/view/ViewTreeObserver;
    :cond_0
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mNestedScrollingTarget:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 263
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mNestedScrollingTarget:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/support/design/widget/CoordinatorLayout;->onStopNestedScroll(Landroid/view/View;)V

    .line 265
    :cond_1
    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mIsAttachedToWindow:Z

    .line 266
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "c"    # Landroid/graphics/Canvas;

    .line 902
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 903
    iget-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mDrawStatusBarBackground:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 904
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v0}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 905
    .local v0, "inset":I
    :goto_0
    if-lez v0, :cond_1

    .line 906
    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v3

    invoke-virtual {v2, v1, v1, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 907
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 910
    .end local v0    # "inset":I
    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 503
    const/4 v0, 0x0

    .line 505
    .local v0, "cancelEvent":Landroid/view/MotionEvent;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 508
    .local v1, "action":I
    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 509
    invoke-direct {p0, v2}, Landroid/support/design/widget/CoordinatorLayout;->resetTouchBehaviors(Z)V

    .line 512
    :cond_0
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Landroid/support/design/widget/CoordinatorLayout;->performIntercept(Landroid/view/MotionEvent;I)Z

    move-result v3

    .line 514
    .local v3, "intercepted":Z
    if-eqz v0, :cond_1

    .line 515
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 518
    :cond_1
    if-eq v1, v2, :cond_2

    const/4 v4, 0x3

    if-ne v1, v4, :cond_3

    .line 519
    :cond_2
    invoke-direct {p0, v2}, Landroid/support/design/widget/CoordinatorLayout;->resetTouchBehaviors(Z)V

    .line 522
    :cond_3
    return v3
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 882
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 883
    .local v0, "layoutDirection":I
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 884
    .local v1, "childCount":I
    const/4 v2, 0x0

    .line 884
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 885
    iget-object v3, p0, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 886
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    .line 888
    goto :goto_1

    .line 891
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 892
    .local v4, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v4}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v5

    .line 894
    .local v5, "behavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    if-eqz v5, :cond_1

    invoke-virtual {v5, p0, v3, v0}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 895
    :cond_1
    invoke-virtual {p0, v3, v0}, Landroid/support/design/widget/CoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    .line 884
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .end local v5    # "behavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 898
    .end local v2    # "i":I
    :cond_3
    return-void
.end method

.method public onLayoutChild(Landroid/view/View;I)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "layoutDirection"    # I

    .line 866
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 867
    .local v0, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->checkAnchorChanged()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 868
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 871
    :cond_0
    iget-object v1, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 872
    iget-object v1, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    invoke-direct {p0, p1, v1, p2}, Landroid/support/design/widget/CoordinatorLayout;->layoutChildWithAnchor(Landroid/view/View;Landroid/view/View;I)V

    goto :goto_0

    .line 873
    :cond_1
    iget v1, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    if-ltz v1, :cond_2

    .line 874
    iget v1, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    invoke-direct {p0, p1, v1, p2}, Landroid/support/design/widget/CoordinatorLayout;->layoutChildWithKeyline(Landroid/view/View;II)V

    goto :goto_0

    .line 876
    :cond_2
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/CoordinatorLayout;->layoutChild(Landroid/view/View;I)V

    .line 878
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 36
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    move-object/from16 v7, p0

    .line 745
    invoke-direct/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->prepareChildren()V

    .line 746
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->ensurePreDrawListener()V

    .line 748
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v8

    .line 749
    .local v8, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v9

    .line 750
    .local v9, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v10

    .line 751
    .local v10, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v11

    .line 752
    .local v11, "paddingBottom":I
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v12

    .line 753
    .local v12, "layoutDirection":I
    const/4 v0, 0x1

    if-ne v12, v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v14, v1

    .line 754
    .local v14, "isRtl":Z
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v15

    .line 755
    .local v15, "widthMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    .line 756
    .local v16, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 757
    .local v6, "heightMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v17

    .line 759
    .local v17, "heightSize":I
    add-int v18, v8, v10

    .line 760
    .local v18, "widthPadding":I
    add-int v19, v9, v11

    .line 761
    .local v19, "heightPadding":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getSuggestedMinimumWidth()I

    move-result v1

    .line 762
    .local v1, "widthUsed":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getSuggestedMinimumHeight()I

    move-result v2

    .line 763
    .local v2, "heightUsed":I
    const/4 v3, 0x0

    .line 765
    .local v3, "childState":I
    iget-object v4, v7, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    if-eqz v4, :cond_1

    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    move/from16 v20, v0

    .line 767
    .local v20, "applyInsets":Z
    iget-object v0, v7, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .line 768
    .local v5, "childCount":I
    move v4, v1

    const/4 v0, 0x0

    .line 768
    .end local v1    # "widthUsed":I
    .local v0, "i":I
    .local v4, "widthUsed":I
    :goto_2
    move v1, v0

    .line 768
    .end local v0    # "i":I
    .local v1, "i":I
    if-ge v1, v5, :cond_d

    .line 769
    iget-object v0, v7, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 770
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v13

    move/from16 v22, v1

    const/16 v1, 0x8

    .line 770
    .end local v1    # "i":I
    .local v22, "i":I
    if-ne v13, v1, :cond_2

    .line 772
    nop

    .line 768
    move/from16 v25, v5

    move/from16 v27, v6

    const/16 v24, 0x0

    goto/16 :goto_6

    .line 775
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 777
    .local v13, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    const/4 v1, 0x0

    .line 778
    .local v1, "keylineWidthUsed":I
    move/from16 v23, v1

    iget v1, v13, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    .line 778
    .end local v1    # "keylineWidthUsed":I
    .local v23, "keylineWidthUsed":I
    if-ltz v1, :cond_9

    if-eqz v15, :cond_9

    .line 779
    iget v1, v13, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    invoke-direct {v7, v1}, Landroid/support/design/widget/CoordinatorLayout;->getKeyline(I)I

    move-result v1

    .line 780
    .local v1, "keylinePos":I
    move/from16 v24, v2

    iget v2, v13, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 781
    .end local v2    # "heightUsed":I
    .local v24, "heightUsed":I
    invoke-static {v2}, Landroid/support/design/widget/CoordinatorLayout;->resolveKeylineGravity(I)I

    move-result v2

    .line 780
    invoke-static {v2, v12}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v2

    and-int/lit8 v2, v2, 0x7

    .line 783
    .local v2, "keylineGravity":I
    move/from16 v25, v3

    const/4 v3, 0x3

    .line 783
    .end local v3    # "childState":I
    .local v25, "childState":I
    if-ne v2, v3, :cond_3

    if-eqz v14, :cond_4

    :cond_3
    const/4 v3, 0x5

    if-ne v2, v3, :cond_5

    if-eqz v14, :cond_5

    .line 785
    :cond_4
    sub-int v3, v16, v10

    sub-int/2addr v3, v1

    move/from16 v27, v4

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 792
    .end local v4    # "widthUsed":I
    .end local v23    # "keylineWidthUsed":I
    .local v3, "keylineWidthUsed":I
    .local v27, "widthUsed":I
    move/from16 v23, v3

    goto :goto_3

    .line 786
    .end local v3    # "keylineWidthUsed":I
    .end local v27    # "widthUsed":I
    .restart local v4    # "widthUsed":I
    .restart local v23    # "keylineWidthUsed":I
    :cond_5
    move/from16 v27, v4

    .line 786
    .end local v4    # "widthUsed":I
    .restart local v27    # "widthUsed":I
    if-ne v2, v3, :cond_6

    if-eqz v14, :cond_7

    :cond_6
    const/4 v3, 0x3

    if-ne v2, v3, :cond_8

    if-eqz v14, :cond_8

    .line 788
    :cond_7
    sub-int v3, v1, v8

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 792
    .end local v2    # "keylineGravity":I
    .end local v23    # "keylineWidthUsed":I
    .local v1, "keylineWidthUsed":I
    move/from16 v23, v1

    goto :goto_3

    .line 792
    .end local v1    # "keylineWidthUsed":I
    .restart local v23    # "keylineWidthUsed":I
    :cond_8
    const/4 v4, 0x0

    goto :goto_3

    .line 792
    .end local v24    # "heightUsed":I
    .end local v25    # "childState":I
    .end local v27    # "widthUsed":I
    .local v2, "heightUsed":I
    .local v3, "childState":I
    .restart local v4    # "widthUsed":I
    :cond_9
    move/from16 v24, v2

    move/from16 v25, v3

    move/from16 v27, v4

    const/4 v4, 0x0

    .line 792
    .end local v2    # "heightUsed":I
    .end local v3    # "childState":I
    .end local v4    # "widthUsed":I
    .restart local v24    # "heightUsed":I
    .restart local v25    # "childState":I
    .restart local v27    # "widthUsed":I
    :goto_3
    move/from16 v1, p1

    .line 793
    .local v1, "childWidthMeasureSpec":I
    move/from16 v2, p2

    .line 794
    .local v2, "childHeightMeasureSpec":I
    if-eqz v20, :cond_a

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 797
    iget-object v3, v7, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v3}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v3

    iget-object v4, v7, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    .line 798
    invoke-virtual {v4}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v4

    add-int/2addr v3, v4

    .line 799
    .local v3, "horizInsets":I
    iget-object v4, v7, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v4}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v4

    move-object/from16 v28, v0

    iget-object v0, v7, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    .line 800
    .end local v0    # "child":Landroid/view/View;
    .local v28, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v0

    add-int/2addr v4, v0

    .line 802
    .local v4, "vertInsets":I
    sub-int v0, v16, v3

    invoke-static {v0, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 804
    .end local v1    # "childWidthMeasureSpec":I
    .local v0, "childWidthMeasureSpec":I
    sub-int v1, v17, v4

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 808
    .end local v2    # "childHeightMeasureSpec":I
    .end local v3    # "horizInsets":I
    .end local v4    # "vertInsets":I
    .local v1, "childHeightMeasureSpec":I
    move/from16 v21, v0

    move/from16 v26, v1

    goto :goto_4

    .line 808
    .end local v28    # "child":Landroid/view/View;
    .local v0, "child":Landroid/view/View;
    .local v1, "childWidthMeasureSpec":I
    .restart local v2    # "childHeightMeasureSpec":I
    :cond_a
    move-object/from16 v28, v0

    .line 808
    .end local v0    # "child":Landroid/view/View;
    .restart local v28    # "child":Landroid/view/View;
    move/from16 v21, v1

    move/from16 v26, v2

    .line 808
    .end local v1    # "childWidthMeasureSpec":I
    .end local v2    # "childHeightMeasureSpec":I
    .local v21, "childWidthMeasureSpec":I
    .local v26, "childHeightMeasureSpec":I
    :goto_4
    invoke-virtual {v13}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v29

    .line 809
    .local v29, "b":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    if-eqz v29, :cond_b

    const/16 v30, 0x0

    move-object/from16 v4, v28

    move-object/from16 v0, v29

    .line 809
    .end local v28    # "child":Landroid/view/View;
    .local v4, "child":Landroid/view/View;
    move-object v1, v7

    move/from16 v3, v24

    move-object v2, v4

    .line 809
    .end local v24    # "heightUsed":I
    .local v3, "heightUsed":I
    move/from16 v32, v3

    move/from16 v31, v25

    move/from16 v3, v21

    .line 809
    .end local v3    # "heightUsed":I
    .end local v25    # "childState":I
    .local v31, "childState":I
    .local v32, "heightUsed":I
    move-object/from16 v33, v4

    move/from16 v34, v27

    const/16 v24, 0x0

    move/from16 v4, v23

    .line 809
    .end local v4    # "child":Landroid/view/View;
    .end local v27    # "widthUsed":I
    .local v33, "child":Landroid/view/View;
    .local v34, "widthUsed":I
    move/from16 v25, v5

    move/from16 v5, v26

    .line 809
    .end local v5    # "childCount":I
    .local v25, "childCount":I
    move/from16 v27, v6

    move/from16 v6, v30

    .line 809
    .end local v6    # "heightMode":I
    .local v27, "heightMode":I
    invoke-virtual/range {v0 .. v6}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onMeasureChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_5

    .line 811
    .end local v31    # "childState":I
    .end local v32    # "heightUsed":I
    .end local v33    # "child":Landroid/view/View;
    .end local v34    # "widthUsed":I
    .restart local v5    # "childCount":I
    .restart local v6    # "heightMode":I
    .restart local v24    # "heightUsed":I
    .local v25, "childState":I
    .local v27, "widthUsed":I
    .restart local v28    # "child":Landroid/view/View;
    :cond_b
    move/from16 v32, v24

    move/from16 v31, v25

    move/from16 v34, v27

    move-object/from16 v33, v28

    const/16 v24, 0x0

    move/from16 v25, v5

    move/from16 v27, v6

    .line 811
    .end local v5    # "childCount":I
    .end local v6    # "heightMode":I
    .end local v24    # "heightUsed":I
    .end local v28    # "child":Landroid/view/View;
    .local v25, "childCount":I
    .local v27, "heightMode":I
    .restart local v31    # "childState":I
    .restart local v32    # "heightUsed":I
    .restart local v33    # "child":Landroid/view/View;
    .restart local v34    # "widthUsed":I
    :goto_5
    const/4 v5, 0x0

    move-object v0, v7

    move-object/from16 v1, v33

    move/from16 v2, v21

    move/from16 v3, v23

    move/from16 v4, v26

    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/CoordinatorLayout;->onMeasureChild(Landroid/view/View;IIII)V

    .line 815
    :cond_c
    move-object/from16 v0, v33

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 815
    .end local v33    # "child":Landroid/view/View;
    .restart local v0    # "child":Landroid/view/View;
    add-int v1, v18, v1

    iget v2, v13, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v13, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    move/from16 v2, v34

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 818
    .end local v34    # "widthUsed":I
    .local v1, "widthUsed":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int v2, v19, v2

    iget v3, v13, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v13, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    move/from16 v3, v32

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 820
    .end local v32    # "heightUsed":I
    .local v2, "heightUsed":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    move/from16 v4, v31

    invoke-static {v4, v3}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v0

    .line 768
    .end local v13    # "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .end local v21    # "childWidthMeasureSpec":I
    .end local v23    # "keylineWidthUsed":I
    .end local v26    # "childHeightMeasureSpec":I
    .end local v29    # "b":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    .end local v31    # "childState":I
    .local v0, "childState":I
    move v3, v0

    move v4, v1

    .line 768
    .end local v0    # "childState":I
    .end local v1    # "widthUsed":I
    .local v3, "childState":I
    .local v4, "widthUsed":I
    :goto_6
    add-int/lit8 v0, v22, 0x1

    .line 768
    .end local v22    # "i":I
    .local v0, "i":I
    move/from16 v5, v25

    move/from16 v6, v27

    goto/16 :goto_2

    .line 823
    .end local v0    # "i":I
    .end local v25    # "childCount":I
    .end local v27    # "heightMode":I
    .restart local v5    # "childCount":I
    .restart local v6    # "heightMode":I
    :cond_d
    move/from16 v25, v5

    move/from16 v27, v6

    move/from16 v35, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v35

    .line 823
    .end local v5    # "childCount":I
    .end local v6    # "heightMode":I
    .local v2, "widthUsed":I
    .local v3, "heightUsed":I
    .local v4, "childState":I
    .restart local v25    # "childCount":I
    .restart local v27    # "heightMode":I
    const/high16 v0, -0x1000000

    and-int/2addr v0, v4

    move/from16 v1, p1

    invoke-static {v2, v1, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    .line 825
    .local v0, "width":I
    shl-int/lit8 v5, v4, 0x10

    move/from16 v6, p2

    invoke-static {v3, v6, v5}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v5

    .line 827
    .local v5, "height":I
    invoke-virtual {v7, v0, v5}, Landroid/support/design/widget/CoordinatorLayout;->setMeasuredDimension(II)V

    .line 828
    return-void
.end method

.method public onMeasureChild(Landroid/view/View;IIII)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightMeasureSpec"    # I
    .param p5, "heightUsed"    # I

    .line 739
    invoke-virtual/range {p0 .. p5}, Landroid/support/design/widget/CoordinatorLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 741
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 15
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    move-object v7, p0

    .line 1895
    const/4 v0, 0x0

    .line 1897
    .local v0, "handled":Z
    invoke-virtual {v7}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v8

    .line 1898
    .local v8, "childCount":I
    const/4 v9, 0x0

    move v10, v0

    move v0, v9

    .line 1898
    .local v0, "i":I
    .local v10, "handled":Z
    :goto_0
    move v11, v0

    .line 1898
    .end local v0    # "i":I
    .local v11, "i":I
    if-ge v11, v8, :cond_3

    .line 1899
    invoke-virtual {v7, v11}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 1900
    .local v12, "view":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 1902
    goto :goto_1

    .line 1905
    :cond_0
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1906
    .local v13, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v13, v9}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1907
    goto :goto_1

    .line 1910
    :cond_1
    invoke-virtual {v13}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v14

    .line 1911
    .local v14, "viewBehavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    if-eqz v14, :cond_2

    .line 1912
    move-object v0, v14

    move-object v1, v7

    move-object v2, v12

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onNestedFling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FFZ)Z

    move-result v0

    or-int/2addr v0, v10

    .line 1898
    .end local v10    # "handled":Z
    .end local v12    # "view":Landroid/view/View;
    .end local v13    # "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .end local v14    # "viewBehavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    .local v0, "handled":Z
    move v10, v0

    .line 1898
    .end local v0    # "handled":Z
    .restart local v10    # "handled":Z
    :cond_2
    :goto_1
    add-int/lit8 v0, v11, 0x1

    .line 1898
    .end local v11    # "i":I
    .local v0, "i":I
    goto :goto_0

    .line 1916
    .end local v0    # "i":I
    :cond_3
    if-eqz v10, :cond_4

    .line 1917
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/support/design/widget/CoordinatorLayout;->onChildViewsChanged(I)V

    .line 1919
    :cond_4
    return v10
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 14
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F

    .line 1924
    const/4 v0, 0x0

    .line 1926
    .local v0, "handled":Z
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v1

    .line 1927
    .local v1, "childCount":I
    const/4 v2, 0x0

    move v3, v0

    move v0, v2

    .line 1927
    .local v0, "i":I
    .local v3, "handled":Z
    :goto_0
    if-ge v0, v1, :cond_3

    .line 1928
    move-object v10, p0

    invoke-virtual {v10, v0}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 1929
    .local v11, "view":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    .line 1931
    goto :goto_1

    .line 1934
    :cond_0
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1935
    .local v12, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v12, v2}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1936
    goto :goto_1

    .line 1939
    :cond_1
    invoke-virtual {v12}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v13

    .line 1940
    .local v13, "viewBehavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    if-eqz v13, :cond_2

    .line 1941
    move-object v4, v13

    move-object v5, v10

    move-object v6, v11

    move-object v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    invoke-virtual/range {v4 .. v9}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onNestedPreFling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z

    move-result v4

    or-int/2addr v3, v4

    .line 1927
    .end local v11    # "view":Landroid/view/View;
    .end local v12    # "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .end local v13    # "viewBehavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1944
    .end local v0    # "i":I
    :cond_3
    move-object v10, p0

    return v3
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 6
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "consumed"    # [I

    .line 1849
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/CoordinatorLayout;->onNestedPreScroll(Landroid/view/View;II[II)V

    .line 1850
    return-void
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II)V
    .locals 20
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "consumed"    # [I
    .param p5, "type"    # I

    move-object/from16 v8, p0

    .line 1854
    const/4 v0, 0x0

    .line 1855
    .local v0, "xConsumed":I
    const/4 v1, 0x0

    .line 1856
    .local v1, "yConsumed":I
    const/4 v2, 0x0

    .line 1858
    .local v2, "accepted":Z
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v9

    .line 1859
    .local v9, "childCount":I
    const/4 v10, 0x0

    move v11, v0

    move v12, v1

    move v13, v2

    move v0, v10

    .line 1859
    .end local v1    # "yConsumed":I
    .end local v2    # "accepted":Z
    .local v0, "i":I
    .local v11, "xConsumed":I
    .local v12, "yConsumed":I
    .local v13, "accepted":Z
    :goto_0
    move v14, v0

    .line 1859
    .end local v0    # "i":I
    .local v14, "i":I
    const/4 v7, 0x1

    if-ge v14, v9, :cond_5

    .line 1860
    invoke-virtual {v8, v14}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1861
    .local v6, "view":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 1863
    goto/16 :goto_3

    .line 1866
    :cond_0
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1867
    .local v5, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    move/from16 v4, p5

    invoke-virtual {v5, v4}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1868
    goto :goto_3

    .line 1871
    :cond_1
    invoke-virtual {v5}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v15

    .line 1872
    .local v15, "viewBehavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    if-eqz v15, :cond_4

    .line 1873
    iget-object v0, v8, Landroid/support/design/widget/CoordinatorLayout;->mTempIntPair:[I

    iget-object v1, v8, Landroid/support/design/widget/CoordinatorLayout;->mTempIntPair:[I

    aput v10, v1, v7

    aput v10, v0, v10

    .line 1874
    iget-object v3, v8, Landroid/support/design/widget/CoordinatorLayout;->mTempIntPair:[I

    move-object v0, v15

    move-object v1, v8

    move-object v2, v6

    move-object/from16 v16, v3

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v17, v5

    move/from16 v5, p3

    .line 1874
    .end local v5    # "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .local v17, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    move-object/from16 v18, v6

    move-object/from16 v6, v16

    .line 1874
    .end local v6    # "view":Landroid/view/View;
    .local v18, "view":Landroid/view/View;
    move/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onNestedPreScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V

    .line 1876
    if-lez p2, :cond_2

    iget-object v1, v8, Landroid/support/design/widget/CoordinatorLayout;->mTempIntPair:[I

    aget v1, v1, v10

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_1

    :cond_2
    iget-object v1, v8, Landroid/support/design/widget/CoordinatorLayout;->mTempIntPair:[I

    aget v1, v1, v10

    .line 1877
    invoke-static {v11, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1878
    .end local v11    # "xConsumed":I
    .local v1, "xConsumed":I
    :goto_1
    if-lez p3, :cond_3

    iget-object v3, v8, Landroid/support/design/widget/CoordinatorLayout;->mTempIntPair:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_2

    :cond_3
    const/4 v4, 0x1

    iget-object v3, v8, Landroid/support/design/widget/CoordinatorLayout;->mTempIntPair:[I

    aget v3, v3, v4

    .line 1879
    invoke-static {v12, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1881
    .end local v12    # "yConsumed":I
    .local v3, "yConsumed":I
    :goto_2
    const/4 v4, 0x1

    .line 1859
    .end local v13    # "accepted":Z
    .end local v15    # "viewBehavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    .end local v17    # "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .end local v18    # "view":Landroid/view/View;
    .local v4, "accepted":Z
    move v11, v1

    move v12, v3

    move v13, v4

    .line 1859
    .end local v1    # "xConsumed":I
    .end local v3    # "yConsumed":I
    .end local v4    # "accepted":Z
    .restart local v11    # "xConsumed":I
    .restart local v12    # "yConsumed":I
    .restart local v13    # "accepted":Z
    :cond_4
    :goto_3
    add-int/lit8 v1, v14, 0x1

    .line 1859
    .end local v14    # "i":I
    .local v1, "i":I
    move v0, v1

    goto :goto_0

    .line 1885
    .end local v1    # "i":I
    :cond_5
    move v4, v7

    aput v11, p4, v10

    .line 1886
    aput v12, p4, v4

    .line 1888
    if-eqz v13, :cond_6

    .line 1889
    invoke-virtual {v8, v4}, Landroid/support/design/widget/CoordinatorLayout;->onChildViewsChanged(I)V

    .line 1891
    :cond_6
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 7
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .line 1812
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/support/design/widget/CoordinatorLayout;->onNestedScroll(Landroid/view/View;IIIII)V

    .line 1814
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII)V
    .locals 17
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I
    .param p6, "type"    # I

    move-object/from16 v9, p0

    .line 1819
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v10

    .line 1820
    .local v10, "childCount":I
    const/4 v0, 0x0

    .line 1822
    .local v0, "accepted":Z
    const/4 v1, 0x0

    move v11, v0

    .line 1822
    .end local v0    # "accepted":Z
    .local v1, "i":I
    .local v11, "accepted":Z
    :goto_0
    move v12, v1

    .line 1822
    .end local v1    # "i":I
    .local v12, "i":I
    if-ge v12, v10, :cond_3

    .line 1823
    invoke-virtual {v9, v12}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 1824
    .local v13, "view":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 1826
    nop

    .line 1822
    move/from16 v15, p6

    goto :goto_1

    .line 1829
    :cond_0
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1830
    .local v14, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    move/from16 v15, p6

    invoke-virtual {v14, v15}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1831
    goto :goto_1

    .line 1834
    :cond_1
    invoke-virtual {v14}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v16

    .line 1835
    .local v16, "viewBehavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    if-eqz v16, :cond_2

    .line 1836
    move-object/from16 v0, v16

    move-object v1, v9

    move-object v2, v13

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move v8, v15

    invoke-virtual/range {v0 .. v8}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII)V

    .line 1838
    const/4 v0, 0x1

    .line 1822
    .end local v11    # "accepted":Z
    .end local v13    # "view":Landroid/view/View;
    .end local v14    # "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .end local v16    # "viewBehavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    .restart local v0    # "accepted":Z
    move v11, v0

    .line 1822
    .end local v0    # "accepted":Z
    .restart local v11    # "accepted":Z
    :cond_2
    :goto_1
    add-int/lit8 v1, v12, 0x1

    .line 1822
    .end local v12    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 1842
    .end local v1    # "i":I
    :cond_3
    move/from16 v15, p6

    if-eqz v11, :cond_4

    .line 1843
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Landroid/support/design/widget/CoordinatorLayout;->onChildViewsChanged(I)V

    .line 1845
    :cond_4
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .line 1758
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/design/widget/CoordinatorLayout;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    .line 1759
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .locals 17
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I
    .param p4, "type"    # I

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    .line 1763
    move/from16 v9, p4

    iget-object v0, v7, Landroid/support/design/widget/CoordinatorLayout;->mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    move-object/from16 v10, p1

    move/from16 v11, p3

    invoke-virtual {v0, v10, v8, v11, v9}, Landroid/support/v4/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    .line 1764
    iput-object v8, v7, Landroid/support/design/widget/CoordinatorLayout;->mNestedScrollingTarget:Landroid/view/View;

    .line 1766
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v12

    .line 1767
    .local v12, "childCount":I
    const/4 v0, 0x0

    .line 1767
    .local v0, "i":I
    :goto_0
    move v13, v0

    .line 1767
    .end local v0    # "i":I
    .local v13, "i":I
    if-ge v13, v12, :cond_2

    .line 1768
    invoke-virtual {v7, v13}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 1769
    .local v14, "view":Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1770
    .local v15, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v15, v9}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1771
    goto :goto_1

    .line 1774
    :cond_0
    invoke-virtual {v15}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v16

    .line 1775
    .local v16, "viewBehavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    if-eqz v16, :cond_1

    .line 1776
    move-object/from16 v0, v16

    move-object v1, v7

    move-object v2, v14

    move-object v3, v10

    move-object v4, v8

    move v5, v11

    move v6, v9

    invoke-virtual/range {v0 .. v6}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onNestedScrollAccepted(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)V

    .line 1767
    .end local v14    # "view":Landroid/view/View;
    .end local v15    # "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .end local v16    # "viewBehavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    :cond_1
    :goto_1
    add-int/lit8 v0, v13, 0x1

    .line 1767
    .end local v13    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 1780
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 9
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 3137
    instance-of v0, p1, Landroid/support/design/widget/CoordinatorLayout$SavedState;

    if-nez v0, :cond_0

    .line 3138
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3139
    return-void

    .line 3142
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$SavedState;

    .line 3143
    .local v0, "ss":Landroid/support/design/widget/CoordinatorLayout$SavedState;
    invoke-virtual {v0}, Landroid/support/design/widget/CoordinatorLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3145
    iget-object v1, v0, Landroid/support/design/widget/CoordinatorLayout$SavedState;->behaviorStates:Landroid/util/SparseArray;

    .line 3147
    .local v1, "behaviorStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    const/4 v2, 0x0

    .line 3147
    .local v2, "i":I
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v3

    .line 3147
    .local v3, "count":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 3148
    invoke-virtual {p0, v2}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3149
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    .line 3150
    .local v5, "childId":I
    invoke-virtual {p0, v4}, Landroid/support/design/widget/CoordinatorLayout;->getResolvedLayoutParams(Landroid/view/View;)Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-result-object v6

    .line 3151
    .local v6, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v6}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v7

    .line 3153
    .local v7, "b":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    const/4 v8, -0x1

    if-eq v5, v8, :cond_1

    if-eqz v7, :cond_1

    .line 3154
    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Parcelable;

    .line 3155
    .local v8, "savedState":Landroid/os/Parcelable;
    if-eqz v8, :cond_1

    .line 3156
    invoke-virtual {v7, p0, v4, v8}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onRestoreInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    .line 3147
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "childId":I
    .end local v6    # "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .end local v7    # "b":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    .end local v8    # "savedState":Landroid/os/Parcelable;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3160
    .end local v2    # "i":I
    .end local v3    # "count":I
    :cond_2
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 9

    .line 3164
    new-instance v0, Landroid/support/design/widget/CoordinatorLayout$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/design/widget/CoordinatorLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3166
    .local v0, "ss":Landroid/support/design/widget/CoordinatorLayout$SavedState;
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 3167
    .local v1, "behaviorStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    const/4 v2, 0x0

    .line 3167
    .local v2, "i":I
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v3

    .line 3167
    .local v3, "count":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 3168
    invoke-virtual {p0, v2}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3169
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    .line 3170
    .local v5, "childId":I
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 3171
    .local v6, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v6}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v7

    .line 3173
    .local v7, "b":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    const/4 v8, -0x1

    if-eq v5, v8, :cond_0

    if-eqz v7, :cond_0

    .line 3175
    invoke-virtual {v7, p0, v4}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onSaveInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object v8

    .line 3176
    .local v8, "state":Landroid/os/Parcelable;
    if-eqz v8, :cond_0

    .line 3177
    invoke-virtual {v1, v5, v8}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 3167
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "childId":I
    .end local v6    # "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .end local v7    # "b":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    .end local v8    # "state":Landroid/os/Parcelable;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3181
    .end local v2    # "i":I
    .end local v3    # "count":I
    :cond_1
    iput-object v1, v0, Landroid/support/design/widget/CoordinatorLayout$SavedState;->behaviorStates:Landroid/util/SparseArray;

    .line 3182
    return-object v0
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .line 1728
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/design/widget/CoordinatorLayout;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z

    move-result v0

    return v0
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .locals 16
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I
    .param p4, "type"    # I

    .line 1733
    move/from16 v7, p4

    const/4 v0, 0x0

    .line 1735
    .local v0, "handled":Z
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v8

    .line 1736
    .local v8, "childCount":I
    const/4 v9, 0x0

    move v10, v0

    move v0, v9

    .line 1736
    .local v0, "i":I
    .local v10, "handled":Z
    :goto_0
    move v11, v0

    .line 1736
    .end local v0    # "i":I
    .local v11, "i":I
    if-ge v11, v8, :cond_2

    .line 1737
    move-object/from16 v12, p0

    invoke-virtual {v12, v11}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 1738
    .local v13, "view":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 1740
    goto :goto_1

    .line 1742
    :cond_0
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1743
    .local v14, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v14}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v15

    .line 1744
    .local v15, "viewBehavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    if-eqz v15, :cond_1

    .line 1745
    move-object v0, v15

    move-object v1, v12

    move-object v2, v13

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move v6, v7

    invoke-virtual/range {v0 .. v6}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z

    move-result v0

    .line 1747
    .local v0, "accepted":Z
    or-int v1, v10, v0

    .line 1748
    .end local v10    # "handled":Z
    .local v1, "handled":Z
    invoke-virtual {v14, v7, v0}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->setNestedScrollAccepted(IZ)V

    .line 1749
    .end local v0    # "accepted":Z
    nop

    .line 1736
    move v10, v1

    goto :goto_1

    .line 1750
    .end local v1    # "handled":Z
    .restart local v10    # "handled":Z
    :cond_1
    invoke-virtual {v14, v7, v9}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->setNestedScrollAccepted(IZ)V

    .line 1736
    .end local v13    # "view":Landroid/view/View;
    .end local v14    # "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .end local v15    # "viewBehavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    :goto_1
    add-int/lit8 v0, v11, 0x1

    .line 1736
    .end local v11    # "i":I
    .local v0, "i":I
    goto :goto_0

    .line 1753
    .end local v0    # "i":I
    :cond_2
    move-object/from16 v12, p0

    return v10
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 1
    .param p1, "target"    # Landroid/view/View;

    .line 1784
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/CoordinatorLayout;->onStopNestedScroll(Landroid/view/View;I)V

    .line 1785
    return-void
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .locals 5
    .param p1, "target"    # Landroid/view/View;
    .param p2, "type"    # I

    .line 1789
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;I)V

    .line 1791
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v0

    .line 1792
    .local v0, "childCount":I
    const/4 v1, 0x0

    .line 1792
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1793
    invoke-virtual {p0, v1}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1794
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1795
    .local v3, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v3, p2}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1796
    goto :goto_1

    .line 1799
    :cond_0
    invoke-virtual {v3}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v4

    .line 1800
    .local v4, "viewBehavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    if-eqz v4, :cond_1

    .line 1801
    invoke-virtual {v4, p0, v2, p1, p2}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onStopNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V

    .line 1803
    :cond_1
    invoke-virtual {v3, p2}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->resetNestedScroll(I)V

    .line 1804
    invoke-virtual {v3}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->resetChangedAfterNestedScroll()V

    .line 1792
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .end local v4    # "viewBehavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1806
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mNestedScrollingTarget:Landroid/view/View;

    .line 1807
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18
    .param p1, "ev"    # Landroid/view/MotionEvent;

    move-object/from16 v0, p0

    .line 527
    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 528
    .local v2, "handled":Z
    const/4 v3, 0x0

    .line 529
    .local v3, "cancelSuper":Z
    const/4 v4, 0x0

    .line 531
    .local v4, "cancelEvent":Landroid/view/MotionEvent;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    .line 533
    .local v5, "action":I
    iget-object v6, v0, Landroid/support/design/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    const/4 v7, 0x1

    if-nez v6, :cond_0

    invoke-direct {v0, v1, v7}, Landroid/support/design/widget/CoordinatorLayout;->performIntercept(Landroid/view/MotionEvent;I)Z

    move-result v6

    move v3, v6

    if-eqz v6, :cond_1

    .line 536
    :cond_0
    iget-object v6, v0, Landroid/support/design/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 537
    .local v6, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v6}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v8

    .line 538
    .local v8, "b":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    if-eqz v8, :cond_1

    .line 539
    iget-object v9, v0, Landroid/support/design/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    invoke-virtual {v8, v0, v9, v1}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    .line 544
    .end local v6    # "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .end local v8    # "b":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    :cond_1
    iget-object v6, v0, Landroid/support/design/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    if-nez v6, :cond_2

    .line 545
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    or-int/2addr v2, v6

    goto :goto_0

    .line 546
    :cond_2
    if-eqz v3, :cond_4

    .line 547
    if-nez v4, :cond_3

    .line 548
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 549
    .local v16, "now":J
    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-wide/from16 v8, v16

    move-wide/from16 v10, v16

    invoke-static/range {v8 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v4

    .line 552
    .end local v16    # "now":J
    :cond_3
    invoke-super {v0, v4}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 555
    :cond_4
    :goto_0
    nop

    .line 559
    if-eqz v4, :cond_5

    .line 560
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    .line 563
    :cond_5
    if-eq v5, v7, :cond_6

    const/4 v6, 0x3

    if-ne v5, v6, :cond_7

    .line 564
    :cond_6
    const/4 v6, 0x0

    invoke-direct {v0, v6}, Landroid/support/design/widget/CoordinatorLayout;->resetTouchBehaviors(Z)V

    .line 567
    :cond_7
    return v2
.end method

.method recordLastChildRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "r"    # Landroid/graphics/Rect;

    .line 929
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 930
    .local v0, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v0, p2}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->setLastChildRect(Landroid/graphics/Rect;)V

    .line 931
    return-void
.end method

.method removePreDrawListener()V
    .locals 2

    .line 1598
    iget-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mIsAttachedToWindow:Z

    if-eqz v0, :cond_0

    .line 1599
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mOnPreDrawListener:Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;

    if-eqz v0, :cond_0

    .line 1600
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1601
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mOnPreDrawListener:Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1604
    .end local v0    # "vto":Landroid/view/ViewTreeObserver;
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    .line 1605
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .line 3187
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 3188
    .local v0, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v1

    .line 3190
    .local v1, "behavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    if-eqz v1, :cond_0

    .line 3191
    invoke-virtual {v1, p0, p1, p2, p3}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onRequestChildRectangleOnScreen(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3192
    const/4 v2, 0x1

    return v2

    .line 3195
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v2

    return v2
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1
    .param p1, "disallowIntercept"    # Z

    .line 572
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 573
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mDisallowInterceptReset:Z

    if-nez v0, :cond_0

    .line 574
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/design/widget/CoordinatorLayout;->resetTouchBehaviors(Z)V

    .line 575
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mDisallowInterceptReset:Z

    .line 577
    :cond_0
    return-void
.end method

.method public setFitsSystemWindows(Z)V
    .locals 0
    .param p1, "fitSystemWindows"    # Z

    .line 914
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setFitsSystemWindows(Z)V

    .line 915
    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout;->setupForInsets()V

    .line 916
    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 0
    .param p1, "onHierarchyChangeListener"    # Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 232
    iput-object p1, p0, Landroid/support/design/widget/CoordinatorLayout;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 233
    return-void
.end method

.method public setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 275
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_5

    .line 276
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 279
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    nop

    :cond_1
    iput-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 280
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 281
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 282
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 284
    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 285
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    .line 284
    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    .line 286
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 287
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 289
    :cond_4
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 291
    :cond_5
    return-void
.end method

.method public setStatusBarBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 353
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/support/design/widget/CoordinatorLayout;->setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V

    .line 354
    return-void
.end method

.method public setStatusBarBackgroundResource(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 342
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/design/widget/CoordinatorLayout;->setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V

    .line 343
    return-void
.end method

.method public setVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I

    .line 327
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 329
    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 330
    .local v1, "visible":Z
    :goto_0
    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v2

    if-eq v2, v1, :cond_1

    .line 331
    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 333
    :cond_1
    return-void
.end method

.method final setWindowInsets(Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 3
    .param p1, "insets"    # Landroid/support/v4/view/WindowInsetsCompat;

    .line 357
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-static {v0, p1}, Landroid/support/v4/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 358
    iput-object p1, p0, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    .line 359
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v2

    if-lez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Landroid/support/design/widget/CoordinatorLayout;->mDrawStatusBarBackground:Z

    .line 360
    iget-boolean v2, p0, Landroid/support/design/widget/CoordinatorLayout;->mDrawStatusBarBackground:Z

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_1

    move v0, v1

    nop

    :cond_1
    invoke-virtual {p0, v0}, Landroid/support/design/widget/CoordinatorLayout;->setWillNotDraw(Z)V

    .line 363
    invoke-direct {p0, p1}, Landroid/support/design/widget/CoordinatorLayout;->dispatchApplyWindowInsetsToBehaviors(Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object p1

    .line 364
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->requestLayout()V

    .line 366
    :cond_2
    return-object p1
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 322
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
