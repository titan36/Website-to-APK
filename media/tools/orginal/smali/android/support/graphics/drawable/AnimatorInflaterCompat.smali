.class public Landroid/support/graphics/drawable/AnimatorInflaterCompat;
.super Ljava/lang/Object;
.source "AnimatorInflaterCompat.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;
    }
.end annotation


# static fields
.field private static final DBG_ANIMATOR_INFLATER:Z = false

.field private static final MAX_NUM_POINTS:I = 0x64

.field private static final TAG:Ljava/lang/String; = "AnimatorInflater"

.field private static final TOGETHER:I = 0x0

.field private static final VALUE_TYPE_COLOR:I = 0x3

.field private static final VALUE_TYPE_FLOAT:I = 0x0

.field private static final VALUE_TYPE_INT:I = 0x1

.field private static final VALUE_TYPE_PATH:I = 0x2

.field private static final VALUE_TYPE_UNDEFINED:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    return-void
.end method

.method private static createAnimatorFromXml(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;F)Landroid/animation/Animator;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "pixelSize"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 500
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v7, p4

    invoke-static/range {v0 .. v7}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->createAnimatorFromXml(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method private static createAnimatorFromXml(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "attrs"    # Landroid/util/AttributeSet;
    .param p5, "parent"    # Landroid/animation/AnimatorSet;
    .param p6, "sequenceOrdering"    # I
    .param p7, "pixelSize"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p5

    .line 508
    const/4 v0, 0x0

    .line 509
    .local v0, "anim":Landroid/animation/Animator;
    const/4 v1, 0x0

    .line 513
    .local v1, "childAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    move-object v7, v0

    move-object v12, v1

    .line 513
    .end local v0    # "anim":Landroid/animation/Animator;
    .end local v1    # "childAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .local v2, "depth":I
    .local v7, "anim":Landroid/animation/Animator;
    .local v12, "childAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :goto_0
    move v13, v2

    .line 515
    .end local v2    # "depth":I
    .local v13, "depth":I
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v14, v0

    .line 515
    .local v14, "type":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    if-le v0, v13, :cond_0

    goto :goto_1

    .line 558
    :cond_0
    move-object/from16 v1, p0

    move/from16 v19, v13

    goto/16 :goto_4

    .line 515
    :cond_1
    :goto_1
    const/4 v0, 0x1

    if-eq v14, v0, :cond_a

    .line 518
    const/4 v0, 0x2

    if-eq v14, v0, :cond_2

    .line 519
    nop

    .line 513
    move v2, v13

    goto :goto_0

    .line 522
    :cond_2
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 523
    .local v15, "name":Ljava/lang/String;
    const/16 v16, 0x0

    .line 525
    .local v16, "gotValues":Z
    const-string v0, "objectAnimator"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 526
    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v9

    move-object/from16 v3, p4

    move/from16 v4, p7

    move-object v5, v10

    invoke-static/range {v0 .. v5}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->loadObjectAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;FLorg/xmlpull/v1/XmlPullParser;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 551
    .end local v7    # "anim":Landroid/animation/Animator;
    .end local v13    # "depth":I
    .restart local v0    # "anim":Landroid/animation/Animator;
    .local v19, "depth":I
    :goto_2
    move-object/from16 v1, p0

    move-object v7, v0

    move/from16 v19, v13

    goto/16 :goto_3

    .line 527
    .end local v0    # "anim":Landroid/animation/Animator;
    .end local v19    # "depth":I
    .restart local v7    # "anim":Landroid/animation/Animator;
    .restart local v13    # "depth":I
    :cond_3
    const-string v0, "animator"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 528
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v9

    move-object/from16 v3, p4

    move/from16 v5, p7

    move-object v6, v10

    invoke-static/range {v0 .. v6}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->loadAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;FLorg/xmlpull/v1/XmlPullParser;)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_2

    .line 529
    :cond_4
    const-string v0, "set"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 530
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v17, v0

    .line 531
    .end local v7    # "anim":Landroid/animation/Animator;
    .local v17, "anim":Landroid/animation/Animator;
    sget-object v0, Landroid/support/graphics/drawable/AndroidResources;->STYLEABLE_ANIMATOR_SET:[I

    move-object/from16 v7, p4

    invoke-static {v8, v9, v7, v0}, Landroid/support/v4/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 534
    .local v6, "a":Landroid/content/res/TypedArray;
    const-string v0, "ordering"

    const/4 v1, 0x0

    invoke-static {v6, v10, v0, v1, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v18

    .line 537
    .local v18, "ordering":I
    move-object/from16 v5, v17

    check-cast v5, Landroid/animation/AnimatorSet;

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v9

    move-object v3, v10

    move-object v4, v7

    move/from16 v19, v13

    move-object v13, v6

    move/from16 v6, v18

    .line 537
    .end local v6    # "a":Landroid/content/res/TypedArray;
    .local v13, "a":Landroid/content/res/TypedArray;
    .restart local v19    # "depth":I
    move/from16 v7, p7

    invoke-static/range {v0 .. v7}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->createAnimatorFromXml(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;

    .line 539
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 540
    .end local v13    # "a":Landroid/content/res/TypedArray;
    .end local v18    # "ordering":I
    nop

    .line 551
    move-object/from16 v1, p0

    move-object/from16 v7, v17

    goto :goto_3

    .line 540
    .end local v17    # "anim":Landroid/animation/Animator;
    .end local v19    # "depth":I
    .restart local v7    # "anim":Landroid/animation/Animator;
    .local v13, "depth":I
    :cond_5
    move/from16 v19, v13

    .line 540
    .end local v13    # "depth":I
    .restart local v19    # "depth":I
    const-string v0, "propertyValuesHolder"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 541
    nop

    .line 542
    invoke-static/range {p3 .. p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 541
    move-object/from16 v1, p0

    invoke-static {v1, v8, v9, v10, v0}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->loadValues(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)[Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 543
    .local v0, "values":[Landroid/animation/PropertyValuesHolder;
    if-eqz v0, :cond_6

    if-eqz v7, :cond_6

    instance-of v2, v7, Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_6

    .line 544
    move-object v2, v7

    check-cast v2, Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 546
    :cond_6
    const/16 v16, 0x1

    .line 547
    .end local v0    # "values":[Landroid/animation/PropertyValuesHolder;
    nop

    .line 551
    :goto_3
    if-eqz v11, :cond_8

    if-nez v16, :cond_8

    .line 552
    if-nez v12, :cond_7

    .line 553
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    .line 555
    :cond_7
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 557
    .end local v15    # "name":Ljava/lang/String;
    .end local v16    # "gotValues":Z
    :cond_8
    nop

    .line 513
    move/from16 v2, v19

    goto/16 :goto_0

    .line 548
    .restart local v15    # "name":Ljava/lang/String;
    .restart local v16    # "gotValues":Z
    :cond_9
    move-object/from16 v1, p0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown animator name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 558
    .end local v15    # "name":Ljava/lang/String;
    .end local v16    # "gotValues":Z
    .end local v19    # "depth":I
    .restart local v13    # "depth":I
    :cond_a
    move-object/from16 v1, p0

    move/from16 v19, v13

    .line 558
    .end local v13    # "depth":I
    .restart local v19    # "depth":I
    :goto_4
    if-eqz v11, :cond_d

    if-eqz v12, :cond_d

    .line 559
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/animation/Animator;

    .line 560
    .local v0, "animsArray":[Landroid/animation/Animator;
    const/4 v2, 0x0

    .line 561
    .local v2, "index":I
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;

    .line 562
    .local v4, "a":Landroid/animation/Animator;
    add-int/lit8 v5, v2, 0x1

    .line 562
    .local v5, "index":I
    aput-object v4, v0, v2

    .line 563
    .end local v2    # "index":I
    .end local v4    # "a":Landroid/animation/Animator;
    nop

    .line 561
    move v2, v5

    goto :goto_5

    .line 564
    .end local v5    # "index":I
    .restart local v2    # "index":I
    :cond_b
    if-nez p6, :cond_c

    .line 565
    invoke-virtual {v11, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_6

    .line 567
    :cond_c
    invoke-virtual {v11, v0}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 570
    .end local v0    # "animsArray":[Landroid/animation/Animator;
    .end local v2    # "index":I
    :cond_d
    :goto_6
    return-object v7
.end method

.method private static createNewKeyframe(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;
    .locals 2
    .param p0, "sampleKeyframe"    # Landroid/animation/Keyframe;
    .param p1, "fraction"    # F

    .line 778
    invoke-virtual {p0}, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    .line 779
    invoke-static {p1}, Landroid/animation/Keyframe;->ofFloat(F)Landroid/animation/Keyframe;

    move-result-object v0

    goto :goto_0

    .line 780
    :cond_0
    invoke-virtual {p0}, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    .line 781
    invoke-static {p1}, Landroid/animation/Keyframe;->ofInt(F)Landroid/animation/Keyframe;

    move-result-object v0

    goto :goto_0

    .line 782
    :cond_1
    invoke-static {p1}, Landroid/animation/Keyframe;->ofObject(F)Landroid/animation/Keyframe;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static distributeKeyframes([Landroid/animation/Keyframe;FII)V
    .locals 5
    .param p0, "keyframes"    # [Landroid/animation/Keyframe;
    .param p1, "gap"    # F
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .line 805
    sub-int v0, p3, p2

    add-int/lit8 v0, v0, 0x2

    .line 806
    .local v0, "count":I
    int-to-float v1, v0

    div-float v1, p1, v1

    .line 807
    .local v1, "increment":F
    move v2, p2

    .line 807
    .local v2, "i":I
    :goto_0
    if-gt v2, p3, :cond_0

    .line 808
    aget-object v3, p0, v2

    add-int/lit8 v4, v2, -0x1

    aget-object v4, p0, v4

    invoke-virtual {v4}, Landroid/animation/Keyframe;->getFraction()F

    move-result v4

    add-float/2addr v4, v1

    invoke-virtual {v3, v4}, Landroid/animation/Keyframe;->setFraction(F)V

    .line 807
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 810
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method private static dumpKeyframes([Ljava/lang/Object;Ljava/lang/String;)V
    .locals 7
    .param p0, "keyframes"    # [Ljava/lang/Object;
    .param p1, "header"    # Ljava/lang/String;

    .line 672
    if-eqz p0, :cond_4

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_3

    .line 675
    :cond_0
    const-string v0, "AnimatorInflater"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    array-length v0, p0

    .line 677
    .local v0, "count":I
    const/4 v1, 0x0

    .line 677
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 678
    aget-object v2, p0, v1

    check-cast v2, Landroid/animation/Keyframe;

    .line 679
    .local v2, "keyframe":Landroid/animation/Keyframe;
    const-string v3, "AnimatorInflater"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Keyframe "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": fraction "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    invoke-virtual {v2}, Landroid/animation/Keyframe;->getFraction()F

    move-result v5

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    const-string v5, "null"

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/animation/Keyframe;->getFraction()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    invoke-virtual {v2}, Landroid/animation/Keyframe;->hasValue()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v5

    goto :goto_2

    :cond_2
    const-string v5, "null"

    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 679
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    .end local v2    # "keyframe":Landroid/animation/Keyframe;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 683
    .end local v1    # "i":I
    :cond_3
    return-void

    .line 673
    .end local v0    # "count":I
    :cond_4
    :goto_3
    return-void
.end method

.method private static getPVH(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;
    .locals 20
    .param p0, "styledAttributes"    # Landroid/content/res/TypedArray;
    .param p1, "valueType"    # I
    .param p2, "valueFromId"    # I
    .param p3, "valueToId"    # I
    .param p4, "propertyName"    # Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    .line 206
    move-object/from16 v3, p4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v4

    .line 207
    .local v4, "tvFrom":Landroid/util/TypedValue;
    if-eqz v4, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 208
    .local v7, "hasFrom":Z
    :goto_0
    if-eqz v7, :cond_1

    iget v8, v4, Landroid/util/TypedValue;->type:I

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    .line 209
    .local v8, "fromType":I
    :goto_1
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v9

    .line 210
    .local v9, "tvTo":Landroid/util/TypedValue;
    if-eqz v9, :cond_2

    const/4 v10, 0x1

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    .line 211
    .local v10, "hasTo":Z
    :goto_2
    if-eqz v10, :cond_3

    iget v11, v9, Landroid/util/TypedValue;->type:I

    goto :goto_3

    :cond_3
    const/4 v11, 0x0

    .line 213
    .local v11, "toType":I
    :goto_3
    const/4 v12, 0x4

    move/from16 v13, p1

    if-ne v13, v12, :cond_7

    .line 215
    if-eqz v7, :cond_4

    invoke-static {v8}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    move-result v12

    if-nez v12, :cond_5

    :cond_4
    if-eqz v10, :cond_6

    invoke-static {v11}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 216
    :cond_5
    const/4 v12, 0x3

    .line 216
    .end local p1    # "valueType":I
    .local v12, "valueType":I
    :goto_4
    goto :goto_5

    .line 218
    .end local v12    # "valueType":I
    .restart local p1    # "valueType":I
    :cond_6
    const/4 v12, 0x0

    goto :goto_4

    .line 222
    :cond_7
    move v12, v13

    .line 222
    .end local p1    # "valueType":I
    .restart local v12    # "valueType":I
    :goto_5
    if-nez v12, :cond_8

    const/4 v13, 0x1

    goto :goto_6

    :cond_8
    const/4 v13, 0x0

    .line 224
    .local v13, "getFloats":Z
    :goto_6
    const/4 v14, 0x0

    .line 226
    .local v14, "returnValue":Landroid/animation/PropertyValuesHolder;
    const/4 v15, 0x2

    if-ne v12, v15, :cond_f

    .line 227
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 228
    .local v5, "fromString":Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 230
    .local v6, "toString":Ljava/lang/String;
    nop

    .line 231
    invoke-static {v5}, Landroid/support/v4/graphics/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Landroid/support/v4/graphics/PathParser$PathDataNode;

    move-result-object v15

    .line 232
    .local v15, "nodesFrom":[Landroid/support/v4/graphics/PathParser$PathDataNode;
    nop

    .line 233
    move-object/from16 v16, v4

    invoke-static {v6}, Landroid/support/v4/graphics/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Landroid/support/v4/graphics/PathParser$PathDataNode;

    move-result-object v4

    .line 234
    .local v4, "nodesTo":[Landroid/support/v4/graphics/PathParser$PathDataNode;
    .local v16, "tvFrom":Landroid/util/TypedValue;
    if-nez v15, :cond_a

    if-eqz v4, :cond_9

    goto :goto_7

    .line 254
    .end local v4    # "nodesTo":[Landroid/support/v4/graphics/PathParser$PathDataNode;
    .end local v5    # "fromString":Ljava/lang/String;
    .end local v6    # "toString":Ljava/lang/String;
    .end local v15    # "nodesFrom":[Landroid/support/v4/graphics/PathParser$PathDataNode;
    :cond_9
    move-object/from16 v17, v9

    move/from16 v19, v11

    move-object/from16 v18, v14

    goto/16 :goto_9

    .line 235
    .restart local v4    # "nodesTo":[Landroid/support/v4/graphics/PathParser$PathDataNode;
    .restart local v5    # "fromString":Ljava/lang/String;
    .restart local v6    # "toString":Ljava/lang/String;
    .restart local v15    # "nodesFrom":[Landroid/support/v4/graphics/PathParser$PathDataNode;
    :cond_a
    :goto_7
    move-object/from16 v17, v9

    const/4 v9, 0x0

    .line 235
    .end local v9    # "tvTo":Landroid/util/TypedValue;
    .local v17, "tvTo":Landroid/util/TypedValue;
    if-eqz v15, :cond_d

    .line 236
    move-object/from16 v18, v14

    new-instance v14, Landroid/support/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;

    .line 236
    .end local v14    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .local v18, "returnValue":Landroid/animation/PropertyValuesHolder;
    invoke-direct {v14, v9}, Landroid/support/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;-><init>(Landroid/support/graphics/drawable/AnimatorInflaterCompat$1;)V

    move-object v9, v14

    .line 237
    .local v9, "evaluator":Landroid/animation/TypeEvaluator;
    if-eqz v4, :cond_c

    .line 238
    invoke-static {v15, v4}, Landroid/support/v4/graphics/PathParser;->canMorph([Landroid/support/v4/graphics/PathParser$PathDataNode;[Landroid/support/v4/graphics/PathParser$PathDataNode;)Z

    move-result v14

    if-nez v14, :cond_b

    .line 239
    new-instance v14, Landroid/view/InflateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v11

    const-string v11, " Can\'t morph from "

    .line 239
    .end local v11    # "toType":I
    .local v19, "toType":I
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " to "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v14, v2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 242
    .end local v19    # "toType":I
    .restart local v11    # "toType":I
    :cond_b
    move/from16 v19, v11

    .line 242
    .end local v11    # "toType":I
    .restart local v19    # "toType":I
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v15, v2, v11

    const/4 v14, 0x1

    aput-object v4, v2, v14

    invoke-static {v3, v9, v2}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 242
    .end local v18    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .local v2, "returnValue":Landroid/animation/PropertyValuesHolder;
    goto :goto_8

    .line 245
    .end local v2    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .end local v19    # "toType":I
    .restart local v11    # "toType":I
    .restart local v18    # "returnValue":Landroid/animation/PropertyValuesHolder;
    :cond_c
    move/from16 v19, v11

    const/4 v11, 0x0

    const/4 v14, 0x1

    .line 245
    .end local v11    # "toType":I
    .restart local v19    # "toType":I
    new-array v2, v14, [Ljava/lang/Object;

    aput-object v15, v2, v11

    invoke-static {v3, v9, v2}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 248
    .end local v9    # "evaluator":Landroid/animation/TypeEvaluator;
    .end local v18    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .restart local v14    # "returnValue":Landroid/animation/PropertyValuesHolder;
    :goto_8
    move-object v14, v2

    goto :goto_a

    .line 248
    .end local v19    # "toType":I
    .restart local v11    # "toType":I
    :cond_d
    move/from16 v19, v11

    move-object/from16 v18, v14

    .line 248
    .end local v11    # "toType":I
    .end local v14    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .restart local v18    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .restart local v19    # "toType":I
    if-eqz v4, :cond_e

    .line 249
    new-instance v2, Landroid/support/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;

    invoke-direct {v2, v9}, Landroid/support/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;-><init>(Landroid/support/graphics/drawable/AnimatorInflaterCompat$1;)V

    .line 250
    .local v2, "evaluator":Landroid/animation/TypeEvaluator;
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v4, v9, v11

    invoke-static {v3, v2, v9}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    .line 250
    .end local v2    # "evaluator":Landroid/animation/TypeEvaluator;
    .end local v4    # "nodesTo":[Landroid/support/v4/graphics/PathParser$PathDataNode;
    .end local v5    # "fromString":Ljava/lang/String;
    .end local v6    # "toString":Ljava/lang/String;
    .end local v15    # "nodesFrom":[Landroid/support/v4/graphics/PathParser$PathDataNode;
    .end local v18    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .restart local v14    # "returnValue":Landroid/animation/PropertyValuesHolder;
    goto :goto_a

    .line 254
    .end local v17    # "tvTo":Landroid/util/TypedValue;
    .end local v19    # "toType":I
    .local v9, "tvTo":Landroid/util/TypedValue;
    .restart local v11    # "toType":I
    :cond_e
    :goto_9
    move-object/from16 v14, v18

    .line 330
    .end local v9    # "tvTo":Landroid/util/TypedValue;
    .end local v11    # "toType":I
    .restart local v17    # "tvTo":Landroid/util/TypedValue;
    .restart local v19    # "toType":I
    :goto_a
    move/from16 v9, v19

    move/from16 v11, p3

    goto/16 :goto_15

    .line 255
    .end local v16    # "tvFrom":Landroid/util/TypedValue;
    .end local v17    # "tvTo":Landroid/util/TypedValue;
    .end local v19    # "toType":I
    .local v4, "tvFrom":Landroid/util/TypedValue;
    .restart local v9    # "tvTo":Landroid/util/TypedValue;
    .restart local v11    # "toType":I
    :cond_f
    move-object/from16 v16, v4

    move-object/from16 v17, v9

    move/from16 v19, v11

    move-object/from16 v18, v14

    .line 255
    .end local v4    # "tvFrom":Landroid/util/TypedValue;
    .end local v9    # "tvTo":Landroid/util/TypedValue;
    .end local v11    # "toType":I
    .end local v14    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .restart local v16    # "tvFrom":Landroid/util/TypedValue;
    .restart local v17    # "tvTo":Landroid/util/TypedValue;
    .restart local v18    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .restart local v19    # "toType":I
    const/4 v2, 0x0

    .line 257
    .restart local v2    # "evaluator":Landroid/animation/TypeEvaluator;
    const/4 v4, 0x3

    if-ne v12, v4, :cond_10

    .line 259
    invoke-static {}, Landroid/support/graphics/drawable/ArgbEvaluator;->getInstance()Landroid/support/graphics/drawable/ArgbEvaluator;

    move-result-object v2

    .line 261
    :cond_10
    const/4 v4, 0x5

    const/4 v5, 0x0

    if-eqz v13, :cond_16

    .line 264
    if-eqz v7, :cond_14

    .line 265
    if-ne v8, v4, :cond_11

    .line 266
    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    .line 266
    .local v6, "valueFrom":F
    goto :goto_b

    .line 268
    .end local v6    # "valueFrom":F
    :cond_11
    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    .line 270
    .restart local v6    # "valueFrom":F
    :goto_b
    if-eqz v10, :cond_13

    .line 271
    move/from16 v9, v19

    if-ne v9, v4, :cond_12

    .line 272
    .end local v19    # "toType":I
    .local v9, "toType":I
    move/from16 v11, p3

    invoke-virtual {v0, v11, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    .line 272
    .local v4, "valueTo":F
    goto :goto_c

    .line 274
    .end local v4    # "valueTo":F
    :cond_12
    move/from16 v11, p3

    invoke-virtual {v0, v11, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 276
    .restart local v4    # "valueTo":F
    :goto_c
    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v14, 0x0

    aput v6, v5, v14

    const/4 v15, 0x1

    aput v4, v5, v15

    invoke-static {v3, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 289
    .end local v18    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .local v5, "returnValue":Landroid/animation/PropertyValuesHolder;
    move-object v14, v5

    goto :goto_f

    .line 279
    .end local v4    # "valueTo":F
    .end local v5    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .end local v9    # "toType":I
    .restart local v18    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .restart local v19    # "toType":I
    :cond_13
    move/from16 v9, v19

    move/from16 v11, p3

    const/4 v14, 0x0

    const/4 v15, 0x1

    .line 279
    .end local v19    # "toType":I
    .restart local v9    # "toType":I
    new-array v4, v15, [F

    aput v6, v4, v14

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 279
    .end local v18    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .local v4, "returnValue":Landroid/animation/PropertyValuesHolder;
    goto :goto_e

    .line 282
    .end local v4    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .end local v6    # "valueFrom":F
    .end local v9    # "toType":I
    .restart local v18    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .restart local v19    # "toType":I
    :cond_14
    move/from16 v9, v19

    move/from16 v11, p3

    .line 282
    .end local v19    # "toType":I
    .restart local v9    # "toType":I
    if-ne v9, v4, :cond_15

    .line 283
    invoke-virtual {v0, v11, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    .line 283
    .local v4, "valueTo":F
    goto :goto_d

    .line 285
    .end local v4    # "valueTo":F
    :cond_15
    invoke-virtual {v0, v11, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 287
    .restart local v4    # "valueTo":F
    :goto_d
    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v4, v5, v6

    invoke-static {v3, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 289
    .end local v4    # "valueTo":F
    .end local v18    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .restart local v14    # "returnValue":Landroid/animation/PropertyValuesHolder;
    :goto_e
    move-object v14, v4

    :goto_f
    goto/16 :goto_14

    .line 292
    .end local v9    # "toType":I
    .end local v14    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .restart local v18    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .restart local v19    # "toType":I
    :cond_16
    move/from16 v9, v19

    move/from16 v11, p3

    .line 292
    .end local v19    # "toType":I
    .restart local v9    # "toType":I
    if-eqz v7, :cond_1c

    .line 293
    if-ne v8, v4, :cond_17

    .line 294
    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    float-to-int v6, v6

    .line 298
    .local v6, "valueFrom":I
    move v14, v6

    goto :goto_10

    .line 295
    .end local v6    # "valueFrom":I
    :cond_17
    invoke-static {v8}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 296
    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    .line 296
    .local v14, "valueFrom":I
    goto :goto_10

    .line 298
    .end local v14    # "valueFrom":I
    :cond_18
    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    .line 298
    .restart local v14    # "valueFrom":I
    :goto_10
    move v6, v14

    .line 300
    .end local v14    # "valueFrom":I
    .restart local v6    # "valueFrom":I
    if-eqz v10, :cond_1b

    .line 301
    if-ne v9, v4, :cond_19

    .line 302
    invoke-virtual {v0, v11, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v4, v4

    .line 306
    .local v4, "valueTo":I
    move v5, v4

    const/4 v4, 0x0

    goto :goto_11

    .line 303
    .end local v4    # "valueTo":I
    :cond_19
    invoke-static {v9}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 304
    const/4 v4, 0x0

    invoke-virtual {v0, v11, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    .line 304
    .local v5, "valueTo":I
    goto :goto_11

    .line 306
    .end local v5    # "valueTo":I
    :cond_1a
    const/4 v4, 0x0

    invoke-virtual {v0, v11, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 308
    .restart local v5    # "valueTo":I
    :goto_11
    const/4 v14, 0x2

    new-array v14, v14, [I

    aput v6, v14, v4

    const/4 v15, 0x1

    aput v5, v14, v15

    invoke-static {v3, v14}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    goto :goto_12

    .line 310
    .end local v5    # "valueTo":I
    :cond_1b
    const/4 v4, 0x0

    const/4 v15, 0x1

    new-array v5, v15, [I

    aput v6, v5, v4

    invoke-static {v3, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    .line 310
    .end local v6    # "valueFrom":I
    .end local v18    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .local v14, "returnValue":Landroid/animation/PropertyValuesHolder;
    :goto_12
    goto :goto_14

    .line 313
    .end local v14    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .restart local v18    # "returnValue":Landroid/animation/PropertyValuesHolder;
    :cond_1c
    if-eqz v10, :cond_1f

    .line 314
    if-ne v9, v4, :cond_1d

    .line 315
    invoke-virtual {v0, v11, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v4, v4

    .line 319
    .restart local v4    # "valueTo":I
    move v5, v4

    const/4 v4, 0x0

    goto :goto_13

    .line 316
    .end local v4    # "valueTo":I
    :cond_1d
    invoke-static {v9}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 317
    const/4 v4, 0x0

    invoke-virtual {v0, v11, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    .line 317
    .restart local v5    # "valueTo":I
    goto :goto_13

    .line 319
    .end local v5    # "valueTo":I
    :cond_1e
    const/4 v4, 0x0

    invoke-virtual {v0, v11, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 321
    .restart local v5    # "valueTo":I
    :goto_13
    const/4 v6, 0x1

    new-array v6, v6, [I

    aput v5, v6, v4

    invoke-static {v3, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    .line 321
    .end local v5    # "valueTo":I
    .end local v18    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .restart local v14    # "returnValue":Landroid/animation/PropertyValuesHolder;
    goto :goto_14

    .line 325
    .end local v14    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .restart local v18    # "returnValue":Landroid/animation/PropertyValuesHolder;
    :cond_1f
    move-object/from16 v14, v18

    .line 325
    .end local v18    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .restart local v14    # "returnValue":Landroid/animation/PropertyValuesHolder;
    :goto_14
    if-eqz v14, :cond_20

    if-eqz v2, :cond_20

    .line 326
    invoke-virtual {v14, v2}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 330
    .end local v2    # "evaluator":Landroid/animation/TypeEvaluator;
    :cond_20
    :goto_15
    return-object v14
.end method

.method private static inferValueTypeFromValues(Landroid/content/res/TypedArray;II)I
    .locals 8
    .param p0, "styledAttributes"    # Landroid/content/res/TypedArray;
    .param p1, "valueFromId"    # I
    .param p2, "valueToId"    # I

    .line 654
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 655
    .local v0, "tvFrom":Landroid/util/TypedValue;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 656
    .local v3, "hasFrom":Z
    :goto_0
    if-eqz v3, :cond_1

    iget v4, v0, Landroid/util/TypedValue;->type:I

    goto :goto_1

    :cond_1
    move v4, v2

    .line 657
    .local v4, "fromType":I
    :goto_1
    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v5

    .line 658
    .local v5, "tvTo":Landroid/util/TypedValue;
    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    .line 659
    .local v1, "hasTo":Z
    :goto_2
    if-eqz v1, :cond_3

    iget v6, v5, Landroid/util/TypedValue;->type:I

    goto :goto_3

    :cond_3
    move v6, v2

    .line 663
    .local v6, "toType":I
    :goto_3
    if-eqz v3, :cond_4

    invoke-static {v4}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    move-result v7

    if-nez v7, :cond_5

    :cond_4
    if-eqz v1, :cond_6

    invoke-static {v6}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 664
    :cond_5
    const/4 v2, 0x3

    .line 664
    .local v2, "valueType":I
    goto :goto_4

    .line 666
    .end local v2    # "valueType":I
    :cond_6
    nop

    .line 668
    .restart local v2    # "valueType":I
    :goto_4
    return v2
.end method

.method private static inferValueTypeOfKeyframe(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 5
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 635
    sget-object v0, Landroid/support/graphics/drawable/AndroidResources;->STYLEABLE_KEYFRAME:[I

    invoke-static {p0, p1, p2, v0}, Landroid/support/v4/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 638
    .local v0, "a":Landroid/content/res/TypedArray;
    const-string v1, "value"

    const/4 v2, 0x0

    invoke-static {v0, p3, v1, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->peekNamedValue(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/util/TypedValue;

    move-result-object v1

    .line 640
    .local v1, "keyframeValue":Landroid/util/TypedValue;
    if-eqz v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 643
    .local v3, "hasValue":Z
    :goto_0
    if-eqz v3, :cond_1

    iget v4, v1, Landroid/util/TypedValue;->type:I

    invoke-static {v4}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 644
    const/4 v2, 0x3

    .line 644
    .local v2, "valueType":I
    goto :goto_1

    .line 646
    .end local v2    # "valueType":I
    :cond_1
    nop

    .line 648
    .restart local v2    # "valueType":I
    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 649
    return v2
.end method

.method private static isColorType(I)Z
    .locals 1
    .param p0, "type"    # I

    .line 916
    const/16 v0, 0x1c

    if-lt p0, v0, :cond_0

    const/16 v0, 0x1f

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/AnimatorRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 99
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 100
    invoke-static {p0, p1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 100
    .local v0, "objectAnimator":Landroid/animation/Animator;
    goto :goto_0

    .line 102
    .end local v0    # "objectAnimator":Landroid/animation/Animator;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-static {p0, v0, v1, p1}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->loadAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/animation/Animator;

    move-result-object v0

    .line 104
    .restart local v0    # "objectAnimator":Landroid/animation/Animator;
    :goto_0
    return-object v0
.end method

.method public static loadAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/animation/Animator;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "id"    # I
        .annotation build Landroid/support/annotation/AnimatorRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 118
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, p1, p2, p3, v0}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->loadAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;IF)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public static loadAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;IF)Landroid/animation/Animator;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "id"    # I
        .annotation build Landroid/support/annotation/AnimatorRes;
        .end annotation
    .end param
    .param p4, "pathErrorScale"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 128
    const/4 v0, 0x0

    .line 130
    .local v0, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    move-object v0, v1

    .line 131
    invoke-static {p0, p1, p2, v0, p4}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->createAnimatorFromXml(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;F)Landroid/animation/Animator;

    move-result-object v1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    .local v1, "animator":Landroid/animation/Animator;
    nop

    .line 146
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_0
    return-object v1

    .line 146
    .end local v1    # "animator":Landroid/animation/Animator;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 139
    :catch_0
    move-exception v1

    .line 140
    .local v1, "ex":Ljava/io/IOException;
    :try_start_1
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t load animation resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 143
    .local v2, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v2, v1}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 144
    throw v2

    .line 133
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v2    # "rnf":Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v1

    .line 134
    .local v1, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t load animation resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 137
    .restart local v2    # "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v2, v1}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 138
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    .end local v1    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v2    # "rnf":Landroid/content/res/Resources$NotFoundException;
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_1
    throw v1
.end method

.method private static loadAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;FLorg/xmlpull/v1/XmlPullParser;)Landroid/animation/ValueAnimator;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "anim"    # Landroid/animation/ValueAnimator;
    .param p5, "pathErrorScale"    # F
    .param p6, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 889
    sget-object v0, Landroid/support/graphics/drawable/AndroidResources;->STYLEABLE_ANIMATOR:[I

    invoke-static {p1, p2, p3, v0}, Landroid/support/v4/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 891
    .local v0, "arrayAnimator":Landroid/content/res/TypedArray;
    sget-object v1, Landroid/support/graphics/drawable/AndroidResources;->STYLEABLE_PROPERTY_ANIMATOR:[I

    invoke-static {p1, p2, p3, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 894
    .local v1, "arrayObjectAnimator":Landroid/content/res/TypedArray;
    if-nez p4, :cond_0

    .line 895
    new-instance v2, Landroid/animation/ValueAnimator;

    invoke-direct {v2}, Landroid/animation/ValueAnimator;-><init>()V

    move-object p4, v2

    .line 898
    :cond_0
    invoke-static {p4, v0, v1, p5, p6}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->parseAnimatorFromTypeArray(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;FLorg/xmlpull/v1/XmlPullParser;)V

    .line 901
    const-string v2, "interpolator"

    const/4 v3, 0x0

    invoke-static {v0, p6, v2, v3, v3}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedResourceId(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v2

    .line 903
    .local v2, "resID":I
    if-lez v2, :cond_1

    .line 904
    invoke-static {p0, v2}, Landroid/support/graphics/drawable/AnimationUtilsCompat;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    .line 905
    .local v3, "interpolator":Landroid/view/animation/Interpolator;
    invoke-virtual {p4, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 908
    .end local v3    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 909
    if-eqz v1, :cond_2

    .line 910
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 912
    :cond_2
    return-object p4
.end method

.method private static loadKeyframe(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;ILorg/xmlpull/v1/XmlPullParser;)Landroid/animation/Keyframe;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "valueType"    # I
    .param p5, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 817
    sget-object v0, Landroid/support/graphics/drawable/AndroidResources;->STYLEABLE_KEYFRAME:[I

    invoke-static {p1, p2, p3, v0}, Landroid/support/v4/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 820
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    .line 822
    .local v1, "keyframe":Landroid/animation/Keyframe;
    const-string v2, "fraction"

    const/4 v3, 0x3

    const/high16 v4, -0x40800000    # -1.0f

    invoke-static {v0, p5, v2, v3, v4}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v2

    .line 825
    .local v2, "fraction":F
    const-string v4, "value"

    const/4 v5, 0x0

    invoke-static {v0, p5, v4, v5}, Landroid/support/v4/content/res/TypedArrayUtils;->peekNamedValue(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/util/TypedValue;

    move-result-object v4

    .line 827
    .local v4, "keyframeValue":Landroid/util/TypedValue;
    const/4 v6, 0x1

    if-eqz v4, :cond_0

    move v7, v6

    goto :goto_0

    :cond_0
    move v7, v5

    .line 828
    .local v7, "hasValue":Z
    :goto_0
    const/4 v8, 0x4

    if-ne p4, v8, :cond_2

    .line 831
    if-eqz v7, :cond_1

    iget v8, v4, Landroid/util/TypedValue;->type:I

    invoke-static {v8}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 832
    const/4 p4, 0x3

    goto :goto_1

    .line 834
    :cond_1
    const/4 p4, 0x0

    .line 838
    :cond_2
    :goto_1
    if-eqz v7, :cond_4

    .line 839
    if-eq p4, v3, :cond_3

    packed-switch p4, :pswitch_data_0

    goto :goto_2

    .line 841
    :pswitch_0
    const-string v3, "value"

    const/4 v8, 0x0

    invoke-static {v0, p5, v3, v5, v8}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v3

    .line 843
    .local v3, "value":F
    invoke-static {v2, v3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v1

    .line 844
    goto :goto_2

    .line 847
    .end local v3    # "value":F
    :cond_3
    :pswitch_1
    const-string v3, "value"

    invoke-static {v0, p5, v3, v5, v5}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v3

    .line 849
    .local v3, "intValue":I
    invoke-static {v2, v3}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object v1

    .line 850
    .end local v3    # "intValue":I
    :goto_2
    goto :goto_4

    .line 853
    :cond_4
    if-nez p4, :cond_5

    invoke-static {v2}, Landroid/animation/Keyframe;->ofFloat(F)Landroid/animation/Keyframe;

    move-result-object v3

    goto :goto_3

    .line 854
    :cond_5
    invoke-static {v2}, Landroid/animation/Keyframe;->ofInt(F)Landroid/animation/Keyframe;

    move-result-object v3

    :goto_3
    move-object v1, v3

    .line 857
    :goto_4
    const-string v3, "interpolator"

    invoke-static {v0, p5, v3, v6, v5}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedResourceId(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v3

    .line 859
    .local v3, "resID":I
    if-lez v3, :cond_6

    .line 860
    invoke-static {p0, v3}, Landroid/support/graphics/drawable/AnimationUtilsCompat;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v5

    .line 861
    .local v5, "interpolator":Landroid/view/animation/Interpolator;
    invoke-virtual {v1, v5}, Landroid/animation/Keyframe;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 863
    .end local v5    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_6
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 865
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static loadObjectAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;FLorg/xmlpull/v1/XmlPullParser;)Landroid/animation/ObjectAnimator;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "pathErrorScale"    # F
    .param p5, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 871
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 873
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v0

    move v6, p4

    move-object v7, p5

    invoke-static/range {v1 .. v7}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->loadAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;FLorg/xmlpull/v1/XmlPullParser;)Landroid/animation/ValueAnimator;

    .line 875
    return-object v0
.end method

.method private static loadPvh(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/animation/PropertyValuesHolder;
    .locals 23
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "propertyName"    # Ljava/lang/String;
    .param p5, "valueType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 691
    const/4 v0, 0x0

    .line 692
    .local v0, "value":Landroid/animation/PropertyValuesHolder;
    const/4 v1, 0x0

    move/from16 v2, p5

    .line 695
    .end local p5    # "valueType":I
    .local v1, "keyframes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Keyframe;>;"
    .local v2, "valueType":I
    :goto_0
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .line 695
    .local v4, "type":I
    const/4 v5, 0x3

    if-eq v3, v5, :cond_4

    const/4 v3, 0x1

    if-eq v4, v3, :cond_4

    .line 697
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 698
    .local v3, "name":Ljava/lang/String;
    const-string v5, "keyframe"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 699
    const/4 v5, 0x4

    if-ne v2, v5, :cond_0

    .line 700
    invoke-static/range {p3 .. p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v5

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    invoke-static {v12, v13, v5, v14}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->inferValueTypeOfKeyframe(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v2

    goto :goto_1

    .line 703
    :cond_0
    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    :goto_1
    invoke-static/range {p3 .. p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v9

    move-object/from16 v6, p0

    move-object v7, v12

    move-object v8, v13

    move v10, v2

    move-object v11, v14

    invoke-static/range {v6 .. v11}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->loadKeyframe(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;ILorg/xmlpull/v1/XmlPullParser;)Landroid/animation/Keyframe;

    move-result-object v5

    .line 705
    .local v5, "keyframe":Landroid/animation/Keyframe;
    if-eqz v5, :cond_2

    .line 706
    if-nez v1, :cond_1

    .line 707
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v6

    .line 709
    :cond_1
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 711
    :cond_2
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 711
    .end local v3    # "name":Ljava/lang/String;
    .end local v5    # "keyframe":Landroid/animation/Keyframe;
    goto :goto_2

    .line 713
    :cond_3
    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    :goto_2
    goto :goto_0

    .line 716
    :cond_4
    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v6, v3

    .line 716
    .local v6, "count":I
    if-lez v3, :cond_f

    .line 722
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/Keyframe;

    .line 723
    .local v7, "firstKeyframe":Landroid/animation/Keyframe;
    add-int/lit8 v8, v6, -0x1

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/animation/Keyframe;

    .line 724
    .local v8, "lastKeyframe":Landroid/animation/Keyframe;
    invoke-virtual {v8}, Landroid/animation/Keyframe;->getFraction()F

    move-result v9

    .line 725
    .local v9, "endFraction":F
    const/high16 v10, 0x3f800000    # 1.0f

    cmpg-float v11, v9, v10

    const/4 v15, 0x0

    if-gez v11, :cond_6

    .line 726
    cmpg-float v11, v9, v15

    if-gez v11, :cond_5

    .line 727
    invoke-virtual {v8, v10}, Landroid/animation/Keyframe;->setFraction(F)V

    goto :goto_3

    .line 729
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-static {v8, v10}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->createNewKeyframe(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;

    move-result-object v5

    invoke-virtual {v1, v11, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 730
    add-int/lit8 v6, v6, 0x1

    .line 733
    :cond_6
    :goto_3
    invoke-virtual {v7}, Landroid/animation/Keyframe;->getFraction()F

    move-result v5

    .line 734
    .local v5, "startFraction":F
    cmpl-float v11, v5, v15

    if-eqz v11, :cond_8

    .line 735
    cmpg-float v11, v5, v15

    if-gez v11, :cond_7

    .line 736
    invoke-virtual {v7, v15}, Landroid/animation/Keyframe;->setFraction(F)V

    goto :goto_4

    .line 738
    :cond_7
    invoke-static {v7, v15}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->createNewKeyframe(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;

    move-result-object v11

    invoke-virtual {v1, v3, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 739
    add-int/lit8 v6, v6, 0x1

    .line 742
    :cond_8
    :goto_4
    new-array v11, v6, [Landroid/animation/Keyframe;

    .line 743
    .local v11, "keyframeArray":[Landroid/animation/Keyframe;
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 744
    nop

    .line 744
    .local v3, "i":I
    :goto_5
    if-ge v3, v6, :cond_e

    .line 745
    aget-object v10, v11, v3

    .line 746
    .local v10, "keyframe":Landroid/animation/Keyframe;
    invoke-virtual {v10}, Landroid/animation/Keyframe;->getFraction()F

    move-result v17

    cmpg-float v17, v17, v15

    if-gez v17, :cond_d

    .line 747
    if-nez v3, :cond_9

    .line 748
    invoke-virtual {v10, v15}, Landroid/animation/Keyframe;->setFraction(F)V

    .line 744
    move-object/from16 v19, v0

    move-object/from16 v21, v1

    move/from16 v22, v4

    move/from16 v16, v15

    goto/16 :goto_8

    .line 749
    :cond_9
    add-int/lit8 v15, v6, -0x1

    if-ne v3, v15, :cond_a

    .line 750
    const/high16 v15, 0x3f800000    # 1.0f

    invoke-virtual {v10, v15}, Landroid/animation/Keyframe;->setFraction(F)V

    .line 744
    move-object/from16 v19, v0

    move-object/from16 v21, v1

    move/from16 v22, v4

    const/16 v16, 0x0

    goto :goto_8

    .line 754
    :cond_a
    const/high16 v15, 0x3f800000    # 1.0f

    move/from16 v18, v3

    .line 755
    .local v18, "startIndex":I
    move/from16 v16, v3

    .line 756
    .local v16, "endIndex":I
    move/from16 v15, v18

    add-int/lit8 v18, v15, 0x1

    .line 756
    .end local v18    # "startIndex":I
    .local v15, "startIndex":I
    move-object/from16 v19, v0

    move/from16 v0, v16

    .line 756
    .end local v16    # "endIndex":I
    .local v0, "endIndex":I
    .local v18, "j":I
    .local v19, "value":Landroid/animation/PropertyValuesHolder;
    :goto_6
    move/from16 v20, v18

    .line 756
    .end local v18    # "j":I
    .local v20, "j":I
    move-object/from16 v21, v1

    add-int/lit8 v1, v6, -0x1

    .line 756
    .end local v1    # "keyframes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Keyframe;>;"
    .local v21, "keyframes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Keyframe;>;"
    move/from16 v22, v4

    move/from16 v4, v20

    if-ge v4, v1, :cond_c

    .line 757
    .end local v20    # "j":I
    .local v4, "j":I
    .local v22, "type":I
    aget-object v1, v11, v4

    invoke-virtual {v1}, Landroid/animation/Keyframe;->getFraction()F

    move-result v1

    const/16 v16, 0x0

    cmpl-float v1, v1, v16

    if-ltz v1, :cond_b

    .line 758
    goto :goto_7

    .line 760
    :cond_b
    move v0, v4

    .line 756
    add-int/lit8 v18, v4, 0x1

    .line 756
    .end local v4    # "j":I
    .restart local v18    # "j":I
    move-object/from16 v1, v21

    move/from16 v4, v22

    goto :goto_6

    .line 762
    .end local v18    # "j":I
    :cond_c
    const/16 v16, 0x0

    :goto_7
    add-int/lit8 v1, v0, 0x1

    aget-object v1, v11, v1

    invoke-virtual {v1}, Landroid/animation/Keyframe;->getFraction()F

    move-result v1

    add-int/lit8 v18, v15, -0x1

    aget-object v4, v11, v18

    .line 763
    invoke-virtual {v4}, Landroid/animation/Keyframe;->getFraction()F

    move-result v4

    sub-float/2addr v1, v4

    .line 764
    .local v1, "gap":F
    invoke-static {v11, v1, v15, v0}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->distributeKeyframes([Landroid/animation/Keyframe;FII)V

    .line 764
    .end local v0    # "endIndex":I
    .end local v1    # "gap":F
    .end local v10    # "keyframe":Landroid/animation/Keyframe;
    .end local v15    # "startIndex":I
    goto :goto_8

    .line 744
    .end local v19    # "value":Landroid/animation/PropertyValuesHolder;
    .end local v21    # "keyframes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Keyframe;>;"
    .end local v22    # "type":I
    .local v0, "value":Landroid/animation/PropertyValuesHolder;
    .local v1, "keyframes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Keyframe;>;"
    .local v4, "type":I
    :cond_d
    move-object/from16 v19, v0

    move-object/from16 v21, v1

    move/from16 v22, v4

    move/from16 v16, v15

    .line 744
    .end local v0    # "value":Landroid/animation/PropertyValuesHolder;
    .end local v1    # "keyframes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Keyframe;>;"
    .end local v4    # "type":I
    .restart local v19    # "value":Landroid/animation/PropertyValuesHolder;
    .restart local v21    # "keyframes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Keyframe;>;"
    .restart local v22    # "type":I
    :goto_8
    add-int/lit8 v3, v3, 0x1

    move/from16 v15, v16

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move/from16 v4, v22

    const/high16 v10, 0x3f800000    # 1.0f

    goto/16 :goto_5

    .line 768
    .end local v3    # "i":I
    .end local v19    # "value":Landroid/animation/PropertyValuesHolder;
    .end local v21    # "keyframes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Keyframe;>;"
    .end local v22    # "type":I
    .restart local v0    # "value":Landroid/animation/PropertyValuesHolder;
    .restart local v1    # "keyframes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Keyframe;>;"
    .restart local v4    # "type":I
    :cond_e
    move-object/from16 v19, v0

    move-object/from16 v21, v1

    move/from16 v22, v4

    .line 768
    .end local v0    # "value":Landroid/animation/PropertyValuesHolder;
    .end local v1    # "keyframes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Keyframe;>;"
    .end local v4    # "type":I
    .restart local v19    # "value":Landroid/animation/PropertyValuesHolder;
    .restart local v21    # "keyframes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Keyframe;>;"
    .restart local v22    # "type":I
    move-object/from16 v0, p4

    invoke-static {v0, v11}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 769
    .end local v19    # "value":Landroid/animation/PropertyValuesHolder;
    .local v1, "value":Landroid/animation/PropertyValuesHolder;
    const/4 v3, 0x3

    if-ne v2, v3, :cond_10

    .line 770
    invoke-static {}, Landroid/support/graphics/drawable/ArgbEvaluator;->getInstance()Landroid/support/graphics/drawable/ArgbEvaluator;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 770
    .end local v5    # "startFraction":F
    .end local v6    # "count":I
    .end local v7    # "firstKeyframe":Landroid/animation/Keyframe;
    .end local v8    # "lastKeyframe":Landroid/animation/Keyframe;
    .end local v9    # "endFraction":F
    .end local v11    # "keyframeArray":[Landroid/animation/Keyframe;
    goto :goto_9

    .line 774
    .end local v21    # "keyframes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Keyframe;>;"
    .end local v22    # "type":I
    .restart local v0    # "value":Landroid/animation/PropertyValuesHolder;
    .local v1, "keyframes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Keyframe;>;"
    .restart local v4    # "type":I
    :cond_f
    move-object/from16 v19, v0

    move-object/from16 v21, v1

    move/from16 v22, v4

    move-object/from16 v0, p4

    .line 774
    .end local v0    # "value":Landroid/animation/PropertyValuesHolder;
    .end local v1    # "keyframes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Keyframe;>;"
    .end local v4    # "type":I
    .restart local v19    # "value":Landroid/animation/PropertyValuesHolder;
    .restart local v21    # "keyframes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Keyframe;>;"
    .restart local v22    # "type":I
    move-object/from16 v1, v19

    .line 774
    .end local v19    # "value":Landroid/animation/PropertyValuesHolder;
    .local v1, "value":Landroid/animation/PropertyValuesHolder;
    :cond_10
    :goto_9
    return-object v1
.end method

.method private static loadValues(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)[Landroid/animation/PropertyValuesHolder;
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v6, p3

    .line 575
    const/4 v0, 0x0

    .line 575
    .local v0, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/PropertyValuesHolder;>;"
    :goto_0
    move-object v7, v0

    .line 578
    .end local v0    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/PropertyValuesHolder;>;"
    .local v7, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/PropertyValuesHolder;>;"
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    move v8, v0

    .line 578
    .local v8, "type":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    const/4 v10, 0x1

    if-eq v8, v10, :cond_5

    .line 581
    const/4 v0, 0x2

    if-eq v8, v0, :cond_0

    .line 582
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 583
    nop

    .line 575
    move-object v0, v7

    goto :goto_0

    .line 586
    :cond_0
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 588
    .local v11, "name":Ljava/lang/String;
    const-string v2, "propertyValuesHolder"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 589
    sget-object v2, Landroid/support/graphics/drawable/AndroidResources;->STYLEABLE_PROPERTY_VALUES_HOLDER:[I

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p4

    invoke-static {v12, v13, v14, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v15

    .line 592
    .local v15, "a":Landroid/content/res/TypedArray;
    const-string v2, "propertyName"

    invoke-static {v15, v6, v2, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 594
    .local v5, "propertyName":Ljava/lang/String;
    const-string v1, "valueType"

    const/4 v2, 0x4

    invoke-static {v15, v6, v1, v0, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v4

    .line 598
    .local v4, "valueType":I
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move-object v3, v6

    move/from16 v16, v4

    move-object v4, v5

    .line 598
    .end local v4    # "valueType":I
    .local v16, "valueType":I
    move-object v9, v5

    move/from16 v5, v16

    .line 598
    .end local v5    # "propertyName":Ljava/lang/String;
    .local v9, "propertyName":Ljava/lang/String;
    invoke-static/range {v0 .. v5}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->loadPvh(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 600
    .local v0, "pvh":Landroid/animation/PropertyValuesHolder;
    if-nez v0, :cond_1

    .line 601
    move/from16 v1, v16

    const/4 v2, 0x0

    invoke-static {v15, v1, v2, v10, v9}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->getPVH(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    goto :goto_1

    .line 606
    :cond_1
    move/from16 v1, v16

    .line 606
    .end local v16    # "valueType":I
    .local v1, "valueType":I
    :goto_1
    if-eqz v0, :cond_3

    .line 607
    if-nez v7, :cond_2

    .line 608
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v2

    .line 610
    :cond_2
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 612
    :cond_3
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    .line 612
    .end local v0    # "pvh":Landroid/animation/PropertyValuesHolder;
    .end local v1    # "valueType":I
    .end local v9    # "propertyName":Ljava/lang/String;
    .end local v15    # "a":Landroid/content/res/TypedArray;
    goto :goto_2

    .line 615
    :cond_4
    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p4

    .line 615
    .end local v7    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/PropertyValuesHolder;>;"
    .local v0, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/PropertyValuesHolder;>;"
    :goto_2
    move-object v0, v7

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 616
    .end local v11    # "name":Ljava/lang/String;
    goto :goto_0

    .line 618
    .end local v0    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/PropertyValuesHolder;>;"
    .restart local v7    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/PropertyValuesHolder;>;"
    :cond_5
    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p4

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 619
    .local v0, "valuesArray":[Landroid/animation/PropertyValuesHolder;
    if-eqz v7, :cond_6

    .line 620
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 621
    .local v1, "count":I
    new-array v0, v1, [Landroid/animation/PropertyValuesHolder;

    .line 622
    nop

    .line 622
    .local v2, "i":I
    :goto_3
    if-ge v2, v1, :cond_6

    .line 623
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/PropertyValuesHolder;

    aput-object v3, v0, v2

    .line 622
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 626
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_6
    return-object v0
.end method

.method private static parseAnimatorFromTypeArray(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;FLorg/xmlpull/v1/XmlPullParser;)V
    .locals 11
    .param p0, "anim"    # Landroid/animation/ValueAnimator;
    .param p1, "arrayAnimator"    # Landroid/content/res/TypedArray;
    .param p2, "arrayObjectAnimator"    # Landroid/content/res/TypedArray;
    .param p3, "pixelSize"    # F
    .param p4, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 344
    const-string v0, "duration"

    const/4 v1, 0x1

    const/16 v2, 0x12c

    invoke-static {p1, p4, v0, v1, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v0

    int-to-long v2, v0

    .line 346
    .local v2, "duration":J
    const-string v0, "startOffset"

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {p1, p4, v0, v5, v4}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v0

    int-to-long v5, v0

    .line 348
    .local v5, "startDelay":J
    const-string v0, "valueType"

    const/4 v7, 0x4

    const/4 v8, 0x7

    invoke-static {p1, p4, v0, v8, v7}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v0

    .line 352
    .local v0, "valueType":I
    const-string v8, "valueFrom"

    invoke-static {p4, v8}, Landroid/support/v4/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "valueTo"

    .line 353
    invoke-static {p4, v8}, Landroid/support/v4/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 354
    const/4 v8, 0x6

    const/4 v9, 0x5

    if-ne v0, v7, :cond_0

    .line 355
    invoke-static {p1, v9, v8}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->inferValueTypeFromValues(Landroid/content/res/TypedArray;II)I

    move-result v0

    .line 359
    :cond_0
    const-string v10, ""

    invoke-static {p1, v0, v9, v8, v10}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->getPVH(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 362
    .local v8, "pvh":Landroid/animation/PropertyValuesHolder;
    if-eqz v8, :cond_1

    .line 363
    new-array v9, v1, [Landroid/animation/PropertyValuesHolder;

    aput-object v8, v9, v4

    invoke-virtual {p0, v9}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 366
    .end local v8    # "pvh":Landroid/animation/PropertyValuesHolder;
    :cond_1
    invoke-virtual {p0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 367
    invoke-virtual {p0, v5, v6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 369
    const-string v8, "repeatCount"

    const/4 v9, 0x3

    invoke-static {p1, p4, v8, v9, v4}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 371
    const-string v4, "repeatMode"

    invoke-static {p1, p4, v4, v7, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 374
    if-eqz p2, :cond_2

    .line 375
    invoke-static {p0, p2, v0, p3, p4}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->setupObjectAnimator(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;IFLorg/xmlpull/v1/XmlPullParser;)V

    .line 377
    :cond_2
    return-void
.end method

.method private static setupObjectAnimator(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;IFLorg/xmlpull/v1/XmlPullParser;)V
    .locals 7
    .param p0, "anim"    # Landroid/animation/ValueAnimator;
    .param p1, "arrayObjectAnimator"    # Landroid/content/res/TypedArray;
    .param p2, "valueType"    # I
    .param p3, "pixelSize"    # F
    .param p4, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 389
    move-object v0, p0

    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 390
    .local v0, "oa":Landroid/animation/ObjectAnimator;
    const-string v1, "pathData"

    const/4 v2, 0x1

    invoke-static {p1, p4, v1, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 401
    .local v1, "pathData":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 402
    const-string v2, "propertyXName"

    const/4 v3, 0x2

    invoke-static {p1, p4, v2, v3}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 404
    .local v2, "propertyXName":Ljava/lang/String;
    const-string v4, "propertyYName"

    const/4 v5, 0x3

    invoke-static {p1, p4, v4, v5}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 408
    .local v4, "propertyYName":Ljava/lang/String;
    if-eq p2, v3, :cond_0

    const/4 v3, 0x4

    if-ne p2, v3, :cond_1

    .line 411
    :cond_0
    const/4 p2, 0x0

    .line 413
    :cond_1
    if-nez v2, :cond_2

    if-nez v4, :cond_2

    .line 414
    new-instance v3, Landroid/view/InflateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " propertyXName or propertyYName is needed for PathData"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 417
    :cond_2
    invoke-static {v1}, Landroid/support/v4/graphics/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v3

    .line 418
    .local v3, "path":Landroid/graphics/Path;
    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v5, p3

    invoke-static {v3, v0, v5, v2, v4}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->setupPathMotion(Landroid/graphics/Path;Landroid/animation/ObjectAnimator;FLjava/lang/String;Ljava/lang/String;)V

    .line 420
    .end local v2    # "propertyXName":Ljava/lang/String;
    .end local v3    # "path":Landroid/graphics/Path;
    .end local v4    # "propertyYName":Ljava/lang/String;
    goto :goto_0

    .line 421
    :cond_3
    const-string v2, "propertyName"

    const/4 v3, 0x0

    .line 422
    invoke-static {p1, p4, v2, v3}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 424
    .local v2, "propertyName":Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    .line 428
    .end local v2    # "propertyName":Ljava/lang/String;
    :goto_0
    return-void
.end method

.method private static setupPathMotion(Landroid/graphics/Path;Landroid/animation/ObjectAnimator;FLjava/lang/String;Ljava/lang/String;)V
    .locals 20
    .param p0, "path"    # Landroid/graphics/Path;
    .param p1, "oa"    # Landroid/animation/ObjectAnimator;
    .param p2, "precision"    # F
    .param p3, "propertyXName"    # Ljava/lang/String;
    .param p4, "propertyYName"    # Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 435
    move-object/from16 v3, p4

    new-instance v4, Landroid/graphics/PathMeasure;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 436
    .local v4, "measureForTotalLength":Landroid/graphics/PathMeasure;
    const/4 v6, 0x0

    .line 439
    .local v6, "totalLength":F
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 440
    .local v7, "contourLengths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    :cond_0
    invoke-virtual {v4}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v8

    .line 443
    .local v8, "pathLength":F
    add-float/2addr v6, v8

    .line 444
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    .end local v8    # "pathLength":F
    invoke-virtual {v4}, Landroid/graphics/PathMeasure;->nextContour()Z

    move-result v8

    if-nez v8, :cond_0

    .line 449
    new-instance v8, Landroid/graphics/PathMeasure;

    invoke-direct {v8, v0, v5}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 451
    .local v8, "pathMeasure":Landroid/graphics/PathMeasure;
    const/16 v9, 0x64

    div-float v10, v6, p2

    float-to-int v10, v10

    const/4 v11, 0x1

    add-int/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 453
    .local v9, "numPoints":I
    new-array v10, v9, [F

    .line 454
    .local v10, "mX":[F
    new-array v12, v9, [F

    .line 455
    .local v12, "mY":[F
    const/4 v13, 0x2

    new-array v14, v13, [F

    .line 457
    .local v14, "position":[F
    const/4 v15, 0x0

    .line 458
    .local v15, "contourIndex":I
    add-int/lit8 v13, v9, -0x1

    int-to-float v13, v13

    div-float v13, v6, v13

    .line 459
    .local v13, "step":F
    const/16 v16, 0x0

    .line 464
    .local v16, "currentDistance":F
    move/from16 v11, v16

    move/from16 v16, v15

    move v15, v5

    .line 464
    .local v11, "currentDistance":F
    .local v15, "i":I
    .local v16, "contourIndex":I
    :goto_0
    move/from16 v17, v15

    .line 464
    .end local v15    # "i":I
    .local v17, "i":I
    move/from16 v5, v17

    if-ge v5, v9, :cond_2

    .line 465
    .end local v17    # "i":I
    .local v5, "i":I
    const/4 v0, 0x0

    invoke-virtual {v8, v11, v14, v0}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 467
    const/4 v0, 0x0

    aget v15, v14, v0

    aput v15, v10, v5

    .line 468
    const/4 v0, 0x1

    aget v15, v14, v0

    aput v15, v12, v5

    .line 469
    add-float/2addr v11, v13

    .line 470
    add-int/lit8 v0, v16, 0x1

    move-object/from16 v18, v4

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 470
    .end local v4    # "measureForTotalLength":Landroid/graphics/PathMeasure;
    .local v18, "measureForTotalLength":Landroid/graphics/PathMeasure;
    if-ge v0, v4, :cond_1

    add-int/lit8 v0, v16, 0x1

    .line 471
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v11, v0

    if-lez v0, :cond_1

    .line 472
    add-int/lit8 v0, v16, 0x1

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float/2addr v11, v0

    .line 473
    add-int/lit8 v16, v16, 0x1

    .line 474
    invoke-virtual {v8}, Landroid/graphics/PathMeasure;->nextContour()Z

    .line 464
    :cond_1
    add-int/lit8 v15, v5, 0x1

    .line 464
    .end local v5    # "i":I
    .restart local v15    # "i":I
    move-object/from16 v4, v18

    move-object/from16 v0, p0

    const/4 v5, 0x0

    goto :goto_0

    .line 479
    .end local v15    # "i":I
    .end local v18    # "measureForTotalLength":Landroid/graphics/PathMeasure;
    .restart local v4    # "measureForTotalLength":Landroid/graphics/PathMeasure;
    :cond_2
    move-object/from16 v18, v4

    .line 479
    .end local v4    # "measureForTotalLength":Landroid/graphics/PathMeasure;
    .restart local v18    # "measureForTotalLength":Landroid/graphics/PathMeasure;
    const/4 v0, 0x0

    .line 480
    .local v0, "x":Landroid/animation/PropertyValuesHolder;
    const/4 v4, 0x0

    .line 481
    .local v4, "y":Landroid/animation/PropertyValuesHolder;
    if-eqz v2, :cond_3

    .line 482
    invoke-static {v2, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 484
    :cond_3
    if-eqz v3, :cond_4

    .line 485
    invoke-static {v3, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 487
    :cond_4
    if-nez v0, :cond_5

    .line 488
    const/4 v5, 0x1

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    const/4 v15, 0x0

    aput-object v4, v5, v15

    invoke-virtual {v1, v5}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    goto :goto_1

    .line 489
    :cond_5
    const/4 v5, 0x1

    const/4 v15, 0x0

    if-nez v4, :cond_6

    .line 490
    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v5, v15

    invoke-virtual {v1, v5}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    goto :goto_1

    .line 492
    :cond_6
    const/4 v5, 0x2

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v5, v15

    const/4 v15, 0x1

    aput-object v4, v5, v15

    invoke-virtual {v1, v5}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 494
    :goto_1
    return-void
.end method
