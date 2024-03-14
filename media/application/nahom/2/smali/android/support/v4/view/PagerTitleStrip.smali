.class public Landroid/support/v4/view/PagerTitleStrip;
.super Landroid/view/ViewGroup;
.source "PagerTitleStrip.java"


# annotations
.annotation runtime Landroid/support/v4/view/ViewPager$DecorView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/PagerTitleStrip$PageListener;,
        Landroid/support/v4/view/PagerTitleStrip$SingleLineAllCapsTransform;
    }
.end annotation


# static fields
.field private static final ATTRS:[I

.field private static final SIDE_ALPHA:F = 0.6f

.field private static final TEXT_ATTRS:[I

.field private static final TEXT_SPACING:I = 0x10


# instance fields
.field mCurrText:Landroid/widget/TextView;

.field private mGravity:I

.field private mLastKnownCurrentPage:I

.field mLastKnownPositionOffset:F

.field mNextText:Landroid/widget/TextView;

.field private mNonPrimaryAlpha:I

.field private final mPageListener:Landroid/support/v4/view/PagerTitleStrip$PageListener;

.field mPager:Landroid/support/v4/view/ViewPager;

.field mPrevText:Landroid/widget/TextView;

.field private mScaledTextSpacing:I

.field mTextColor:I

.field private mUpdatingPositions:Z

.field private mUpdatingText:Z

.field private mWatchingAdapter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/support/v4/view/PagerAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 72
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/v4/view/PagerTitleStrip;->ATTRS:[I

    .line 79
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101038c

    aput v2, v0, v1

    sput-object v0, Landroid/support/v4/view/PagerTitleStrip;->TEXT_ATTRS:[I

    return-void

    :array_0
    .array-data 4
        0x1010034
        0x1010095
        0x1010098
        0x10100af
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/view/PagerTitleStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 112
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownCurrentPage:I

    .line 61
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    .line 68
    new-instance v0, Landroid/support/v4/view/PagerTitleStrip$PageListener;

    invoke-direct {v0, p0}, Landroid/support/v4/view/PagerTitleStrip$PageListener;-><init>(Landroid/support/v4/view/PagerTitleStrip;)V

    iput-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPageListener:Landroid/support/v4/view/PagerTitleStrip$PageListener;

    .line 114
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/support/v4/view/PagerTitleStrip;->addView(Landroid/view/View;)V

    .line 115
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/support/v4/view/PagerTitleStrip;->addView(Landroid/view/View;)V

    .line 116
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/support/v4/view/PagerTitleStrip;->addView(Landroid/view/View;)V

    .line 118
    sget-object v0, Landroid/support/v4/view/PagerTitleStrip;->ATTRS:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 119
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 120
    .local v2, "textAppearance":I
    if-eqz v2, :cond_0

    .line 121
    iget-object v3, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-static {v3, v2}, Landroid/support/v4/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 122
    iget-object v3, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-static {v3, v2}, Landroid/support/v4/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 123
    iget-object v3, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-static {v3, v2}, Landroid/support/v4/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 125
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 126
    .local v3, "textSize":I
    if-eqz v3, :cond_1

    .line 127
    int-to-float v4, v3

    invoke-virtual {p0, v1, v4}, Landroid/support/v4/view/PagerTitleStrip;->setTextSize(IF)V

    .line 129
    :cond_1
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 130
    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 131
    .local v4, "textColor":I
    iget-object v5, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 132
    iget-object v5, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 133
    iget-object v5, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 135
    .end local v4    # "textColor":I
    :cond_2
    const/4 v4, 0x3

    const/16 v5, 0x50

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, p0, Landroid/support/v4/view/PagerTitleStrip;->mGravity:I

    .line 136
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 138
    iget-object v4, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    iput v4, p0, Landroid/support/v4/view/PagerTitleStrip;->mTextColor:I

    .line 139
    const v4, 0x3f19999a    # 0.6f

    invoke-virtual {p0, v4}, Landroid/support/v4/view/PagerTitleStrip;->setNonPrimaryAlpha(F)V

    .line 141
    iget-object v4, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 142
    iget-object v4, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 143
    iget-object v4, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 145
    const/4 v4, 0x0

    .line 146
    .local v4, "allCaps":Z
    if-eqz v2, :cond_3

    .line 147
    sget-object v5, Landroid/support/v4/view/PagerTitleStrip;->TEXT_ATTRS:[I

    invoke-virtual {p1, v2, v5}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 148
    .local v5, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v5, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 149
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 152
    .end local v5    # "ta":Landroid/content/res/TypedArray;
    :cond_3
    if-eqz v4, :cond_4

    .line 153
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/support/v4/view/PagerTitleStrip;->setSingleLineAllCaps(Landroid/widget/TextView;)V

    .line 154
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/support/v4/view/PagerTitleStrip;->setSingleLineAllCaps(Landroid/widget/TextView;)V

    .line 155
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/support/v4/view/PagerTitleStrip;->setSingleLineAllCaps(Landroid/widget/TextView;)V

    goto :goto_0

    .line 157
    :cond_4
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 158
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 159
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 162
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 163
    .local v1, "density":F
    const/high16 v5, 0x41800000    # 16.0f

    mul-float/2addr v5, v1

    float-to-int v5, v5

    iput v5, p0, Landroid/support/v4/view/PagerTitleStrip;->mScaledTextSpacing:I

    .line 164
    return-void
.end method

.method private static setSingleLineAllCaps(Landroid/widget/TextView;)V
    .locals 2
    .param p0, "text"    # Landroid/widget/TextView;

    .line 104
    new-instance v0, Landroid/support/v4/view/PagerTitleStrip$SingleLineAllCapsTransform;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/view/PagerTitleStrip$SingleLineAllCapsTransform;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 105
    return-void
.end method


# virtual methods
.method getMinHeight()I
    .locals 2

    .line 462
    const/4 v0, 0x0

    .line 463
    .local v0, "minHeight":I
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 464
    .local v1, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 465
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 467
    :cond_0
    return v0
.end method

.method public getTextSpacing()I
    .locals 1

    .line 180
    iget v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mScaledTextSpacing:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .line 238
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 240
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 241
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/support/v4/view/ViewPager;

    if-nez v1, :cond_0

    .line 242
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "PagerTitleStrip must be a direct child of a ViewPager."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 246
    :cond_0
    move-object v1, v0

    check-cast v1, Landroid/support/v4/view/ViewPager;

    .line 247
    .local v1, "pager":Landroid/support/v4/view/ViewPager;
    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    .line 249
    .local v2, "adapter":Landroid/support/v4/view/PagerAdapter;
    iget-object v3, p0, Landroid/support/v4/view/PagerTitleStrip;->mPageListener:Landroid/support/v4/view/PagerTitleStrip$PageListener;

    invoke-virtual {v1, v3}, Landroid/support/v4/view/ViewPager;->setInternalPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 250
    iget-object v3, p0, Landroid/support/v4/view/PagerTitleStrip;->mPageListener:Landroid/support/v4/view/PagerTitleStrip$PageListener;

    invoke-virtual {v1, v3}, Landroid/support/v4/view/ViewPager;->addOnAdapterChangeListener(Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;)V

    .line 251
    iput-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    .line 252
    iget-object v3, p0, Landroid/support/v4/view/PagerTitleStrip;->mWatchingAdapter:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/support/v4/view/PagerTitleStrip;->mWatchingAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/view/PagerAdapter;

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0, v3, v2}, Landroid/support/v4/view/PagerTitleStrip;->updateAdapter(Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V

    .line 253
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 257
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 258
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/PagerTitleStrip;->updateAdapter(Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V

    .line 260
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setInternalPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 261
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStrip;->mPageListener:Landroid/support/v4/view/PagerTitleStrip$PageListener;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->removeOnAdapterChangeListener(Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;)V

    .line 262
    iput-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    .line 264
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 455
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    .line 456
    iget v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    nop

    :cond_0
    move v0, v1

    .line 457
    .local v0, "offset":F
    iget v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownCurrentPage:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/support/v4/view/PagerTitleStrip;->updateTextPositions(IFZ)V

    .line 459
    .end local v0    # "offset":F
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 419
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 420
    .local v0, "widthMode":I
    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    .line 421
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Must measure with an exact width"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 424
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    .line 425
    .local v2, "heightPadding":I
    const/4 v3, -0x2

    invoke-static {p2, v2, v3}, Landroid/support/v4/view/PagerTitleStrip;->getChildMeasureSpec(III)I

    move-result v4

    .line 428
    .local v4, "childHeightSpec":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 429
    .local v5, "widthSize":I
    int-to-float v6, v5

    const v7, 0x3e4ccccd    # 0.2f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    .line 430
    .local v6, "widthPadding":I
    invoke-static {p1, v6, v3}, Landroid/support/v4/view/PagerTitleStrip;->getChildMeasureSpec(III)I

    move-result v3

    .line 433
    .local v3, "childWidthSpec":I
    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v7, v3, v4}, Landroid/widget/TextView;->measure(II)V

    .line 434
    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v7, v3, v4}, Landroid/widget/TextView;->measure(II)V

    .line 435
    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v7, v3, v4}, Landroid/widget/TextView;->measure(II)V

    .line 438
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 439
    .local v7, "heightMode":I
    if-ne v7, v1, :cond_1

    .line 440
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 440
    .local v1, "height":I
    goto :goto_0

    .line 442
    .end local v1    # "height":I
    :cond_1
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    .line 443
    .local v1, "textHeight":I
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getMinHeight()I

    move-result v8

    .line 444
    .local v8, "minHeight":I
    add-int v9, v1, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 447
    .end local v8    # "minHeight":I
    .local v1, "height":I
    :goto_0
    iget-object v8, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredState()I

    move-result v8

    .line 448
    .local v8, "childState":I
    shl-int/lit8 v9, v8, 0x10

    invoke-static {v1, p2, v9}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v9

    .line 450
    .local v9, "measuredHeight":I
    invoke-virtual {p0, v5, v9}, Landroid/support/v4/view/PagerTitleStrip;->setMeasuredDimension(II)V

    .line 451
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 307
    iget-boolean v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mUpdatingText:Z

    if-nez v0, :cond_0

    .line 308
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 310
    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .line 232
    iput p1, p0, Landroid/support/v4/view/PagerTitleStrip;->mGravity:I

    .line 233
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->requestLayout()V

    .line 234
    return-void
.end method

.method public setNonPrimaryAlpha(F)V
    .locals 3
    .param p1, "alpha"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 189
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mNonPrimaryAlpha:I

    .line 190
    iget v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mNonPrimaryAlpha:I

    shl-int/lit8 v0, v0, 0x18

    iget v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mTextColor:I

    const v2, 0xffffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 191
    .local v0, "transparentColor":I
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 192
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 193
    return-void
.end method

.method public setTextColor(I)V
    .locals 3
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 202
    iput p1, p0, Landroid/support/v4/view/PagerTitleStrip;->mTextColor:I

    .line 203
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 204
    iget v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mNonPrimaryAlpha:I

    shl-int/lit8 v0, v0, 0x18

    iget v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mTextColor:I

    const v2, 0xffffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 205
    .local v0, "transparentColor":I
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 206
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 207
    return-void
.end method

.method public setTextSize(IF)V
    .locals 1
    .param p1, "unit"    # I
    .param p2, "size"    # F

    .line 220
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 221
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 222
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 223
    return-void
.end method

.method public setTextSpacing(I)V
    .locals 0
    .param p1, "spacingPixels"    # I

    .line 172
    iput p1, p0, Landroid/support/v4/view/PagerTitleStrip;->mScaledTextSpacing:I

    .line 173
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->requestLayout()V

    .line 174
    return-void
.end method

.method updateAdapter(Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V
    .locals 1
    .param p1, "oldAdapter"    # Landroid/support/v4/view/PagerAdapter;
    .param p2, "newAdapter"    # Landroid/support/v4/view/PagerAdapter;

    .line 313
    if-eqz p1, :cond_0

    .line 314
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPageListener:Landroid/support/v4/view/PagerTitleStrip$PageListener;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 315
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mWatchingAdapter:Ljava/lang/ref/WeakReference;

    .line 317
    :cond_0
    if-eqz p2, :cond_1

    .line 318
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPageListener:Landroid/support/v4/view/PagerTitleStrip$PageListener;

    invoke-virtual {p2, v0}, Landroid/support/v4/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 319
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mWatchingAdapter:Ljava/lang/ref/WeakReference;

    .line 321
    :cond_1
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_2

    .line 322
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownCurrentPage:I

    .line 323
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    .line 324
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Landroid/support/v4/view/PagerTitleStrip;->updateText(ILandroid/support/v4/view/PagerAdapter;)V

    .line 325
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->requestLayout()V

    .line 327
    :cond_2
    return-void
.end method

.method updateText(ILandroid/support/v4/view/PagerAdapter;)V
    .locals 10
    .param p1, "currentItem"    # I
    .param p2, "adapter"    # Landroid/support/v4/view/PagerAdapter;

    .line 267
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 268
    .local v1, "itemCount":I
    :goto_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/support/v4/view/PagerTitleStrip;->mUpdatingText:Z

    .line 270
    const/4 v3, 0x0

    .line 271
    .local v3, "text":Ljava/lang/CharSequence;
    if-lt p1, v2, :cond_1

    if-eqz p2, :cond_1

    .line 272
    add-int/lit8 v2, p1, -0x1

    invoke-virtual {p2, v2}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 274
    :cond_1
    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    if-eqz p2, :cond_2

    if-ge p1, v1, :cond_2

    .line 277
    invoke-virtual {p2, p1}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    .line 276
    :goto_1
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    const/4 v2, 0x0

    .line 280
    .end local v3    # "text":Ljava/lang/CharSequence;
    .local v2, "text":Ljava/lang/CharSequence;
    add-int/lit8 v3, p1, 0x1

    if-ge v3, v1, :cond_3

    if-eqz p2, :cond_3

    .line 281
    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p2, v3}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 283
    :cond_3
    iget-object v3, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 287
    .local v3, "width":I
    int-to-float v4, v3

    const v5, 0x3f4ccccd    # 0.8f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 288
    .local v4, "maxWidth":I
    const/high16 v5, -0x80000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 289
    .local v6, "childWidthSpec":I
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getHeight()I

    move-result v7

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    .line 290
    .local v7, "childHeight":I
    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 291
    .local v8, "maxHeight":I
    invoke-static {v8, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 292
    .local v5, "childHeightSpec":I
    iget-object v9, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v9, v6, v5}, Landroid/widget/TextView;->measure(II)V

    .line 293
    iget-object v9, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v9, v6, v5}, Landroid/widget/TextView;->measure(II)V

    .line 294
    iget-object v9, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v9, v6, v5}, Landroid/widget/TextView;->measure(II)V

    .line 296
    iput p1, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownCurrentPage:I

    .line 298
    iget-boolean v9, p0, Landroid/support/v4/view/PagerTitleStrip;->mUpdatingPositions:Z

    if-nez v9, :cond_4

    .line 299
    iget v9, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    invoke-virtual {p0, p1, v9, v0}, Landroid/support/v4/view/PagerTitleStrip;->updateTextPositions(IFZ)V

    .line 302
    :cond_4
    iput-boolean v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mUpdatingText:Z

    .line 303
    return-void
.end method

.method updateTextPositions(IFZ)V
    .locals 43
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "force"    # Z

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 330
    iget v3, v0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownCurrentPage:I

    if-eq v1, v3, :cond_0

    .line 331
    iget-object v3, v0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/support/v4/view/PagerTitleStrip;->updateText(ILandroid/support/v4/view/PagerAdapter;)V

    goto :goto_0

    .line 332
    :cond_0
    if-nez p3, :cond_1

    iget v4, v0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    cmpl-float v4, v2, v4

    if-nez v4, :cond_1

    .line 333
    return-void

    .line 336
    :cond_1
    :goto_0
    const/4 v4, 0x1

    iput-boolean v4, v0, Landroid/support/v4/view/PagerTitleStrip;->mUpdatingPositions:Z

    .line 338
    iget-object v4, v0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    .line 339
    .local v4, "prevWidth":I
    iget-object v5, v0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    .line 340
    .local v5, "currWidth":I
    iget-object v6, v0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    .line 341
    .local v6, "nextWidth":I
    div-int/lit8 v7, v5, 0x2

    .line 343
    .local v7, "halfCurrWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/PagerTitleStrip;->getWidth()I

    move-result v8

    .line 344
    .local v8, "stripWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/PagerTitleStrip;->getHeight()I

    move-result v9

    .line 345
    .local v9, "stripHeight":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingLeft()I

    move-result v10

    .line 346
    .local v10, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingRight()I

    move-result v11

    .line 347
    .local v11, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingTop()I

    move-result v12

    .line 348
    .local v12, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingBottom()I

    move-result v13

    .line 349
    .local v13, "paddingBottom":I
    add-int v14, v10, v7

    .line 350
    .local v14, "textPaddedLeft":I
    add-int v15, v11, v7

    .line 351
    .local v15, "textPaddedRight":I
    sub-int v16, v8, v14

    sub-int v1, v16, v15

    .line 353
    .local v1, "contentWidth":I
    const/high16 v16, 0x3f000000    # 0.5f

    add-float v16, v2, v16

    .line 354
    .local v16, "currOffset":F
    const/high16 v17, 0x3f800000    # 1.0f

    cmpl-float v18, v16, v17

    if-lez v18, :cond_2

    .line 355
    sub-float v16, v16, v17

    .line 357
    :cond_2
    sub-int v17, v8, v15

    int-to-float v3, v1

    mul-float v3, v3, v16

    float-to-int v3, v3

    sub-int v17, v17, v3

    .line 358
    .local v17, "currCenter":I
    div-int/lit8 v3, v5, 0x2

    sub-int v3, v17, v3

    .line 359
    .local v3, "currLeft":I
    move/from16 v19, v1

    add-int v1, v3, v5

    .line 361
    .local v1, "currRight":I
    .local v19, "contentWidth":I
    move/from16 v20, v5

    iget-object v5, v0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    .line 361
    .end local v5    # "currWidth":I
    .local v20, "currWidth":I
    invoke-virtual {v5}, Landroid/widget/TextView;->getBaseline()I

    move-result v5

    .line 362
    .local v5, "prevBaseline":I
    move/from16 v21, v7

    iget-object v7, v0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    .line 362
    .end local v7    # "halfCurrWidth":I
    .local v21, "halfCurrWidth":I
    invoke-virtual {v7}, Landroid/widget/TextView;->getBaseline()I

    move-result v7

    .line 363
    .local v7, "currBaseline":I
    move/from16 v22, v14

    iget-object v14, v0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    .line 363
    .end local v14    # "textPaddedLeft":I
    .local v22, "textPaddedLeft":I
    invoke-virtual {v14}, Landroid/widget/TextView;->getBaseline()I

    move-result v14

    .line 364
    .local v14, "nextBaseline":I
    move/from16 v23, v15

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 364
    .end local v15    # "textPaddedRight":I
    .local v23, "textPaddedRight":I
    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 365
    .local v15, "maxBaseline":I
    sub-int v18, v15, v5

    .line 366
    .local v18, "prevTopOffset":I
    sub-int v24, v15, v7

    .line 367
    .local v24, "currTopOffset":I
    sub-int v25, v15, v14

    .line 368
    .local v25, "nextTopOffset":I
    move/from16 v26, v5

    iget-object v5, v0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    .line 368
    .end local v5    # "prevBaseline":I
    .local v26, "prevBaseline":I
    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    add-int v5, v18, v5

    .line 369
    .local v5, "alignedPrevHeight":I
    move/from16 v27, v7

    iget-object v7, v0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    .line 369
    .end local v7    # "currBaseline":I
    .local v27, "currBaseline":I
    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    add-int v7, v24, v7

    .line 370
    .local v7, "alignedCurrHeight":I
    move/from16 v28, v14

    iget-object v14, v0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    .line 370
    .end local v14    # "nextBaseline":I
    .local v28, "nextBaseline":I
    invoke-virtual {v14}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v14

    add-int v14, v25, v14

    .line 371
    .local v14, "alignedNextHeight":I
    move/from16 v29, v15

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 371
    .end local v15    # "maxBaseline":I
    .local v29, "maxBaseline":I
    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 374
    .local v15, "maxTextHeight":I
    move/from16 v30, v5

    iget v5, v0, Landroid/support/v4/view/PagerTitleStrip;->mGravity:I

    .line 374
    .end local v5    # "alignedPrevHeight":I
    .local v30, "alignedPrevHeight":I
    and-int/lit8 v5, v5, 0x70

    .line 379
    .local v5, "vgrav":I
    move/from16 v31, v7

    .line 379
    .end local v7    # "alignedCurrHeight":I
    .local v31, "alignedCurrHeight":I
    const/16 v7, 0x10

    if-eq v5, v7, :cond_4

    const/16 v7, 0x50

    if-eq v5, v7, :cond_3

    .line 382
    add-int v7, v12, v18

    .line 383
    .local v7, "prevTop":I
    add-int v32, v12, v24

    .line 384
    .local v32, "currTop":I
    add-int v33, v12, v25

    .line 385
    .local v33, "nextTop":I
    nop

    .line 401
    move/from16 v36, v5

    move v5, v7

    move/from16 v37, v9

    move/from16 v7, v32

    move/from16 v9, v33

    goto :goto_1

    .line 394
    .end local v7    # "prevTop":I
    .end local v32    # "currTop":I
    .end local v33    # "nextTop":I
    :cond_3
    sub-int v7, v9, v13

    sub-int/2addr v7, v15

    .line 395
    .local v7, "bottomGravTop":I
    add-int v32, v7, v18

    .line 396
    .local v32, "prevTop":I
    add-int v33, v7, v24

    .line 397
    .local v33, "currTop":I
    add-int v7, v7, v25

    .line 401
    .local v7, "nextTop":I
    move/from16 v36, v5

    move/from16 v37, v9

    move/from16 v5, v32

    move v9, v7

    move/from16 v7, v33

    goto :goto_1

    .line 387
    .end local v7    # "nextTop":I
    .end local v32    # "prevTop":I
    .end local v33    # "currTop":I
    :cond_4
    sub-int v7, v9, v12

    sub-int/2addr v7, v13

    .line 388
    .local v7, "paddedHeight":I
    sub-int v32, v7, v15

    div-int/lit8 v32, v32, 0x2

    .line 389
    .local v32, "centeredTop":I
    add-int v33, v32, v18

    .line 390
    .local v33, "prevTop":I
    add-int v34, v32, v24

    .line 391
    .local v34, "currTop":I
    add-int v35, v32, v25

    .line 392
    .local v35, "nextTop":I
    nop

    .line 401
    move/from16 v36, v5

    move/from16 v37, v9

    move/from16 v5, v33

    move/from16 v7, v34

    move/from16 v9, v35

    .line 401
    .end local v32    # "centeredTop":I
    .end local v33    # "prevTop":I
    .end local v34    # "currTop":I
    .end local v35    # "nextTop":I
    .local v5, "prevTop":I
    .local v7, "currTop":I
    .local v9, "nextTop":I
    .local v36, "vgrav":I
    .local v37, "stripHeight":I
    :goto_1
    move/from16 v38, v12

    iget-object v12, v0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    .line 401
    .end local v12    # "paddingTop":I
    .local v38, "paddingTop":I
    move/from16 v39, v13

    iget-object v13, v0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    .line 402
    .end local v13    # "paddingBottom":I
    .local v39, "paddingBottom":I
    invoke-virtual {v13}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v13, v7

    .line 401
    invoke-virtual {v12, v3, v7, v1, v13}, Landroid/widget/TextView;->layout(IIII)V

    .line 404
    iget v12, v0, Landroid/support/v4/view/PagerTitleStrip;->mScaledTextSpacing:I

    sub-int v12, v3, v12

    sub-int/2addr v12, v4

    invoke-static {v10, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 405
    .local v12, "prevLeft":I
    iget-object v13, v0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    move/from16 v40, v3

    add-int v3, v12, v4

    .line 405
    .end local v3    # "currLeft":I
    .local v40, "currLeft":I
    move/from16 v41, v4

    iget-object v4, v0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    .line 406
    .end local v4    # "prevWidth":I
    .local v41, "prevWidth":I
    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v5

    .line 405
    invoke-virtual {v13, v12, v5, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 408
    sub-int v3, v8, v11

    sub-int/2addr v3, v6

    iget v4, v0, Landroid/support/v4/view/PagerTitleStrip;->mScaledTextSpacing:I

    add-int/2addr v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 410
    .local v3, "nextLeft":I
    iget-object v4, v0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    add-int v13, v3, v6

    move/from16 v42, v1

    iget-object v1, v0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    .line 411
    .end local v1    # "currRight":I
    .local v42, "currRight":I
    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v9

    .line 410
    invoke-virtual {v4, v3, v9, v13, v1}, Landroid/widget/TextView;->layout(IIII)V

    .line 413
    iput v2, v0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    .line 414
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v4/view/PagerTitleStrip;->mUpdatingPositions:Z

    .line 415
    return-void
.end method
