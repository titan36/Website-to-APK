.class public Landroid/support/constraint/ConstraintSet;
.super Ljava/lang/Object;
.source "ConstraintSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/ConstraintSet$Constraint;
    }
.end annotation


# static fields
.field private static final ALPHA:I = 0x2b

.field private static final BARRIER_TYPE:I = 0x1

.field public static final BASELINE:I = 0x5

.field private static final BASELINE_TO_BASELINE:I = 0x1

.field public static final BOTTOM:I = 0x4

.field private static final BOTTOM_MARGIN:I = 0x2

.field private static final BOTTOM_TO_BOTTOM:I = 0x3

.field private static final BOTTOM_TO_TOP:I = 0x4

.field public static final CHAIN_PACKED:I = 0x2

.field public static final CHAIN_SPREAD:I = 0x0

.field public static final CHAIN_SPREAD_INSIDE:I = 0x1

.field private static final CIRCLE:I = 0x3d

.field private static final CIRCLE_ANGLE:I = 0x3f

.field private static final CIRCLE_RADIUS:I = 0x3e

.field private static final DEBUG:Z = false

.field private static final DIMENSION_RATIO:I = 0x5

.field private static final EDITOR_ABSOLUTE_X:I = 0x6

.field private static final EDITOR_ABSOLUTE_Y:I = 0x7

.field private static final ELEVATION:I = 0x2c

.field public static final END:I = 0x7

.field private static final END_MARGIN:I = 0x8

.field private static final END_TO_END:I = 0x9

.field private static final END_TO_START:I = 0xa

.field public static final GONE:I = 0x8

.field private static final GONE_BOTTOM_MARGIN:I = 0xb

.field private static final GONE_END_MARGIN:I = 0xc

.field private static final GONE_LEFT_MARGIN:I = 0xd

.field private static final GONE_RIGHT_MARGIN:I = 0xe

.field private static final GONE_START_MARGIN:I = 0xf

.field private static final GONE_TOP_MARGIN:I = 0x10

.field private static final GUIDE_BEGIN:I = 0x11

.field private static final GUIDE_END:I = 0x12

.field private static final GUIDE_PERCENT:I = 0x13

.field private static final HEIGHT_DEFAULT:I = 0x37

.field private static final HEIGHT_MAX:I = 0x39

.field private static final HEIGHT_MIN:I = 0x3b

.field public static final HORIZONTAL:I = 0x0

.field private static final HORIZONTAL_BIAS:I = 0x14

.field public static final HORIZONTAL_GUIDELINE:I = 0x0

.field private static final HORIZONTAL_STYLE:I = 0x29

.field private static final HORIZONTAL_WEIGHT:I = 0x27

.field public static final INVISIBLE:I = 0x4

.field private static final LAYOUT_HEIGHT:I = 0x15

.field private static final LAYOUT_VISIBILITY:I = 0x16

.field private static final LAYOUT_WIDTH:I = 0x17

.field public static final LEFT:I = 0x1

.field private static final LEFT_MARGIN:I = 0x18

.field private static final LEFT_TO_LEFT:I = 0x19

.field private static final LEFT_TO_RIGHT:I = 0x1a

.field public static final MATCH_CONSTRAINT:I = 0x0

.field public static final MATCH_CONSTRAINT_SPREAD:I = 0x0

.field public static final MATCH_CONSTRAINT_WRAP:I = 0x1

.field private static final ORIENTATION:I = 0x1b

.field public static final PARENT_ID:I = 0x0

.field public static final RIGHT:I = 0x2

.field private static final RIGHT_MARGIN:I = 0x1c

.field private static final RIGHT_TO_LEFT:I = 0x1d

.field private static final RIGHT_TO_RIGHT:I = 0x1e

.field private static final ROTATION:I = 0x3c

.field private static final ROTATION_X:I = 0x2d

.field private static final ROTATION_Y:I = 0x2e

.field private static final SCALE_X:I = 0x2f

.field private static final SCALE_Y:I = 0x30

.field public static final START:I = 0x6

.field private static final START_MARGIN:I = 0x1f

.field private static final START_TO_END:I = 0x20

.field private static final START_TO_START:I = 0x21

.field private static final TAG:Ljava/lang/String; = "ConstraintSet"

.field public static final TOP:I = 0x3

.field private static final TOP_MARGIN:I = 0x22

.field private static final TOP_TO_BOTTOM:I = 0x23

.field private static final TOP_TO_TOP:I = 0x24

.field private static final TRANSFORM_PIVOT_X:I = 0x31

.field private static final TRANSFORM_PIVOT_Y:I = 0x32

.field private static final TRANSLATION_X:I = 0x33

.field private static final TRANSLATION_Y:I = 0x34

.field private static final TRANSLATION_Z:I = 0x35

.field public static final UNSET:I = -0x1

.field private static final UNUSED:I = 0x40

.field public static final VERTICAL:I = 0x1

.field private static final VERTICAL_BIAS:I = 0x25

.field public static final VERTICAL_GUIDELINE:I = 0x1

.field private static final VERTICAL_STYLE:I = 0x2a

.field private static final VERTICAL_WEIGHT:I = 0x28

.field private static final VIEW_ID:I = 0x26

.field private static final VISIBILITY_FLAGS:[I

.field public static final VISIBLE:I = 0x0

.field private static final WIDTH_DEFAULT:I = 0x36

.field private static final WIDTH_MAX:I = 0x38

.field private static final WIDTH_MIN:I = 0x3a

.field public static final WRAP_CONTENT:I = -0x2

.field private static mapToConstant:Landroid/util/SparseIntArray;


# instance fields
.field private mConstraints:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/support/constraint/ConstraintSet$Constraint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 193
    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Landroid/support/constraint/ConstraintSet;->VISIBILITY_FLAGS:[I

    .line 198
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v1, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    .line 265
    sget-object v1, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v2, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintLeft_toLeftOf:I

    const/16 v3, 0x19

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 266
    sget-object v1, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v2, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintLeft_toRightOf:I

    const/16 v3, 0x1a

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 267
    sget-object v1, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v2, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintRight_toLeftOf:I

    const/16 v3, 0x1d

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 268
    sget-object v1, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v2, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintRight_toRightOf:I

    const/16 v3, 0x1e

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 269
    sget-object v1, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v2, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintTop_toTopOf:I

    const/16 v3, 0x24

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 270
    sget-object v1, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v2, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintTop_toBottomOf:I

    const/16 v3, 0x23

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 271
    sget-object v1, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v2, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintBottom_toTopOf:I

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 272
    sget-object v1, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v2, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintBottom_toBottomOf:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 273
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintBaseline_toBaselineOf:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 275
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_editor_absoluteX:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 276
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_editor_absoluteY:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 277
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintGuide_begin:I

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 278
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintGuide_end:I

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 279
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintGuide_percent:I

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 280
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_orientation:I

    const/16 v2, 0x1b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 281
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintStart_toEndOf:I

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 282
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintStart_toStartOf:I

    const/16 v2, 0x21

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 283
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintEnd_toStartOf:I

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 284
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintEnd_toEndOf:I

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 285
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_goneMarginLeft:I

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 286
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_goneMarginTop:I

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 287
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_goneMarginRight:I

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 288
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_goneMarginBottom:I

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 289
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_goneMarginStart:I

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 290
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_goneMarginEnd:I

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 291
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintVertical_weight:I

    const/16 v2, 0x28

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 292
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintHorizontal_weight:I

    const/16 v2, 0x27

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 293
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintHorizontal_chainStyle:I

    const/16 v2, 0x29

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 294
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintVertical_chainStyle:I

    const/16 v2, 0x2a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 296
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintHorizontal_bias:I

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 297
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintVertical_bias:I

    const/16 v2, 0x25

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 298
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintDimensionRatio:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 299
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintLeft_creator:I

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 300
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintTop_creator:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 301
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintRight_creator:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 302
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintBottom_creator:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 303
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintBaseline_creator:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 304
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_layout_marginLeft:I

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 305
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_layout_marginRight:I

    const/16 v2, 0x1c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 306
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_layout_marginStart:I

    const/16 v2, 0x1f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 307
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_layout_marginEnd:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 308
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_layout_marginTop:I

    const/16 v2, 0x22

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 309
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_layout_marginBottom:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 310
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_layout_width:I

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 311
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_layout_height:I

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 312
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_visibility:I

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 313
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_alpha:I

    const/16 v2, 0x2b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 314
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_elevation:I

    const/16 v2, 0x2c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 315
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_rotationX:I

    const/16 v2, 0x2d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 316
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_rotationY:I

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 317
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_rotation:I

    const/16 v2, 0x3c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 318
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_scaleX:I

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 319
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_scaleY:I

    const/16 v2, 0x30

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 320
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_transformPivotX:I

    const/16 v2, 0x31

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 321
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_transformPivotY:I

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 322
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_translationX:I

    const/16 v2, 0x33

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 323
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_translationY:I

    const/16 v2, 0x34

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 324
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_translationZ:I

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 325
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintWidth_default:I

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 326
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintHeight_default:I

    const/16 v2, 0x37

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 327
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintWidth_max:I

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 328
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintHeight_max:I

    const/16 v2, 0x39

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 329
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintWidth_min:I

    const/16 v2, 0x3a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 330
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintHeight_min:I

    const/16 v2, 0x3b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 331
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintCircle:I

    const/16 v2, 0x3d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 332
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintCircleRadius:I

    const/16 v2, 0x3e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 333
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintCircleAngle:I

    const/16 v2, 0x3f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 334
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_id:I

    const/16 v2, 0x26

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 335
    return-void

    :array_0
    .array-data 4
        0x0
        0x4
        0x8
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    return-void
.end method

.method private createHorizontalChain(IIII[I[FIII)V
    .locals 13
    .param p1, "leftId"    # I
    .param p2, "leftSide"    # I
    .param p3, "rightId"    # I
    .param p4, "rightSide"    # I
    .param p5, "chainIds"    # [I
    .param p6, "weights"    # [F
    .param p7, "style"    # I
    .param p8, "left"    # I
    .param p9, "right"    # I

    move-object v6, p0

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    .line 1027
    const/4 v0, 0x2

    array-length v1, v7

    if-ge v1, v0, :cond_0

    .line 1028
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "must have 2 or more widgets in a chain"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1030
    :cond_0
    if-eqz v8, :cond_1

    array-length v0, v8

    array-length v1, v7

    if-eq v0, v1, :cond_1

    .line 1031
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "must have 2 or more widgets in a chain"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1033
    :cond_1
    const/4 v0, 0x0

    if-eqz v8, :cond_2

    .line 1034
    aget v1, v7, v0

    invoke-direct {v6, v1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v1

    aget v2, v8, v0

    iput v2, v1, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalWeight:F

    .line 1036
    :cond_2
    aget v1, v7, v0

    invoke-direct {v6, v1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v1

    move/from16 v9, p7

    iput v9, v1, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalChainStyle:I

    .line 1037
    aget v1, v7, v0

    const/4 v5, -0x1

    move-object v0, v6

    move/from16 v2, p8

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 1038
    const/4 v10, 0x1

    move v0, v10

    .line 1038
    .local v0, "i":I
    :goto_0
    move v11, v0

    .line 1038
    .end local v0    # "i":I
    .local v11, "i":I
    array-length v0, v7

    if-ge v11, v0, :cond_4

    .line 1039
    aget v12, v7, v11

    .line 1040
    .local v12, "chainId":I
    aget v1, v7, v11

    add-int/lit8 v0, v11, -0x1

    aget v3, v7, v0

    const/4 v5, -0x1

    move-object v0, v6

    move/from16 v2, p8

    move/from16 v4, p9

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 1041
    add-int/lit8 v0, v11, -0x1

    aget v1, v7, v0

    aget v3, v7, v11

    move-object v0, v6

    move/from16 v2, p9

    move/from16 v4, p8

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 1042
    if-eqz v8, :cond_3

    .line 1043
    aget v0, v7, v11

    invoke-direct {v6, v0}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    aget v1, v8, v11

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalWeight:F

    .line 1038
    .end local v12    # "chainId":I
    :cond_3
    add-int/lit8 v0, v11, 0x1

    .line 1038
    .end local v11    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 1047
    .end local v0    # "i":I
    :cond_4
    array-length v0, v7

    sub-int/2addr v0, v10

    aget v1, v7, v0

    const/4 v5, -0x1

    move-object v0, v6

    move/from16 v2, p9

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 1050
    return-void
.end method

.method private fillFromAttributeList(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/constraint/ConstraintSet$Constraint;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 2145
    new-instance v0, Landroid/support/constraint/ConstraintSet$Constraint;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/constraint/ConstraintSet$Constraint;-><init>(Landroid/support/constraint/ConstraintSet$1;)V

    .line 2146
    .local v0, "c":Landroid/support/constraint/ConstraintSet$Constraint;
    sget-object v1, Landroid/support/constraint/R$styleable;->ConstraintSet:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 2147
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0, v1}, Landroid/support/constraint/ConstraintSet;->populateConstraint(Landroid/support/constraint/ConstraintSet$Constraint;Landroid/content/res/TypedArray;)V

    .line 2148
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 2149
    return-object v0
.end method

.method private get(I)Landroid/support/constraint/ConstraintSet$Constraint;
    .locals 4
    .param p1, "id"    # I

    .line 2066
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2067
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/support/constraint/ConstraintSet$Constraint;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/support/constraint/ConstraintSet$Constraint;-><init>(Landroid/support/constraint/ConstraintSet$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2069
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintSet$Constraint;

    return-object v0
.end method

.method private static lookupID(Landroid/content/res/TypedArray;II)I
    .locals 2
    .param p0, "a"    # Landroid/content/res/TypedArray;
    .param p1, "index"    # I
    .param p2, "def"    # I

    .line 2137
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 2138
    .local v0, "ret":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2139
    invoke-virtual {p0, p1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 2141
    :cond_0
    return v0
.end method

.method private populateConstraint(Landroid/support/constraint/ConstraintSet$Constraint;Landroid/content/res/TypedArray;)V
    .locals 6
    .param p1, "c"    # Landroid/support/constraint/ConstraintSet$Constraint;
    .param p2, "a"    # Landroid/content/res/TypedArray;

    .line 2153
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 2154
    .local v0, "N":I
    const/4 v1, 0x0

    .line 2154
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2155
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 2194
    .local v2, "attr":I
    sget-object v3, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    .line 2373
    const-string v3, "ConstraintSet"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown attribute 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2374
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2373
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2373
    .end local v2    # "attr":I
    goto/16 :goto_1

    .line 2369
    .restart local v2    # "attr":I
    :pswitch_0
    const-string v3, "ConstraintSet"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unused attribute 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2370
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2369
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2371
    goto/16 :goto_1

    .line 2259
    :pswitch_1
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->circleAngle:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->circleAngle:F

    .line 2260
    goto/16 :goto_1

    .line 2256
    :pswitch_2
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->circleRadius:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->circleRadius:I

    .line 2257
    goto/16 :goto_1

    .line 2253
    :pswitch_3
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->circleConstraint:I

    invoke-static {p2, v2, v3}, Landroid/support/constraint/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->circleConstraint:I

    .line 2254
    goto/16 :goto_1

    .line 2321
    :pswitch_4
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rotation:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rotation:F

    .line 2322
    goto/16 :goto_1

    .line 2348
    :pswitch_5
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->translationZ:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->translationZ:F

    .line 2349
    goto/16 :goto_1

    .line 2345
    :pswitch_6
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->translationY:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->translationY:F

    .line 2346
    goto/16 :goto_1

    .line 2342
    :pswitch_7
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->translationX:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->translationX:F

    .line 2343
    goto/16 :goto_1

    .line 2339
    :pswitch_8
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->transformPivotY:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->transformPivotY:F

    .line 2340
    goto/16 :goto_1

    .line 2336
    :pswitch_9
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->transformPivotX:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->transformPivotX:F

    .line 2337
    goto/16 :goto_1

    .line 2333
    :pswitch_a
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->scaleY:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->scaleY:F

    .line 2334
    goto/16 :goto_1

    .line 2330
    :pswitch_b
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->scaleX:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->scaleX:F

    .line 2331
    goto/16 :goto_1

    .line 2327
    :pswitch_c
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rotationY:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rotationY:F

    .line 2328
    goto/16 :goto_1

    .line 2324
    :pswitch_d
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rotationX:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rotationX:F

    .line 2325
    goto/16 :goto_1

    .line 2317
    :pswitch_e
    const/4 v3, 0x1

    iput-boolean v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->applyElevation:Z

    .line 2318
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->elevation:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->elevation:F

    .line 2319
    goto/16 :goto_1

    .line 2314
    :pswitch_f
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->alpha:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->alpha:F

    .line 2315
    goto/16 :goto_1

    .line 2357
    :pswitch_10
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->verticalChainStyle:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->verticalChainStyle:I

    .line 2358
    goto/16 :goto_1

    .line 2360
    :pswitch_11
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalChainStyle:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalChainStyle:I

    .line 2361
    goto/16 :goto_1

    .line 2351
    :pswitch_12
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->verticalWeight:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->verticalWeight:F

    .line 2352
    goto/16 :goto_1

    .line 2354
    :pswitch_13
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalWeight:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalWeight:F

    .line 2355
    goto/16 :goto_1

    .line 2363
    :pswitch_14
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->mViewId:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->mViewId:I

    .line 2364
    goto/16 :goto_1

    .line 2283
    :pswitch_15
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->verticalBias:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->verticalBias:F

    .line 2284
    goto/16 :goto_1

    .line 2208
    :pswitch_16
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->topToTop:I

    invoke-static {p2, v2, v3}, Landroid/support/constraint/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->topToTop:I

    .line 2209
    goto/16 :goto_1

    .line 2211
    :pswitch_17
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->topToBottom:I

    invoke-static {p2, v2, v3}, Landroid/support/constraint/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->topToBottom:I

    .line 2212
    goto/16 :goto_1

    .line 2298
    :pswitch_18
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->topMargin:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->topMargin:I

    .line 2299
    goto/16 :goto_1

    .line 2244
    :pswitch_19
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->startToStart:I

    invoke-static {p2, v2, v3}, Landroid/support/constraint/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->startToStart:I

    .line 2245
    goto/16 :goto_1

    .line 2241
    :pswitch_1a
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->startToEnd:I

    invoke-static {p2, v2, v3}, Landroid/support/constraint/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->startToEnd:I

    .line 2242
    goto/16 :goto_1

    .line 2292
    :pswitch_1b
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->startMargin:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->startMargin:I

    .line 2293
    goto/16 :goto_1

    .line 2205
    :pswitch_1c
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rightToRight:I

    invoke-static {p2, v2, v3}, Landroid/support/constraint/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rightToRight:I

    .line 2206
    goto/16 :goto_1

    .line 2202
    :pswitch_1d
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rightToLeft:I

    invoke-static {p2, v2, v3}, Landroid/support/constraint/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rightToLeft:I

    .line 2203
    goto/16 :goto_1

    .line 2289
    :pswitch_1e
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rightMargin:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rightMargin:I

    .line 2290
    goto/16 :goto_1

    .line 2238
    :pswitch_1f
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->orientation:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->orientation:I

    .line 2239
    goto/16 :goto_1

    .line 2199
    :pswitch_20
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->leftToRight:I

    invoke-static {p2, v2, v3}, Landroid/support/constraint/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->leftToRight:I

    .line 2200
    goto/16 :goto_1

    .line 2196
    :pswitch_21
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->leftToLeft:I

    invoke-static {p2, v2, v3}, Landroid/support/constraint/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->leftToLeft:I

    .line 2197
    goto/16 :goto_1

    .line 2286
    :pswitch_22
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->leftMargin:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->leftMargin:I

    .line 2287
    goto/16 :goto_1

    .line 2304
    :pswitch_23
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->mWidth:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v3

    iput v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->mWidth:I

    .line 2305
    goto/16 :goto_1

    .line 2310
    :pswitch_24
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->visibility:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->visibility:I

    .line 2311
    sget-object v3, Landroid/support/constraint/ConstraintSet;->VISIBILITY_FLAGS:[I

    iget v4, p1, Landroid/support/constraint/ConstraintSet$Constraint;->visibility:I

    aget v3, v3, v4

    iput v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->visibility:I

    .line 2312
    goto/16 :goto_1

    .line 2307
    :pswitch_25
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->mHeight:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v3

    iput v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->mHeight:I

    .line 2308
    goto/16 :goto_1

    .line 2280
    :pswitch_26
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalBias:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalBias:F

    .line 2281
    goto/16 :goto_1

    .line 2235
    :pswitch_27
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->guidePercent:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->guidePercent:F

    .line 2236
    goto/16 :goto_1

    .line 2232
    :pswitch_28
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->guideEnd:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->guideEnd:I

    .line 2233
    goto/16 :goto_1

    .line 2229
    :pswitch_29
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->guideBegin:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->guideBegin:I

    .line 2230
    goto/16 :goto_1

    .line 2265
    :pswitch_2a
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->goneTopMargin:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->goneTopMargin:I

    .line 2266
    goto/16 :goto_1

    .line 2274
    :pswitch_2b
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->goneStartMargin:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->goneStartMargin:I

    .line 2275
    goto/16 :goto_1

    .line 2268
    :pswitch_2c
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->goneRightMargin:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->goneRightMargin:I

    .line 2269
    goto/16 :goto_1

    .line 2262
    :pswitch_2d
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->goneLeftMargin:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->goneLeftMargin:I

    .line 2263
    goto/16 :goto_1

    .line 2277
    :pswitch_2e
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->goneEndMargin:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->goneEndMargin:I

    .line 2278
    goto :goto_1

    .line 2271
    :pswitch_2f
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->goneBottomMargin:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->goneBottomMargin:I

    .line 2272
    goto :goto_1

    .line 2247
    :pswitch_30
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->endToStart:I

    invoke-static {p2, v2, v3}, Landroid/support/constraint/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->endToStart:I

    .line 2248
    goto :goto_1

    .line 2250
    :pswitch_31
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->endToEnd:I

    invoke-static {p2, v2, v3}, Landroid/support/constraint/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->endToEnd:I

    .line 2251
    goto :goto_1

    .line 2295
    :pswitch_32
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->endMargin:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->endMargin:I

    .line 2296
    goto :goto_1

    .line 2226
    :pswitch_33
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->editorAbsoluteY:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->editorAbsoluteY:I

    .line 2227
    goto :goto_1

    .line 2223
    :pswitch_34
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->editorAbsoluteX:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->editorAbsoluteX:I

    .line 2224
    goto :goto_1

    .line 2366
    :pswitch_35
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->dimensionRatio:Ljava/lang/String;

    .line 2367
    goto :goto_1

    .line 2214
    :pswitch_36
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToTop:I

    invoke-static {p2, v2, v3}, Landroid/support/constraint/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToTop:I

    .line 2215
    goto :goto_1

    .line 2217
    :pswitch_37
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToBottom:I

    invoke-static {p2, v2, v3}, Landroid/support/constraint/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToBottom:I

    .line 2218
    goto :goto_1

    .line 2301
    :pswitch_38
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->bottomMargin:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->bottomMargin:I

    .line 2302
    goto :goto_1

    .line 2220
    :pswitch_39
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->baselineToBaseline:I

    invoke-static {p2, v2, v3}, Landroid/support/constraint/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->baselineToBaseline:I

    .line 2221
    nop

    .line 2154
    .end local v2    # "attr":I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 2377
    .end local v1    # "i":I
    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3c
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private sideToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "side"    # I

    .line 2073
    packed-switch p1, :pswitch_data_0

    .line 2089
    const-string v0, "undefined"

    return-object v0

    .line 2087
    :pswitch_0
    const-string v0, "end"

    return-object v0

    .line 2085
    :pswitch_1
    const-string v0, "start"

    return-object v0

    .line 2083
    :pswitch_2
    const-string v0, "baseline"

    return-object v0

    .line 2081
    :pswitch_3
    const-string v0, "bottom"

    return-object v0

    .line 2079
    :pswitch_4
    const-string v0, "top"

    return-object v0

    .line 2077
    :pswitch_5
    const-string v0, "right"

    return-object v0

    .line 2075
    :pswitch_6
    const-string v0, "left"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addToHorizontalChain(III)V
    .locals 8
    .param p1, "viewId"    # I
    .param p2, "leftId"    # I
    .param p3, "rightId"    # I

    .line 1865
    const/4 v6, 0x2

    const/4 v7, 0x1

    if-nez p2, :cond_0

    move v4, v7

    goto :goto_0

    :cond_0
    move v4, v6

    :goto_0
    const/4 v5, 0x0

    const/4 v2, 0x1

    move-object v0, p0

    move v1, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 1866
    const/4 v2, 0x2

    if-nez p3, :cond_1

    move v4, v6

    goto :goto_1

    :cond_1
    move v4, v7

    :goto_1
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 1867
    if-eqz p2, :cond_2

    .line 1868
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p2

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 1870
    :cond_2
    if-eqz p3, :cond_3

    .line 1871
    const/4 v2, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p3

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 1873
    :cond_3
    return-void
.end method

.method public addToHorizontalChainRTL(III)V
    .locals 8
    .param p1, "viewId"    # I
    .param p2, "leftId"    # I
    .param p3, "rightId"    # I

    .line 1883
    const/4 v6, 0x7

    const/4 v7, 0x6

    if-nez p2, :cond_0

    move v4, v7

    goto :goto_0

    :cond_0
    move v4, v6

    :goto_0
    const/4 v5, 0x0

    const/4 v2, 0x6

    move-object v0, p0

    move v1, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 1884
    const/4 v2, 0x7

    if-nez p3, :cond_1

    move v4, v6

    goto :goto_1

    :cond_1
    move v4, v7

    :goto_1
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 1885
    if-eqz p2, :cond_2

    .line 1886
    const/4 v2, 0x7

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p2

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 1888
    :cond_2
    if-eqz p3, :cond_3

    .line 1889
    const/4 v2, 0x6

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p3

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 1891
    :cond_3
    return-void
.end method

.method public addToVerticalChain(III)V
    .locals 15
    .param p1, "viewId"    # I
    .param p2, "topId"    # I
    .param p3, "bottomId"    # I

    .line 1901
    const/4 v6, 0x4

    const/4 v7, 0x3

    if-nez p2, :cond_0

    move v4, v7

    goto :goto_0

    :cond_0
    move v4, v6

    :goto_0
    const/4 v5, 0x0

    const/4 v2, 0x3

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 1902
    const/4 v10, 0x4

    if-nez p3, :cond_1

    move v12, v6

    goto :goto_1

    :cond_1
    move v12, v7

    :goto_1
    const/4 v13, 0x0

    move-object v8, p0

    move/from16 v9, p1

    move/from16 v11, p3

    invoke-virtual/range {v8 .. v13}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 1903
    if-eqz p2, :cond_2

    .line 1904
    const/4 v2, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    move/from16 v1, p2

    move/from16 v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 1906
    :cond_2
    if-eqz p2, :cond_3

    .line 1907
    const/4 v2, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move/from16 v1, p3

    move/from16 v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 1909
    :cond_3
    return-void
.end method

.method public applyTo(Landroid/support/constraint/ConstraintLayout;)V
    .locals 1
    .param p1, "constraintLayout"    # Landroid/support/constraint/ConstraintLayout;

    .line 757
    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintSet;->applyToInternal(Landroid/support/constraint/ConstraintLayout;)V

    .line 758
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/constraint/ConstraintLayout;->setConstraintSet(Landroid/support/constraint/ConstraintSet;)V

    .line 759
    return-void
.end method

.method applyToInternal(Landroid/support/constraint/ConstraintLayout;)V
    .locals 9
    .param p1, "constraintLayout"    # Landroid/support/constraint/ConstraintLayout;

    .line 765
    invoke-virtual {p1}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v0

    .line 766
    .local v0, "count":I
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 768
    .local v1, "used":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 768
    .local v2, "i":I
    :goto_0
    const/4 v3, 0x1

    const/4 v4, -0x1

    if-ge v2, v0, :cond_6

    .line 769
    invoke-virtual {p1, v2}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 770
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v6

    .line 771
    .local v6, "id":I
    if-ne v6, v4, :cond_0

    .line 772
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "All children of ConstraintLayout must have ids to use ConstraintSet"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 774
    :cond_0
    iget-object v7, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 775
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 776
    iget-object v7, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/constraint/ConstraintSet$Constraint;

    .line 777
    .local v7, "constraint":Landroid/support/constraint/ConstraintSet$Constraint;
    iget v8, v7, Landroid/support/constraint/ConstraintSet$Constraint;->mHelperType:I

    if-eq v8, v4, :cond_2

    .line 778
    iget v4, v7, Landroid/support/constraint/ConstraintSet$Constraint;->mHelperType:I

    if-eq v4, v3, :cond_1

    goto :goto_1

    .line 780
    :cond_1
    move-object v3, v5

    check-cast v3, Landroid/support/constraint/Barrier;

    .line 781
    .local v3, "barrier":Landroid/support/constraint/Barrier;
    invoke-virtual {v3, v6}, Landroid/support/constraint/Barrier;->setId(I)V

    .line 782
    iget-object v4, v7, Landroid/support/constraint/ConstraintSet$Constraint;->mReferenceIds:[I

    invoke-virtual {v3, v4}, Landroid/support/constraint/Barrier;->setReferencedIds([I)V

    .line 783
    iget v4, v7, Landroid/support/constraint/ConstraintSet$Constraint;->mBarrierDirection:I

    invoke-virtual {v3, v4}, Landroid/support/constraint/Barrier;->setType(I)V

    .line 784
    nop

    .line 785
    invoke-virtual {p1}, Landroid/support/constraint/ConstraintLayout;->generateDefaultLayoutParams()Landroid/support/constraint/ConstraintLayout$LayoutParams;

    move-result-object v4

    .line 786
    .local v4, "param":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    invoke-virtual {v7, v4}, Landroid/support/constraint/ConstraintSet$Constraint;->applyTo(Landroid/support/constraint/ConstraintLayout$LayoutParams;)V

    .line 791
    .end local v3    # "barrier":Landroid/support/constraint/Barrier;
    .end local v4    # "param":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    :cond_2
    :goto_1
    nop

    .line 792
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 793
    .local v3, "param":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    invoke-virtual {v7, v3}, Landroid/support/constraint/ConstraintSet$Constraint;->applyTo(Landroid/support/constraint/ConstraintLayout$LayoutParams;)V

    .line 794
    invoke-virtual {v5, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 795
    iget v4, v7, Landroid/support/constraint/ConstraintSet$Constraint;->visibility:I

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 796
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x11

    if-lt v4, v8, :cond_5

    .line 797
    iget v4, v7, Landroid/support/constraint/ConstraintSet$Constraint;->alpha:F

    invoke-virtual {v5, v4}, Landroid/view/View;->setAlpha(F)V

    .line 798
    iget v4, v7, Landroid/support/constraint/ConstraintSet$Constraint;->rotation:F

    invoke-virtual {v5, v4}, Landroid/view/View;->setRotation(F)V

    .line 799
    iget v4, v7, Landroid/support/constraint/ConstraintSet$Constraint;->rotationX:F

    invoke-virtual {v5, v4}, Landroid/view/View;->setRotationX(F)V

    .line 800
    iget v4, v7, Landroid/support/constraint/ConstraintSet$Constraint;->rotationY:F

    invoke-virtual {v5, v4}, Landroid/view/View;->setRotationY(F)V

    .line 801
    iget v4, v7, Landroid/support/constraint/ConstraintSet$Constraint;->scaleX:F

    invoke-virtual {v5, v4}, Landroid/view/View;->setScaleX(F)V

    .line 802
    iget v4, v7, Landroid/support/constraint/ConstraintSet$Constraint;->scaleY:F

    invoke-virtual {v5, v4}, Landroid/view/View;->setScaleY(F)V

    .line 803
    iget v4, v7, Landroid/support/constraint/ConstraintSet$Constraint;->transformPivotX:F

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_3

    .line 804
    iget v4, v7, Landroid/support/constraint/ConstraintSet$Constraint;->transformPivotX:F

    invoke-virtual {v5, v4}, Landroid/view/View;->setPivotX(F)V

    .line 806
    :cond_3
    iget v4, v7, Landroid/support/constraint/ConstraintSet$Constraint;->transformPivotY:F

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_4

    .line 807
    iget v4, v7, Landroid/support/constraint/ConstraintSet$Constraint;->transformPivotY:F

    invoke-virtual {v5, v4}, Landroid/view/View;->setPivotY(F)V

    .line 809
    :cond_4
    iget v4, v7, Landroid/support/constraint/ConstraintSet$Constraint;->translationX:F

    invoke-virtual {v5, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 810
    iget v4, v7, Landroid/support/constraint/ConstraintSet$Constraint;->translationY:F

    invoke-virtual {v5, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 811
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-lt v4, v8, :cond_5

    .line 812
    iget v4, v7, Landroid/support/constraint/ConstraintSet$Constraint;->translationZ:F

    invoke-virtual {v5, v4}, Landroid/view/View;->setTranslationZ(F)V

    .line 813
    iget-boolean v4, v7, Landroid/support/constraint/ConstraintSet$Constraint;->applyElevation:Z

    if-eqz v4, :cond_5

    .line 814
    iget v4, v7, Landroid/support/constraint/ConstraintSet$Constraint;->elevation:F

    invoke-virtual {v5, v4}, Landroid/view/View;->setElevation(F)V

    .line 768
    .end local v3    # "param":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "id":I
    .end local v7    # "constraint":Landroid/support/constraint/ConstraintSet$Constraint;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 820
    .end local v2    # "i":I
    :cond_6
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 821
    .local v5, "id":Ljava/lang/Integer;
    iget-object v6, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/constraint/ConstraintSet$Constraint;

    .line 822
    .local v6, "constraint":Landroid/support/constraint/ConstraintSet$Constraint;
    iget v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->mHelperType:I

    if-eq v7, v4, :cond_8

    .line 823
    iget v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->mHelperType:I

    if-eq v7, v3, :cond_7

    goto :goto_3

    .line 825
    :cond_7
    new-instance v7, Landroid/support/constraint/Barrier;

    invoke-virtual {p1}, Landroid/support/constraint/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/support/constraint/Barrier;-><init>(Landroid/content/Context;)V

    .line 826
    .local v7, "barrier":Landroid/support/constraint/Barrier;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/support/constraint/Barrier;->setId(I)V

    .line 827
    iget-object v8, v6, Landroid/support/constraint/ConstraintSet$Constraint;->mReferenceIds:[I

    invoke-virtual {v7, v8}, Landroid/support/constraint/Barrier;->setReferencedIds([I)V

    .line 828
    iget v8, v6, Landroid/support/constraint/ConstraintSet$Constraint;->mBarrierDirection:I

    invoke-virtual {v7, v8}, Landroid/support/constraint/Barrier;->setType(I)V

    .line 829
    nop

    .line 830
    invoke-virtual {p1}, Landroid/support/constraint/ConstraintLayout;->generateDefaultLayoutParams()Landroid/support/constraint/ConstraintLayout$LayoutParams;

    move-result-object v8

    .line 831
    .local v8, "param":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    invoke-virtual {v6, v8}, Landroid/support/constraint/ConstraintSet$Constraint;->applyTo(Landroid/support/constraint/ConstraintLayout$LayoutParams;)V

    .line 832
    invoke-virtual {p1, v7, v8}, Landroid/support/constraint/ConstraintLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 837
    .end local v7    # "barrier":Landroid/support/constraint/Barrier;
    .end local v8    # "param":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    :cond_8
    :goto_3
    iget-boolean v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->mIsGuideline:Z

    if-eqz v7, :cond_9

    .line 838
    new-instance v7, Landroid/support/constraint/Guideline;

    invoke-virtual {p1}, Landroid/support/constraint/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/support/constraint/Guideline;-><init>(Landroid/content/Context;)V

    .line 839
    .local v7, "g":Landroid/support/constraint/Guideline;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/support/constraint/Guideline;->setId(I)V

    .line 840
    invoke-virtual {p1}, Landroid/support/constraint/ConstraintLayout;->generateDefaultLayoutParams()Landroid/support/constraint/ConstraintLayout$LayoutParams;

    move-result-object v8

    .line 841
    .restart local v8    # "param":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    invoke-virtual {v6, v8}, Landroid/support/constraint/ConstraintSet$Constraint;->applyTo(Landroid/support/constraint/ConstraintLayout$LayoutParams;)V

    .line 842
    invoke-virtual {p1, v7, v8}, Landroid/support/constraint/ConstraintLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 844
    .end local v5    # "id":Ljava/lang/Integer;
    .end local v6    # "constraint":Landroid/support/constraint/ConstraintSet$Constraint;
    .end local v7    # "g":Landroid/support/constraint/Guideline;
    .end local v8    # "param":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    :cond_9
    goto :goto_2

    .line 845
    :cond_a
    return-void
.end method

.method public center(IIIIIIIF)V
    .locals 10
    .param p1, "centerID"    # I
    .param p2, "firstID"    # I
    .param p3, "firstSide"    # I
    .param p4, "firstMargin"    # I
    .param p5, "secondId"    # I
    .param p6, "secondSide"    # I
    .param p7, "secondMargin"    # I
    .param p8, "bias"    # F

    move-object v6, p0

    move v7, p3

    .line 865
    move/from16 v8, p8

    if-gez p4, :cond_0

    .line 866
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "margin must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 868
    :cond_0
    if-gez p7, :cond_1

    .line 869
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "margin must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 871
    :cond_1
    const/4 v0, 0x0

    cmpg-float v0, v8, v0

    if-lez v0, :cond_7

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v8, v0

    if-lez v0, :cond_2

    goto/16 :goto_3

    .line 875
    :cond_2
    const/4 v0, 0x1

    if-eq v7, v0, :cond_6

    const/4 v0, 0x2

    if-ne v7, v0, :cond_3

    goto :goto_1

    .line 880
    :cond_3
    const/4 v0, 0x6

    if-eq v7, v0, :cond_5

    const/4 v0, 0x7

    if-ne v7, v0, :cond_4

    goto :goto_0

    .line 886
    :cond_4
    const/4 v2, 0x3

    move-object v0, v6

    move v1, p1

    move v3, p2

    move v4, v7

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 887
    const/4 v2, 0x4

    move v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 888
    iget-object v0, v6, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintSet$Constraint;

    .line 889
    .local v0, "constraint":Landroid/support/constraint/ConstraintSet$Constraint;
    iput v8, v0, Landroid/support/constraint/ConstraintSet$Constraint;->verticalBias:F

    .line 889
    .end local v0    # "constraint":Landroid/support/constraint/ConstraintSet$Constraint;
    goto :goto_2

    .line 881
    :cond_5
    :goto_0
    const/4 v2, 0x6

    move-object v0, v6

    move v1, p1

    move v3, p2

    move v4, v7

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 882
    const/4 v2, 0x7

    move v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 883
    iget-object v0, v6, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintSet$Constraint;

    .line 884
    .restart local v0    # "constraint":Landroid/support/constraint/ConstraintSet$Constraint;
    iput v8, v0, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalBias:F

    .line 885
    .end local v0    # "constraint":Landroid/support/constraint/ConstraintSet$Constraint;
    goto :goto_2

    .line 876
    :cond_6
    :goto_1
    const/4 v2, 0x1

    move-object v0, v6

    move v1, p1

    move v3, p2

    move v4, v7

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 877
    const/4 v2, 0x2

    move v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 878
    iget-object v0, v6, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintSet$Constraint;

    .line 879
    .restart local v0    # "constraint":Landroid/support/constraint/ConstraintSet$Constraint;
    iput v8, v0, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalBias:F

    .line 880
    .end local v0    # "constraint":Landroid/support/constraint/ConstraintSet$Constraint;
    nop

    .line 891
    :goto_2
    return-void

    .line 872
    :cond_7
    :goto_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bias must be between 0 and 1 inclusive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public centerHorizontally(II)V
    .locals 10
    .param p1, "viewId"    # I
    .param p2, "toView"    # I

    .line 1275
    if-nez p2, :cond_0

    .line 1276
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v8}, Landroid/support/constraint/ConstraintSet;->center(IIIIIIIF)V

    goto :goto_0

    .line 1278
    :cond_0
    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p2

    invoke-virtual/range {v0 .. v8}, Landroid/support/constraint/ConstraintSet;->center(IIIIIIIF)V

    .line 1280
    :goto_0
    return-void
.end method

.method public centerHorizontally(IIIIIIIF)V
    .locals 9
    .param p1, "centerID"    # I
    .param p2, "leftId"    # I
    .param p3, "leftSide"    # I
    .param p4, "leftMargin"    # I
    .param p5, "rightId"    # I
    .param p6, "rightSide"    # I
    .param p7, "rightMargin"    # I
    .param p8, "bias"    # F

    .line 907
    const/4 v2, 0x1

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 908
    const/4 v5, 0x2

    move-object v3, p0

    move v4, p1

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v3 .. v8}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 909
    iget-object v1, v0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/ConstraintSet$Constraint;

    .line 910
    .local v1, "constraint":Landroid/support/constraint/ConstraintSet$Constraint;
    move/from16 v2, p8

    iput v2, v1, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalBias:F

    .line 911
    return-void
.end method

.method public centerHorizontallyRtl(II)V
    .locals 10
    .param p1, "viewId"    # I
    .param p2, "toView"    # I

    .line 1289
    if-nez p2, :cond_0

    .line 1290
    const/4 v2, 0x0

    const/4 v3, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v8}, Landroid/support/constraint/ConstraintSet;->center(IIIIIIIF)V

    goto :goto_0

    .line 1292
    :cond_0
    const/4 v3, 0x7

    const/4 v4, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p2

    invoke-virtual/range {v0 .. v8}, Landroid/support/constraint/ConstraintSet;->center(IIIIIIIF)V

    .line 1294
    :goto_0
    return-void
.end method

.method public centerHorizontallyRtl(IIIIIIIF)V
    .locals 9
    .param p1, "centerID"    # I
    .param p2, "startId"    # I
    .param p3, "startSide"    # I
    .param p4, "startMargin"    # I
    .param p5, "endId"    # I
    .param p6, "endSide"    # I
    .param p7, "endMargin"    # I
    .param p8, "bias"    # F

    .line 927
    const/4 v2, 0x6

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 928
    const/4 v5, 0x7

    move-object v3, p0

    move v4, p1

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v3 .. v8}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 929
    iget-object v1, v0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/ConstraintSet$Constraint;

    .line 930
    .local v1, "constraint":Landroid/support/constraint/ConstraintSet$Constraint;
    move/from16 v2, p8

    iput v2, v1, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalBias:F

    .line 931
    return-void
.end method

.method public centerVertically(II)V
    .locals 10
    .param p1, "viewId"    # I
    .param p2, "toView"    # I

    .line 1304
    if-nez p2, :cond_0

    .line 1305
    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v8}, Landroid/support/constraint/ConstraintSet;->center(IIIIIIIF)V

    goto :goto_0

    .line 1307
    :cond_0
    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p2

    invoke-virtual/range {v0 .. v8}, Landroid/support/constraint/ConstraintSet;->center(IIIIIIIF)V

    .line 1309
    :goto_0
    return-void
.end method

.method public centerVertically(IIIIIIIF)V
    .locals 9
    .param p1, "centerID"    # I
    .param p2, "topId"    # I
    .param p3, "topSide"    # I
    .param p4, "topMargin"    # I
    .param p5, "bottomId"    # I
    .param p6, "bottomSide"    # I
    .param p7, "bottomMargin"    # I
    .param p8, "bias"    # F

    .line 947
    const/4 v2, 0x3

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 948
    const/4 v5, 0x4

    move-object v3, p0

    move v4, p1

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v3 .. v8}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 949
    iget-object v1, v0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/ConstraintSet$Constraint;

    .line 950
    .local v1, "constraint":Landroid/support/constraint/ConstraintSet$Constraint;
    move/from16 v2, p8

    iput v2, v1, Landroid/support/constraint/ConstraintSet$Constraint;->verticalBias:F

    .line 951
    return-void
.end method

.method public clear(I)V
    .locals 2
    .param p1, "viewId"    # I

    .line 1317
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1318
    return-void
.end method

.method public clear(II)V
    .locals 3
    .param p1, "viewId"    # I
    .param p2, "anchor"    # I

    .line 1327
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1328
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintSet$Constraint;

    .line 1329
    .local v0, "constraint":Landroid/support/constraint/ConstraintSet$Constraint;
    const/4 v1, -0x1

    packed-switch p2, :pswitch_data_0

    .line 1371
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "unknown constraint"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1365
    :pswitch_0
    iput v1, v0, Landroid/support/constraint/ConstraintSet$Constraint;->endToStart:I

    .line 1366
    iput v1, v0, Landroid/support/constraint/ConstraintSet$Constraint;->endToEnd:I

    .line 1367
    iput v1, v0, Landroid/support/constraint/ConstraintSet$Constraint;->endMargin:I

    .line 1368
    iput v1, v0, Landroid/support/constraint/ConstraintSet$Constraint;->goneEndMargin:I

    .line 1369
    goto :goto_0

    .line 1359
    :pswitch_1
    iput v1, v0, Landroid/support/constraint/ConstraintSet$Constraint;->startToEnd:I

    .line 1360
    iput v1, v0, Landroid/support/constraint/ConstraintSet$Constraint;->startToStart:I

    .line 1361
    iput v1, v0, Landroid/support/constraint/ConstraintSet$Constraint;->startMargin:I

    .line 1362
    iput v1, v0, Landroid/support/constraint/ConstraintSet$Constraint;->goneStartMargin:I

    .line 1363
    goto :goto_0

    .line 1356
    :pswitch_2
    iput v1, v0, Landroid/support/constraint/ConstraintSet$Constraint;->baselineToBaseline:I

    .line 1357
    goto :goto_0

    .line 1349
    :pswitch_3
    iput v1, v0, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToTop:I

    .line 1350
    iput v1, v0, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToBottom:I

    .line 1351
    iput v1, v0, Landroid/support/constraint/ConstraintSet$Constraint;->bottomMargin:I

    .line 1352
    iput v1, v0, Landroid/support/constraint/ConstraintSet$Constraint;->goneBottomMargin:I

    .line 1353
    goto :goto_0

    .line 1343
    :pswitch_4
    iput v1, v0, Landroid/support/constraint/ConstraintSet$Constraint;->topToBottom:I

    .line 1344
    iput v1, v0, Landroid/support/constraint/ConstraintSet$Constraint;->topToTop:I

    .line 1345
    iput v1, v0, Landroid/support/constraint/ConstraintSet$Constraint;->topMargin:I

    .line 1346
    iput v1, v0, Landroid/support/constraint/ConstraintSet$Constraint;->goneTopMargin:I

    .line 1347
    goto :goto_0

    .line 1337
    :pswitch_5
    iput v1, v0, Landroid/support/constraint/ConstraintSet$Constraint;->rightToRight:I

    .line 1338
    iput v1, v0, Landroid/support/constraint/ConstraintSet$Constraint;->rightToLeft:I

    .line 1339
    iput v1, v0, Landroid/support/constraint/ConstraintSet$Constraint;->rightMargin:I

    .line 1340
    iput v1, v0, Landroid/support/constraint/ConstraintSet$Constraint;->goneRightMargin:I

    .line 1341
    goto :goto_0

    .line 1331
    :pswitch_6
    iput v1, v0, Landroid/support/constraint/ConstraintSet$Constraint;->leftToRight:I

    .line 1332
    iput v1, v0, Landroid/support/constraint/ConstraintSet$Constraint;->leftToLeft:I

    .line 1333
    iput v1, v0, Landroid/support/constraint/ConstraintSet$Constraint;->leftMargin:I

    .line 1334
    iput v1, v0, Landroid/support/constraint/ConstraintSet$Constraint;->goneLeftMargin:I

    .line 1335
    nop

    .line 1374
    .end local v0    # "constraint":Landroid/support/constraint/ConstraintSet$Constraint;
    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public clone(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "constraintLayoutId"    # I

    .line 658
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {p0, v0}, Landroid/support/constraint/ConstraintSet;->clone(Landroid/support/constraint/ConstraintLayout;)V

    .line 659
    return-void
.end method

.method public clone(Landroid/support/constraint/ConstraintLayout;)V
    .locals 13
    .param p1, "constraintLayout"    # Landroid/support/constraint/ConstraintLayout;

    .line 679
    invoke-virtual {p1}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v0

    .line 680
    .local v0, "count":I
    iget-object v1, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 681
    const/4 v1, 0x0

    .line 681
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_5

    .line 682
    invoke-virtual {p1, v1}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 683
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 685
    .local v3, "param":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    .line 686
    .local v4, "id":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 687
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "All children of ConstraintLayout must have ids to use ConstraintSet"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 689
    :cond_0
    iget-object v5, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 690
    iget-object v5, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Landroid/support/constraint/ConstraintSet$Constraint;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Landroid/support/constraint/ConstraintSet$Constraint;-><init>(Landroid/support/constraint/ConstraintSet$1;)V

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    :cond_1
    iget-object v5, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/constraint/ConstraintSet$Constraint;

    .line 693
    .local v5, "constraint":Landroid/support/constraint/ConstraintSet$Constraint;
    invoke-static {v5, v4, v3}, Landroid/support/constraint/ConstraintSet$Constraint;->access$100(Landroid/support/constraint/ConstraintSet$Constraint;ILandroid/support/constraint/ConstraintLayout$LayoutParams;)V

    .line 694
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v6

    iput v6, v5, Landroid/support/constraint/ConstraintSet$Constraint;->visibility:I

    .line 695
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x11

    if-lt v6, v7, :cond_4

    .line 696
    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v6

    iput v6, v5, Landroid/support/constraint/ConstraintSet$Constraint;->alpha:F

    .line 697
    invoke-virtual {v2}, Landroid/view/View;->getRotation()F

    move-result v6

    iput v6, v5, Landroid/support/constraint/ConstraintSet$Constraint;->rotation:F

    .line 698
    invoke-virtual {v2}, Landroid/view/View;->getRotationX()F

    move-result v6

    iput v6, v5, Landroid/support/constraint/ConstraintSet$Constraint;->rotationX:F

    .line 699
    invoke-virtual {v2}, Landroid/view/View;->getRotationY()F

    move-result v6

    iput v6, v5, Landroid/support/constraint/ConstraintSet$Constraint;->rotationY:F

    .line 700
    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    move-result v6

    iput v6, v5, Landroid/support/constraint/ConstraintSet$Constraint;->scaleX:F

    .line 701
    invoke-virtual {v2}, Landroid/view/View;->getScaleY()F

    move-result v6

    iput v6, v5, Landroid/support/constraint/ConstraintSet$Constraint;->scaleY:F

    .line 703
    invoke-virtual {v2}, Landroid/view/View;->getPivotX()F

    move-result v6

    .line 704
    .local v6, "pivotX":F
    invoke-virtual {v2}, Landroid/view/View;->getPivotY()F

    move-result v7

    .line 706
    .local v7, "pivotY":F
    float-to-double v8, v6

    const-wide/16 v10, 0x0

    cmpl-double v12, v8, v10

    if-nez v12, :cond_2

    float-to-double v8, v7

    cmpl-double v12, v8, v10

    if-eqz v12, :cond_3

    .line 707
    :cond_2
    iput v6, v5, Landroid/support/constraint/ConstraintSet$Constraint;->transformPivotX:F

    .line 708
    iput v7, v5, Landroid/support/constraint/ConstraintSet$Constraint;->transformPivotY:F

    .line 711
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v8

    iput v8, v5, Landroid/support/constraint/ConstraintSet$Constraint;->translationX:F

    .line 712
    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v8

    iput v8, v5, Landroid/support/constraint/ConstraintSet$Constraint;->translationY:F

    .line 713
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v8, v9, :cond_4

    .line 714
    invoke-virtual {v2}, Landroid/view/View;->getTranslationZ()F

    move-result v8

    iput v8, v5, Landroid/support/constraint/ConstraintSet$Constraint;->translationZ:F

    .line 715
    iget-boolean v8, v5, Landroid/support/constraint/ConstraintSet$Constraint;->applyElevation:Z

    if-eqz v8, :cond_4

    .line 716
    invoke-virtual {v2}, Landroid/view/View;->getElevation()F

    move-result v8

    iput v8, v5, Landroid/support/constraint/ConstraintSet$Constraint;->elevation:F

    .line 681
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "param":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .end local v4    # "id":I
    .end local v5    # "constraint":Landroid/support/constraint/ConstraintSet$Constraint;
    .end local v6    # "pivotX":F
    .end local v7    # "pivotY":F
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 721
    .end local v1    # "i":I
    :cond_5
    return-void
.end method

.method public clone(Landroid/support/constraint/ConstraintSet;)V
    .locals 4
    .param p1, "set"    # Landroid/support/constraint/ConstraintSet;

    .line 667
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 668
    iget-object v0, p1, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 669
    .local v1, "key":Ljava/lang/Integer;
    iget-object v2, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    iget-object v3, p1, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/ConstraintSet$Constraint;

    invoke-virtual {v3}, Landroid/support/constraint/ConstraintSet$Constraint;->clone()Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    .end local v1    # "key":Ljava/lang/Integer;
    goto :goto_0

    .line 671
    :cond_0
    return-void
.end method

.method public clone(Landroid/support/constraint/Constraints;)V
    .locals 9
    .param p1, "constraints"    # Landroid/support/constraint/Constraints;

    .line 729
    invoke-virtual {p1}, Landroid/support/constraint/Constraints;->getChildCount()I

    move-result v0

    .line 730
    .local v0, "count":I
    iget-object v1, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 731
    const/4 v1, 0x0

    .line 731
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 732
    invoke-virtual {p1, v1}, Landroid/support/constraint/Constraints;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 733
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/Constraints$LayoutParams;

    .line 735
    .local v3, "param":Landroid/support/constraint/Constraints$LayoutParams;
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    .line 736
    .local v4, "id":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 737
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "All children of ConstraintLayout must have ids to use ConstraintSet"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 739
    :cond_0
    iget-object v5, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 740
    iget-object v5, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Landroid/support/constraint/ConstraintSet$Constraint;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Landroid/support/constraint/ConstraintSet$Constraint;-><init>(Landroid/support/constraint/ConstraintSet$1;)V

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    :cond_1
    iget-object v5, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/constraint/ConstraintSet$Constraint;

    .line 743
    .local v5, "constraint":Landroid/support/constraint/ConstraintSet$Constraint;
    instance-of v6, v2, Landroid/support/constraint/ConstraintHelper;

    if-eqz v6, :cond_2

    .line 744
    move-object v6, v2

    check-cast v6, Landroid/support/constraint/ConstraintHelper;

    .line 745
    .local v6, "helper":Landroid/support/constraint/ConstraintHelper;
    invoke-static {v5, v6, v4, v3}, Landroid/support/constraint/ConstraintSet$Constraint;->access$200(Landroid/support/constraint/ConstraintSet$Constraint;Landroid/support/constraint/ConstraintHelper;ILandroid/support/constraint/Constraints$LayoutParams;)V

    .line 747
    .end local v6    # "helper":Landroid/support/constraint/ConstraintHelper;
    :cond_2
    invoke-static {v5, v4, v3}, Landroid/support/constraint/ConstraintSet$Constraint;->access$300(Landroid/support/constraint/ConstraintSet$Constraint;ILandroid/support/constraint/Constraints$LayoutParams;)V

    .line 731
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "param":Landroid/support/constraint/Constraints$LayoutParams;
    .end local v4    # "id":I
    .end local v5    # "constraint":Landroid/support/constraint/ConstraintSet$Constraint;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 749
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method public connect(IIII)V
    .locals 8
    .param p1, "startID"    # I
    .param p2, "startSide"    # I
    .param p3, "endID"    # I
    .param p4, "endSide"    # I

    .line 1175
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1176
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/support/constraint/ConstraintSet$Constraint;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/support/constraint/ConstraintSet$Constraint;-><init>(Landroid/support/constraint/ConstraintSet$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1178
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintSet$Constraint;

    .line 1179
    .local v0, "constraint":Landroid/support/constraint/ConstraintSet$Constraint;
    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x6

    const/4 v6, 0x7

    const/4 v7, -0x1

    packed-switch p2, :pswitch_data_0

    .line 1263
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1264
    invoke-direct {p0, p2}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " unknown"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1252
    :pswitch_0
    if-ne p4, v6, :cond_1

    .line 1253
    iput p3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->endToEnd:I

    .line 1254
    iput v7, v0, Landroid/support/constraint/ConstraintSet$Constraint;->endToStart:I

    goto/16 :goto_0

    .line 1255
    :cond_1
    if-ne p4, v5, :cond_2

    .line 1256
    iput p3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->endToStart:I

    .line 1257
    iput v7, v0, Landroid/support/constraint/ConstraintSet$Constraint;->endToEnd:I

    goto/16 :goto_0

    .line 1259
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "right to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " undefined"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1241
    :pswitch_1
    if-ne p4, v5, :cond_3

    .line 1242
    iput p3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->startToStart:I

    .line 1243
    iput v7, v0, Landroid/support/constraint/ConstraintSet$Constraint;->startToEnd:I

    goto/16 :goto_0

    .line 1244
    :cond_3
    if-ne p4, v6, :cond_4

    .line 1245
    iput p3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->startToEnd:I

    .line 1246
    iput v7, v0, Landroid/support/constraint/ConstraintSet$Constraint;->startToStart:I

    goto/16 :goto_0

    .line 1248
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "right to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " undefined"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1230
    :pswitch_2
    const/4 v1, 0x5

    if-ne p4, v1, :cond_5

    .line 1231
    iput p3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->baselineToBaseline:I

    .line 1232
    iput v7, v0, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToBottom:I

    .line 1233
    iput v7, v0, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToTop:I

    .line 1234
    iput v7, v0, Landroid/support/constraint/ConstraintSet$Constraint;->topToTop:I

    .line 1235
    iput v7, v0, Landroid/support/constraint/ConstraintSet$Constraint;->topToBottom:I

    goto/16 :goto_0

    .line 1237
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "right to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " undefined"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1217
    :pswitch_3
    if-ne p4, v4, :cond_6

    .line 1218
    iput p3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToBottom:I

    .line 1219
    iput v7, v0, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToTop:I

    .line 1220
    iput v7, v0, Landroid/support/constraint/ConstraintSet$Constraint;->baselineToBaseline:I

    goto/16 :goto_0

    .line 1221
    :cond_6
    if-ne p4, v3, :cond_7

    .line 1222
    iput p3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToTop:I

    .line 1223
    iput v7, v0, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToBottom:I

    .line 1224
    iput v7, v0, Landroid/support/constraint/ConstraintSet$Constraint;->baselineToBaseline:I

    goto/16 :goto_0

    .line 1226
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "right to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " undefined"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1204
    :pswitch_4
    if-ne p4, v3, :cond_8

    .line 1205
    iput p3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->topToTop:I

    .line 1206
    iput v7, v0, Landroid/support/constraint/ConstraintSet$Constraint;->topToBottom:I

    .line 1207
    iput v7, v0, Landroid/support/constraint/ConstraintSet$Constraint;->baselineToBaseline:I

    goto :goto_0

    .line 1208
    :cond_8
    if-ne p4, v4, :cond_9

    .line 1209
    iput p3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->topToBottom:I

    .line 1210
    iput v7, v0, Landroid/support/constraint/ConstraintSet$Constraint;->topToTop:I

    .line 1211
    iput v7, v0, Landroid/support/constraint/ConstraintSet$Constraint;->baselineToBaseline:I

    goto :goto_0

    .line 1213
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "right to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " undefined"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1192
    :pswitch_5
    if-ne p4, v2, :cond_a

    .line 1193
    iput p3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->rightToLeft:I

    .line 1194
    iput v7, v0, Landroid/support/constraint/ConstraintSet$Constraint;->rightToRight:I

    goto :goto_0

    .line 1196
    :cond_a
    if-ne p4, v1, :cond_b

    .line 1197
    iput p3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->rightToRight:I

    .line 1198
    iput v7, v0, Landroid/support/constraint/ConstraintSet$Constraint;->rightToLeft:I

    goto :goto_0

    .line 1200
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "right to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " undefined"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1181
    :pswitch_6
    if-ne p4, v2, :cond_c

    .line 1182
    iput p3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->leftToLeft:I

    .line 1183
    iput v7, v0, Landroid/support/constraint/ConstraintSet$Constraint;->leftToRight:I

    goto :goto_0

    .line 1184
    :cond_c
    if-ne p4, v1, :cond_d

    .line 1185
    iput p3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->leftToRight:I

    .line 1186
    iput v7, v0, Landroid/support/constraint/ConstraintSet$Constraint;->leftToLeft:I

    .line 1266
    :goto_0
    return-void

    .line 1188
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "left to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " undefined"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public connect(IIIII)V
    .locals 8
    .param p1, "startID"    # I
    .param p2, "startSide"    # I
    .param p3, "endID"    # I
    .param p4, "endSide"    # I
    .param p5, "margin"    # I

    .line 1062
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1063
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/support/constraint/ConstraintSet$Constraint;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/support/constraint/ConstraintSet$Constraint;-><init>(Landroid/support/constraint/ConstraintSet$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1065
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintSet$Constraint;

    .line 1066
    .local v0, "constraint":Landroid/support/constraint/ConstraintSet$Constraint;
    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x6

    const/4 v6, 0x7

    const/4 v7, -0x1

    packed-switch p2, :pswitch_data_0

    .line 1161
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1162
    invoke-direct {p0, p2}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " unknown"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1149
    :pswitch_0
    if-ne p4, v6, :cond_1

    .line 1150
    iput p3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->endToEnd:I

    .line 1151
    iput v7, v0, Landroid/support/constraint/ConstraintSet$Constraint;->endToStart:I

    goto :goto_0

    .line 1152
    :cond_1
    if-ne p4, v5, :cond_2

    .line 1153
    iput p3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->endToStart:I

    .line 1154
    iput v7, v0, Landroid/support/constraint/ConstraintSet$Constraint;->endToEnd:I

    .line 1158
    :goto_0
    iput p5, v0, Landroid/support/constraint/ConstraintSet$Constraint;->endMargin:I

    .line 1159
    goto/16 :goto_6

    .line 1156
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "right to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " undefined"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1137
    :pswitch_1
    if-ne p4, v5, :cond_3

    .line 1138
    iput p3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->startToStart:I

    .line 1139
    iput v7, v0, Landroid/support/constraint/ConstraintSet$Constraint;->startToEnd:I

    goto :goto_1

    .line 1140
    :cond_3
    if-ne p4, v6, :cond_4

    .line 1141
    iput p3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->startToEnd:I

    .line 1142
    iput v7, v0, Landroid/support/constraint/ConstraintSet$Constraint;->startToStart:I

    .line 1146
    :goto_1
    iput p5, v0, Landroid/support/constraint/ConstraintSet$Constraint;->startMargin:I

    .line 1147
    goto/16 :goto_6

    .line 1144
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "right to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " undefined"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1126
    :pswitch_2
    const/4 v1, 0x5

    if-ne p4, v1, :cond_5

    .line 1127
    iput p3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->baselineToBaseline:I

    .line 1128
    iput v7, v0, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToBottom:I

    .line 1129
    iput v7, v0, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToTop:I

    .line 1130
    iput v7, v0, Landroid/support/constraint/ConstraintSet$Constraint;->topToTop:I

    .line 1131
    iput v7, v0, Landroid/support/constraint/ConstraintSet$Constraint;->topToBottom:I

    goto/16 :goto_6

    .line 1133
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "right to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " undefined"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1110
    :pswitch_3
    if-ne p4, v4, :cond_6

    .line 1111
    iput p3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToBottom:I

    .line 1112
    iput v7, v0, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToTop:I

    .line 1113
    iput v7, v0, Landroid/support/constraint/ConstraintSet$Constraint;->baselineToBaseline:I

    goto :goto_2

    .line 1115
    :cond_6
    if-ne p4, v3, :cond_7

    .line 1116
    iput p3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToTop:I

    .line 1117
    iput v7, v0, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToBottom:I

    .line 1118
    iput v7, v0, Landroid/support/constraint/ConstraintSet$Constraint;->baselineToBaseline:I

    .line 1123
    :goto_2
    iput p5, v0, Landroid/support/constraint/ConstraintSet$Constraint;->bottomMargin:I

    .line 1124
    goto/16 :goto_6

    .line 1121
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "right to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " undefined"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1095
    :pswitch_4
    if-ne p4, v3, :cond_8

    .line 1096
    iput p3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->topToTop:I

    .line 1097
    iput v7, v0, Landroid/support/constraint/ConstraintSet$Constraint;->topToBottom:I

    .line 1098
    iput v7, v0, Landroid/support/constraint/ConstraintSet$Constraint;->baselineToBaseline:I

    goto :goto_3

    .line 1099
    :cond_8
    if-ne p4, v4, :cond_9

    .line 1100
    iput p3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->topToBottom:I

    .line 1101
    iput v7, v0, Landroid/support/constraint/ConstraintSet$Constraint;->topToTop:I

    .line 1102
    iput v7, v0, Landroid/support/constraint/ConstraintSet$Constraint;->baselineToBaseline:I

    .line 1107
    :goto_3
    iput p5, v0, Landroid/support/constraint/ConstraintSet$Constraint;->topMargin:I

    .line 1108
    goto :goto_6

    .line 1105
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "right to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " undefined"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1081
    :pswitch_5
    if-ne p4, v2, :cond_a

    .line 1082
    iput p3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->rightToLeft:I

    .line 1083
    iput v7, v0, Landroid/support/constraint/ConstraintSet$Constraint;->rightToRight:I

    goto :goto_4

    .line 1085
    :cond_a
    if-ne p4, v1, :cond_b

    .line 1086
    iput p3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->rightToRight:I

    .line 1087
    iput v7, v0, Landroid/support/constraint/ConstraintSet$Constraint;->rightToLeft:I

    .line 1092
    :goto_4
    iput p5, v0, Landroid/support/constraint/ConstraintSet$Constraint;->rightMargin:I

    .line 1093
    goto :goto_6

    .line 1090
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "right to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " undefined"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1068
    :pswitch_6
    if-ne p4, v2, :cond_c

    .line 1069
    iput p3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->leftToLeft:I

    .line 1070
    iput v7, v0, Landroid/support/constraint/ConstraintSet$Constraint;->leftToRight:I

    goto :goto_5

    .line 1071
    :cond_c
    if-ne p4, v1, :cond_d

    .line 1072
    iput p3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->leftToRight:I

    .line 1073
    iput v7, v0, Landroid/support/constraint/ConstraintSet$Constraint;->leftToLeft:I

    .line 1078
    :goto_5
    iput p5, v0, Landroid/support/constraint/ConstraintSet$Constraint;->leftMargin:I

    .line 1079
    nop

    .line 1164
    :goto_6
    return-void

    .line 1076
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Left to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " undefined"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constrainCircle(IIIF)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "id"    # I
    .param p3, "radius"    # I
    .param p4, "angle"    # F

    .line 1697
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    .line 1698
    .local v0, "constraint":Landroid/support/constraint/ConstraintSet$Constraint;
    iput p2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->circleConstraint:I

    .line 1699
    iput p3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->circleRadius:I

    .line 1700
    iput p4, v0, Landroid/support/constraint/ConstraintSet$Constraint;->circleAngle:F

    .line 1701
    return-void
.end method

.method public constrainDefaultHeight(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "height"    # I

    .line 1787
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->heightDefault:I

    .line 1788
    return-void
.end method

.method public constrainDefaultWidth(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "width"    # I

    .line 1800
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->widthDefault:I

    .line 1801
    return-void
.end method

.method public constrainHeight(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "height"    # I

    .line 1670
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->mHeight:I

    .line 1671
    return-void
.end method

.method public constrainMaxHeight(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "height"    # I

    .line 1713
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->heightMax:I

    .line 1714
    return-void
.end method

.method public constrainMaxWidth(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "width"    # I

    .line 1726
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->widthMax:I

    .line 1727
    return-void
.end method

.method public constrainMinHeight(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "height"    # I

    .line 1739
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->heightMin:I

    .line 1740
    return-void
.end method

.method public constrainMinWidth(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "width"    # I

    .line 1752
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->widthMin:I

    .line 1753
    return-void
.end method

.method public constrainPercentHeight(IF)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "percent"    # F

    .line 1774
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->heightPercent:F

    .line 1775
    return-void
.end method

.method public constrainPercentWidth(IF)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "percent"    # F

    .line 1763
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->widthPercent:F

    .line 1764
    return-void
.end method

.method public constrainWidth(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "width"    # I

    .line 1683
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->mWidth:I

    .line 1684
    return-void
.end method

.method public create(II)V
    .locals 2
    .param p1, "guidelineID"    # I
    .param p2, "orientation"    # I

    .line 2003
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    .line 2004
    .local v0, "constraint":Landroid/support/constraint/ConstraintSet$Constraint;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/constraint/ConstraintSet$Constraint;->mIsGuideline:Z

    .line 2005
    iput p2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->orientation:I

    .line 2006
    return-void
.end method

.method public varargs createBarrier(II[I)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "direction"    # I
    .param p3, "referenced"    # [I

    .line 2018
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    .line 2019
    .local v0, "constraint":Landroid/support/constraint/ConstraintSet$Constraint;
    const/4 v1, 0x1

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Constraint;->mHelperType:I

    .line 2020
    iput p2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->mBarrierDirection:I

    .line 2021
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/constraint/ConstraintSet$Constraint;->mIsGuideline:Z

    .line 2022
    iput-object p3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->mReferenceIds:[I

    .line 2023
    return-void
.end method

.method public createHorizontalChain(IIII[I[FI)V
    .locals 10
    .param p1, "leftId"    # I
    .param p2, "leftSide"    # I
    .param p3, "rightId"    # I
    .param p4, "rightSide"    # I
    .param p5, "chainIds"    # [I
    .param p6, "weights"    # [F
    .param p7, "style"    # I

    .line 1004
    const/4 v8, 0x1

    const/4 v9, 0x2

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v9}, Landroid/support/constraint/ConstraintSet;->createHorizontalChain(IIII[I[FIII)V

    .line 1005
    return-void
.end method

.method public createHorizontalChainRtl(IIII[I[FI)V
    .locals 10
    .param p1, "startId"    # I
    .param p2, "startSide"    # I
    .param p3, "endId"    # I
    .param p4, "endSide"    # I
    .param p5, "chainIds"    # [I
    .param p6, "weights"    # [F
    .param p7, "style"    # I

    .line 1021
    const/4 v8, 0x6

    const/4 v9, 0x7

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v9}, Landroid/support/constraint/ConstraintSet;->createHorizontalChain(IIII[I[FIII)V

    .line 1022
    return-void
.end method

.method public createVerticalChain(IIII[I[FI)V
    .locals 13
    .param p1, "topId"    # I
    .param p2, "topSide"    # I
    .param p3, "bottomId"    # I
    .param p4, "bottomSide"    # I
    .param p5, "chainIds"    # [I
    .param p6, "weights"    # [F
    .param p7, "style"    # I

    move-object v6, p0

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    .line 967
    const/4 v0, 0x2

    array-length v1, v7

    if-ge v1, v0, :cond_0

    .line 968
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "must have 2 or more widgets in a chain"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 970
    :cond_0
    if-eqz v8, :cond_1

    array-length v0, v8

    array-length v1, v7

    if-eq v0, v1, :cond_1

    .line 971
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "must have 2 or more widgets in a chain"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 973
    :cond_1
    const/4 v0, 0x0

    if-eqz v8, :cond_2

    .line 974
    aget v1, v7, v0

    invoke-direct {v6, v1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v1

    aget v2, v8, v0

    iput v2, v1, Landroid/support/constraint/ConstraintSet$Constraint;->verticalWeight:F

    .line 976
    :cond_2
    aget v1, v7, v0

    invoke-direct {v6, v1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v1

    move/from16 v9, p7

    iput v9, v1, Landroid/support/constraint/ConstraintSet$Constraint;->verticalChainStyle:I

    .line 978
    aget v1, v7, v0

    const/4 v2, 0x3

    const/4 v5, 0x0

    move-object v0, v6

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 979
    const/4 v10, 0x1

    move v0, v10

    .line 979
    .local v0, "i":I
    :goto_0
    move v11, v0

    .line 979
    .end local v0    # "i":I
    .local v11, "i":I
    array-length v0, v7

    if-ge v11, v0, :cond_4

    .line 980
    aget v12, v7, v11

    .line 981
    .local v12, "chainId":I
    aget v1, v7, v11

    const/4 v2, 0x3

    add-int/lit8 v0, v11, -0x1

    aget v3, v7, v0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 982
    add-int/lit8 v0, v11, -0x1

    aget v1, v7, v0

    const/4 v2, 0x4

    aget v3, v7, v11

    const/4 v4, 0x3

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 983
    if-eqz v8, :cond_3

    .line 984
    aget v0, v7, v11

    invoke-direct {v6, v0}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    aget v1, v8, v11

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Constraint;->verticalWeight:F

    .line 979
    .end local v12    # "chainId":I
    :cond_3
    add-int/lit8 v0, v11, 0x1

    .line 979
    .end local v11    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 987
    .end local v0    # "i":I
    :cond_4
    array-length v0, v7

    sub-int/2addr v0, v10

    aget v1, v7, v0

    const/4 v2, 0x4

    const/4 v5, 0x0

    move-object v0, v6

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 988
    return-void
.end method

.method public getApplyElevation(I)Z
    .locals 1
    .param p1, "viewId"    # I

    .line 1503
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    iget-boolean v0, v0, Landroid/support/constraint/ConstraintSet$Constraint;->applyElevation:Z

    return v0
.end method

.method public load(Landroid/content/Context;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceId"    # I

    .line 2101
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2102
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 2103
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v2, 0x0

    .line 2104
    .local v2, "document":Ljava/lang/String;
    const/4 v3, 0x0

    .line 2107
    .local v3, "tagName":Ljava/lang/String;
    :try_start_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 2108
    .local v4, "eventType":I
    :goto_0
    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    .line 2110
    if-eqz v4, :cond_1

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 2123
    :pswitch_0
    const/4 v3, 0x0

    .line 2124
    goto :goto_1

    .line 2115
    :pswitch_1
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 2116
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6

    invoke-direct {p0, p1, v6}, Landroid/support/constraint/ConstraintSet;->fillFromAttributeList(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v6

    .line 2117
    .local v6, "constraint":Landroid/support/constraint/ConstraintSet$Constraint;
    const-string v7, "Guideline"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2118
    iput-boolean v5, v6, Landroid/support/constraint/ConstraintSet$Constraint;->mIsGuideline:Z

    .line 2120
    :cond_0
    iget-object v5, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    iget v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->mViewId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2121
    goto :goto_1

    .line 2112
    .end local v6    # "constraint":Landroid/support/constraint/ConstraintSet$Constraint;
    :cond_1
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 2113
    nop

    .line 2109
    :goto_1
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v5

    goto :goto_0

    .line 2131
    .end local v4    # "eventType":I
    :catch_0
    move-exception v4

    .line 2132
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 2132
    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 2129
    :catch_1
    move-exception v4

    .line 2130
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 2133
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_2
    nop

    .line 2134
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public removeFromHorizontalChain(I)V
    .locals 11
    .param p1, "viewId"    # I

    .line 1951
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1952
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/support/constraint/ConstraintSet$Constraint;

    .line 1953
    .local v6, "constraint":Landroid/support/constraint/ConstraintSet$Constraint;
    iget v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->leftToRight:I

    .line 1954
    .local v7, "leftId":I
    iget v8, v6, Landroid/support/constraint/ConstraintSet$Constraint;->rightToLeft:I

    .line 1955
    .local v8, "rightId":I
    const/4 v0, -0x1

    if-ne v7, v0, :cond_6

    if-eq v8, v0, :cond_0

    goto :goto_1

    .line 1973
    :cond_0
    iget v9, v6, Landroid/support/constraint/ConstraintSet$Constraint;->startToEnd:I

    .line 1974
    .local v9, "startId":I
    iget v10, v6, Landroid/support/constraint/ConstraintSet$Constraint;->endToStart:I

    .line 1975
    .local v10, "endId":I
    if-ne v9, v0, :cond_1

    if-eq v10, v0, :cond_5

    .line 1976
    :cond_1
    if-eq v9, v0, :cond_2

    if-eq v10, v0, :cond_2

    .line 1978
    const/4 v2, 0x7

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, v9

    move v3, v10

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 1979
    const/4 v2, 0x6

    const/4 v4, 0x7

    move v1, v10

    move v3, v7

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    goto :goto_0

    .line 1980
    :cond_2
    if-ne v7, v0, :cond_3

    if-eq v10, v0, :cond_5

    .line 1981
    :cond_3
    iget v1, v6, Landroid/support/constraint/ConstraintSet$Constraint;->rightToRight:I

    if-eq v1, v0, :cond_4

    .line 1983
    const/4 v2, 0x7

    iget v3, v6, Landroid/support/constraint/ConstraintSet$Constraint;->rightToRight:I

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    move v1, v7

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    goto :goto_0

    .line 1984
    :cond_4
    iget v1, v6, Landroid/support/constraint/ConstraintSet$Constraint;->leftToLeft:I

    if-eq v1, v0, :cond_5

    .line 1986
    const/4 v2, 0x6

    iget v3, v6, Landroid/support/constraint/ConstraintSet$Constraint;->leftToLeft:I

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, v10

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 1990
    :cond_5
    :goto_0
    const/4 v0, 0x6

    invoke-virtual {p0, p1, v0}, Landroid/support/constraint/ConstraintSet;->clear(II)V

    .line 1991
    const/4 v0, 0x7

    invoke-virtual {p0, p1, v0}, Landroid/support/constraint/ConstraintSet;->clear(II)V

    .line 1991
    .end local v6    # "constraint":Landroid/support/constraint/ConstraintSet$Constraint;
    .end local v7    # "leftId":I
    .end local v8    # "rightId":I
    .end local v9    # "startId":I
    .end local v10    # "endId":I
    goto :goto_3

    .line 1956
    .restart local v6    # "constraint":Landroid/support/constraint/ConstraintSet$Constraint;
    .restart local v7    # "leftId":I
    .restart local v8    # "rightId":I
    :cond_6
    :goto_1
    if-eq v7, v0, :cond_7

    if-eq v8, v0, :cond_7

    .line 1958
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v1, v7

    move v3, v8

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 1959
    const/4 v2, 0x1

    const/4 v4, 0x2

    move v1, v8

    move v3, v7

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    goto :goto_2

    .line 1960
    :cond_7
    if-ne v7, v0, :cond_8

    if-eq v8, v0, :cond_a

    .line 1961
    :cond_8
    iget v1, v6, Landroid/support/constraint/ConstraintSet$Constraint;->rightToRight:I

    if-eq v1, v0, :cond_9

    .line 1963
    const/4 v2, 0x2

    iget v3, v6, Landroid/support/constraint/ConstraintSet$Constraint;->rightToRight:I

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    move v1, v7

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    goto :goto_2

    .line 1964
    :cond_9
    iget v1, v6, Landroid/support/constraint/ConstraintSet$Constraint;->leftToLeft:I

    if-eq v1, v0, :cond_a

    .line 1966
    const/4 v2, 0x1

    iget v3, v6, Landroid/support/constraint/ConstraintSet$Constraint;->leftToLeft:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v1, v8

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 1969
    :cond_a
    :goto_2
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/constraint/ConstraintSet;->clear(II)V

    .line 1970
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/support/constraint/ConstraintSet;->clear(II)V

    .line 1994
    .end local v6    # "constraint":Landroid/support/constraint/ConstraintSet$Constraint;
    .end local v7    # "leftId":I
    .end local v8    # "rightId":I
    :cond_b
    :goto_3
    return-void
.end method

.method public removeFromVerticalChain(I)V
    .locals 9
    .param p1, "viewId"    # I

    .line 1919
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1920
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintSet$Constraint;

    .line 1921
    .local v0, "constraint":Landroid/support/constraint/ConstraintSet$Constraint;
    iget v7, v0, Landroid/support/constraint/ConstraintSet$Constraint;->topToBottom:I

    .line 1922
    .local v7, "topId":I
    iget v8, v0, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToTop:I

    .line 1923
    .local v8, "bottomId":I
    const/4 v1, -0x1

    if-ne v7, v1, :cond_0

    if-eq v8, v1, :cond_4

    .line 1924
    :cond_0
    if-eq v7, v1, :cond_1

    if-eq v8, v1, :cond_1

    .line 1926
    const/4 v3, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    move v2, v7

    move v4, v8

    invoke-virtual/range {v1 .. v6}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 1927
    const/4 v3, 0x3

    const/4 v5, 0x4

    move v2, v8

    move v4, v7

    invoke-virtual/range {v1 .. v6}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    goto :goto_0

    .line 1928
    :cond_1
    if-ne v7, v1, :cond_2

    if-eq v8, v1, :cond_4

    .line 1929
    :cond_2
    iget v2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToBottom:I

    if-eq v2, v1, :cond_3

    .line 1931
    const/4 v3, 0x4

    iget v4, v0, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToBottom:I

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move v2, v7

    invoke-virtual/range {v1 .. v6}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    goto :goto_0

    .line 1932
    :cond_3
    iget v2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->topToTop:I

    if-eq v2, v1, :cond_4

    .line 1934
    const/4 v3, 0x3

    iget v4, v0, Landroid/support/constraint/ConstraintSet$Constraint;->topToTop:I

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    move v2, v8

    invoke-virtual/range {v1 .. v6}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 1939
    .end local v0    # "constraint":Landroid/support/constraint/ConstraintSet$Constraint;
    .end local v7    # "topId":I
    .end local v8    # "bottomId":I
    :cond_4
    :goto_0
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/support/constraint/ConstraintSet;->clear(II)V

    .line 1940
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Landroid/support/constraint/ConstraintSet;->clear(II)V

    .line 1941
    return-void
.end method

.method public setAlpha(IF)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "alpha"    # F

    .line 1494
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->alpha:F

    .line 1495
    return-void
.end method

.method public setApplyElevation(IZ)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "apply"    # Z

    .line 1514
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    iput-boolean p2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->applyElevation:Z

    .line 1515
    return-void
.end method

.method public setBarrierType(II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "type"    # I

    .line 2064
    return-void
.end method

.method public setDimensionRatio(ILjava/lang/String;)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "ratio"    # Ljava/lang/String;

    .line 1474
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    iput-object p2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->dimensionRatio:Ljava/lang/String;

    .line 1475
    return-void
.end method

.method public setElevation(IF)V
    .locals 2
    .param p1, "viewId"    # I
    .param p2, "elevation"    # F

    .line 1524
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->elevation:F

    .line 1525
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/constraint/ConstraintSet$Constraint;->applyElevation:Z

    .line 1526
    return-void
.end method

.method public setGoneMargin(III)V
    .locals 3
    .param p1, "viewId"    # I
    .param p2, "anchor"    # I
    .param p3, "value"    # I

    .line 1419
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    .line 1420
    .local v0, "constraint":Landroid/support/constraint/ConstraintSet$Constraint;
    packed-switch p2, :pswitch_data_0

    .line 1442
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "unknown constraint"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1439
    :pswitch_0
    iput p3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->goneEndMargin:I

    .line 1440
    goto :goto_0

    .line 1436
    :pswitch_1
    iput p3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->goneStartMargin:I

    .line 1437
    goto :goto_0

    .line 1434
    :pswitch_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "baseline does not support margins"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1431
    :pswitch_3
    iput p3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->goneBottomMargin:I

    .line 1432
    goto :goto_0

    .line 1428
    :pswitch_4
    iput p3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->goneTopMargin:I

    .line 1429
    goto :goto_0

    .line 1425
    :pswitch_5
    iput p3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->goneRightMargin:I

    .line 1426
    goto :goto_0

    .line 1422
    :pswitch_6
    iput p3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->goneLeftMargin:I

    .line 1423
    nop

    .line 1444
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setGuidelineBegin(II)V
    .locals 2
    .param p1, "guidelineID"    # I
    .param p2, "margin"    # I

    .line 2032
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->guideBegin:I

    .line 2033
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Constraint;->guideEnd:I

    .line 2034
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Constraint;->guidePercent:F

    .line 2036
    return-void
.end method

.method public setGuidelineEnd(II)V
    .locals 2
    .param p1, "guidelineID"    # I
    .param p2, "margin"    # I

    .line 2045
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->guideEnd:I

    .line 2046
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Constraint;->guideBegin:I

    .line 2047
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Constraint;->guidePercent:F

    .line 2048
    return-void
.end method

.method public setGuidelinePercent(IF)V
    .locals 2
    .param p1, "guidelineID"    # I
    .param p2, "ratio"    # F

    .line 2057
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->guidePercent:F

    .line 2058
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Constraint;->guideEnd:I

    .line 2059
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Constraint;->guideBegin:I

    .line 2060
    return-void
.end method

.method public setHorizontalBias(IF)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "bias"    # F

    .line 1453
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalBias:F

    .line 1454
    return-void
.end method

.method public setHorizontalChainStyle(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "chainStyle"    # I

    .line 1838
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalChainStyle:I

    .line 1839
    return-void
.end method

.method public setHorizontalWeight(IF)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "weight"    # F

    .line 1812
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalWeight:F

    .line 1813
    return-void
.end method

.method public setMargin(III)V
    .locals 3
    .param p1, "viewId"    # I
    .param p2, "anchor"    # I
    .param p3, "value"    # I

    .line 1384
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    .line 1385
    .local v0, "constraint":Landroid/support/constraint/ConstraintSet$Constraint;
    packed-switch p2, :pswitch_data_0

    .line 1407
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "unknown constraint"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1404
    :pswitch_0
    iput p3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->endMargin:I

    .line 1405
    goto :goto_0

    .line 1401
    :pswitch_1
    iput p3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->startMargin:I

    .line 1402
    goto :goto_0

    .line 1399
    :pswitch_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "baseline does not support margins"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1396
    :pswitch_3
    iput p3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->bottomMargin:I

    .line 1397
    goto :goto_0

    .line 1393
    :pswitch_4
    iput p3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->topMargin:I

    .line 1394
    goto :goto_0

    .line 1390
    :pswitch_5
    iput p3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->rightMargin:I

    .line 1391
    goto :goto_0

    .line 1387
    :pswitch_6
    iput p3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->leftMargin:I

    .line 1388
    nop

    .line 1409
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setRotation(IF)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "rotation"    # F

    .line 1535
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->rotation:F

    .line 1536
    return-void
.end method

.method public setRotationX(IF)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "rotationX"    # F

    .line 1545
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->rotationX:F

    .line 1546
    return-void
.end method

.method public setRotationY(IF)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "rotationY"    # F

    .line 1555
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->rotationY:F

    .line 1556
    return-void
.end method

.method public setScaleX(IF)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "scaleX"    # F

    .line 1565
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->scaleX:F

    .line 1566
    return-void
.end method

.method public setScaleY(IF)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "scaleY"    # F

    .line 1575
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->scaleY:F

    .line 1576
    return-void
.end method

.method public setTransformPivot(IFF)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "transformPivotX"    # F
    .param p3, "transformPivotY"    # F

    .line 1612
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    .line 1613
    .local v0, "constraint":Landroid/support/constraint/ConstraintSet$Constraint;
    iput p3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->transformPivotY:F

    .line 1614
    iput p2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->transformPivotX:F

    .line 1615
    return-void
.end method

.method public setTransformPivotX(IF)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "transformPivotX"    # F

    .line 1587
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->transformPivotX:F

    .line 1588
    return-void
.end method

.method public setTransformPivotY(IF)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "transformPivotY"    # F

    .line 1599
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->transformPivotY:F

    .line 1600
    return-void
.end method

.method public setTranslation(IFF)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "translationX"    # F
    .param p3, "translationY"    # F

    .line 1645
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    .line 1646
    .local v0, "constraint":Landroid/support/constraint/ConstraintSet$Constraint;
    iput p2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->translationX:F

    .line 1647
    iput p3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->translationY:F

    .line 1648
    return-void
.end method

.method public setTranslationX(IF)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "translationX"    # F

    .line 1624
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->translationX:F

    .line 1625
    return-void
.end method

.method public setTranslationY(IF)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "translationY"    # F

    .line 1634
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->translationY:F

    .line 1635
    return-void
.end method

.method public setTranslationZ(IF)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "translationZ"    # F

    .line 1657
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->translationZ:F

    .line 1658
    return-void
.end method

.method public setVerticalBias(IF)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "bias"    # F

    .line 1463
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->verticalBias:F

    .line 1464
    return-void
.end method

.method public setVerticalChainStyle(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "chainStyle"    # I

    .line 1854
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->verticalChainStyle:I

    .line 1855
    return-void
.end method

.method public setVerticalWeight(IF)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "weight"    # F

    .line 1823
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->verticalWeight:F

    .line 1824
    return-void
.end method

.method public setVisibility(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "visibility"    # I

    .line 1484
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->visibility:I

    .line 1485
    return-void
.end method
