.class public final Lcom/onesignal/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CoordinatorLayout:[I

.field public static final CoordinatorLayout_Layout:[I

.field public static final CoordinatorLayout_Layout_android_layout_gravity:I = 0x0

.field public static final CoordinatorLayout_Layout_layout_anchor:I = 0x1

.field public static final CoordinatorLayout_Layout_layout_anchorGravity:I = 0x2

.field public static final CoordinatorLayout_Layout_layout_behavior:I = 0x3

.field public static final CoordinatorLayout_Layout_layout_dodgeInsetEdges:I = 0x4

.field public static final CoordinatorLayout_Layout_layout_insetEdge:I = 0x5

.field public static final CoordinatorLayout_Layout_layout_keyline:I = 0x6

.field public static final CoordinatorLayout_keylines:I = 0x0

.field public static final CoordinatorLayout_statusBarBackground:I = 0x1

.field public static final FontFamily:[I

.field public static final FontFamilyFont:[I

.field public static final FontFamilyFont_android_font:I = 0x0

.field public static final FontFamilyFont_android_fontStyle:I = 0x2

.field public static final FontFamilyFont_android_fontWeight:I = 0x1

.field public static final FontFamilyFont_font:I = 0x3

.field public static final FontFamilyFont_fontStyle:I = 0x4

.field public static final FontFamilyFont_fontWeight:I = 0x5

.field public static final FontFamily_fontProviderAuthority:I = 0x0

.field public static final FontFamily_fontProviderCerts:I = 0x1

.field public static final FontFamily_fontProviderFetchStrategy:I = 0x2

.field public static final FontFamily_fontProviderFetchTimeout:I = 0x3

.field public static final FontFamily_fontProviderPackage:I = 0x4

.field public static final FontFamily_fontProviderQuery:I = 0x5

.field public static final LoadingImageView:[I

.field public static final LoadingImageView_circleCrop:I = 0x0

.field public static final LoadingImageView_imageAspectRatio:I = 0x1

.field public static final LoadingImageView_imageAspectRatioAdjust:I = 0x2

.field public static final SignInButton:[I

.field public static final SignInButton_buttonSize:I = 0x0

.field public static final SignInButton_colorScheme:I = 0x1

.field public static final SignInButton_scopeUris:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 251
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/onesignal/R$styleable;->CoordinatorLayout:[I

    .line 254
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/onesignal/R$styleable;->CoordinatorLayout_Layout:[I

    .line 262
    const/4 v0, 0x6

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Lcom/onesignal/R$styleable;->FontFamily:[I

    .line 269
    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/onesignal/R$styleable;->FontFamilyFont:[I

    .line 276
    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_4

    sput-object v1, Lcom/onesignal/R$styleable;->LoadingImageView:[I

    .line 280
    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/onesignal/R$styleable;->SignInButton:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0300c0
        0x7f030149
    .end array-data

    :array_1
    .array-data 4
        0x10100b3
        0x7f0300c3
        0x7f0300c4
        0x7f0300c5
        0x7f0300f1
        0x7f0300fa
        0x7f0300fb
    .end array-data

    :array_2
    .array-data 4
        0x7f03009d
        0x7f03009e
        0x7f03009f
        0x7f0300a0
        0x7f0300a1
        0x7f0300a2
    .end array-data

    :array_3
    .array-data 4
        0x1010532
        0x1010533
        0x101053f
        0x7f03009b
        0x7f0300a3
        0x7f0300a4
    .end array-data

    :array_4
    .array-data 4
        0x7f030052
        0x7f0300b4
        0x7f0300b5
    .end array-data

    :array_5
    .array-data 4
        0x7f03004a
        0x7f030063
        0x7f030131
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method