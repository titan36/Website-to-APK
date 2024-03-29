.class public Landroid/support/v4/widget/DrawerLayout;
.super Landroid/view/ViewGroup;
.source "DrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;,
        Landroid/support/v4/widget/DrawerLayout$AccessibilityDelegate;,
        Landroid/support/v4/widget/DrawerLayout$LayoutParams;,
        Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;,
        Landroid/support/v4/widget/DrawerLayout$SavedState;,
        Landroid/support/v4/widget/DrawerLayout$SimpleDrawerListener;,
        Landroid/support/v4/widget/DrawerLayout$DrawerListener;,
        Landroid/support/v4/widget/DrawerLayout$EdgeGravity;,
        Landroid/support/v4/widget/DrawerLayout$LockMode;,
        Landroid/support/v4/widget/DrawerLayout$State;
    }
.end annotation


# static fields
.field private static final ALLOW_EDGE_LOCK:Z = false

.field static final CAN_HIDE_DESCENDANTS:Z

.field private static final CHILDREN_DISALLOW_INTERCEPT:Z = true

.field private static final DEFAULT_SCRIM_COLOR:I = -0x67000000

.field private static final DRAWER_ELEVATION:I = 0xa

.field static final LAYOUT_ATTRS:[I

.field public static final LOCK_MODE_LOCKED_CLOSED:I = 0x1

.field public static final LOCK_MODE_LOCKED_OPEN:I = 0x2

.field public static final LOCK_MODE_UNDEFINED:I = 0x3

.field public static final LOCK_MODE_UNLOCKED:I = 0x0

.field private static final MIN_DRAWER_MARGIN:I = 0x40

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field private static final PEEK_DELAY:I = 0xa0

.field private static final SET_DRAWER_SHADOW_FROM_ELEVATION:Z

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DrawerLayout"

.field private static final THEME_ATTRS:[I

.field private static final TOUCH_SLOP_SENSITIVITY:F = 1.0f


# instance fields
.field private final mChildAccessibilityDelegate:Landroid/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;

.field private mChildrenCanceledTouch:Z

.field private mDisallowInterceptRequested:Z

.field private mDrawStatusBarBackground:Z

.field private mDrawerElevation:F

.field private mDrawerState:I

.field private mFirstLayout:Z

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mLastInsets:Ljava/lang/Object;

.field private final mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

.field private final mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

.field private mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v4/widget/DrawerLayout$DrawerListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLockModeEnd:I

.field private mLockModeLeft:I

.field private mLockModeRight:I

.field private mLockModeStart:I

.field private mMinDrawerMargin:I

.field private final mNonDrawerViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

.field private final mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

.field private mScrimColor:I

.field private mScrimOpacity:F

.field private mScrimPaint:Landroid/graphics/Paint;

.field private mShadowEnd:Landroid/graphics/drawable/Drawable;

.field private mShadowLeft:Landroid/graphics/drawable/Drawable;

.field private mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

.field private mShadowRight:Landroid/graphics/drawable/Drawable;

.field private mShadowRightResolved:Landroid/graphics/drawable/Drawable;

.field private mShadowStart:Landroid/graphics/drawable/Drawable;

.field private mStatusBarBackground:Landroid/graphics/drawable/Drawable;

.field private mTitleLeft:Ljava/lang/CharSequence;

.field private mTitleRight:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 100
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x1010434

    aput v3, v1, v2

    sput-object v1, Landroid/support/v4/widget/DrawerLayout;->THEME_ATTRS:[I

    .line 180
    new-array v1, v0, [I

    const v3, 0x10100b3

    aput v3, v1, v2

    sput-object v1, Landroid/support/v4/widget/DrawerLayout;->LAYOUT_ATTRS:[I

    .line 185
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v1, v3, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    sput-boolean v1, Landroid/support/v4/widget/DrawerLayout;->CAN_HIDE_DESCENDANTS:Z

    .line 188
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    sput-boolean v0, Landroid/support/v4/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 299
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 300
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 303
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 304
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyle"    # I

    .line 307
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 191
    new-instance v0, Landroid/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;

    invoke-direct {v0}, Landroid/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mChildAccessibilityDelegate:Landroid/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;

    .line 197
    const/high16 v0, -0x67000000

    iput v0, p0, Landroid/support/v4/widget/DrawerLayout;->mScrimColor:I

    .line 199
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mScrimPaint:Landroid/graphics/Paint;

    .line 207
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    .line 209
    const/4 v1, 0x3

    iput v1, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeLeft:I

    .line 210
    iput v1, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeRight:I

    .line 211
    iput v1, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeStart:I

    .line 212
    iput v1, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeEnd:I

    .line 234
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    .line 235
    iput-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    .line 236
    iput-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    .line 237
    iput-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    .line 308
    const/high16 v3, 0x40000

    invoke-virtual {p0, v3}, Landroid/support/v4/widget/DrawerLayout;->setDescendantFocusability(I)V

    .line 309
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 310
    .local v3, "density":F
    const/high16 v4, 0x42800000    # 64.0f

    mul-float/2addr v4, v3

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Landroid/support/v4/widget/DrawerLayout;->mMinDrawerMargin:I

    .line 311
    const/high16 v4, 0x43c80000    # 400.0f

    mul-float/2addr v4, v3

    .line 313
    .local v4, "minVel":F
    new-instance v5, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-direct {v5, p0, v1}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;-><init>(Landroid/support/v4/widget/DrawerLayout;I)V

    iput-object v5, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    .line 314
    new-instance v1, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    const/4 v5, 0x5

    invoke-direct {v1, p0, v5}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;-><init>(Landroid/support/v4/widget/DrawerLayout;I)V

    iput-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    .line 316
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {p0, v5, v1}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    .line 317
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    .line 318
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v1, v4}, Landroid/support/v4/widget/ViewDragHelper;->setMinVelocity(F)V

    .line 319
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    iget-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v1, v6}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->setDragger(Landroid/support/v4/widget/ViewDragHelper;)V

    .line 321
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-static {p0, v5, v1}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    .line 322
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Landroid/support/v4/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    .line 323
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v1, v4}, Landroid/support/v4/widget/ViewDragHelper;->setMinVelocity(F)V

    .line 324
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v1, v5}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->setDragger(Landroid/support/v4/widget/ViewDragHelper;)V

    .line 327
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->setFocusableInTouchMode(Z)V

    .line 329
    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 332
    new-instance v0, Landroid/support/v4/widget/DrawerLayout$AccessibilityDelegate;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/DrawerLayout$AccessibilityDelegate;-><init>(Landroid/support/v4/widget/DrawerLayout;)V

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 333
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->setMotionEventSplittingEnabled(Z)V

    .line 334
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 335
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v1, v5, :cond_0

    .line 336
    new-instance v1, Landroid/support/v4/widget/DrawerLayout$1;

    invoke-direct {v1, p0}, Landroid/support/v4/widget/DrawerLayout$1;-><init>(Landroid/support/v4/widget/DrawerLayout;)V

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 345
    const/16 v1, 0x500

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->setSystemUiVisibility(I)V

    .line 347
    sget-object v1, Landroid/support/v4/widget/DrawerLayout;->THEME_ATTRS:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 349
    .local v1, "a":Landroid/content/res/TypedArray;
    :try_start_0
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 352
    nop

    .line 353
    .end local v1    # "a":Landroid/content/res/TypedArray;
    goto :goto_0

    .line 351
    .restart local v1    # "a":Landroid/content/res/TypedArray;
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    .line 354
    .end local v1    # "a":Landroid/content/res/TypedArray;
    :cond_0
    iput-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 358
    :cond_1
    :goto_0
    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr v0, v3

    iput v0, p0, Landroid/support/v4/widget/DrawerLayout;->mDrawerElevation:F

    .line 360
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    .line 361
    return-void
.end method

.method static gravityToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "gravity"    # I

    .line 946
    and-int/lit8 v0, p0, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 947
    const-string v0, "LEFT"

    return-object v0

    .line 949
    :cond_0
    and-int/lit8 v0, p0, 0x5

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 950
    const-string v0, "RIGHT"

    return-object v0

    .line 952
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static hasOpaqueBackground(Landroid/view/View;)Z
    .locals 4
    .param p0, "v"    # Landroid/view/View;

    .line 1265
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1266
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1267
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    .line 1269
    :cond_1
    return v1
.end method

.method private hasPeekingDrawer()Z
    .locals 5

    .line 1778
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v0

    .line 1779
    .local v0, "childCount":I
    const/4 v1, 0x0

    move v2, v1

    .line 1779
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1780
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 1781
    .local v3, "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    iget-boolean v4, v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    if-eqz v4, :cond_0

    .line 1782
    const/4 v1, 0x1

    return v1

    .line 1779
    .end local v3    # "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1785
    .end local v2    # "i":I
    :cond_1
    return v1
.end method

.method private hasVisibleDrawer()Z
    .locals 1

    .line 1848
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->findVisibleDrawer()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static includeChildForAccessibility(Landroid/view/View;)Z
    .locals 2
    .param p0, "child"    # Landroid/view/View;

    .line 1988
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1990
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private mirror(Landroid/graphics/drawable/Drawable;I)Z
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "layoutDirection"    # I

    .line 1148
    if-eqz p1, :cond_1

    invoke-static {p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->isAutoMirrored(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1152
    :cond_0
    invoke-static {p1, p2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    .line 1153
    const/4 v0, 0x1

    return v0

    .line 1149
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private resolveLeftShadow()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1106
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 1108
    .local v0, "layoutDirection":I
    if-nez v0, :cond_0

    .line 1109
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 1111
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v0}, Landroid/support/v4/widget/DrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)Z

    .line 1112
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    return-object v1

    .line 1115
    :cond_0
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 1117
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v0}, Landroid/support/v4/widget/DrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)Z

    .line 1118
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    return-object v1

    .line 1121
    :cond_1
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    return-object v1
.end method

.method private resolveRightShadow()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1125
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 1126
    .local v0, "layoutDirection":I
    if-nez v0, :cond_0

    .line 1127
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 1129
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v0}, Landroid/support/v4/widget/DrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)Z

    .line 1130
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    return-object v1

    .line 1133
    :cond_0
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 1135
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v0}, Landroid/support/v4/widget/DrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)Z

    .line 1136
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    return-object v1

    .line 1139
    :cond_1
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    return-object v1
.end method

.method private resolveShadowDrawables()V
    .locals 1

    .line 1098
    sget-boolean v0, Landroid/support/v4/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    if-eqz v0, :cond_0

    .line 1099
    return-void

    .line 1101
    :cond_0
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->resolveLeftShadow()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    .line 1102
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->resolveRightShadow()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    .line 1103
    return-void
.end method

.method private updateChildrenImportantForAccessibility(Landroid/view/View;Z)V
    .locals 4
    .param p1, "drawerView"    # Landroid/view/View;
    .param p2, "isDrawerOpen"    # Z

    .line 841
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v0

    .line 842
    .local v0, "childCount":I
    const/4 v1, 0x0

    .line 842
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 843
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 844
    .local v2, "child":Landroid/view/View;
    if-nez p2, :cond_0

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    if-eqz p2, :cond_2

    if-ne v2, p1, :cond_2

    .line 847
    :cond_1
    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    goto :goto_1

    .line 850
    :cond_2
    const/4 v3, 0x4

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 842
    .end local v2    # "child":Landroid/view/View;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 854
    .end local v1    # "i":I
    :cond_3
    return-void
.end method


# virtual methods
.method public addDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/v4/widget/DrawerLayout$DrawerListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 505
    if-nez p1, :cond_0

    .line 506
    return-void

    .line 508
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    if-nez v0, :cond_1

    .line 509
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    .line 511
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 512
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 6
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .line 1814
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x60000

    if-ne v0, v1, :cond_0

    .line 1815
    return-void

    .line 1820
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v0

    .line 1821
    .local v0, "childCount":I
    const/4 v1, 0x0

    .line 1822
    .local v1, "isDrawerOpen":Z
    const/4 v2, 0x0

    move v3, v1

    move v1, v2

    .line 1822
    .local v1, "i":I
    .local v3, "isDrawerOpen":Z
    :goto_0
    if-ge v1, v0, :cond_3

    .line 1823
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1824
    .local v4, "child":Landroid/view/View;
    invoke-virtual {p0, v4}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1825
    invoke-virtual {p0, v4}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1826
    const/4 v3, 0x1

    .line 1827
    invoke-virtual {v4, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_1

    .line 1830
    :cond_1
    iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1822
    .end local v4    # "child":Landroid/view/View;
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1834
    .end local v1    # "i":I
    :cond_3
    if-nez v3, :cond_5

    .line 1835
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1836
    .local v1, "nonDrawerViewsCount":I
    nop

    .line 1836
    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_5

    .line 1837
    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 1838
    .restart local v4    # "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_4

    .line 1839
    invoke-virtual {v4, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1836
    .end local v4    # "child":Landroid/view/View;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1844
    .end local v1    # "nonDrawerViewsCount":I
    .end local v2    # "i":I
    :cond_5
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1845
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1960
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1962
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->findOpenDrawer()Landroid/view/View;

    move-result-object v0

    .line 1963
    .local v0, "openDrawer":Landroid/view/View;
    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1971
    :cond_0
    const/4 v1, 0x1

    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    goto :goto_1

    .line 1966
    :cond_1
    :goto_0
    const/4 v1, 0x4

    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 1977
    :goto_1
    sget-boolean v1, Landroid/support/v4/widget/DrawerLayout;->CAN_HIDE_DESCENDANTS:Z

    if-nez v1, :cond_2

    .line 1978
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mChildAccessibilityDelegate:Landroid/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;

    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 1980
    :cond_2
    return-void
.end method

.method cancelChildViewTouch()V
    .locals 11

    .line 1864
    iget-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    if-nez v0, :cond_1

    .line 1865
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 1866
    .local v9, "now":J
    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v3, v9

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 1868
    .local v0, "cancelEvent":Landroid/view/MotionEvent;
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v1

    .line 1869
    .local v1, "childCount":I
    const/4 v2, 0x0

    .line 1869
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1870
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1869
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1872
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1873
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    .line 1875
    .end local v0    # "cancelEvent":Landroid/view/MotionEvent;
    .end local v1    # "childCount":I
    .end local v9    # "now":J
    :cond_1
    return-void
.end method

.method checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z
    .locals 2
    .param p1, "drawerView"    # Landroid/view/View;
    .param p2, "checkFor"    # I

    .line 891
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    move-result v0

    .line 892
    .local v0, "absGravity":I
    and-int v1, v0, p2

    if-ne v1, p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1804
    instance-of v0, p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

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

.method public closeDrawer(I)V
    .locals 1
    .param p1, "gravity"    # I

    .line 1692
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(IZ)V

    .line 1693
    return-void
.end method

.method public closeDrawer(IZ)V
    .locals 4
    .param p1, "gravity"    # I
    .param p2, "animate"    # Z

    .line 1703
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    .line 1704
    .local v0, "drawerView":Landroid/view/View;
    if-nez v0, :cond_0

    .line 1705
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No drawer view found with gravity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1706
    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayout;->gravityToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1708
    :cond_0
    invoke-virtual {p0, v0, p2}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;Z)V

    .line 1709
    return-void
.end method

.method public closeDrawer(Landroid/view/View;)V
    .locals 1
    .param p1, "drawerView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1650
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;Z)V

    .line 1651
    return-void
.end method

.method public closeDrawer(Landroid/view/View;Z)V
    .locals 4
    .param p1, "drawerView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "animate"    # Z

    .line 1660
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1661
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not a sliding drawer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1664
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 1665
    .local v0, "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    iget-boolean v1, p0, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 1666
    iput v3, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    .line 1667
    iput v2, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I

    goto :goto_0

    .line 1668
    :cond_1
    const/4 v1, 0x4

    if-eqz p2, :cond_3

    .line 1669
    iget v2, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I

    or-int/2addr v1, v2

    iput v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I

    .line 1671
    const/4 v1, 0x3

    invoke-virtual {p0, p1, v1}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1672
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    neg-int v2, v2

    .line 1673
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1672
    invoke-virtual {v1, p1, v2, v3}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_0

    .line 1675
    :cond_2
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_0

    .line 1678
    :cond_3
    invoke-virtual {p0, p1, v3}, Landroid/support/v4/widget/DrawerLayout;->moveDrawerToOffset(Landroid/view/View;F)V

    .line 1679
    iget v3, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, v3, v2, p1}, Landroid/support/v4/widget/DrawerLayout;->updateDrawerState(IILandroid/view/View;)V

    .line 1680
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1682
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1683
    return-void
.end method

.method public closeDrawers()V
    .locals 1

    .line 1540
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers(Z)V

    .line 1541
    return-void
.end method

.method closeDrawers(Z)V
    .locals 10
    .param p1, "peekingOnly"    # Z

    .line 1544
    const/4 v0, 0x0

    .line 1545
    .local v0, "needsInvalidate":Z
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v1

    .line 1546
    .local v1, "childCount":I
    const/4 v2, 0x0

    move v3, v0

    move v0, v2

    .line 1546
    .local v0, "i":I
    .local v3, "needsInvalidate":Z
    :goto_0
    if-ge v0, v1, :cond_3

    .line 1547
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1548
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 1550
    .local v5, "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    invoke-virtual {p0, v4}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz p1, :cond_0

    iget-boolean v6, v5, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    if-nez v6, :cond_0

    .line 1551
    goto :goto_2

    .line 1554
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 1556
    .local v6, "childWidth":I
    const/4 v7, 0x3

    invoke-virtual {p0, v4, v7}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1557
    iget-object v7, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    neg-int v8, v6

    .line 1558
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v9

    .line 1557
    invoke-virtual {v7, v4, v8, v9}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v7

    or-int/2addr v3, v7

    goto :goto_1

    .line 1560
    :cond_1
    iget-object v7, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    .line 1561
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v8

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v9

    .line 1560
    invoke-virtual {v7, v4, v8, v9}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v7

    or-int/2addr v3, v7

    .line 1564
    :goto_1
    iput-boolean v2, v5, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    .line 1546
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    .end local v6    # "childWidth":I
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1567
    .end local v0    # "i":I
    :cond_3
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    .line 1568
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    .line 1570
    if-eqz v3, :cond_4

    .line 1571
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1573
    :cond_4
    return-void
.end method

.method public computeScroll()V
    .locals 5

    .line 1249
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v0

    .line 1250
    .local v0, "childCount":I
    const/4 v1, 0x0

    .line 1251
    .local v1, "scrimOpacity":F
    const/4 v2, 0x0

    .line 1251
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1252
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v3, v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    .line 1253
    .local v3, "onscreen":F
    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 1251
    .end local v3    # "onscreen":F
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1255
    .end local v2    # "i":I
    :cond_0
    iput v1, p0, Landroid/support/v4/widget/DrawerLayout;->mScrimOpacity:F

    .line 1257
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v2

    .line 1258
    .local v2, "leftDraggerSettling":Z
    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v4, v3}, Landroid/support/v4/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v3

    .line 1259
    .local v3, "rightDraggerSettling":Z
    if-nez v2, :cond_1

    if-eqz v3, :cond_2

    .line 1260
    :cond_1
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1262
    :cond_2
    return-void
.end method

.method dispatchOnDrawerClosed(Landroid/view/View;)V
    .locals 5
    .param p1, "drawerView"    # Landroid/view/View;

    .line 791
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 792
    .local v0, "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    iget v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 793
    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I

    .line 795
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 798
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 799
    .local v2, "listenerCount":I
    add-int/lit8 v3, v2, -0x1

    .line 799
    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_0

    .line 800
    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    invoke-interface {v4, p1}, Landroid/support/v4/widget/DrawerLayout$DrawerListener;->onDrawerClosed(Landroid/view/View;)V

    .line 799
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 804
    .end local v2    # "listenerCount":I
    .end local v3    # "i":I
    :cond_0
    invoke-direct {p0, p1, v1}, Landroid/support/v4/widget/DrawerLayout;->updateChildrenImportantForAccessibility(Landroid/view/View;Z)V

    .line 809
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 810
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 811
    .local v1, "rootView":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 812
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 816
    .end local v1    # "rootView":Landroid/view/View;
    :cond_1
    return-void
.end method

.method dispatchOnDrawerOpened(Landroid/view/View;)V
    .locals 5
    .param p1, "drawerView"    # Landroid/view/View;

    .line 819
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 820
    .local v0, "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    iget v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-nez v1, :cond_1

    .line 821
    iput v2, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I

    .line 822
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 825
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 826
    .local v1, "listenerCount":I
    add-int/lit8 v3, v1, -0x1

    .line 826
    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_0

    .line 827
    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    invoke-interface {v4, p1}, Landroid/support/v4/widget/DrawerLayout$DrawerListener;->onDrawerOpened(Landroid/view/View;)V

    .line 826
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 831
    .end local v1    # "listenerCount":I
    .end local v3    # "i":I
    :cond_0
    invoke-direct {p0, p1, v2}, Landroid/support/v4/widget/DrawerLayout;->updateChildrenImportantForAccessibility(Landroid/view/View;Z)V

    .line 834
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 835
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->sendAccessibilityEvent(I)V

    .line 838
    :cond_1
    return-void
.end method

.method dispatchOnDrawerSlide(Landroid/view/View;F)V
    .locals 3
    .param p1, "drawerView"    # Landroid/view/View;
    .param p2, "slideOffset"    # F

    .line 857
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 860
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 861
    .local v0, "listenerCount":I
    add-int/lit8 v1, v0, -0x1

    .line 861
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 862
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    invoke-interface {v2, p1, p2}, Landroid/support/v4/widget/DrawerLayout$DrawerListener;->onDrawerSlide(Landroid/view/View;F)V

    .line 861
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 865
    .end local v0    # "listenerCount":I
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 22
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    .line 1341
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->getHeight()I

    move-result v9

    .line 1342
    .local v9, "height":I
    invoke-virtual {v0, v8}, Landroid/support/v4/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v10

    .line 1343
    .local v10, "drawingContent":Z
    const/4 v1, 0x0

    .line 1343
    .local v1, "clipLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v2

    .line 1345
    .local v2, "clipRight":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v11

    .line 1346
    .local v11, "restoreCount":I
    const/4 v3, 0x3

    if-eqz v10, :cond_5

    .line 1347
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v4

    .line 1348
    .local v4, "childCount":I
    const/4 v5, 0x0

    move v6, v2

    move v2, v1

    move v1, v5

    .line 1348
    .local v1, "i":I
    .local v2, "clipLeft":I
    .local v6, "clipRight":I
    :goto_0
    if-ge v1, v4, :cond_4

    .line 1349
    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 1350
    .local v12, "v":Landroid/view/View;
    if-eq v12, v8, :cond_3

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-nez v13, :cond_3

    .line 1351
    invoke-static {v12}, Landroid/support/v4/widget/DrawerLayout;->hasOpaqueBackground(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-virtual {v0, v12}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1352
    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v13

    if-ge v13, v9, :cond_0

    .line 1353
    goto :goto_1

    .line 1356
    :cond_0
    invoke-virtual {v0, v12, v3}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1357
    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v13

    .line 1358
    .local v13, "vright":I
    if-le v13, v2, :cond_1

    move v2, v13

    .line 1359
    .end local v13    # "vright":I
    :cond_1
    goto :goto_1

    .line 1360
    :cond_2
    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v13

    .line 1361
    .local v13, "vleft":I
    if-ge v13, v6, :cond_3

    move v6, v13

    .line 1348
    .end local v12    # "v":Landroid/view/View;
    .end local v13    # "vleft":I
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1364
    .end local v1    # "i":I
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->getHeight()I

    move-result v1

    invoke-virtual {v7, v2, v5, v6, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1366
    .end local v4    # "childCount":I
    move v12, v2

    move v13, v6

    goto :goto_2

    .line 1366
    .end local v6    # "clipRight":I
    .local v1, "clipLeft":I
    .local v2, "clipRight":I
    :cond_5
    move v12, v1

    move v13, v2

    .line 1366
    .end local v1    # "clipLeft":I
    .end local v2    # "clipRight":I
    .local v12, "clipLeft":I
    .local v13, "clipRight":I
    :goto_2
    invoke-super/range {p0 .. p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v14

    .line 1367
    .local v14, "result":Z
    invoke-virtual {v7, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1369
    iget v1, v0, Landroid/support/v4/widget/DrawerLayout;->mScrimOpacity:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_6

    if-eqz v10, :cond_6

    .line 1370
    iget v1, v0, Landroid/support/v4/widget/DrawerLayout;->mScrimColor:I

    const/high16 v2, -0x1000000

    and-int/2addr v1, v2

    ushr-int/lit8 v15, v1, 0x18

    .line 1371
    .local v15, "baseAlpha":I
    int-to-float v1, v15

    iget v2, v0, Landroid/support/v4/widget/DrawerLayout;->mScrimOpacity:F

    mul-float/2addr v1, v2

    float-to-int v6, v1

    .line 1372
    .local v6, "imag":I
    shl-int/lit8 v1, v6, 0x18

    iget v2, v0, Landroid/support/v4/widget/DrawerLayout;->mScrimColor:I

    const v3, 0xffffff

    and-int/2addr v2, v3

    or-int v5, v1, v2

    .line 1373
    .local v5, "color":I
    iget-object v1, v0, Landroid/support/v4/widget/DrawerLayout;->mScrimPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1375
    int-to-float v2, v12

    int-to-float v4, v13

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, v0, Landroid/support/v4/widget/DrawerLayout;->mScrimPaint:Landroid/graphics/Paint;

    move/from16 v17, v1

    move-object v1, v7

    move-object/from16 v16, v3

    const/4 v3, 0x0

    move/from16 v18, v5

    move/from16 v5, v17

    .line 1375
    .end local v5    # "color":I
    .local v18, "color":I
    move/from16 v17, v6

    move-object/from16 v6, v16

    .line 1375
    .end local v6    # "imag":I
    .local v17, "imag":I
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1376
    .end local v15    # "baseAlpha":I
    .end local v17    # "imag":I
    .end local v18    # "color":I
    goto/16 :goto_3

    :cond_6
    iget-object v1, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v1, :cond_7

    .line 1377
    invoke-virtual {v0, v8, v3}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1378
    iget-object v1, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 1379
    .local v1, "shadowWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v3

    .line 1380
    .local v3, "childRight":I
    iget-object v6, v0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v6}, Landroid/support/v4/widget/ViewDragHelper;->getEdgeSize()I

    move-result v6

    .line 1381
    .local v6, "drawerPeekDistance":I
    int-to-float v15, v3

    int-to-float v4, v6

    div-float/2addr v15, v4

    .line 1382
    invoke-static {v15, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1383
    .local v2, "alpha":F
    iget-object v4, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v5

    add-int v15, v3, v1

    .line 1384
    move/from16 v19, v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 1383
    .end local v1    # "shadowWidth":I
    .local v19, "shadowWidth":I
    invoke-virtual {v4, v3, v5, v15, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1385
    iget-object v1, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v4, v2

    float-to-int v4, v4

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1386
    iget-object v1, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1387
    .end local v2    # "alpha":F
    .end local v3    # "childRight":I
    .end local v6    # "drawerPeekDistance":I
    .end local v19    # "shadowWidth":I
    goto :goto_3

    :cond_7
    iget-object v1, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_8

    const/4 v1, 0x5

    .line 1388
    invoke-virtual {v0, v8, v1}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1389
    iget-object v1, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 1390
    .restart local v1    # "shadowWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 1391
    .local v3, "childLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v4

    sub-int/2addr v4, v3

    .line 1392
    .local v4, "showing":I
    iget-object v6, v0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v6}, Landroid/support/v4/widget/ViewDragHelper;->getEdgeSize()I

    move-result v6

    .line 1393
    .restart local v6    # "drawerPeekDistance":I
    int-to-float v15, v4

    int-to-float v2, v6

    div-float/2addr v15, v2

    .line 1394
    invoke-static {v15, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/4 v5, 0x0

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1395
    .restart local v2    # "alpha":F
    iget-object v5, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    sub-int v15, v3, v1

    move/from16 v20, v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v1

    .line 1396
    .end local v1    # "shadowWidth":I
    .local v20, "shadowWidth":I
    move/from16 v21, v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 1395
    .end local v4    # "showing":I
    .local v21, "showing":I
    invoke-virtual {v5, v15, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1397
    iget-object v1, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v4, v2

    float-to-int v4, v4

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1398
    iget-object v1, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1400
    .end local v2    # "alpha":F
    .end local v3    # "childLeft":I
    .end local v6    # "drawerPeekDistance":I
    .end local v20    # "shadowWidth":I
    .end local v21    # "showing":I
    :cond_8
    :goto_3
    return v14
.end method

.method findDrawerWithGravity(I)Landroid/view/View;
    .locals 6
    .param p1, "gravity"    # I

    .line 926
    nop

    .line 927
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 926
    invoke-static {p1, v0}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    and-int/lit8 v0, v0, 0x7

    .line 928
    .local v0, "absHorizGravity":I
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v1

    .line 929
    .local v1, "childCount":I
    const/4 v2, 0x0

    .line 929
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 930
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 931
    .local v3, "child":Landroid/view/View;
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    move-result v4

    .line 932
    .local v4, "childAbsGravity":I
    and-int/lit8 v5, v4, 0x7

    if-ne v5, v0, :cond_0

    .line 933
    return-object v3

    .line 929
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childAbsGravity":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 936
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method findOpenDrawer()Landroid/view/View;
    .locals 6

    .line 896
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v0

    .line 897
    .local v0, "childCount":I
    const/4 v1, 0x0

    .line 897
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 898
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 899
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 900
    .local v3, "childLp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    iget v4, v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_0

    .line 901
    return-object v2

    .line 897
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "childLp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 904
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method findVisibleDrawer()Landroid/view/View;
    .locals 4

    .line 1852
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v0

    .line 1853
    .local v0, "childCount":I
    const/4 v1, 0x0

    .line 1853
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1854
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1855
    .local v2, "child":Landroid/view/View;
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerVisible(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1856
    return-object v2

    .line 1853
    .end local v2    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1859
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1790
    new-instance v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 1809
    new-instance v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1795
    instance-of v0, p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    invoke-direct {v0, v1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-object v0
.end method

.method public getDrawerElevation()F
    .locals 1

    .line 387
    sget-boolean v0, Landroid/support/v4/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    if-eqz v0, :cond_0

    .line 388
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->mDrawerElevation:F

    return v0

    .line 390
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDrawerLockMode(I)I
    .locals 3
    .param p1, "edgeGravity"    # I

    .line 646
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 648
    .local v0, "layoutDirection":I
    const/4 v1, 0x3

    if-eq p1, v1, :cond_9

    const/4 v2, 0x5

    if-eq p1, v2, :cond_6

    const v2, 0x800003

    if-eq p1, v2, :cond_3

    const v2, 0x800005

    if-eq p1, v2, :cond_0

    goto :goto_4

    .line 680
    :cond_0
    iget v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeEnd:I

    if-eq v2, v1, :cond_1

    .line 681
    iget v1, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeEnd:I

    return v1

    .line 683
    :cond_1
    if-nez v0, :cond_2

    iget v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeRight:I

    goto :goto_0

    :cond_2
    iget v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeLeft:I

    .line 685
    .local v2, "endLockMode":I
    :goto_0
    if-eq v2, v1, :cond_c

    .line 686
    return v2

    .line 670
    .end local v2    # "endLockMode":I
    :cond_3
    iget v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeStart:I

    if-eq v2, v1, :cond_4

    .line 671
    iget v1, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeStart:I

    return v1

    .line 673
    :cond_4
    if-nez v0, :cond_5

    iget v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeLeft:I

    goto :goto_1

    :cond_5
    iget v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeRight:I

    .line 675
    .local v2, "startLockMode":I
    :goto_1
    if-eq v2, v1, :cond_c

    .line 676
    return v2

    .line 660
    .end local v2    # "startLockMode":I
    :cond_6
    iget v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeRight:I

    if-eq v2, v1, :cond_7

    .line 661
    iget v1, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeRight:I

    return v1

    .line 663
    :cond_7
    if-nez v0, :cond_8

    iget v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeEnd:I

    goto :goto_2

    :cond_8
    iget v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeStart:I

    .line 665
    .local v2, "rightLockMode":I
    :goto_2
    if-eq v2, v1, :cond_c

    .line 666
    return v2

    .line 650
    .end local v2    # "rightLockMode":I
    :cond_9
    iget v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeLeft:I

    if-eq v2, v1, :cond_a

    .line 651
    iget v1, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeLeft:I

    return v1

    .line 653
    :cond_a
    if-nez v0, :cond_b

    iget v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeStart:I

    goto :goto_3

    :cond_b
    iget v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeEnd:I

    .line 655
    .local v2, "leftLockMode":I
    :goto_3
    if-eq v2, v1, :cond_c

    .line 656
    return v2

    .line 691
    .end local v2    # "leftLockMode":I
    :cond_c
    :goto_4
    const/4 v1, 0x0

    return v1
.end method

.method public getDrawerLockMode(Landroid/view/View;)I
    .locals 3
    .param p1, "drawerView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 703
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 704
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not a drawer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 706
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 707
    .local v0, "drawerGravity":I
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->getDrawerLockMode(I)I

    move-result v1

    return v1
.end method

.method public getDrawerTitle(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "edgeGravity"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 740
    nop

    .line 741
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 740
    invoke-static {p1, v0}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    .line 742
    .local v0, "absGravity":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 743
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mTitleLeft:Ljava/lang/CharSequence;

    return-object v1

    .line 744
    :cond_0
    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 745
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mTitleRight:Ljava/lang/CharSequence;

    return-object v1

    .line 747
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method getDrawerViewAbsoluteGravity(Landroid/view/View;)I
    .locals 2
    .param p1, "drawerView"    # Landroid/view/View;

    .line 886
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 887
    .local v0, "gravity":I
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v1

    return v1
.end method

.method getDrawerViewOffset(Landroid/view/View;)F
    .locals 1
    .param p1, "drawerView"    # Landroid/view/View;

    .line 878
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    return v0
.end method

.method public getStatusBarBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1290
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method isContentView(Landroid/view/View;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 1404
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDrawerOpen(I)Z
    .locals 2
    .param p1, "drawerGravity"    # I

    .line 1739
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    .line 1740
    .local v0, "drawerView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1741
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v1

    return v1

    .line 1743
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isDrawerOpen(Landroid/view/View;)Z
    .locals 3
    .param p1, "drawer"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1722
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1723
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not a drawer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1725
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 1726
    .local v0, "drawerLp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    iget v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method isDrawerView(Landroid/view/View;)Z
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .line 1408
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 1409
    .local v0, "gravity":I
    nop

    .line 1410
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    .line 1409
    invoke-static {v0, v1}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v1

    .line 1411
    .local v1, "absGravity":I
    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 1413
    return v3

    .line 1415
    :cond_0
    and-int/lit8 v2, v1, 0x5

    if-eqz v2, :cond_1

    .line 1417
    return v3

    .line 1419
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public isDrawerVisible(I)Z
    .locals 2
    .param p1, "drawerGravity"    # I

    .line 1770
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    .line 1771
    .local v0, "drawerView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1772
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->isDrawerVisible(Landroid/view/View;)Z

    move-result v1

    return v1

    .line 1774
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isDrawerVisible(Landroid/view/View;)Z
    .locals 3
    .param p1, "drawer"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1755
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1756
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not a drawer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1758
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method moveDrawerToOffset(Landroid/view/View;F)V
    .locals 6
    .param p1, "drawerView"    # Landroid/view/View;
    .param p2, "slideOffset"    # F

    .line 908
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->getDrawerViewOffset(Landroid/view/View;)F

    move-result v0

    .line 909
    .local v0, "oldOffset":F
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 910
    .local v1, "width":I
    int-to-float v2, v1

    mul-float/2addr v2, v0

    float-to-int v2, v2

    .line 911
    .local v2, "oldPos":I
    int-to-float v3, v1

    mul-float/2addr v3, p2

    float-to-int v3, v3

    .line 912
    .local v3, "newPos":I
    sub-int v4, v3, v2

    .line 914
    .local v4, "dx":I
    nop

    .line 915
    const/4 v5, 0x3

    invoke-virtual {p0, p1, v5}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 914
    move v5, v4

    goto :goto_0

    .line 915
    :cond_0
    neg-int v5, v4

    .line 914
    :goto_0
    invoke-virtual {p1, v5}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 916
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/DrawerLayout;->setDrawerViewOffset(Landroid/view/View;F)V

    .line 917
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 963
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 964
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    .line 965
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 957
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 958
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    .line 959
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "c"    # Landroid/graphics/Canvas;

    .line 1323
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 1324
    iget-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->mDrawStatusBarBackground:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 1326
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    .line 1327
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    check-cast v0, Landroid/view/WindowInsets;

    .line 1328
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1328
    .local v0, "inset":I
    :goto_0
    goto :goto_1

    .line 1330
    .end local v0    # "inset":I
    :cond_1
    move v0, v2

    .line 1332
    .restart local v0    # "inset":I
    :goto_1
    if-lez v0, :cond_2

    .line 1333
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v3

    invoke-virtual {v1, v2, v2, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1334
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1337
    .end local v0    # "inset":I
    :cond_2
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1425
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1428
    .local v0, "action":I
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v1, p1}, Landroid/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    .line 1429
    invoke-virtual {v2, p1}, Landroid/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 1431
    .local v1, "interceptForDrag":Z
    const/4 v2, 0x0

    .line 1433
    .local v2, "interceptForTap":Z
    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1452
    :pswitch_0
    iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/support/v4/widget/ViewDragHelper;->checkTouchSlop(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1453
    iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {v5}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    .line 1454
    iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout;->mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {v5}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    goto :goto_0

    .line 1461
    :pswitch_1
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers(Z)V

    .line 1462
    iput-boolean v4, p0, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 1463
    iput-boolean v4, p0, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    goto :goto_0

    .line 1435
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 1436
    .local v5, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 1437
    .local v6, "y":F
    iput v5, p0, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionX:F

    .line 1438
    iput v6, p0, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionY:F

    .line 1439
    iget v7, p0, Landroid/support/v4/widget/DrawerLayout;->mScrimOpacity:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_0

    .line 1440
    iget-object v7, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    float-to-int v8, v5

    float-to-int v9, v6

    invoke-virtual {v7, v8, v9}, Landroid/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v7

    .line 1441
    .local v7, "child":Landroid/view/View;
    if-eqz v7, :cond_0

    invoke-virtual {p0, v7}, Landroid/support/v4/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1442
    const/4 v2, 0x1

    .line 1445
    .end local v7    # "child":Landroid/view/View;
    :cond_0
    iput-boolean v4, p0, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 1446
    iput-boolean v4, p0, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    .line 1447
    nop

    .line 1467
    .end local v5    # "x":F
    .end local v6    # "y":F
    :cond_1
    :goto_0
    if-nez v1, :cond_3

    if-nez v2, :cond_3

    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->hasPeekingDrawer()Z

    move-result v5

    if-nez v5, :cond_3

    iget-boolean v5, p0, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    nop

    :cond_3
    :goto_1
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 1879
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->hasVisibleDrawer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1880
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 1881
    const/4 v0, 0x1

    return v0

    .line 1883
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 1888
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 1889
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->findVisibleDrawer()Landroid/view/View;

    move-result-object v0

    .line 1890
    .local v0, "visibleDrawer":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_0

    .line 1891
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    .line 1893
    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 1895
    .end local v0    # "visibleDrawer":Landroid/view/View;
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 17
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    move-object/from16 v0, p0

    .line 1158
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v4/widget/DrawerLayout;->mInLayout:Z

    .line 1159
    sub-int v4, p4, p2

    .line 1160
    .local v4, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v5

    .line 1161
    .local v5, "childCount":I
    const/4 v7, 0x0

    .line 1161
    .local v7, "i":I
    :goto_0
    if-ge v7, v5, :cond_b

    .line 1162
    invoke-virtual {v0, v7}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1164
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_0

    .line 1165
    nop

    .line 1161
    .end local v4    # "width":I
    .end local v5    # "childCount":I
    .end local v8    # "child":Landroid/view/View;
    .local v15, "width":I
    .local v16, "childCount":I
    :goto_1
    move v15, v4

    move/from16 v16, v5

    goto/16 :goto_7

    .line 1168
    .end local v15    # "width":I
    .end local v16    # "childCount":I
    .restart local v4    # "width":I
    .restart local v5    # "childCount":I
    .restart local v8    # "child":Landroid/view/View;
    :cond_0
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 1170
    .local v9, "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    invoke-virtual {v0, v8}, Landroid/support/v4/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1171
    iget v10, v9, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->leftMargin:I

    iget v11, v9, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    iget v12, v9, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->leftMargin:I

    .line 1172
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    add-int/2addr v12, v13

    iget v13, v9, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    .line 1173
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v13, v14

    .line 1171
    invoke-virtual {v8, v10, v11, v12, v13}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 1175
    :cond_1
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 1176
    .local v10, "childWidth":I
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    .line 1180
    .local v11, "childHeight":I
    const/4 v12, 0x3

    invoke-virtual {v0, v8, v12}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1181
    neg-int v12, v10

    int-to-float v13, v10

    iget v1, v9, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    mul-float/2addr v13, v1

    float-to-int v1, v13

    add-int/2addr v12, v1

    .line 1182
    .local v12, "childLeft":I
    add-int v1, v10, v12

    int-to-float v1, v1

    int-to-float v13, v10

    div-float/2addr v1, v13

    .line 1182
    .local v1, "newOffset":F
    goto :goto_2

    .line 1184
    .end local v1    # "newOffset":F
    .end local v12    # "childLeft":I
    :cond_2
    int-to-float v1, v10

    iget v12, v9, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    mul-float/2addr v1, v12

    float-to-int v1, v1

    sub-int v12, v4, v1

    .line 1185
    .restart local v12    # "childLeft":I
    sub-int v1, v4, v12

    int-to-float v1, v1

    int-to-float v13, v10

    div-float/2addr v1, v13

    .line 1188
    .restart local v1    # "newOffset":F
    :goto_2
    iget v13, v9, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    cmpl-float v13, v1, v13

    if-eqz v13, :cond_3

    const/4 v13, 0x1

    goto :goto_3

    :cond_3
    const/4 v13, 0x0

    .line 1190
    .local v13, "changeOffset":Z
    :goto_3
    iget v6, v9, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    and-int/lit8 v6, v6, 0x70

    .line 1192
    .local v6, "vgrav":I
    const/16 v2, 0x10

    if-eq v6, v2, :cond_5

    const/16 v2, 0x50

    if-eq v6, v2, :cond_4

    .line 1195
    iget v2, v9, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    add-int v3, v12, v10

    move v15, v4

    iget v4, v9, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    .line 1195
    .end local v4    # "width":I
    .restart local v15    # "width":I
    add-int/2addr v4, v11

    invoke-virtual {v8, v12, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 1197
    nop

    .line 1226
    move/from16 v16, v5

    goto :goto_5

    .line 1201
    .end local v15    # "width":I
    .restart local v4    # "width":I
    :cond_4
    move v15, v4

    .line 1201
    .end local v4    # "width":I
    .restart local v15    # "width":I
    sub-int v2, p5, p3

    .line 1202
    .local v2, "height":I
    iget v3, v9, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    sub-int v3, v2, v3

    .line 1203
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    add-int v4, v12, v10

    move/from16 v16, v5

    iget v5, v9, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    .line 1203
    .end local v5    # "childCount":I
    .restart local v16    # "childCount":I
    sub-int v5, v2, v5

    .line 1202
    invoke-virtual {v8, v12, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 1206
    goto :goto_5

    .line 1210
    .end local v2    # "height":I
    .end local v15    # "width":I
    .end local v16    # "childCount":I
    .restart local v4    # "width":I
    .restart local v5    # "childCount":I
    :cond_5
    move v15, v4

    move/from16 v16, v5

    .line 1210
    .end local v4    # "width":I
    .end local v5    # "childCount":I
    .restart local v15    # "width":I
    .restart local v16    # "childCount":I
    sub-int v2, p5, p3

    .line 1211
    .restart local v2    # "height":I
    sub-int v3, v2, v11

    div-int/lit8 v3, v3, 0x2

    .line 1215
    .local v3, "childTop":I
    iget v4, v9, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    if-ge v3, v4, :cond_6

    .line 1216
    iget v3, v9, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    goto :goto_4

    .line 1217
    :cond_6
    add-int v4, v3, v11

    iget v5, v9, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    sub-int v5, v2, v5

    if-le v4, v5, :cond_7

    .line 1218
    iget v4, v9, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    sub-int v4, v2, v4

    sub-int v3, v4, v11

    .line 1220
    :cond_7
    :goto_4
    add-int v4, v12, v10

    add-int v5, v3, v11

    invoke-virtual {v8, v12, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 1222
    nop

    .line 1226
    .end local v2    # "height":I
    .end local v3    # "childTop":I
    :goto_5
    if-eqz v13, :cond_8

    .line 1227
    invoke-virtual {v0, v8, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerViewOffset(Landroid/view/View;F)V

    .line 1230
    :cond_8
    iget v2, v9, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_9

    const/4 v2, 0x0

    goto :goto_6

    :cond_9
    const/4 v2, 0x4

    .line 1231
    .local v2, "newVisibility":I
    :goto_6
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v2, :cond_a

    .line 1232
    invoke-virtual {v8, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1161
    .end local v1    # "newOffset":F
    .end local v2    # "newVisibility":I
    .end local v6    # "vgrav":I
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    .end local v10    # "childWidth":I
    .end local v11    # "childHeight":I
    .end local v12    # "childLeft":I
    .end local v13    # "changeOffset":Z
    :cond_a
    :goto_7
    add-int/lit8 v7, v7, 0x1

    move v4, v15

    move/from16 v5, v16

    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1236
    .end local v7    # "i":I
    .end local v15    # "width":I
    .end local v16    # "childCount":I
    .restart local v4    # "width":I
    .restart local v5    # "childCount":I
    :cond_b
    move v15, v4

    move/from16 v16, v5

    .line 1236
    .end local v4    # "width":I
    .end local v5    # "childCount":I
    .restart local v15    # "width":I
    .restart local v16    # "childCount":I
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v4/widget/DrawerLayout;->mInLayout:Z

    .line 1237
    iput-boolean v1, v0, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    .line 1238
    return-void
.end method

.method protected onMeasure(II)V
    .locals 21
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    move-object/from16 v0, p0

    .line 969
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 970
    .local v1, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 971
    .local v2, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 972
    .local v3, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 974
    .local v4, "heightSize":I
    const/high16 v5, 0x40000000    # 2.0f

    if-ne v1, v5, :cond_0

    if-eq v2, v5, :cond_4

    .line 975
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->isInEditMode()Z

    move-result v6

    if-eqz v6, :cond_17

    .line 980
    const/high16 v6, -0x80000000

    if-ne v1, v6, :cond_1

    .line 981
    const/high16 v1, 0x40000000    # 2.0f

    goto :goto_0

    .line 982
    :cond_1
    if-nez v1, :cond_2

    .line 983
    const/high16 v1, 0x40000000    # 2.0f

    .line 984
    const/16 v3, 0x12c

    .line 986
    :cond_2
    :goto_0
    if-ne v2, v6, :cond_3

    .line 987
    const/high16 v2, 0x40000000    # 2.0f

    goto :goto_1

    .line 988
    :cond_3
    if-nez v2, :cond_4

    .line 989
    const/high16 v2, 0x40000000    # 2.0f

    .line 990
    const/16 v4, 0x12c

    .line 998
    :cond_4
    :goto_1
    invoke-virtual {v0, v3, v4}, Landroid/support/v4/widget/DrawerLayout;->setMeasuredDimension(II)V

    .line 1000
    iget-object v6, v0, Landroid/support/v4/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    if-eqz v6, :cond_5

    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    goto :goto_2

    :cond_5
    const/4 v6, 0x0

    .line 1001
    .local v6, "applyInsets":Z
    :goto_2
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v9

    .line 1005
    .local v9, "layoutDirection":I
    const/4 v10, 0x0

    .line 1006
    .local v10, "hasDrawerOnLeftEdge":Z
    const/4 v11, 0x0

    .line 1007
    .local v11, "hasDrawerOnRightEdge":Z
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v12

    .line 1008
    .local v12, "childCount":I
    move v13, v11

    move v11, v10

    const/4 v10, 0x0

    .line 1008
    .local v10, "i":I
    .local v11, "hasDrawerOnLeftEdge":Z
    .local v13, "hasDrawerOnRightEdge":Z
    :goto_3
    if-ge v10, v12, :cond_16

    .line 1009
    invoke-virtual {v0, v10}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 1011
    .local v14, "child":Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v15

    const/16 v7, 0x8

    if-ne v15, v7, :cond_6

    .line 1012
    nop

    .line 1008
    move/from16 v17, v1

    move/from16 v18, v2

    move v2, v5

    move/from16 v19, v6

    const/4 v15, 0x0

    goto/16 :goto_8

    .line 1015
    :cond_6
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 1017
    .local v7, "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    if-eqz v6, :cond_d

    .line 1018
    iget v5, v7, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    invoke-static {v5, v9}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v5

    .line 1019
    .local v5, "cgrav":I
    invoke-static {v14}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v16

    const/16 v8, 0x15

    if-eqz v16, :cond_9

    .line 1020
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v15, v8, :cond_d

    .line 1021
    iget-object v8, v0, Landroid/support/v4/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    check-cast v8, Landroid/view/WindowInsets;

    .line 1022
    .local v8, "wi":Landroid/view/WindowInsets;
    const/4 v15, 0x3

    if-ne v5, v15, :cond_7

    .line 1023
    invoke-virtual {v8}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v15

    .line 1024
    move/from16 v17, v1

    invoke-virtual {v8}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    .line 1025
    .end local v1    # "widthMode":I
    .local v17, "widthMode":I
    move/from16 v18, v2

    invoke-virtual {v8}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v2

    .line 1023
    .end local v2    # "heightMode":I
    .local v18, "heightMode":I
    move/from16 v19, v6

    const/4 v6, 0x0

    invoke-virtual {v8, v15, v1, v6, v2}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v8

    .line 1023
    .end local v6    # "applyInsets":Z
    .local v19, "applyInsets":Z
    goto :goto_4

    .line 1026
    .end local v17    # "widthMode":I
    .end local v18    # "heightMode":I
    .end local v19    # "applyInsets":Z
    .restart local v1    # "widthMode":I
    .restart local v2    # "heightMode":I
    .restart local v6    # "applyInsets":Z
    :cond_7
    move/from16 v17, v1

    move/from16 v18, v2

    move/from16 v19, v6

    const/4 v6, 0x0

    .line 1026
    .end local v1    # "widthMode":I
    .end local v2    # "heightMode":I
    .end local v6    # "applyInsets":Z
    .restart local v17    # "widthMode":I
    .restart local v18    # "heightMode":I
    .restart local v19    # "applyInsets":Z
    const/4 v1, 0x5

    if-ne v5, v1, :cond_8

    .line 1027
    invoke-virtual {v8}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    .line 1028
    invoke-virtual {v8}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v2

    .line 1029
    invoke-virtual {v8}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v15

    .line 1027
    invoke-virtual {v8, v6, v1, v2, v15}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v8

    .line 1031
    :cond_8
    :goto_4
    invoke-virtual {v14, v8}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 1032
    .end local v8    # "wi":Landroid/view/WindowInsets;
    goto :goto_6

    .line 1034
    .end local v17    # "widthMode":I
    .end local v18    # "heightMode":I
    .end local v19    # "applyInsets":Z
    .restart local v1    # "widthMode":I
    .restart local v2    # "heightMode":I
    .restart local v6    # "applyInsets":Z
    :cond_9
    move/from16 v17, v1

    move/from16 v18, v2

    move/from16 v19, v6

    .line 1034
    .end local v1    # "widthMode":I
    .end local v2    # "heightMode":I
    .end local v6    # "applyInsets":Z
    .restart local v17    # "widthMode":I
    .restart local v18    # "heightMode":I
    .restart local v19    # "applyInsets":Z
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v8, :cond_c

    .line 1035
    iget-object v1, v0, Landroid/support/v4/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    check-cast v1, Landroid/view/WindowInsets;

    .line 1036
    .local v1, "wi":Landroid/view/WindowInsets;
    const/4 v2, 0x3

    if-ne v5, v2, :cond_a

    .line 1037
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v2

    .line 1038
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v6

    .line 1039
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v8

    .line 1037
    const/4 v15, 0x0

    invoke-virtual {v1, v2, v6, v15, v8}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v1

    goto :goto_5

    .line 1040
    :cond_a
    const/4 v15, 0x0

    const/4 v2, 0x5

    if-ne v5, v2, :cond_b

    .line 1041
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    .line 1042
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v6

    .line 1043
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v8

    .line 1041
    invoke-virtual {v1, v15, v2, v6, v8}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v1

    .line 1045
    :cond_b
    :goto_5
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v2

    iput v2, v7, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->leftMargin:I

    .line 1046
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    iput v2, v7, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    .line 1047
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v2

    iput v2, v7, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->rightMargin:I

    .line 1048
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v2

    iput v2, v7, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    .line 1048
    .end local v1    # "wi":Landroid/view/WindowInsets;
    .end local v5    # "cgrav":I
    goto :goto_7

    .line 1053
    :cond_c
    :goto_6
    const/4 v15, 0x0

    goto :goto_7

    .line 1053
    .end local v17    # "widthMode":I
    .end local v18    # "heightMode":I
    .end local v19    # "applyInsets":Z
    .local v1, "widthMode":I
    .restart local v2    # "heightMode":I
    .restart local v6    # "applyInsets":Z
    :cond_d
    move/from16 v17, v1

    move/from16 v18, v2

    move/from16 v19, v6

    const/4 v15, 0x0

    .line 1053
    .end local v1    # "widthMode":I
    .end local v2    # "heightMode":I
    .end local v6    # "applyInsets":Z
    .restart local v17    # "widthMode":I
    .restart local v18    # "heightMode":I
    .restart local v19    # "applyInsets":Z
    :goto_7
    invoke-virtual {v0, v14}, Landroid/support/v4/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1055
    iget v1, v7, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->leftMargin:I

    sub-int v1, v3, v1

    iget v2, v7, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1057
    .local v1, "contentWidthSpec":I
    iget v5, v7, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    sub-int v5, v4, v5

    iget v6, v7, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v5, v6

    invoke-static {v5, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 1059
    .local v5, "contentHeightSpec":I
    invoke-virtual {v14, v1, v5}, Landroid/view/View;->measure(II)V

    .line 1060
    .end local v1    # "contentWidthSpec":I
    .end local v5    # "contentHeightSpec":I
    nop

    .line 1008
    .end local v7    # "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    .end local v14    # "child":Landroid/view/View;
    .end local v17    # "widthMode":I
    .end local v18    # "heightMode":I
    .end local v19    # "applyInsets":Z
    .local v1, "widthMode":I
    .restart local v2    # "heightMode":I
    .restart local v6    # "applyInsets":Z
    :goto_8
    move/from16 v2, p1

    move/from16 v0, p2

    .line 1008
    .end local v1    # "widthMode":I
    .end local v2    # "heightMode":I
    .end local v6    # "applyInsets":Z
    .restart local v17    # "widthMode":I
    .restart local v18    # "heightMode":I
    .restart local v19    # "applyInsets":Z
    goto/16 :goto_b

    .line 1060
    .restart local v7    # "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    .restart local v14    # "child":Landroid/view/View;
    :cond_e
    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v0, v14}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1061
    sget-boolean v1, Landroid/support/v4/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    if-eqz v1, :cond_f

    .line 1062
    invoke-static {v14}, Landroid/support/v4/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v1

    iget v5, v0, Landroid/support/v4/widget/DrawerLayout;->mDrawerElevation:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_f

    .line 1063
    iget v1, v0, Landroid/support/v4/widget/DrawerLayout;->mDrawerElevation:F

    invoke-static {v14, v1}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 1066
    :cond_f
    nop

    .line 1067
    invoke-virtual {v0, v14}, Landroid/support/v4/widget/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    .line 1070
    .local v1, "childGravity":I
    const/4 v5, 0x3

    if-ne v1, v5, :cond_10

    const/4 v5, 0x1

    goto :goto_9

    :cond_10
    move v5, v15

    .line 1071
    .local v5, "isLeftEdgeDrawer":Z
    :goto_9
    if-eqz v5, :cond_11

    if-nez v11, :cond_12

    :cond_11
    if-nez v5, :cond_13

    if-eqz v13, :cond_13

    .line 1073
    :cond_12
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Child drawer has absolute gravity "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1074
    invoke-static {v1}, Landroid/support/v4/widget/DrawerLayout;->gravityToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " but this "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "DrawerLayout"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " already has a "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "drawer view along that edge"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1077
    :cond_13
    if-eqz v5, :cond_14

    .line 1078
    const/4 v11, 0x1

    goto :goto_a

    .line 1080
    :cond_14
    const/4 v13, 0x1

    .line 1082
    :goto_a
    iget v6, v0, Landroid/support/v4/widget/DrawerLayout;->mMinDrawerMargin:I

    iget v8, v7, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->leftMargin:I

    add-int/2addr v6, v8

    iget v8, v7, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->rightMargin:I

    add-int/2addr v6, v8

    iget v8, v7, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->width:I

    move/from16 v2, p1

    invoke-static {v2, v6, v8}, Landroid/support/v4/widget/DrawerLayout;->getChildMeasureSpec(III)I

    move-result v6

    .line 1085
    .local v6, "drawerWidthSpec":I
    iget v8, v7, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    iget v15, v7, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v8, v15

    iget v15, v7, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->height:I

    move/from16 v0, p2

    invoke-static {v0, v8, v15}, Landroid/support/v4/widget/DrawerLayout;->getChildMeasureSpec(III)I

    move-result v8

    .line 1088
    .local v8, "drawerHeightSpec":I
    invoke-virtual {v14, v6, v8}, Landroid/view/View;->measure(II)V

    .line 1089
    .end local v1    # "childGravity":I
    .end local v5    # "isLeftEdgeDrawer":Z
    .end local v6    # "drawerWidthSpec":I
    .end local v8    # "drawerHeightSpec":I
    nop

    .line 1008
    .end local v7    # "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    .end local v14    # "child":Landroid/view/View;
    :goto_b
    add-int/lit8 v10, v10, 0x1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v6, v19

    move-object/from16 v0, p0

    const/high16 v5, 0x40000000    # 2.0f

    goto/16 :goto_3

    .line 1090
    .restart local v7    # "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    .restart local v14    # "child":Landroid/view/View;
    :cond_15
    move/from16 v2, p1

    move/from16 v0, p2

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Child "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " does not have a valid layout_gravity - must be Gravity.LEFT, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "Gravity.RIGHT or Gravity.NO_GRAVITY"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1095
    .end local v7    # "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    .end local v10    # "i":I
    .end local v14    # "child":Landroid/view/View;
    .end local v17    # "widthMode":I
    .end local v18    # "heightMode":I
    .end local v19    # "applyInsets":Z
    .local v1, "widthMode":I
    .restart local v2    # "heightMode":I
    .local v6, "applyInsets":Z
    :cond_16
    move/from16 v0, p2

    move/from16 v17, v1

    move/from16 v18, v2

    move/from16 v19, v6

    move/from16 v2, p1

    .line 1095
    .end local v1    # "widthMode":I
    .end local v2    # "heightMode":I
    .end local v6    # "applyInsets":Z
    .restart local v17    # "widthMode":I
    .restart local v18    # "heightMode":I
    .restart local v19    # "applyInsets":Z
    return-void

    .line 993
    .end local v9    # "layoutDirection":I
    .end local v11    # "hasDrawerOnLeftEdge":Z
    .end local v12    # "childCount":I
    .end local v13    # "hasDrawerOnRightEdge":Z
    .end local v17    # "widthMode":I
    .end local v18    # "heightMode":I
    .end local v19    # "applyInsets":Z
    .restart local v1    # "widthMode":I
    .restart local v2    # "heightMode":I
    :cond_17
    move/from16 v0, p2

    move v5, v2

    move/from16 v2, p1

    .line 993
    .end local v2    # "heightMode":I
    .local v5, "heightMode":I
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "DrawerLayout must be measured with MeasureSpec.EXACTLY."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 1900
    instance-of v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;

    if-nez v0, :cond_0

    .line 1901
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1902
    return-void

    .line 1905
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$SavedState;

    .line 1906
    .local v0, "ss":Landroid/support/v4/widget/DrawerLayout$SavedState;
    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1908
    iget v1, v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    if-eqz v1, :cond_1

    .line 1909
    iget v1, v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v1

    .line 1910
    .local v1, "toOpen":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 1911
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    .line 1915
    .end local v1    # "toOpen":Landroid/view/View;
    :cond_1
    iget v1, v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeLeft:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    .line 1916
    iget v1, v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeLeft:I

    invoke-virtual {p0, v1, v2}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 1918
    :cond_2
    iget v1, v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeRight:I

    if-eq v1, v2, :cond_3

    .line 1919
    iget v1, v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeRight:I

    const/4 v3, 0x5

    invoke-virtual {p0, v1, v3}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 1921
    :cond_3
    iget v1, v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeStart:I

    if-eq v1, v2, :cond_4

    .line 1922
    iget v1, v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeStart:I

    const v3, 0x800003

    invoke-virtual {p0, v1, v3}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 1924
    :cond_4
    iget v1, v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeEnd:I

    if-eq v1, v2, :cond_5

    .line 1925
    iget v1, v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeEnd:I

    const v2, 0x800005

    invoke-virtual {p0, v1, v2}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 1927
    :cond_5
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0
    .param p1, "layoutDirection"    # I

    .line 1318
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->resolveShadowDrawables()V

    .line 1319
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 11

    .line 1931
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1932
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Landroid/support/v4/widget/DrawerLayout$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v4/widget/DrawerLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1934
    .local v1, "ss":Landroid/support/v4/widget/DrawerLayout$SavedState;
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v2

    .line 1935
    .local v2, "childCount":I
    const/4 v3, 0x0

    move v4, v3

    .line 1935
    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_4

    .line 1936
    invoke-virtual {p0, v4}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1937
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 1939
    .local v6, "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    iget v7, v6, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    move v7, v8

    goto :goto_1

    :cond_0
    move v7, v3

    .line 1941
    .local v7, "isOpenedAndNotClosing":Z
    :goto_1
    iget v9, v6, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    goto :goto_2

    :cond_1
    move v8, v3

    .line 1942
    .local v8, "isClosedAndOpening":Z
    :goto_2
    if-nez v7, :cond_3

    if-eqz v8, :cond_2

    goto :goto_3

    .line 1935
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    .end local v7    # "isOpenedAndNotClosing":Z
    .end local v8    # "isClosedAndOpening":Z
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1945
    .restart local v5    # "child":Landroid/view/View;
    .restart local v6    # "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    .restart local v7    # "isOpenedAndNotClosing":Z
    .restart local v8    # "isClosedAndOpening":Z
    :cond_3
    :goto_3
    iget v3, v6, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    iput v3, v1, Landroid/support/v4/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    .line 1946
    nop

    .line 1950
    .end local v4    # "i":I
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    .end local v7    # "isOpenedAndNotClosing":Z
    .end local v8    # "isClosedAndOpening":Z
    :cond_4
    iget v3, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeLeft:I

    iput v3, v1, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeLeft:I

    .line 1951
    iget v3, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeRight:I

    iput v3, v1, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeRight:I

    .line 1952
    iget v3, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeStart:I

    iput v3, v1, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeStart:I

    .line 1953
    iget v3, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeEnd:I

    iput v3, v1, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeEnd:I

    .line 1955
    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1472
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 1473
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 1475
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1476
    .local v0, "action":I
    const/4 v1, 0x1

    .line 1478
    .local v1, "wantTouchEvents":Z
    and-int/lit16 v2, v0, 0xff

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v2, v3, :cond_2

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 1490
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 1491
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 1492
    .local v3, "y":F
    const/4 v6, 0x1

    .line 1493
    .local v6, "peekingOnly":Z
    iget-object v7, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    float-to-int v8, v2

    float-to-int v9, v3

    invoke-virtual {v7, v8, v9}, Landroid/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v7

    .line 1494
    .local v7, "touchedView":Landroid/view/View;
    if-eqz v7, :cond_1

    invoke-virtual {p0, v7}, Landroid/support/v4/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1495
    iget v8, p0, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionX:F

    sub-float v8, v2, v8

    .line 1496
    .local v8, "dx":F
    iget v9, p0, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionY:F

    sub-float v9, v3, v9

    .line 1497
    .local v9, "dy":F
    iget-object v10, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v10}, Landroid/support/v4/widget/ViewDragHelper;->getTouchSlop()I

    move-result v10

    .line 1498
    .local v10, "slop":I
    mul-float v11, v8, v8

    mul-float v12, v9, v9

    add-float/2addr v11, v12

    mul-int v12, v10, v10

    int-to-float v12, v12

    cmpg-float v11, v11, v12

    if-gez v11, :cond_1

    .line 1500
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->findOpenDrawer()Landroid/view/View;

    move-result-object v11

    .line 1501
    .local v11, "openDrawer":Landroid/view/View;
    if-eqz v11, :cond_1

    .line 1502
    invoke-virtual {p0, v11}, Landroid/support/v4/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_0

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    move v6, v4

    .line 1506
    .end local v8    # "dx":F
    .end local v9    # "dy":F
    .end local v10    # "slop":I
    .end local v11    # "openDrawer":Landroid/view/View;
    :cond_1
    invoke-virtual {p0, v6}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers(Z)V

    .line 1507
    iput-boolean v5, p0, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 1508
    goto :goto_1

    .line 1480
    .end local v2    # "x":F
    .end local v3    # "y":F
    .end local v6    # "peekingOnly":Z
    .end local v7    # "touchedView":Landroid/view/View;
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 1481
    .restart local v2    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 1482
    .restart local v3    # "y":F
    iput v2, p0, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionX:F

    .line 1483
    iput v3, p0, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionY:F

    .line 1484
    iput-boolean v5, p0, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 1485
    iput-boolean v5, p0, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    .line 1486
    goto :goto_1

    .line 1512
    .end local v2    # "x":F
    .end local v3    # "y":F
    :cond_2
    invoke-virtual {p0, v4}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers(Z)V

    .line 1513
    iput-boolean v5, p0, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 1514
    iput-boolean v5, p0, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    .line 1519
    :goto_1
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public openDrawer(I)V
    .locals 1
    .param p1, "gravity"    # I

    .line 1625
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(IZ)V

    .line 1626
    return-void
.end method

.method public openDrawer(IZ)V
    .locals 4
    .param p1, "gravity"    # I
    .param p2, "animate"    # Z

    .line 1636
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    .line 1637
    .local v0, "drawerView":Landroid/view/View;
    if-nez v0, :cond_0

    .line 1638
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No drawer view found with gravity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1639
    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayout;->gravityToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1641
    :cond_0
    invoke-virtual {p0, v0, p2}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(Landroid/view/View;Z)V

    .line 1642
    return-void
.end method

.method public openDrawer(Landroid/view/View;)V
    .locals 1
    .param p1, "drawerView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1581
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(Landroid/view/View;Z)V

    .line 1582
    return-void
.end method

.method public openDrawer(Landroid/view/View;Z)V
    .locals 4
    .param p1, "drawerView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "animate"    # Z

    .line 1591
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1592
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not a sliding drawer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1595
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 1596
    .local v0, "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    iget-boolean v1, p0, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_1

    .line 1597
    iput v2, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    .line 1598
    const/4 v1, 0x1

    iput v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I

    .line 1600
    invoke-direct {p0, p1, v1}, Landroid/support/v4/widget/DrawerLayout;->updateChildrenImportantForAccessibility(Landroid/view/View;Z)V

    goto :goto_0

    .line 1601
    :cond_1
    const/4 v1, 0x0

    if-eqz p2, :cond_3

    .line 1602
    iget v2, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I

    .line 1604
    const/4 v2, 0x3

    invoke-virtual {p0, p1, v2}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1605
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v2, p1, v1, v3}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_0

    .line 1607
    :cond_2
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1608
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1607
    invoke-virtual {v1, p1, v2, v3}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_0

    .line 1611
    :cond_3
    invoke-virtual {p0, p1, v2}, Landroid/support/v4/widget/DrawerLayout;->moveDrawerToOffset(Landroid/view/View;F)V

    .line 1612
    iget v2, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, v2, v1, p1}, Landroid/support/v4/widget/DrawerLayout;->updateDrawerState(IILandroid/view/View;)V

    .line 1613
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1615
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1616
    return-void
.end method

.method public removeDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/v4/widget/DrawerLayout$DrawerListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 522
    if-nez p1, :cond_0

    .line 523
    return-void

    .line 525
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    if-nez v0, :cond_1

    .line 527
    return-void

    .line 529
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 530
    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1
    .param p1, "disallowIntercept"    # Z

    .line 1528
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 1530
    iput-boolean p1, p0, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 1531
    if-eqz p1, :cond_0

    .line 1532
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers(Z)V

    .line 1534
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 1242
    iget-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->mInLayout:Z

    if-nez v0, :cond_0

    .line 1243
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 1245
    :cond_0
    return-void
.end method

.method public setChildInsets(Ljava/lang/Object;Z)V
    .locals 1
    .param p1, "insets"    # Ljava/lang/Object;
    .param p2, "draw"    # Z
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 399
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    .line 400
    iput-boolean p2, p0, Landroid/support/v4/widget/DrawerLayout;->mDrawStatusBarBackground:Z

    .line 401
    if-nez p2, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->setWillNotDraw(Z)V

    .line 402
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->requestLayout()V

    .line 403
    return-void
.end method

.method public setDrawerElevation(F)V
    .locals 3
    .param p1, "elevation"    # F

    .line 370
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->mDrawerElevation:F

    .line 371
    const/4 v0, 0x0

    .line 371
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 372
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 373
    .local v1, "child":Landroid/view/View;
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 374
    iget v2, p0, Landroid/support/v4/widget/DrawerLayout;->mDrawerElevation:F

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 371
    .end local v1    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 377
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public setDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/v4/widget/DrawerLayout$DrawerListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 487
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->removeDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 490
    :cond_0
    if-eqz p1, :cond_1

    .line 491
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->addDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 495
    :cond_1
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    .line 496
    return-void
.end method

.method public setDrawerLockMode(I)V
    .locals 1
    .param p1, "lockMode"    # I

    .line 546
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 547
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 548
    return-void
.end method

.method public setDrawerLockMode(II)V
    .locals 3
    .param p1, "lockMode"    # I
    .param p2, "edgeGravity"    # I

    .line 570
    nop

    .line 571
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 570
    invoke-static {p2, v0}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    .line 573
    .local v0, "absGravity":I
    const/4 v1, 0x3

    if-eq p2, v1, :cond_3

    const/4 v2, 0x5

    if-eq p2, v2, :cond_2

    const v2, 0x800003

    if-eq p2, v2, :cond_1

    const v2, 0x800005

    if-eq p2, v2, :cond_0

    goto :goto_0

    .line 584
    :cond_0
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeEnd:I

    goto :goto_0

    .line 581
    :cond_1
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeStart:I

    .line 582
    goto :goto_0

    .line 578
    :cond_2
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeRight:I

    .line 579
    goto :goto_0

    .line 575
    :cond_3
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeLeft:I

    .line 576
    nop

    .line 588
    :goto_0
    if-eqz p1, :cond_5

    .line 590
    if-ne v0, v1, :cond_4

    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    goto :goto_1

    :cond_4
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    .line 591
    .local v1, "helper":Landroid/support/v4/widget/ViewDragHelper;
    :goto_1
    invoke-virtual {v1}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    .line 593
    .end local v1    # "helper":Landroid/support/v4/widget/ViewDragHelper;
    :cond_5
    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 595
    :pswitch_0
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v1

    .line 596
    .local v1, "toOpen":Landroid/view/View;
    if-eqz v1, :cond_6

    .line 597
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    goto :goto_2

    .line 601
    .end local v1    # "toOpen":Landroid/view/View;
    :pswitch_1
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v1

    .line 602
    .local v1, "toClose":Landroid/view/View;
    if-eqz v1, :cond_6

    .line 603
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    .line 608
    .end local v1    # "toClose":Landroid/view/View;
    :cond_6
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDrawerLockMode(ILandroid/view/View;)V
    .locals 3
    .param p1, "lockMode"    # I
    .param p2, "drawerView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 629
    invoke-virtual {p0, p2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 630
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "drawer with appropriate layout_gravity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 633
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 634
    .local v0, "gravity":I
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 635
    return-void
.end method

.method public setDrawerShadow(II)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2, "gravity"    # I

    .line 459
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/support/v4/widget/DrawerLayout;->setDrawerShadow(Landroid/graphics/drawable/Drawable;I)V

    .line 460
    return-void
.end method

.method public setDrawerShadow(Landroid/graphics/drawable/Drawable;I)V
    .locals 2
    .param p1, "shadowDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "gravity"    # I

    .line 425
    sget-boolean v0, Landroid/support/v4/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    if-eqz v0, :cond_0

    .line 427
    return-void

    .line 429
    :cond_0
    const v0, 0x800003

    and-int v1, p2, v0

    if-ne v1, v0, :cond_1

    .line 430
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 431
    :cond_1
    const v0, 0x800005

    and-int v1, p2, v0

    if-ne v1, v0, :cond_2

    .line 432
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 433
    :cond_2
    and-int/lit8 v0, p2, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 434
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 435
    :cond_3
    and-int/lit8 v0, p2, 0x5

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 436
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    .line 440
    :goto_0
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->resolveShadowDrawables()V

    .line 441
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 442
    return-void

    .line 438
    :cond_4
    return-void
.end method

.method public setDrawerTitle(ILjava/lang/CharSequence;)V
    .locals 2
    .param p1, "edgeGravity"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 721
    nop

    .line 722
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 721
    invoke-static {p1, v0}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    .line 723
    .local v0, "absGravity":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 724
    iput-object p2, p0, Landroid/support/v4/widget/DrawerLayout;->mTitleLeft:Ljava/lang/CharSequence;

    goto :goto_0

    .line 725
    :cond_0
    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 726
    iput-object p2, p0, Landroid/support/v4/widget/DrawerLayout;->mTitleRight:Ljava/lang/CharSequence;

    .line 728
    :cond_1
    :goto_0
    return-void
.end method

.method setDrawerViewOffset(Landroid/view/View;F)V
    .locals 2
    .param p1, "drawerView"    # Landroid/view/View;
    .param p2, "slideOffset"    # F

    .line 868
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 869
    .local v0, "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    iget v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    cmpl-float v1, p2, v1

    if-nez v1, :cond_0

    .line 870
    return-void

    .line 873
    :cond_0
    iput p2, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    .line 874
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/DrawerLayout;->dispatchOnDrawerSlide(Landroid/view/View;F)V

    .line 875
    return-void
.end method

.method public setScrimColor(I)V
    .locals 0
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 468
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->mScrimColor:I

    .line 469
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 470
    return-void
.end method

.method public setStatusBarBackground(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 1300
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 1301
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1302
    return-void
.end method

.method public setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1279
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 1280
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1281
    return-void
.end method

.method public setStatusBarBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 1312
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 1313
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1314
    return-void
.end method

.method updateDrawerState(IILandroid/view/View;)V
    .locals 6
    .param p1, "forGravity"    # I
    .param p2, "activeState"    # I
    .param p3, "activeDrawer"    # Landroid/view/View;

    .line 755
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0}, Landroid/support/v4/widget/ViewDragHelper;->getViewDragState()I

    move-result v0

    .line 756
    .local v0, "leftState":I
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v1}, Landroid/support/v4/widget/ViewDragHelper;->getViewDragState()I

    move-result v1

    .line 759
    .local v1, "rightState":I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 761
    :cond_0
    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 764
    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    .line 762
    :cond_2
    :goto_0
    const/4 v2, 0x2

    goto :goto_2

    .line 760
    :cond_3
    :goto_1
    const/4 v2, 0x1

    .line 764
    .local v2, "state":I
    :goto_2
    nop

    .line 767
    if-eqz p3, :cond_5

    if-nez p2, :cond_5

    .line 768
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 769
    .local v3, "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    iget v4, v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_4

    .line 770
    invoke-virtual {p0, p3}, Landroid/support/v4/widget/DrawerLayout;->dispatchOnDrawerClosed(Landroid/view/View;)V

    goto :goto_3

    .line 771
    :cond_4
    iget v4, v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_5

    .line 772
    invoke-virtual {p0, p3}, Landroid/support/v4/widget/DrawerLayout;->dispatchOnDrawerOpened(Landroid/view/View;)V

    .line 776
    .end local v3    # "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    :cond_5
    :goto_3
    iget v3, p0, Landroid/support/v4/widget/DrawerLayout;->mDrawerState:I

    if-eq v2, v3, :cond_6

    .line 777
    iput v2, p0, Landroid/support/v4/widget/DrawerLayout;->mDrawerState:I

    .line 779
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    if-eqz v3, :cond_6

    .line 782
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 783
    .local v3, "listenerCount":I
    add-int/lit8 v4, v3, -0x1

    .line 783
    .local v4, "i":I
    :goto_4
    if-ltz v4, :cond_6

    .line 784
    iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    invoke-interface {v5, v2}, Landroid/support/v4/widget/DrawerLayout$DrawerListener;->onDrawerStateChanged(I)V

    .line 783
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .line 788
    .end local v3    # "listenerCount":I
    .end local v4    # "i":I
    :cond_6
    return-void
.end method
