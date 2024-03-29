.class final Landroid/support/v7/content/res/AppCompatColorStateListInflater;
.super Ljava/lang/Object;
.source "AppCompatColorStateListInflater.java"


# static fields
.field private static final DEFAULT_COLOR:I = -0x10000


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 4
    .param p0, "r"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 58
    .local v0, "attrs":Landroid/util/AttributeSet;
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .line 58
    .local v2, "type":I
    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    const/4 v1, 0x1

    if-eq v2, v1, :cond_0

    .line 58
    .end local v2    # "type":I
    goto :goto_0

    .line 63
    .restart local v2    # "type":I
    :cond_0
    if-eq v2, v3, :cond_1

    .line 64
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "No start tag found"

    invoke-direct {v1, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 67
    :cond_1
    invoke-static {p0, p1, v0, p2}, Landroid/support/v7/content/res/AppCompatColorStateListInflater;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1

    return-object v1
.end method

.method private static createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 4
    .param p0, "r"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "name":Ljava/lang/String;
    const-string v1, "selector"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": invalid color state list tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 88
    :cond_0
    invoke-static {p0, p1, p2, p3}, Landroid/support/v7/content/res/AppCompatColorStateListInflater;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1

    return-object v1
.end method

.method private static inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 21
    .param p0, "r"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p2

    .line 97
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 100
    .local v1, "innerDepth":I
    const/high16 v3, -0x10000

    .line 102
    .local v3, "defaultColor":I
    const/16 v4, 0x14

    new-array v4, v4, [[I

    .line 103
    .local v4, "stateSpecList":[[I
    array-length v6, v4

    new-array v6, v6, [I

    .line 104
    .local v6, "colorList":[I
    move v7, v3

    const/4 v3, 0x0

    .line 106
    .local v3, "listSize":I
    .local v7, "defaultColor":I
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    move v9, v8

    .line 106
    .local v9, "type":I
    if-eq v8, v2, :cond_b

    .line 107
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    move v10, v8

    .line 107
    .local v10, "depth":I
    if-ge v8, v1, :cond_1

    const/4 v8, 0x3

    if-eq v9, v8, :cond_0

    goto :goto_1

    .line 154
    .end local v10    # "depth":I
    :cond_0
    move-object/from16 v11, p0

    move-object/from16 v12, p3

    move/from16 v16, v1

    move/from16 v18, v7

    goto/16 :goto_9

    .line 108
    .restart local v10    # "depth":I
    :cond_1
    :goto_1
    const/4 v8, 0x2

    if-ne v9, v8, :cond_a

    if-gt v10, v1, :cond_a

    .line 109
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v11, "item"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 110
    nop

    .line 104
    move-object/from16 v11, p0

    move-object/from16 v12, p3

    move/from16 v16, v1

    move/from16 v18, v7

    goto/16 :goto_7

    .line 113
    :cond_2
    sget-object v8, Landroid/support/v7/appcompat/R$styleable;->ColorStateListItem:[I

    move-object/from16 v11, p0

    move-object/from16 v12, p3

    invoke-static {v11, v12, v0, v8}, Landroid/support/v7/content/res/AppCompatColorStateListInflater;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 114
    .local v8, "a":Landroid/content/res/TypedArray;
    sget v13, Landroid/support/v7/appcompat/R$styleable;->ColorStateListItem_android_color:I

    const v14, -0xff01

    invoke-virtual {v8, v13, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v13

    .line 117
    .local v13, "baseColor":I
    const/high16 v14, 0x3f800000    # 1.0f

    .line 118
    .local v14, "alphaMod":F
    sget v15, Landroid/support/v7/appcompat/R$styleable;->ColorStateListItem_android_alpha:I

    invoke-virtual {v8, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 119
    sget v15, Landroid/support/v7/appcompat/R$styleable;->ColorStateListItem_android_alpha:I

    invoke-virtual {v8, v15, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v14

    goto :goto_2

    .line 120
    :cond_3
    sget v15, Landroid/support/v7/appcompat/R$styleable;->ColorStateListItem_alpha:I

    invoke-virtual {v8, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 121
    sget v15, Landroid/support/v7/appcompat/R$styleable;->ColorStateListItem_alpha:I

    invoke-virtual {v8, v15, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v14

    .line 124
    :cond_4
    :goto_2
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 127
    const/4 v15, 0x0

    .line 128
    .local v15, "j":I
    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v2

    .line 129
    .local v2, "numAttrs":I
    new-array v5, v2, [I

    .line 130
    .local v5, "stateSpec":[I
    move/from16 v16, v1

    move v1, v15

    const/4 v15, 0x0

    .line 130
    .local v1, "j":I
    .local v15, "i":I
    .local v16, "innerDepth":I
    :goto_3
    if-ge v15, v2, :cond_7

    .line 131
    move/from16 v17, v2

    invoke-interface {v0, v15}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v2

    .line 132
    .local v2, "stateResId":I
    .local v17, "numAttrs":I
    move/from16 v18, v7

    const v7, 0x10101a5

    .line 132
    .end local v7    # "defaultColor":I
    .local v18, "defaultColor":I
    if-eq v2, v7, :cond_6

    const v7, 0x101031f

    if-eq v2, v7, :cond_6

    sget v7, Landroid/support/v7/appcompat/R$attr;->alpha:I

    if-eq v2, v7, :cond_6

    .line 135
    add-int/lit8 v7, v1, 0x1

    .line 135
    .local v7, "j":I
    move/from16 v19, v7

    const/4 v7, 0x0

    invoke-interface {v0, v15, v7}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v20

    .line 135
    .end local v7    # "j":I
    .local v19, "j":I
    if-eqz v20, :cond_5

    move v7, v2

    goto :goto_4

    :cond_5
    neg-int v7, v2

    :goto_4
    aput v7, v5, v1

    .line 130
    .end local v1    # "j":I
    .end local v2    # "stateResId":I
    move/from16 v1, v19

    .line 130
    .end local v19    # "j":I
    .restart local v1    # "j":I
    :cond_6
    add-int/lit8 v15, v15, 0x1

    move/from16 v2, v17

    move/from16 v7, v18

    goto :goto_3

    .line 139
    .end local v15    # "i":I
    .end local v17    # "numAttrs":I
    .end local v18    # "defaultColor":I
    .local v2, "numAttrs":I
    .local v7, "defaultColor":I
    :cond_7
    move/from16 v17, v2

    move/from16 v18, v7

    .line 139
    .end local v2    # "numAttrs":I
    .end local v7    # "defaultColor":I
    .restart local v17    # "numAttrs":I
    .restart local v18    # "defaultColor":I
    invoke-static {v5, v1}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v2

    .line 144
    .end local v5    # "stateSpec":[I
    .local v2, "stateSpec":[I
    invoke-static {v13, v14}, Landroid/support/v7/content/res/AppCompatColorStateListInflater;->modulateColorAlpha(IF)I

    move-result v5

    .line 145
    .local v5, "color":I
    if-eqz v3, :cond_9

    array-length v7, v2

    if-nez v7, :cond_8

    goto :goto_5

    .line 149
    :cond_8
    move/from16 v7, v18

    goto :goto_6

    .line 146
    :cond_9
    :goto_5
    move v7, v5

    .line 149
    .end local v18    # "defaultColor":I
    .restart local v7    # "defaultColor":I
    :goto_6
    invoke-static {v6, v3, v5}, Landroid/support/v7/content/res/GrowingArrayUtils;->append([III)[I

    move-result-object v6

    .line 150
    invoke-static {v4, v3, v2}, Landroid/support/v7/content/res/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    move-object v4, v15

    check-cast v4, [[I

    .line 151
    add-int/lit8 v3, v3, 0x1

    .line 152
    .end local v1    # "j":I
    .end local v2    # "stateSpec":[I
    .end local v5    # "color":I
    .end local v8    # "a":Landroid/content/res/TypedArray;
    .end local v10    # "depth":I
    .end local v13    # "baseColor":I
    .end local v14    # "alphaMod":F
    .end local v17    # "numAttrs":I
    nop

    .line 104
    move/from16 v1, v16

    goto :goto_8

    .line 104
    .end local v9    # "type":I
    .end local v16    # "innerDepth":I
    .local v1, "innerDepth":I
    :cond_a
    move-object/from16 v11, p0

    move-object/from16 v12, p3

    move/from16 v16, v1

    move/from16 v18, v7

    .line 104
    .end local v1    # "innerDepth":I
    .end local v7    # "defaultColor":I
    .restart local v16    # "innerDepth":I
    .restart local v18    # "defaultColor":I
    :goto_7
    move/from16 v1, v16

    move/from16 v7, v18

    .line 104
    .end local v16    # "innerDepth":I
    .end local v18    # "defaultColor":I
    .restart local v1    # "innerDepth":I
    .restart local v7    # "defaultColor":I
    :goto_8
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 154
    .restart local v9    # "type":I
    :cond_b
    move-object/from16 v11, p0

    move-object/from16 v12, p3

    move/from16 v16, v1

    move/from16 v18, v7

    .line 154
    .end local v1    # "innerDepth":I
    .end local v7    # "defaultColor":I
    .restart local v16    # "innerDepth":I
    .restart local v18    # "defaultColor":I
    :goto_9
    new-array v1, v3, [I

    .line 155
    .local v1, "colors":[I
    new-array v2, v3, [[I

    .line 156
    .local v2, "stateSpecs":[[I
    const/4 v5, 0x0

    invoke-static {v6, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    invoke-static {v4, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    new-instance v5, Landroid/content/res/ColorStateList;

    invoke-direct {v5, v2, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v5
.end method

.method private static modulateColorAlpha(IF)I
    .locals 1
    .param p0, "color"    # I
    .param p1, "alphaMod"    # F

    .line 169
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {p0, v0}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    return v0
.end method

.method private static obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "set"    # Landroid/util/AttributeSet;
    .param p3, "attrs"    # [I

    .line 164
    if-nez p1, :cond_0

    invoke-virtual {p0, p2, p3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_0

    .line 165
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    :goto_0
    return-object v0
.end method
