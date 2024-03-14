.class public Landroid/support/constraint/solver/widgets/Optimizer;
.super Ljava/lang/Object;
.source "Optimizer.java"


# static fields
.field static final FLAG_CHAIN_DANGLING:I = 0x1

.field static final FLAG_RECOMPUTE_BOUNDS:I = 0x2

.field static final FLAG_USE_OPTIMIZE:I = 0x0

.field public static final OPTIMIZATION_BARRIER:I = 0x2

.field public static final OPTIMIZATION_CHAIN:I = 0x4

.field public static final OPTIMIZATION_DIMENSIONS:I = 0x8

.field public static final OPTIMIZATION_DIRECT:I = 0x1

.field public static final OPTIMIZATION_NONE:I = 0x0

.field public static final OPTIMIZATION_RATIO:I = 0x10

.field public static final OPTIMIZATION_STANDARD:I = 0x3

.field static flags:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const/4 v0, 0x3

    new-array v0, v0, [Z

    sput-object v0, Landroid/support/constraint/solver/widgets/Optimizer;->flags:[Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static analyze(ILandroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .locals 14
    .param p0, "optimisationLevel"    # I
    .param p1, "widget"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 151
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->updateResolutionNodes()V

    .line 153
    iget-object v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v0

    .line 154
    .local v0, "leftNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    iget-object v1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v1

    .line 155
    .local v1, "topNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    iget-object v2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v2

    .line 156
    .local v2, "rightNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    iget-object v3, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v3

    .line 158
    .local v3, "bottomNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    and-int/lit8 v4, p0, 0x8

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v4, v5, :cond_0

    move v4, v7

    goto :goto_0

    :cond_0
    move v4, v6

    .line 162
    .local v4, "optimiseDimensions":Z
    :goto_0
    iget v5, v0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->type:I

    const/4 v8, 0x3

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x2

    if-eq v5, v9, :cond_11

    iget v5, v2, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->type:I

    if-eq v5, v9, :cond_11

    .line 164
    iget-object v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v5, v5, v6

    sget-object v13, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v13, :cond_8

    .line 165
    iget-object v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v5, :cond_2

    iget-object v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v5, :cond_2

    .line 166
    invoke-virtual {v0, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 167
    invoke-virtual {v2, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 168
    if-eqz v4, :cond_1

    .line 169
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v5

    invoke-virtual {v2, v0, v7, v5}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_1

    .line 171
    :cond_1
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v5

    invoke-virtual {v2, v0, v5}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_1

    .line 173
    :cond_2
    iget-object v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v5, :cond_4

    iget-object v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v5, :cond_4

    .line 174
    invoke-virtual {v0, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 175
    invoke-virtual {v2, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 176
    if-eqz v4, :cond_3

    .line 177
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v5

    invoke-virtual {v2, v0, v7, v5}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_1

    .line 179
    :cond_3
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v5

    invoke-virtual {v2, v0, v5}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_1

    .line 181
    :cond_4
    iget-object v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v5, :cond_6

    iget-object v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v5, :cond_6

    .line 182
    invoke-virtual {v0, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 183
    invoke-virtual {v2, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 184
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v5

    neg-int v5, v5

    invoke-virtual {v0, v2, v5}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    .line 185
    if-eqz v4, :cond_5

    .line 186
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v5

    invoke-virtual {v0, v2, v11, v5}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_1

    .line 188
    :cond_5
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v5

    neg-int v5, v5

    invoke-virtual {v0, v2, v5}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_1

    .line 190
    :cond_6
    iget-object v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v5, :cond_11

    iget-object v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v5, :cond_11

    .line 191
    invoke-virtual {v0, v12}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 192
    invoke-virtual {v2, v12}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 193
    if-eqz v4, :cond_7

    .line 194
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    .line 195
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    .line 196
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v5

    invoke-virtual {v0, v2, v11, v5}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    .line 197
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v5

    invoke-virtual {v2, v0, v7, v5}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_1

    .line 199
    :cond_7
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v0, v2, v5}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 200
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v0, v5}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    goto/16 :goto_1

    .line 203
    :cond_8
    iget-object v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v5, v5, v6

    sget-object v13, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v13, :cond_11

    .line 204
    invoke-static {p1, v6}, Landroid/support/constraint/solver/widgets/Optimizer;->optimizableMatchConstraint(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 205
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v5

    .line 211
    .local v5, "width":I
    invoke-virtual {v0, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 212
    invoke-virtual {v2, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 213
    iget-object v6, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v6, :cond_a

    iget-object v6, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v6, :cond_a

    .line 214
    if-eqz v4, :cond_9

    .line 215
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v6

    invoke-virtual {v2, v0, v7, v6}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_1

    .line 217
    :cond_9
    invoke-virtual {v2, v0, v5}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_1

    .line 219
    :cond_a
    iget-object v6, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_c

    iget-object v6, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v6, :cond_c

    .line 220
    if-eqz v4, :cond_b

    .line 221
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v6

    invoke-virtual {v2, v0, v7, v6}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto :goto_1

    .line 223
    :cond_b
    invoke-virtual {v2, v0, v5}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto :goto_1

    .line 225
    :cond_c
    iget-object v6, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v6, :cond_e

    iget-object v6, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_e

    .line 226
    if-eqz v4, :cond_d

    .line 227
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v6

    invoke-virtual {v0, v2, v11, v6}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto :goto_1

    .line 229
    :cond_d
    neg-int v6, v5

    invoke-virtual {v0, v2, v6}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto :goto_1

    .line 231
    :cond_e
    iget-object v6, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_11

    iget-object v6, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_11

    .line 232
    if-eqz v4, :cond_f

    .line 233
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    .line 234
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    .line 236
    :cond_f
    iget v6, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v6, v6, v10

    if-nez v6, :cond_10

    .line 237
    invoke-virtual {v0, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 238
    invoke-virtual {v2, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 239
    invoke-virtual {v0, v2, v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 240
    invoke-virtual {v2, v0, v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    goto :goto_1

    .line 243
    :cond_10
    invoke-virtual {v0, v12}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 244
    invoke-virtual {v2, v12}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 245
    neg-int v6, v5

    int-to-float v6, v6

    invoke-virtual {v0, v2, v6}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 246
    int-to-float v6, v5

    invoke-virtual {v2, v0, v6}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 247
    invoke-virtual {p1, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 255
    .end local v5    # "width":I
    :cond_11
    :goto_1
    iget v5, v1, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->type:I

    if-eq v5, v9, :cond_22

    iget v5, v3, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->type:I

    if-eq v5, v9, :cond_22

    .line 258
    iget-object v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v5, v5, v7

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v6, :cond_19

    .line 259
    iget-object v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v5, :cond_13

    iget-object v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v5, :cond_13

    .line 260
    invoke-virtual {v1, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 261
    invoke-virtual {v3, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 262
    if-eqz v4, :cond_12

    .line 263
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v5

    invoke-virtual {v3, v1, v7, v5}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto :goto_2

    .line 265
    :cond_12
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v5

    invoke-virtual {v3, v1, v5}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    .line 267
    :goto_2
    iget-object v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v5, :cond_22

    .line 268
    iget-object v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 269
    iget-object v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 270
    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v5

    iget v6, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    neg-int v6, v6

    .line 269
    invoke-virtual {v1, v7, v5, v6}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(ILandroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_6

    .line 272
    :cond_13
    iget-object v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v5, :cond_15

    iget-object v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v5, :cond_15

    .line 273
    invoke-virtual {v1, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 274
    invoke-virtual {v3, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 275
    if-eqz v4, :cond_14

    .line 276
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v5

    invoke-virtual {v3, v1, v7, v5}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto :goto_3

    .line 278
    :cond_14
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v5

    invoke-virtual {v3, v1, v5}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    .line 280
    :goto_3
    iget v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v5, :cond_22

    .line 281
    iget-object v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v5

    iget v6, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    invoke-virtual {v5, v7, v1, v6}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(ILandroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_6

    .line 283
    :cond_15
    iget-object v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v5, :cond_17

    iget-object v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v5, :cond_17

    .line 284
    invoke-virtual {v1, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 285
    invoke-virtual {v3, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 286
    if-eqz v4, :cond_16

    .line 287
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v5

    invoke-virtual {v1, v3, v11, v5}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto :goto_4

    .line 289
    :cond_16
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v5

    neg-int v5, v5

    invoke-virtual {v1, v3, v5}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    .line 291
    :goto_4
    iget v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v5, :cond_22

    .line 292
    iget-object v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v5

    iget v6, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    invoke-virtual {v5, v7, v1, v6}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(ILandroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_6

    .line 294
    :cond_17
    iget-object v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v5, :cond_22

    iget-object v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v5, :cond_22

    .line 295
    invoke-virtual {v1, v12}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 296
    invoke-virtual {v3, v12}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 297
    if-eqz v4, :cond_18

    .line 298
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v5

    invoke-virtual {v1, v3, v11, v5}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    .line 299
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v5

    invoke-virtual {v3, v1, v7, v5}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    .line 300
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    .line 301
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    goto :goto_5

    .line 303
    :cond_18
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v1, v3, v5}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 304
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v1, v5}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 306
    :goto_5
    iget v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v5, :cond_22

    .line 307
    iget-object v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v5

    iget v6, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    invoke-virtual {v5, v7, v1, v6}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(ILandroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_6

    .line 310
    :cond_19
    iget-object v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v5, v5, v7

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v6, :cond_22

    .line 311
    invoke-static {p1, v7}, Landroid/support/constraint/solver/widgets/Optimizer;->optimizableMatchConstraint(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 312
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v5

    .line 317
    .local v5, "height":I
    invoke-virtual {v1, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 318
    invoke-virtual {v3, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 319
    iget-object v6, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v6, :cond_1b

    iget-object v6, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v6, :cond_1b

    .line 320
    if-eqz v4, :cond_1a

    .line 321
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v6

    invoke-virtual {v3, v1, v7, v6}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_6

    .line 323
    :cond_1a
    invoke-virtual {v3, v1, v5}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_6

    .line 325
    :cond_1b
    iget-object v6, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_1d

    iget-object v6, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v6, :cond_1d

    .line 326
    if-eqz v4, :cond_1c

    .line 327
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v6

    invoke-virtual {v3, v1, v7, v6}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_6

    .line 329
    :cond_1c
    invoke-virtual {v3, v1, v5}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto :goto_6

    .line 331
    :cond_1d
    iget-object v6, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v6, :cond_1f

    iget-object v6, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_1f

    .line 332
    if-eqz v4, :cond_1e

    .line 333
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v6

    invoke-virtual {v1, v3, v11, v6}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto :goto_6

    .line 335
    :cond_1e
    neg-int v6, v5

    invoke-virtual {v1, v3, v6}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto :goto_6

    .line 337
    :cond_1f
    iget-object v6, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_22

    iget-object v6, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_22

    .line 338
    if-eqz v4, :cond_20

    .line 339
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    .line 340
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    .line 342
    :cond_20
    iget v6, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v6, v6, v10

    if-nez v6, :cond_21

    .line 343
    invoke-virtual {v1, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 344
    invoke-virtual {v3, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 345
    invoke-virtual {v1, v3, v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 346
    invoke-virtual {v3, v1, v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    goto :goto_6

    .line 348
    :cond_21
    invoke-virtual {v1, v12}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 349
    invoke-virtual {v3, v12}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 350
    neg-int v6, v5

    int-to-float v6, v6

    invoke-virtual {v1, v3, v6}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 351
    int-to-float v6, v5

    invoke-virtual {v3, v1, v6}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 352
    invoke-virtual {p1, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 353
    iget v6, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v6, :cond_22

    .line 354
    iget-object v6, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v6

    iget v8, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    invoke-virtual {v6, v7, v1, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(ILandroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    .line 360
    .end local v5    # "height":I
    :cond_22
    :goto_6
    return-void
.end method

.method static applyChainOptimized(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/LinearSystem;IILandroid/support/constraint/solver/widgets/ConstraintWidget;)Z
    .locals 46
    .param p0, "container"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .param p1, "system"    # Landroid/support/constraint/solver/LinearSystem;
    .param p2, "orientation"    # I
    .param p3, "offset"    # I
    .param p4, "first"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v0, p1

    .line 376
    move-object/from16 v1, p4

    .line 377
    .local v1, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    const/4 v2, 0x0

    .line 378
    .local v2, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    const/4 v3, 0x0

    .line 379
    .local v3, "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    const/4 v4, 0x0

    .line 381
    .local v4, "lastVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    const/4 v5, 0x0

    .line 383
    .local v5, "done":Z
    const/4 v6, 0x0

    .line 384
    .local v6, "numMatchConstraints":I
    const/4 v7, 0x0

    .line 385
    .local v7, "totalWeights":F
    const/4 v8, 0x0

    .line 386
    .local v8, "firstMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    const/4 v9, 0x0

    .line 388
    .local v9, "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object/from16 v10, p0

    iget-object v11, v10, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v11, v11, p2

    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v11, v12, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    .line 389
    .local v11, "isWrapContent":Z
    :goto_0
    const/4 v12, 0x0

    .line 390
    .local v12, "isChainSpread":Z
    const/4 v15, 0x0

    .line 391
    .local v15, "isChainSpreadInside":Z
    const/16 v16, 0x0

    .line 393
    .local v16, "isChainPacked":Z
    move-object/from16 v17, p4

    .line 394
    .local v17, "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-nez p2, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->isRtl()Z

    move-result v18

    if-eqz v18, :cond_6

    .line 396
    :goto_1
    if-nez v5, :cond_5

    .line 398
    iget-object v13, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v18, p3, 0x1

    aget-object v13, v13, v18

    iget-object v13, v13, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 399
    .local v13, "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    if-eqz v13, :cond_2

    .line 400
    iget-object v2, v13, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 401
    move-object/from16 v19, v3

    iget-object v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 401
    .end local v3    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v19, "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    aget-object v3, v3, p3

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_1

    iget-object v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, p3

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eq v3, v1, :cond_3

    .line 403
    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    .line 406
    .end local v19    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v3    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_2
    move-object/from16 v19, v3

    .line 406
    .end local v3    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v19    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    const/4 v2, 0x0

    .line 408
    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    .line 409
    move-object v1, v2

    goto :goto_3

    .line 411
    :cond_4
    const/4 v3, 0x1

    .line 413
    .end local v5    # "done":Z
    .end local v13    # "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v3, "done":Z
    move v5, v3

    .line 396
    .end local v3    # "done":Z
    .restart local v5    # "done":Z
    :goto_3
    move-object/from16 v3, v19

    goto :goto_1

    .line 414
    .end local v19    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v3, "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_5
    move-object/from16 v19, v3

    .line 414
    .end local v3    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v19    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object/from16 v17, v1

    .line 415
    move-object/from16 v1, p4

    .line 416
    const/4 v2, 0x0

    .line 417
    const/4 v5, 0x0

    goto :goto_4

    .line 420
    .end local v19    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v3    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_6
    move-object/from16 v19, v3

    .line 420
    .end local v17    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v1, "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v2, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v3, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v19    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_4
    move-object v3, v2

    move-object v2, v1

    move-object/from16 v1, v17

    if-nez p2, :cond_a

    .line 421
    iget v13, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    if-nez v13, :cond_7

    const/4 v13, 0x1

    goto :goto_5

    :cond_7
    const/4 v13, 0x0

    :goto_5
    move v12, v13

    .line 422
    iget v13, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    move-object/from16 v21, v2

    const/4 v2, 0x1

    if-ne v13, v2, :cond_8

    .line 422
    .end local v2    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v21, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    const/4 v2, 0x1

    goto :goto_6

    :cond_8
    const/4 v2, 0x0

    .line 423
    .end local v15    # "isChainSpreadInside":Z
    .local v2, "isChainSpreadInside":Z
    :goto_6
    iget v13, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    move/from16 v22, v2

    const/4 v2, 0x2

    if-ne v13, v2, :cond_9

    .line 423
    .end local v2    # "isChainSpreadInside":Z
    .local v22, "isChainSpreadInside":Z
    const/4 v2, 0x1

    goto :goto_7

    :cond_9
    const/4 v2, 0x0

    .line 435
    .end local v16    # "isChainPacked":Z
    .local v2, "isChainPacked":Z
    :goto_7
    move-object/from16 v23, v1

    move v1, v2

    goto :goto_b

    .line 425
    .end local v21    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v22    # "isChainSpreadInside":Z
    .local v2, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v15    # "isChainSpreadInside":Z
    .restart local v16    # "isChainPacked":Z
    :cond_a
    move-object/from16 v21, v2

    .line 425
    .end local v2    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v21    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    if-nez v2, :cond_b

    const/4 v2, 0x1

    goto :goto_8

    :cond_b
    const/4 v2, 0x0

    :goto_8
    move v12, v2

    .line 426
    iget v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    const/4 v13, 0x1

    if-ne v2, v13, :cond_c

    const/4 v2, 0x1

    goto :goto_9

    :cond_c
    const/4 v2, 0x0

    .line 427
    .end local v15    # "isChainSpreadInside":Z
    .local v2, "isChainSpreadInside":Z
    :goto_9
    iget v13, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    move-object/from16 v23, v1

    const/4 v1, 0x2

    if-ne v13, v1, :cond_d

    .line 427
    .end local v1    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v23, "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    const/4 v1, 0x1

    goto :goto_a

    :cond_d
    const/4 v1, 0x0

    .line 435
    .end local v16    # "isChainPacked":Z
    .local v1, "isChainPacked":Z
    :goto_a
    move/from16 v22, v2

    .line 435
    .end local v2    # "isChainSpreadInside":Z
    .restart local v22    # "isChainSpreadInside":Z
    :goto_b
    const/4 v2, 0x0

    .line 436
    .local v2, "totalSize":F
    const/4 v13, 0x0

    .line 437
    .local v13, "totalMargins":F
    move/from16 v16, v2

    move v15, v7

    move/from16 v17, v13

    move-object/from16 v7, v19

    const/4 v2, 0x0

    move v13, v6

    move-object v6, v3

    move-object/from16 v3, v21

    .line 439
    .end local v19    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v21    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v2, "numVisibleWidgets":I
    .local v3, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v6, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v7, "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v13, "numMatchConstraints":I
    .local v15, "totalWeights":F
    .local v16, "totalSize":F
    .local v17, "totalMargins":F
    :goto_c
    if-nez v5, :cond_1f

    .line 443
    move/from16 v24, v5

    iget-object v5, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextVisibleWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 443
    .end local v5    # "done":Z
    .local v24, "done":Z
    const/16 v18, 0x0

    aput-object v18, v5, p2

    .line 444
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v5

    move-object/from16 v25, v6

    const/16 v6, 0x8

    .line 444
    .end local v6    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v25, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eq v5, v6, :cond_12

    .line 445
    if-eqz v4, :cond_e

    .line 446
    iget-object v5, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextVisibleWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aput-object v3, v5, p2

    .line 448
    :cond_e
    if-nez v7, :cond_f

    .line 449
    move-object v7, v3

    .line 451
    :cond_f
    move-object v4, v3

    .line 452
    add-int/lit8 v2, v2, 0x1

    .line 453
    if-nez p2, :cond_10

    .line 454
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v5

    int-to-float v5, v5

    add-float v16, v16, v5

    goto :goto_d

    .line 456
    :cond_10
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v5

    int-to-float v5, v5

    add-float v16, v16, v5

    .line 458
    :goto_d
    if-eq v3, v7, :cond_11

    .line 459
    iget-object v5, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v5, v5, p3

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v5

    int-to-float v5, v5

    add-float v16, v16, v5

    .line 461
    :cond_11
    iget-object v5, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v5, v5, p3

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v5

    int-to-float v5, v5

    add-float v17, v17, v5

    .line 462
    iget-object v5, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v19, p3, 0x1

    aget-object v5, v5, v19

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v5

    int-to-float v5, v5

    add-float v17, v17, v5

    .line 465
    :cond_12
    iget-object v5, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v5, v5, p3

    .line 468
    .local v5, "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v6, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aput-object v18, v6, p2

    .line 469
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v6

    move/from16 v26, v2

    const/16 v2, 0x8

    if-eq v6, v2, :cond_1a

    .line 469
    .end local v2    # "numVisibleWidgets":I
    .local v26, "numVisibleWidgets":I
    iget-object v2, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v2, v2, p2

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v6, :cond_1a

    .line 471
    add-int/lit8 v13, v13, 0x1

    .line 473
    if-nez p2, :cond_15

    .line 474
    iget v2, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-eqz v2, :cond_13

    .line 475
    const/4 v2, 0x0

    return v2

    .line 476
    :cond_13
    const/4 v2, 0x0

    iget v6, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-nez v6, :cond_14

    iget v6, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-eqz v6, :cond_17

    .line 477
    :cond_14
    return v2

    .line 480
    :cond_15
    const/4 v2, 0x0

    iget v6, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-eqz v6, :cond_16

    .line 481
    return v2

    .line 482
    :cond_16
    iget v2, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-nez v2, :cond_19

    iget v2, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-eqz v2, :cond_17

    goto :goto_f

    .line 486
    :cond_17
    iget-object v2, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWeight:[F

    aget v2, v2, p2

    add-float/2addr v15, v2

    .line 487
    if-nez v8, :cond_18

    .line 488
    move-object v8, v3

    goto :goto_e

    .line 490
    :cond_18
    iget-object v2, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aput-object v3, v2, p2

    .line 492
    :goto_e
    move-object v2, v3

    .line 496
    .end local v9    # "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v2, "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object v9, v2

    goto :goto_10

    .line 483
    .end local v2    # "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v9    # "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_19
    :goto_f
    const/4 v2, 0x0

    return v2

    .line 496
    :cond_1a
    :goto_10
    iget-object v2, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v6, p3, 0x1

    aget-object v2, v2, v6

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 497
    .local v2, "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    if-eqz v2, :cond_1c

    .line 498
    iget-object v6, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 499
    .end local v25    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v6    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object/from16 v27, v2

    iget-object v2, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 499
    .end local v2    # "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v27, "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    aget-object v2, v2, p3

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_1b

    iget-object v2, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, p3

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eq v2, v3, :cond_1d

    .line 500
    :cond_1b
    const/4 v2, 0x0

    .line 500
    .end local v6    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v2, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    goto :goto_11

    .line 503
    .end local v27    # "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v2, "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v25    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_1c
    move-object/from16 v27, v2

    .line 503
    .end local v2    # "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v27    # "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    const/4 v2, 0x0

    .line 505
    .end local v25    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v6    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_11
    move-object v6, v2

    :cond_1d
    if-eqz v6, :cond_1e

    .line 506
    move-object v2, v6

    .line 510
    .end local v3    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v2, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object v3, v2

    move/from16 v5, v24

    goto :goto_12

    .line 508
    .end local v2    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v3    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_1e
    const/4 v2, 0x1

    .line 510
    .end local v5    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v24    # "done":Z
    .end local v27    # "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v2, "done":Z
    move v5, v2

    .line 437
    .end local v2    # "done":Z
    .local v5, "done":Z
    :goto_12
    move/from16 v2, v26

    goto/16 :goto_c

    .line 511
    .end local v26    # "numVisibleWidgets":I
    .local v2, "numVisibleWidgets":I
    :cond_1f
    move/from16 v24, v5

    move-object/from16 v25, v6

    .line 511
    .end local v5    # "done":Z
    .end local v6    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v24    # "done":Z
    .restart local v25    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object v5, v3

    .line 513
    .local v5, "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object/from16 v6, p4

    move-object/from16 v28, v8

    iget-object v8, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 513
    .end local v8    # "firstMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v28, "firstMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    aget-object v8, v8, p3

    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v8

    .line 514
    .local v8, "firstNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    move-object/from16 v29, v9

    iget-object v9, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 514
    .end local v9    # "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v29, "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    add-int/lit8 v18, p3, 0x1

    aget-object v9, v9, v18

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v9

    .line 516
    .local v9, "lastNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    move-object/from16 v30, v5

    iget-object v5, v8, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    .line 516
    .end local v5    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v30, "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v5, :cond_46

    iget-object v5, v9, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    if-nez v5, :cond_20

    .line 518
    move/from16 v38, v1

    move-object/from16 v33, v3

    move-object/from16 v45, v7

    move-object/from16 v32, v9

    move/from16 v31, v11

    move/from16 v40, v12

    move/from16 v44, v13

    move v3, v2

    goto/16 :goto_22

    .line 522
    :cond_20
    iget-object v5, v8, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget v5, v5, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->state:I

    const/4 v10, 0x1

    if-eq v5, v10, :cond_21

    iget-object v5, v9, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget v5, v5, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->state:I

    if-eq v5, v10, :cond_21

    .line 525
    const/4 v5, 0x0

    return v5

    .line 528
    :cond_21
    const/4 v5, 0x0

    if-lez v13, :cond_22

    if-eq v13, v2, :cond_22

    .line 530
    return v5

    .line 533
    :cond_22
    const/4 v5, 0x0

    .line 534
    .local v5, "extraMargin":F
    if-nez v1, :cond_23

    if-nez v12, :cond_23

    if-eqz v22, :cond_25

    .line 535
    :cond_23
    if-eqz v7, :cond_24

    .line 536
    iget-object v10, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v10, v10, p3

    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v10

    int-to-float v5, v10

    .line 538
    :cond_24
    if-eqz v4, :cond_25

    .line 539
    iget-object v10, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v18, p3, 0x1

    aget-object v10, v10, v18

    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v5, v10

    .line 543
    :cond_25
    iget-object v10, v8, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget v10, v10, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    .line 544
    .local v10, "firstOffset":F
    move/from16 v31, v11

    iget-object v11, v9, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    .line 544
    .end local v11    # "isWrapContent":Z
    .local v31, "isWrapContent":Z
    iget v11, v11, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    .line 545
    .local v11, "lastOffset":F
    const/16 v18, 0x0

    .line 546
    .local v18, "distance":F
    cmpg-float v19, v10, v11

    if-gez v19, :cond_26

    .line 547
    sub-float v19, v11, v10

    sub-float v19, v19, v16

    .line 547
    .end local v18    # "distance":F
    .local v19, "distance":F
    :goto_13
    goto :goto_14

    .line 549
    .end local v19    # "distance":F
    .restart local v18    # "distance":F
    :cond_26
    sub-float v19, v10, v11

    sub-float v19, v19, v16

    goto :goto_13

    .line 552
    .end local v18    # "distance":F
    .restart local v19    # "distance":F
    :goto_14
    const-wide/16 v20, 0x1

    if-lez v13, :cond_31

    if-ne v13, v2, :cond_31

    .line 553
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v18

    if-eqz v18, :cond_27

    move-object/from16 v32, v9

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v9

    .line 553
    .end local v9    # "lastNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .local v32, "lastNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v9, v9, p2

    move-object/from16 v33, v3

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 553
    .end local v3    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v33, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-ne v9, v3, :cond_28

    .line 554
    const/4 v3, 0x0

    return v3

    .line 556
    .end local v32    # "lastNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .end local v33    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v3    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v9    # "lastNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    :cond_27
    move-object/from16 v33, v3

    move-object/from16 v32, v9

    .line 556
    .end local v3    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v9    # "lastNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .restart local v32    # "lastNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .restart local v33    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_28
    add-float v19, v19, v16

    .line 557
    sub-float v19, v19, v17

    .line 558
    move-object v3, v7

    .line 559
    .end local v33    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v3    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move v9, v10

    .line 560
    .local v9, "position":F
    if-eqz v12, :cond_29

    .line 561
    sub-float v14, v17, v5

    sub-float v19, v19, v14

    .line 563
    :cond_29
    if-eqz v12, :cond_2b

    .line 564
    move/from16 v34, v11

    iget-object v11, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 564
    .end local v11    # "lastOffset":F
    .local v34, "lastOffset":F
    add-int/lit8 v14, p3, 0x1

    aget-object v11, v11, v14

    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v9, v11

    .line 565
    iget-object v11, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextVisibleWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v11, v11, p2

    .line 566
    .end local v25    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v11, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v11, :cond_2a

    .line 567
    move-object/from16 v35, v3

    iget-object v3, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 567
    .end local v3    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v35, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    aget-object v3, v3, p3

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v9, v3

    .line 570
    move-object/from16 v3, v35

    goto :goto_15

    .line 570
    .end local v35    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v3    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_2a
    move-object/from16 v35, v3

    .line 570
    .end local v3    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v35    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    goto :goto_15

    .line 570
    .end local v34    # "lastOffset":F
    .end local v35    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v3    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v11, "lastOffset":F
    .restart local v25    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_2b
    move-object/from16 v35, v3

    move/from16 v34, v11

    move-object/from16 v11, v25

    .line 570
    .end local v25    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v11, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v34    # "lastOffset":F
    :goto_15
    if-eqz v3, :cond_30

    .line 571
    sget-object v14, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    if-eqz v14, :cond_2c

    .line 572
    move-object/from16 v36, v11

    sget-object v11, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    .line 572
    .end local v11    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v36, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object/from16 v37, v7

    iget-wide v6, v11, Landroid/support/constraint/solver/Metrics;->nonresolvedWidgets:J

    .line 572
    .end local v7    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v37, "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move/from16 v38, v1

    move/from16 v39, v2

    sub-long v1, v6, v20

    .line 572
    .end local v1    # "isChainPacked":Z
    .end local v2    # "numVisibleWidgets":I
    .local v38, "isChainPacked":Z
    .local v39, "numVisibleWidgets":I
    iput-wide v1, v11, Landroid/support/constraint/solver/Metrics;->nonresolvedWidgets:J

    .line 573
    sget-object v1, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    iget-wide v6, v1, Landroid/support/constraint/solver/Metrics;->resolvedWidgets:J

    move/from16 v40, v12

    add-long v11, v6, v20

    .line 573
    .end local v12    # "isChainSpread":Z
    .local v40, "isChainSpread":Z
    iput-wide v11, v1, Landroid/support/constraint/solver/Metrics;->resolvedWidgets:J

    .line 574
    sget-object v1, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    iget-wide v6, v1, Landroid/support/constraint/solver/Metrics;->chainConnectionResolved:J

    add-long v11, v6, v20

    iput-wide v11, v1, Landroid/support/constraint/solver/Metrics;->chainConnectionResolved:J

    goto :goto_16

    .line 576
    .end local v36    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v37    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v38    # "isChainPacked":Z
    .end local v39    # "numVisibleWidgets":I
    .end local v40    # "isChainSpread":Z
    .restart local v1    # "isChainPacked":Z
    .restart local v2    # "numVisibleWidgets":I
    .restart local v7    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v11    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v12    # "isChainSpread":Z
    :cond_2c
    move/from16 v38, v1

    move/from16 v39, v2

    move-object/from16 v37, v7

    move-object/from16 v36, v11

    move/from16 v40, v12

    .line 576
    .end local v1    # "isChainPacked":Z
    .end local v2    # "numVisibleWidgets":I
    .end local v7    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v11    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v12    # "isChainSpread":Z
    .restart local v36    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v37    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v38    # "isChainPacked":Z
    .restart local v39    # "numVisibleWidgets":I
    .restart local v40    # "isChainSpread":Z
    :goto_16
    iget-object v1, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextVisibleWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v11, v1, p2

    .line 577
    .end local v36    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v11    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-nez v11, :cond_2d

    if-ne v3, v4, :cond_2f

    .line 578
    :cond_2d
    int-to-float v1, v13

    div-float v1, v19, v1

    .line 579
    .local v1, "dimension":F
    const/4 v2, 0x0

    cmpl-float v2, v15, v2

    if-lez v2, :cond_2e

    .line 580
    iget-object v2, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWeight:[F

    aget v2, v2, p2

    mul-float v2, v2, v19

    div-float v1, v2, v15

    .line 582
    :cond_2e
    iget-object v2, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, p3

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v9, v2

    .line 583
    iget-object v2, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, p3

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v2

    iget-object v6, v8, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    invoke-virtual {v2, v6, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolve(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 585
    iget-object v2, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v6, p3, 0x1

    aget-object v2, v2, v6

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v2

    iget-object v6, v8, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    add-float v7, v9, v1

    invoke-virtual {v2, v6, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolve(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 587
    iget-object v2, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, p3

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroid/support/constraint/solver/LinearSystem;)V

    .line 588
    iget-object v2, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v6, p3, 0x1

    aget-object v2, v2, v6

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroid/support/constraint/solver/LinearSystem;)V

    .line 589
    add-float/2addr v9, v1

    .line 590
    iget-object v2, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v6, p3, 0x1

    aget-object v2, v2, v6

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v9, v2

    .line 592
    .end local v1    # "dimension":F
    :cond_2f
    move-object v3, v11

    .line 570
    move-object/from16 v7, v37

    move/from16 v1, v38

    move/from16 v2, v39

    move/from16 v12, v40

    move-object/from16 v6, p4

    goto/16 :goto_15

    .line 594
    .end local v37    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v38    # "isChainPacked":Z
    .end local v39    # "numVisibleWidgets":I
    .end local v40    # "isChainSpread":Z
    .local v1, "isChainPacked":Z
    .restart local v2    # "numVisibleWidgets":I
    .restart local v7    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v12    # "isChainSpread":Z
    :cond_30
    move/from16 v38, v1

    move/from16 v39, v2

    move-object/from16 v37, v7

    move-object/from16 v36, v11

    move/from16 v40, v12

    .line 594
    .end local v1    # "isChainPacked":Z
    .end local v2    # "numVisibleWidgets":I
    .end local v7    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v11    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v12    # "isChainSpread":Z
    .restart local v36    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v37    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v38    # "isChainPacked":Z
    .restart local v39    # "numVisibleWidgets":I
    .restart local v40    # "isChainSpread":Z
    const/4 v1, 0x1

    return v1

    .line 597
    .end local v32    # "lastNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .end local v34    # "lastOffset":F
    .end local v36    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v37    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v38    # "isChainPacked":Z
    .end local v39    # "numVisibleWidgets":I
    .end local v40    # "isChainSpread":Z
    .restart local v1    # "isChainPacked":Z
    .restart local v2    # "numVisibleWidgets":I
    .restart local v7    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v9, "lastNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .local v11, "lastOffset":F
    .restart local v12    # "isChainSpread":Z
    .restart local v25    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_31
    move/from16 v38, v1

    move/from16 v39, v2

    move-object/from16 v33, v3

    move-object/from16 v37, v7

    move-object/from16 v32, v9

    move/from16 v34, v11

    move/from16 v40, v12

    .line 597
    .end local v1    # "isChainPacked":Z
    .end local v2    # "numVisibleWidgets":I
    .end local v3    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v7    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v9    # "lastNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .end local v11    # "lastOffset":F
    .end local v12    # "isChainSpread":Z
    .restart local v32    # "lastNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .restart local v33    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v34    # "lastOffset":F
    .restart local v37    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v38    # "isChainPacked":Z
    .restart local v39    # "numVisibleWidgets":I
    .restart local v40    # "isChainSpread":Z
    cmpg-float v1, v19, v16

    if-gez v1, :cond_32

    .line 598
    const/4 v1, 0x0

    return v1

    .line 601
    :cond_32
    if-eqz v38, :cond_38

    .line 602
    sub-float v19, v19, v5

    .line 604
    move-object/from16 v1, v37

    .line 605
    .end local v33    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v1, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-virtual/range {p4 .. p4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHorizontalBiasPercent()F

    move-result v2

    mul-float v2, v2, v19

    add-float/2addr v2, v10

    .line 606
    .end local v19    # "distance":F
    .local v2, "distance":F
    move-object v3, v1

    move/from16 v19, v2

    move-object/from16 v6, v25

    .line 606
    .end local v1    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v2    # "distance":F
    .end local v25    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v3    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v6    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v19    # "distance":F
    :goto_17
    if-eqz v3, :cond_37

    .line 607
    sget-object v1, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    if-eqz v1, :cond_33

    .line 608
    sget-object v1, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    iget-wide v11, v1, Landroid/support/constraint/solver/Metrics;->nonresolvedWidgets:J

    move-object/from16 v41, v6

    sub-long v6, v11, v20

    .line 608
    .end local v6    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v41, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iput-wide v6, v1, Landroid/support/constraint/solver/Metrics;->nonresolvedWidgets:J

    .line 609
    sget-object v1, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    iget-wide v6, v1, Landroid/support/constraint/solver/Metrics;->resolvedWidgets:J

    add-long v11, v6, v20

    iput-wide v11, v1, Landroid/support/constraint/solver/Metrics;->resolvedWidgets:J

    .line 610
    sget-object v1, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    iget-wide v6, v1, Landroid/support/constraint/solver/Metrics;->chainConnectionResolved:J

    add-long v11, v6, v20

    iput-wide v11, v1, Landroid/support/constraint/solver/Metrics;->chainConnectionResolved:J

    goto :goto_18

    .line 612
    .end local v41    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v6    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_33
    move-object/from16 v41, v6

    .line 612
    .end local v6    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v41    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_18
    iget-object v1, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextVisibleWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v6, v1, p2

    .line 613
    .end local v41    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v6    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-nez v6, :cond_34

    if-ne v3, v4, :cond_36

    .line 614
    :cond_34
    const/4 v1, 0x0

    .line 615
    .local v1, "dimension":F
    if-nez p2, :cond_35

    .line 616
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v2

    int-to-float v1, v2

    goto :goto_19

    .line 618
    :cond_35
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v2

    int-to-float v1, v2

    .line 620
    :goto_19
    iget-object v2, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, p3

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    int-to-float v2, v2

    add-float v2, v19, v2

    .line 621
    .end local v19    # "distance":F
    .restart local v2    # "distance":F
    iget-object v7, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v7, v7, p3

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v7

    iget-object v9, v8, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    invoke-virtual {v7, v9, v2}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolve(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 623
    iget-object v7, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v9, p3, 0x1

    aget-object v7, v7, v9

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v7

    iget-object v9, v8, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    add-float v11, v2, v1

    invoke-virtual {v7, v9, v11}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolve(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 625
    iget-object v7, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v7, v7, p3

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroid/support/constraint/solver/LinearSystem;)V

    .line 626
    iget-object v7, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v9, p3, 0x1

    aget-object v7, v7, v9

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroid/support/constraint/solver/LinearSystem;)V

    .line 627
    add-float/2addr v2, v1

    .line 628
    iget-object v7, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v9, p3, 0x1

    aget-object v7, v7, v9

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v7

    int-to-float v7, v7

    add-float v19, v2, v7

    .line 630
    .end local v1    # "dimension":F
    .end local v2    # "distance":F
    .restart local v19    # "distance":F
    :cond_36
    move-object v3, v6

    goto/16 :goto_17

    .line 682
    :cond_37
    move-object/from16 v41, v6

    move-object v1, v3

    move/from16 v42, v5

    move/from16 v44, v13

    move-object/from16 v45, v37

    move/from16 v3, v39

    move-object/from16 v25, v41

    .line 682
    .end local v6    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v41    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    goto/16 :goto_21

    .line 632
    .end local v3    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v41    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v25    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v33    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_38
    if-nez v40, :cond_3a

    if-eqz v22, :cond_39

    goto :goto_1a

    .line 682
    :cond_39
    move/from16 v42, v5

    move/from16 v44, v13

    move-object/from16 v1, v33

    move-object/from16 v45, v37

    move/from16 v3, v39

    goto/16 :goto_21

    .line 633
    :cond_3a
    :goto_1a
    if-eqz v40, :cond_3b

    .line 634
    sub-float v19, v19, v5

    goto :goto_1b

    .line 635
    :cond_3b
    if-eqz v22, :cond_3c

    .line 636
    sub-float v19, v19, v5

    .line 638
    :cond_3c
    :goto_1b
    move-object/from16 v1, v37

    .line 639
    .end local v33    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v1, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    add-int/lit8 v2, v39, 0x1

    int-to-float v2, v2

    div-float v2, v19, v2

    .line 640
    .local v2, "gap":F
    if-eqz v22, :cond_3e

    .line 641
    move/from16 v3, v39

    const/4 v6, 0x1

    if-le v3, v6, :cond_3d

    .line 642
    .end local v39    # "numVisibleWidgets":I
    .local v3, "numVisibleWidgets":I
    add-int/lit8 v6, v3, -0x1

    int-to-float v6, v6

    div-float v2, v19, v6

    goto :goto_1c

    .line 644
    :cond_3d
    const/high16 v6, 0x40000000    # 2.0f

    div-float v2, v19, v6

    goto :goto_1c

    .line 647
    .end local v3    # "numVisibleWidgets":I
    .restart local v39    # "numVisibleWidgets":I
    :cond_3e
    move/from16 v3, v39

    .line 647
    .end local v39    # "numVisibleWidgets":I
    .restart local v3    # "numVisibleWidgets":I
    :goto_1c
    add-float v6, v10, v2

    .line 648
    .end local v19    # "distance":F
    .local v6, "distance":F
    if-eqz v22, :cond_3f

    const/4 v7, 0x1

    if-le v3, v7, :cond_3f

    .line 649
    move-object/from16 v7, v37

    iget-object v9, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 649
    .end local v37    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v7    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    aget-object v9, v9, p3

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v9

    int-to-float v9, v9

    add-float v6, v10, v9

    goto :goto_1d

    .line 651
    .end local v7    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v37    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_3f
    move-object/from16 v7, v37

    .line 651
    .end local v37    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v7    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_1d
    if-eqz v40, :cond_40

    .line 652
    if-eqz v7, :cond_40

    .line 653
    iget-object v9, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v9, v9, p3

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v6, v9

    .line 656
    .end local v25    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v6, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v9, "distance":F
    :cond_40
    move v9, v6

    move-object/from16 v6, v25

    :goto_1e
    if-eqz v1, :cond_45

    .line 657
    sget-object v11, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    if-eqz v11, :cond_41

    .line 658
    sget-object v11, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    move/from16 v42, v5

    move-object/from16 v43, v6

    iget-wide v5, v11, Landroid/support/constraint/solver/Metrics;->nonresolvedWidgets:J

    .line 658
    .end local v5    # "extraMargin":F
    .end local v6    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v42, "extraMargin":F
    .local v43, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move/from16 v44, v13

    sub-long v12, v5, v20

    .line 658
    .end local v13    # "numMatchConstraints":I
    .local v44, "numMatchConstraints":I
    iput-wide v12, v11, Landroid/support/constraint/solver/Metrics;->nonresolvedWidgets:J

    .line 659
    sget-object v5, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    iget-wide v11, v5, Landroid/support/constraint/solver/Metrics;->resolvedWidgets:J

    move-object/from16 v45, v7

    add-long v6, v11, v20

    .line 659
    .end local v7    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v45, "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iput-wide v6, v5, Landroid/support/constraint/solver/Metrics;->resolvedWidgets:J

    .line 660
    sget-object v5, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    iget-wide v6, v5, Landroid/support/constraint/solver/Metrics;->chainConnectionResolved:J

    add-long v11, v6, v20

    iput-wide v11, v5, Landroid/support/constraint/solver/Metrics;->chainConnectionResolved:J

    goto :goto_1f

    .line 662
    .end local v42    # "extraMargin":F
    .end local v43    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v44    # "numMatchConstraints":I
    .end local v45    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v5    # "extraMargin":F
    .restart local v6    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v7    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v13    # "numMatchConstraints":I
    :cond_41
    move/from16 v42, v5

    move-object/from16 v43, v6

    move-object/from16 v45, v7

    move/from16 v44, v13

    .line 662
    .end local v5    # "extraMargin":F
    .end local v6    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v7    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v13    # "numMatchConstraints":I
    .restart local v42    # "extraMargin":F
    .restart local v43    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v44    # "numMatchConstraints":I
    .restart local v45    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_1f
    iget-object v5, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextVisibleWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v6, v5, p2

    .line 663
    .end local v43    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v6    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-nez v6, :cond_42

    if-ne v1, v4, :cond_44

    .line 664
    :cond_42
    const/4 v5, 0x0

    .line 665
    .local v5, "dimension":F
    if-nez p2, :cond_43

    .line 666
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v7

    int-to-float v5, v7

    goto :goto_20

    .line 668
    :cond_43
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v7

    int-to-float v5, v7

    .line 670
    :goto_20
    iget-object v7, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v7, v7, p3

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v7

    iget-object v11, v8, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    invoke-virtual {v7, v11, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolve(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 672
    iget-object v7, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v11, p3, 0x1

    aget-object v7, v7, v11

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v7

    iget-object v11, v8, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    add-float v12, v9, v5

    invoke-virtual {v7, v11, v12}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolve(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 674
    iget-object v7, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v7, v7, p3

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroid/support/constraint/solver/LinearSystem;)V

    .line 675
    iget-object v7, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v11, p3, 0x1

    aget-object v7, v7, v11

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroid/support/constraint/solver/LinearSystem;)V

    .line 676
    add-float v7, v5, v2

    add-float/2addr v9, v7

    .line 678
    .end local v5    # "dimension":F
    :cond_44
    move-object v1, v6

    .line 656
    move/from16 v5, v42

    move/from16 v13, v44

    move-object/from16 v7, v45

    goto/16 :goto_1e

    .line 682
    .end local v2    # "gap":F
    .end local v42    # "extraMargin":F
    .end local v44    # "numMatchConstraints":I
    .end local v45    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v5, "extraMargin":F
    .restart local v7    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v13    # "numMatchConstraints":I
    :cond_45
    move/from16 v42, v5

    move-object/from16 v43, v6

    move-object/from16 v45, v7

    move/from16 v44, v13

    move/from16 v19, v9

    move-object/from16 v25, v43

    .line 682
    .end local v5    # "extraMargin":F
    .end local v6    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v7    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v9    # "distance":F
    .end local v13    # "numMatchConstraints":I
    .restart local v19    # "distance":F
    .restart local v25    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v42    # "extraMargin":F
    .restart local v44    # "numMatchConstraints":I
    .restart local v45    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_21
    const/4 v2, 0x1

    return v2

    .line 518
    .end local v10    # "firstOffset":F
    .end local v19    # "distance":F
    .end local v31    # "isWrapContent":Z
    .end local v32    # "lastNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .end local v34    # "lastOffset":F
    .end local v38    # "isChainPacked":Z
    .end local v40    # "isChainSpread":Z
    .end local v42    # "extraMargin":F
    .end local v44    # "numMatchConstraints":I
    .end local v45    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v1, "isChainPacked":Z
    .local v2, "numVisibleWidgets":I
    .local v3, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v7    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v9, "lastNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .local v11, "isWrapContent":Z
    .restart local v12    # "isChainSpread":Z
    .restart local v13    # "numMatchConstraints":I
    :cond_46
    move/from16 v38, v1

    move-object/from16 v33, v3

    move-object/from16 v45, v7

    move-object/from16 v32, v9

    move/from16 v31, v11

    move/from16 v40, v12

    move/from16 v44, v13

    move v3, v2

    .line 518
    .end local v1    # "isChainPacked":Z
    .end local v2    # "numVisibleWidgets":I
    .end local v7    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v9    # "lastNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .end local v11    # "isWrapContent":Z
    .end local v12    # "isChainSpread":Z
    .end local v13    # "numMatchConstraints":I
    .local v3, "numVisibleWidgets":I
    .restart local v31    # "isWrapContent":Z
    .restart local v32    # "lastNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .restart local v33    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v38    # "isChainPacked":Z
    .restart local v40    # "isChainSpread":Z
    .restart local v44    # "numMatchConstraints":I
    .restart local v45    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_22
    const/4 v1, 0x0

    return v1
.end method

.method static checkMatchParent(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/LinearSystem;Landroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .locals 5
    .param p0, "container"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .param p1, "system"    # Landroid/support/constraint/solver/LinearSystem;
    .param p2, "widget"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 56
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v3, 0x2

    if-eq v0, v2, :cond_0

    iget-object v0, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, v1

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_0

    .line 59
    iget-object v0, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 60
    .local v0, "left":I
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v1

    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    sub-int/2addr v1, v2

    .line 67
    .local v1, "right":I
    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v4}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v4

    iput-object v4, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 68
    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v4}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v4

    iput-object v4, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 69
    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p1, v2, v0}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    .line 70
    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p1, v2, v1}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    .line 71
    iput v3, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    .line 73
    invoke-virtual {p2, v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalDimension(II)V

    .line 75
    .end local v0    # "left":I
    .end local v1    # "right":I
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v0, v2, :cond_3

    iget-object v0, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, v1

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_3

    .line 78
    iget-object v0, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 79
    .local v0, "top":I
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v1

    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    sub-int/2addr v1, v2

    .line 86
    .local v1, "bottom":I
    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v4}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v4

    iput-object v4, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 87
    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v4}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v4

    iput-object v4, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 88
    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p1, v2, v0}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    .line 89
    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p1, v2, v1}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    .line 90
    iget v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-gtz v2, :cond_1

    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-ne v2, v4, :cond_2

    .line 91
    :cond_1
    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v4}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v4

    iput-object v4, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 92
    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    add-int/2addr v4, v0

    invoke-virtual {p1, v2, v4}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    .line 94
    :cond_2
    iput v3, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    .line 96
    invoke-virtual {p2, v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalDimension(II)V

    .line 98
    .end local v0    # "top":I
    .end local v1    # "bottom":I
    :cond_3
    return-void
.end method

.method private static optimizableMatchConstraint(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)Z
    .locals 3
    .param p0, "constraintWidget"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .param p1, "orientation"    # I

    .line 110
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, p1

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 111
    return v2

    .line 113
    :cond_0
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 114
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    aget-object v0, v0, v1

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_2

    .line 116
    return v2

    .line 119
    :cond_2
    return v2

    .line 121
    :cond_3
    if-nez p1, :cond_6

    .line 122
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-eqz v0, :cond_4

    .line 123
    return v2

    .line 125
    :cond_4
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-nez v0, :cond_5

    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-eqz v0, :cond_8

    .line 126
    :cond_5
    return v2

    .line 129
    :cond_6
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-eqz v0, :cond_7

    .line 130
    return v2

    .line 132
    :cond_7
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-nez v0, :cond_9

    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-eqz v0, :cond_8

    goto :goto_1

    .line 136
    :cond_8
    return v1

    .line 133
    :cond_9
    :goto_1
    return v2
.end method
