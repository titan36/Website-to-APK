.class public Landroid/support/constraint/solver/ArrayVariables;
.super Ljava/lang/Object;
.source "ArrayVariables.java"


# static fields
.field private static final DEBUG:Z = false


# instance fields
.field private ROW_SIZE:I

.field currentSize:I

.field private mArrayIndices:[I

.field private mArrayValid:[Z

.field private mArrayValues:[F

.field private final mCache:Landroid/support/constraint/solver/Cache;

.field private final mRow:Landroid/support/constraint/solver/ArrayRow;


# direct methods
.method constructor <init>(Landroid/support/constraint/solver/ArrayRow;Landroid/support/constraint/solver/Cache;)V
    .locals 1
    .param p1, "arrayRow"    # Landroid/support/constraint/solver/ArrayRow;
    .param p2, "cache"    # Landroid/support/constraint/solver/Cache;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/ArrayVariables;->currentSize:I

    .line 45
    const/16 v0, 0x8

    iput v0, p0, Landroid/support/constraint/solver/ArrayVariables;->ROW_SIZE:I

    .line 48
    iget v0, p0, Landroid/support/constraint/solver/ArrayVariables;->ROW_SIZE:I

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/constraint/solver/ArrayVariables;->mArrayIndices:[I

    .line 51
    iget v0, p0, Landroid/support/constraint/solver/ArrayVariables;->ROW_SIZE:I

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/support/constraint/solver/ArrayVariables;->mArrayValues:[F

    .line 53
    iget v0, p0, Landroid/support/constraint/solver/ArrayVariables;->ROW_SIZE:I

    new-array v0, v0, [Z

    iput-object v0, p0, Landroid/support/constraint/solver/ArrayVariables;->mArrayValid:[Z

    .line 61
    iput-object p1, p0, Landroid/support/constraint/solver/ArrayVariables;->mRow:Landroid/support/constraint/solver/ArrayRow;

    .line 62
    iput-object p2, p0, Landroid/support/constraint/solver/ArrayVariables;->mCache:Landroid/support/constraint/solver/Cache;

    .line 63
    return-void
.end method

.method private isNew(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/LinearSystem;)Z
    .locals 2
    .param p1, "variable"    # Landroid/support/constraint/solver/SolverVariable;
    .param p2, "system"    # Landroid/support/constraint/solver/LinearSystem;

    .line 241
    iget v0, p1, Landroid/support/constraint/solver/SolverVariable;->mClientEquationsCount:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method final add(Landroid/support/constraint/solver/SolverVariable;FZ)V
    .locals 5
    .param p1, "variable"    # Landroid/support/constraint/solver/SolverVariable;
    .param p2, "value"    # F
    .param p3, "removeFromDefinition"    # Z

    .line 110
    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-nez v1, :cond_0

    .line 111
    return-void

    .line 113
    :cond_0
    const/4 v1, 0x0

    move v2, v1

    .line 113
    .local v2, "i":I
    :goto_0
    iget v3, p0, Landroid/support/constraint/solver/ArrayVariables;->currentSize:I

    if-ge v2, v3, :cond_2

    .line 114
    iget-object v3, p0, Landroid/support/constraint/solver/ArrayVariables;->mArrayIndices:[I

    aget v3, v3, v2

    iget v4, p1, Landroid/support/constraint/solver/SolverVariable;->id:I

    if-ne v3, v4, :cond_1

    .line 115
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayVariables;->mArrayValues:[F

    aget v1, v0, v2

    add-float/2addr v1, p2

    aput v1, v0, v2

    .line 116
    return-void

    .line 113
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 119
    .end local v2    # "i":I
    :cond_2
    iget v2, p0, Landroid/support/constraint/solver/ArrayVariables;->currentSize:I

    iget-object v3, p0, Landroid/support/constraint/solver/ArrayVariables;->mArrayIndices:[I

    array-length v3, v3

    if-lt v2, v3, :cond_3

    .line 120
    iget v2, p0, Landroid/support/constraint/solver/ArrayVariables;->ROW_SIZE:I

    mul-int/lit8 v2, v2, 0x2

    iput v2, p0, Landroid/support/constraint/solver/ArrayVariables;->ROW_SIZE:I

    .line 121
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayVariables;->mArrayValues:[F

    iget v3, p0, Landroid/support/constraint/solver/ArrayVariables;->ROW_SIZE:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    iput-object v2, p0, Landroid/support/constraint/solver/ArrayVariables;->mArrayValues:[F

    .line 122
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayVariables;->mArrayIndices:[I

    iget v3, p0, Landroid/support/constraint/solver/ArrayVariables;->ROW_SIZE:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Landroid/support/constraint/solver/ArrayVariables;->mArrayIndices:[I

    .line 123
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayVariables;->mArrayValid:[Z

    iget v3, p0, Landroid/support/constraint/solver/ArrayVariables;->ROW_SIZE:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v2

    iput-object v2, p0, Landroid/support/constraint/solver/ArrayVariables;->mArrayValid:[Z

    .line 125
    :cond_3
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayVariables;->mArrayIndices:[I

    iget v3, p0, Landroid/support/constraint/solver/ArrayVariables;->currentSize:I

    iget v4, p1, Landroid/support/constraint/solver/SolverVariable;->id:I

    aput v4, v2, v3

    .line 126
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayVariables;->mArrayValues:[F

    iget v3, p0, Landroid/support/constraint/solver/ArrayVariables;->currentSize:I

    aget v4, v2, v3

    add-float/2addr v4, p2

    aput v4, v2, v3

    .line 127
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayVariables;->mArrayValid:[Z

    iget v3, p0, Landroid/support/constraint/solver/ArrayVariables;->currentSize:I

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 128
    iget v2, p1, Landroid/support/constraint/solver/SolverVariable;->usageInRowCount:I

    add-int/2addr v2, v4

    iput v2, p1, Landroid/support/constraint/solver/SolverVariable;->usageInRowCount:I

    .line 129
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayVariables;->mRow:Landroid/support/constraint/solver/ArrayRow;

    invoke-virtual {p1, v2}, Landroid/support/constraint/solver/SolverVariable;->addToRow(Landroid/support/constraint/solver/ArrayRow;)V

    .line 130
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayVariables;->mArrayValues:[F

    iget v3, p0, Landroid/support/constraint/solver/ArrayVariables;->currentSize:I

    aget v2, v2, v3

    cmpl-float v0, v2, v0

    if-nez v0, :cond_4

    .line 131
    iget v0, p1, Landroid/support/constraint/solver/SolverVariable;->usageInRowCount:I

    sub-int/2addr v0, v4

    iput v0, p1, Landroid/support/constraint/solver/SolverVariable;->usageInRowCount:I

    .line 132
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayVariables;->mRow:Landroid/support/constraint/solver/ArrayRow;

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/SolverVariable;->removeFromRow(Landroid/support/constraint/solver/ArrayRow;)V

    .line 133
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayVariables;->mArrayValid:[Z

    iget v2, p0, Landroid/support/constraint/solver/ArrayVariables;->currentSize:I

    aput-boolean v1, v0, v2

    .line 135
    :cond_4
    iget v0, p0, Landroid/support/constraint/solver/ArrayVariables;->currentSize:I

    add-int/2addr v0, v4

    iput v0, p0, Landroid/support/constraint/solver/ArrayVariables;->currentSize:I

    .line 136
    return-void
.end method

.method chooseSubject(Landroid/support/constraint/solver/LinearSystem;)Landroid/support/constraint/solver/SolverVariable;
    .locals 14
    .param p1, "system"    # Landroid/support/constraint/solver/LinearSystem;

    .line 256
    const/4 v0, 0x0

    .line 257
    .local v0, "restrictedCandidate":Landroid/support/constraint/solver/SolverVariable;
    const/4 v1, 0x0

    .line 258
    .local v1, "unrestrictedCandidate":Landroid/support/constraint/solver/SolverVariable;
    const/4 v2, 0x0

    .line 259
    .local v2, "unrestrictedCandidateAmount":F
    const/4 v3, 0x0

    .line 260
    .local v3, "restrictedCandidateAmount":F
    const/4 v4, 0x0

    .line 261
    .local v4, "unrestrictedCandidateIsNew":Z
    const/4 v5, 0x0

    .line 263
    .local v5, "restrictedCandidateIsNew":Z
    const/4 v6, 0x0

    move v7, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move-object v2, v0

    move v0, v6

    .line 263
    .local v0, "i":I
    .local v2, "restrictedCandidate":Landroid/support/constraint/solver/SolverVariable;
    .local v3, "unrestrictedCandidateAmount":F
    .local v4, "restrictedCandidateAmount":F
    .local v5, "unrestrictedCandidateIsNew":Z
    .local v7, "restrictedCandidateIsNew":Z
    :goto_0
    iget v8, p0, Landroid/support/constraint/solver/ArrayVariables;->currentSize:I

    if-ge v0, v8, :cond_a

    .line 264
    iget-object v8, p0, Landroid/support/constraint/solver/ArrayVariables;->mArrayValid:[Z

    aget-boolean v8, v8, v0

    if-nez v8, :cond_0

    .line 265
    goto/16 :goto_2

    .line 267
    :cond_0
    iget-object v8, p0, Landroid/support/constraint/solver/ArrayVariables;->mArrayValues:[F

    aget v8, v8, v0

    .line 268
    .local v8, "amount":F
    const v9, 0x3a83126f    # 0.001f

    .line 269
    .local v9, "epsilon":F
    iget-object v10, p0, Landroid/support/constraint/solver/ArrayVariables;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v10, v10, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    iget-object v11, p0, Landroid/support/constraint/solver/ArrayVariables;->mArrayIndices:[I

    aget v11, v11, v0

    aget-object v10, v10, v11

    .line 270
    .local v10, "variable":Landroid/support/constraint/solver/SolverVariable;
    const/4 v11, 0x0

    cmpg-float v12, v8, v11

    if-gez v12, :cond_1

    .line 271
    neg-float v12, v9

    cmpl-float v12, v8, v12

    if-lez v12, :cond_2

    .line 272
    iget-object v12, p0, Landroid/support/constraint/solver/ArrayVariables;->mArrayValues:[F

    aput v11, v12, v0

    .line 273
    const/4 v8, 0x0

    .line 274
    iget-object v12, p0, Landroid/support/constraint/solver/ArrayVariables;->mArrayValid:[Z

    aput-boolean v6, v12, v0

    .line 275
    iget-object v12, p0, Landroid/support/constraint/solver/ArrayVariables;->mRow:Landroid/support/constraint/solver/ArrayRow;

    invoke-virtual {v10, v12}, Landroid/support/constraint/solver/SolverVariable;->removeFromRow(Landroid/support/constraint/solver/ArrayRow;)V

    goto :goto_1

    .line 278
    :cond_1
    cmpg-float v12, v8, v9

    if-gez v12, :cond_2

    .line 279
    iget-object v12, p0, Landroid/support/constraint/solver/ArrayVariables;->mArrayValues:[F

    aput v11, v12, v0

    .line 280
    const/4 v8, 0x0

    .line 281
    iget-object v12, p0, Landroid/support/constraint/solver/ArrayVariables;->mArrayValid:[Z

    aput-boolean v6, v12, v0

    .line 282
    iget-object v12, p0, Landroid/support/constraint/solver/ArrayVariables;->mRow:Landroid/support/constraint/solver/ArrayRow;

    invoke-virtual {v10, v12}, Landroid/support/constraint/solver/SolverVariable;->removeFromRow(Landroid/support/constraint/solver/ArrayRow;)V

    .line 285
    :cond_2
    :goto_1
    cmpl-float v12, v8, v11

    if-nez v12, :cond_3

    .line 286
    goto :goto_2

    .line 288
    :cond_3
    iget-object v12, v10, Landroid/support/constraint/solver/SolverVariable;->mType:Landroid/support/constraint/solver/SolverVariable$Type;

    sget-object v13, Landroid/support/constraint/solver/SolverVariable$Type;->UNRESTRICTED:Landroid/support/constraint/solver/SolverVariable$Type;

    if-ne v12, v13, :cond_6

    .line 289
    if-nez v1, :cond_4

    .line 290
    move-object v1, v10

    .line 291
    move v3, v8

    .line 292
    invoke-direct {p0, v10, p1}, Landroid/support/constraint/solver/ArrayVariables;->isNew(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/LinearSystem;)Z

    move-result v5

    goto :goto_2

    .line 293
    :cond_4
    cmpl-float v11, v3, v8

    if-lez v11, :cond_5

    .line 294
    move-object v1, v10

    .line 295
    move v3, v8

    .line 296
    invoke-direct {p0, v10, p1}, Landroid/support/constraint/solver/ArrayVariables;->isNew(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/LinearSystem;)Z

    move-result v5

    goto :goto_2

    .line 297
    :cond_5
    if-nez v5, :cond_9

    invoke-direct {p0, v10, p1}, Landroid/support/constraint/solver/ArrayVariables;->isNew(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/LinearSystem;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 298
    move-object v1, v10

    .line 299
    move v3, v8

    .line 300
    const/4 v5, 0x1

    goto :goto_2

    .line 302
    :cond_6
    if-nez v1, :cond_9

    .line 303
    cmpg-float v11, v8, v11

    if-gez v11, :cond_9

    .line 304
    if-nez v2, :cond_7

    .line 305
    move-object v2, v10

    .line 306
    move v4, v8

    .line 307
    invoke-direct {p0, v10, p1}, Landroid/support/constraint/solver/ArrayVariables;->isNew(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/LinearSystem;)Z

    move-result v7

    goto :goto_2

    .line 308
    :cond_7
    cmpl-float v11, v4, v8

    if-lez v11, :cond_8

    .line 309
    move-object v2, v10

    .line 310
    move v4, v8

    .line 311
    invoke-direct {p0, v10, p1}, Landroid/support/constraint/solver/ArrayVariables;->isNew(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/LinearSystem;)Z

    move-result v7

    goto :goto_2

    .line 312
    :cond_8
    if-nez v7, :cond_9

    invoke-direct {p0, v10, p1}, Landroid/support/constraint/solver/ArrayVariables;->isNew(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/LinearSystem;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 313
    move-object v2, v10

    .line 314
    move v4, v8

    .line 315
    const/4 v7, 0x1

    .line 263
    .end local v8    # "amount":F
    .end local v9    # "epsilon":F
    .end local v10    # "variable":Landroid/support/constraint/solver/SolverVariable;
    :cond_9
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 320
    .end local v0    # "i":I
    :cond_a
    if-eqz v1, :cond_b

    .line 321
    return-object v1

    .line 323
    :cond_b
    return-object v2
.end method

.method public final clear()V
    .locals 4

    .line 165
    const/4 v0, 0x0

    move v1, v0

    .line 165
    .local v1, "i":I
    :goto_0
    iget v2, p0, Landroid/support/constraint/solver/ArrayVariables;->currentSize:I

    if-ge v1, v2, :cond_1

    .line 166
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayVariables;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v2, v2, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    iget-object v3, p0, Landroid/support/constraint/solver/ArrayVariables;->mArrayIndices:[I

    aget v3, v3, v1

    aget-object v2, v2, v3

    .line 167
    .local v2, "variable":Landroid/support/constraint/solver/SolverVariable;
    if-eqz v2, :cond_0

    .line 169
    iget-object v3, p0, Landroid/support/constraint/solver/ArrayVariables;->mRow:Landroid/support/constraint/solver/ArrayRow;

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/SolverVariable;->removeFromRow(Landroid/support/constraint/solver/ArrayRow;)V

    .line 165
    .end local v2    # "variable":Landroid/support/constraint/solver/SolverVariable;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    .end local v1    # "i":I
    :cond_1
    iput v0, p0, Landroid/support/constraint/solver/ArrayVariables;->currentSize:I

    .line 173
    return-void
.end method

.method final containsKey(Landroid/support/constraint/solver/SolverVariable;)Z
    .locals 4
    .param p1, "variable"    # Landroid/support/constraint/solver/SolverVariable;

    .line 182
    const/4 v0, 0x0

    move v1, v0

    .line 182
    .local v1, "i":I
    :goto_0
    iget v2, p0, Landroid/support/constraint/solver/ArrayVariables;->currentSize:I

    if-ge v1, v2, :cond_1

    .line 183
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayVariables;->mArrayValid:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/constraint/solver/ArrayVariables;->mArrayIndices:[I

    aget v2, v2, v1

    iget v3, p1, Landroid/support/constraint/solver/SolverVariable;->id:I

    if-ne v2, v3, :cond_0

    .line 184
    const/4 v0, 0x1

    return v0

    .line 182
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 187
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public display()V
    .locals 6

    .line 500
    iget v0, p0, Landroid/support/constraint/solver/ArrayVariables;->currentSize:I

    .line 501
    .local v0, "count":I
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "{ "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 502
    const/4 v1, 0x0

    .line 502
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 503
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayVariables;->mArrayValid:[Z

    aget-boolean v2, v2, v1

    if-nez v2, :cond_0

    .line 504
    goto :goto_1

    .line 506
    :cond_0
    invoke-virtual {p0, v1}, Landroid/support/constraint/solver/ArrayVariables;->getVariable(I)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v2

    .line 507
    .local v2, "v":Landroid/support/constraint/solver/SolverVariable;
    if-nez v2, :cond_1

    .line 508
    goto :goto_1

    .line 510
    :cond_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Landroid/support/constraint/solver/ArrayVariables;->getVariableValue(I)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 502
    .end local v2    # "v":Landroid/support/constraint/solver/SolverVariable;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 512
    .end local v1    # "i":I
    :cond_2
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 513
    return-void
.end method

.method divideByAmount(F)V
    .locals 3
    .param p1, "amount"    # F

    .line 222
    const/4 v0, 0x0

    .line 222
    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/support/constraint/solver/ArrayVariables;->currentSize:I

    if-ge v0, v1, :cond_1

    .line 223
    iget-object v1, p0, Landroid/support/constraint/solver/ArrayVariables;->mArrayValid:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    .line 224
    iget-object v1, p0, Landroid/support/constraint/solver/ArrayVariables;->mArrayValues:[F

    aget v2, v1, v0

    div-float/2addr v2, p1

    aput v2, v1, v0

    .line 222
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 227
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public final get(Landroid/support/constraint/solver/SolverVariable;)F
    .locals 3
    .param p1, "v"    # Landroid/support/constraint/solver/SolverVariable;

    .line 481
    const/4 v0, 0x0

    .line 481
    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/support/constraint/solver/ArrayVariables;->currentSize:I

    if-ge v0, v1, :cond_2

    .line 482
    iget-object v1, p0, Landroid/support/constraint/solver/ArrayVariables;->mArrayValid:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_0

    .line 483
    goto :goto_1

    .line 485
    :cond_0
    iget-object v1, p0, Landroid/support/constraint/solver/ArrayVariables;->mArrayIndices:[I

    aget v1, v1, v0

    iget v2, p1, Landroid/support/constraint/solver/SolverVariable;->id:I

    if-ne v1, v2, :cond_1

    .line 486
    iget-object v1, p0, Landroid/support/constraint/solver/ArrayVariables;->mArrayValues:[F

    aget v1, v1, v0

    return v1

    .line 481
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 489
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method getPivotCandidate()Landroid/support/constraint/solver/SolverVariable;
    .locals 5

    .line 410
    const/4 v0, 0x0

    .line 411
    .local v0, "pivot":Landroid/support/constraint/solver/SolverVariable;
    const/4 v1, 0x0

    .line 411
    .local v1, "i":I
    :goto_0
    iget v2, p0, Landroid/support/constraint/solver/ArrayVariables;->currentSize:I

    if-ge v1, v2, :cond_2

    .line 412
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayVariables;->mArrayValid:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/constraint/solver/ArrayVariables;->mArrayValues:[F

    aget v2, v2, v1

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 416
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayVariables;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v2, v2, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    iget-object v3, p0, Landroid/support/constraint/solver/ArrayVariables;->mArrayIndices:[I

    aget v3, v3, v1

    aget-object v2, v2, v3

    .line 417
    .local v2, "v":Landroid/support/constraint/solver/SolverVariable;
    if-eqz v0, :cond_0

    iget v3, v0, Landroid/support/constraint/solver/SolverVariable;->strength:I

    iget v4, v2, Landroid/support/constraint/solver/SolverVariable;->strength:I

    if-ge v3, v4, :cond_1

    .line 418
    :cond_0
    move-object v0, v2

    .line 411
    .end local v2    # "v":Landroid/support/constraint/solver/SolverVariable;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 422
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method getPivotCandidate([ZLandroid/support/constraint/solver/SolverVariable;)Landroid/support/constraint/solver/SolverVariable;
    .locals 6
    .param p1, "avoid"    # [Z
    .param p2, "exclude"    # Landroid/support/constraint/solver/SolverVariable;

    .line 426
    const/4 v0, 0x0

    .line 427
    .local v0, "pivot":Landroid/support/constraint/solver/SolverVariable;
    const/4 v1, 0x0

    .line 428
    .local v1, "value":F
    const/4 v2, 0x0

    .line 428
    .local v2, "i":I
    :goto_0
    iget v3, p0, Landroid/support/constraint/solver/ArrayVariables;->currentSize:I

    if-ge v2, v3, :cond_3

    .line 429
    iget-object v3, p0, Landroid/support/constraint/solver/ArrayVariables;->mArrayValid:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/support/constraint/solver/ArrayVariables;->mArrayValues:[F

    aget v3, v3, v2

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    .line 433
    iget-object v3, p0, Landroid/support/constraint/solver/ArrayVariables;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v3, v3, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    iget-object v4, p0, Landroid/support/constraint/solver/ArrayVariables;->mArrayIndices:[I

    aget v4, v4, v2

    aget-object v3, v3, v4

    .line 434
    .local v3, "v":Landroid/support/constraint/solver/SolverVariable;
    if-eqz p1, :cond_0

    iget v4, v3, Landroid/support/constraint/solver/SolverVariable;->id:I

    aget-boolean v4, p1, v4

    if-nez v4, :cond_2

    :cond_0
    if-eq v3, p2, :cond_2

    .line 435
    iget-object v4, v3, Landroid/support/constraint/solver/SolverVariable;->mType:Landroid/support/constraint/solver/SolverVariable$Type;

    sget-object v5, Landroid/support/constraint/solver/SolverVariable$Type;->SLACK:Landroid/support/constraint/solver/SolverVariable$Type;

    if-eq v4, v5, :cond_1

    iget-object v4, v3, Landroid/support/constraint/solver/SolverVariable;->mType:Landroid/support/constraint/solver/SolverVariable$Type;

    sget-object v5, Landroid/support/constraint/solver/SolverVariable$Type;->ERROR:Landroid/support/constraint/solver/SolverVariable$Type;

    if-ne v4, v5, :cond_2

    .line 437
    :cond_1
    iget-object v4, p0, Landroid/support/constraint/solver/ArrayVariables;->mArrayValues:[F

    aget v4, v4, v2

    .line 438
    .local v4, "currentValue":F
    cmpg-float v5, v4, v1

    if-gez v5, :cond_2

    .line 439
    move v1, v4

    .line 440
    move-object v0, v3

    .line 428
    .end local v3    # "v":Landroid/support/constraint/solver/SolverVariable;
    .end local v4    # "currentValue":F
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 446
    .end local v2    # "i":I
    :cond_3
    return-object v0
.end method

.method final getVariable(I)Landroid/support/constraint/solver/SolverVariable;
    .locals 2
    .param p1, "index"    # I

    .line 456
    iget v0, p0, Landroid/support/constraint/solver/ArrayVariables;->currentSize:I

    if-ge p1, v0, :cond_0

    .line 457
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayVariables;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v0, v0, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    iget-object v1, p0, Landroid/support/constraint/solver/ArrayVariables;->mArrayIndices:[I

    aget v1, v1, p1

    aget-object v0, v0, v1

    return-object v0

    .line 459
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method final getVariableValue(I)F
    .locals 1
    .param p1, "index"    # I

    .line 469
    iget v0, p0, Landroid/support/constraint/solver/ArrayVariables;->currentSize:I

    if-ge p1, v0, :cond_0

    .line 470
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayVariables;->mArrayValues:[F

    aget v0, v0, p1

    return v0

    .line 472
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method hasAtLeastOnePositiveVariable()Z
    .locals 4

    .line 196
    const/4 v0, 0x0

    move v1, v0

    .line 196
    .local v1, "i":I
    :goto_0
    iget v2, p0, Landroid/support/constraint/solver/ArrayVariables;->currentSize:I

    if-ge v1, v2, :cond_1

    .line 197
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayVariables;->mArrayValid:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/constraint/solver/ArrayVariables;->mArrayValues:[F

    aget v2, v2, v1

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 198
    const/4 v0, 0x1

    return v0

    .line 196
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 201
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method invert()V
    .locals 4

    .line 208
    const/4 v0, 0x0

    .line 208
    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/support/constraint/solver/ArrayVariables;->currentSize:I

    if-ge v0, v1, :cond_1

    .line 209
    iget-object v1, p0, Landroid/support/constraint/solver/ArrayVariables;->mArrayValid:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    .line 210
    iget-object v1, p0, Landroid/support/constraint/solver/ArrayVariables;->mArrayValues:[F

    aget v2, v1, v0

    const/high16 v3, -0x40800000    # -1.0f

    mul-float/2addr v2, v3

    aput v2, v1, v0

    .line 208
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 213
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public final put(Landroid/support/constraint/solver/SolverVariable;F)V
    .locals 5
    .param p1, "variable"    # Landroid/support/constraint/solver/SolverVariable;
    .param p2, "value"    # F

    .line 72
    const/4 v0, 0x0

    move v1, v0

    .line 72
    .local v1, "i":I
    :goto_0
    iget v2, p0, Landroid/support/constraint/solver/ArrayVariables;->currentSize:I

    const/4 v3, 0x0

    if-ge v1, v2, :cond_2

    .line 73
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayVariables;->mArrayIndices:[I

    aget v2, v2, v1

    iget v4, p1, Landroid/support/constraint/solver/SolverVariable;->id:I

    if-ne v2, v4, :cond_1

    .line 74
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayVariables;->mArrayValues:[F

    aput p2, v2, v1

    .line 75
    cmpl-float v2, p2, v3

    if-nez v2, :cond_0

    .line 76
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayVariables;->mArrayValid:[Z

    aput-boolean v0, v2, v1

    .line 77
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayVariables;->mRow:Landroid/support/constraint/solver/ArrayRow;

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/SolverVariable;->removeFromRow(Landroid/support/constraint/solver/ArrayRow;)V

    .line 79
    :cond_0
    return-void

    .line 72
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 82
    .end local v1    # "i":I
    :cond_2
    iget v1, p0, Landroid/support/constraint/solver/ArrayVariables;->currentSize:I

    iget-object v2, p0, Landroid/support/constraint/solver/ArrayVariables;->mArrayIndices:[I

    array-length v2, v2

    if-lt v1, v2, :cond_3

    .line 83
    iget v1, p0, Landroid/support/constraint/solver/ArrayVariables;->ROW_SIZE:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/support/constraint/solver/ArrayVariables;->ROW_SIZE:I

    .line 84
    iget-object v1, p0, Landroid/support/constraint/solver/ArrayVariables;->mArrayValues:[F

    iget v2, p0, Landroid/support/constraint/solver/ArrayVariables;->ROW_SIZE:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    iput-object v1, p0, Landroid/support/constraint/solver/ArrayVariables;->mArrayValues:[F

    .line 85
    iget-object v1, p0, Landroid/support/constraint/solver/ArrayVariables;->mArrayIndices:[I

    iget v2, p0, Landroid/support/constraint/solver/ArrayVariables;->ROW_SIZE:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroid/support/constraint/solver/ArrayVariables;->mArrayIndices:[I

    .line 86
    iget-object v1, p0, Landroid/support/constraint/solver/ArrayVariables;->mArrayValid:[Z

    iget v2, p0, Landroid/support/constraint/solver/ArrayVariables;->ROW_SIZE:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v1

    iput-object v1, p0, Landroid/support/constraint/solver/ArrayVariables;->mArrayValid:[Z

    .line 88
    :cond_3
    iget-object v1, p0, Landroid/support/constraint/solver/ArrayVariables;->mArrayIndices:[I

    iget v2, p0, Landroid/support/constraint/solver/ArrayVariables;->currentSize:I

    iget v4, p1, Landroid/support/constraint/solver/SolverVariable;->id:I

    aput v4, v1, v2

    .line 89
    iget-object v1, p0, Landroid/support/constraint/solver/ArrayVariables;->mArrayValues:[F

    iget v2, p0, Landroid/support/constraint/solver/ArrayVariables;->currentSize:I

    aput p2, v1, v2

    .line 90
    iget-object v1, p0, Landroid/support/constraint/solver/ArrayVariables;->mArrayValid:[Z

    iget v2, p0, Landroid/support/constraint/solver/ArrayVariables;->currentSize:I

    const/4 v4, 0x1

    aput-boolean v4, v1, v2

    .line 91
    cmpl-float v1, p2, v3

    if-nez v1, :cond_4

    .line 92
    iget-object v1, p0, Landroid/support/constraint/solver/ArrayVariables;->mRow:Landroid/support/constraint/solver/ArrayRow;

    invoke-virtual {p1, v1}, Landroid/support/constraint/solver/SolverVariable;->removeFromRow(Landroid/support/constraint/solver/ArrayRow;)V

    .line 93
    iget-object v1, p0, Landroid/support/constraint/solver/ArrayVariables;->mArrayValid:[Z

    iget v2, p0, Landroid/support/constraint/solver/ArrayVariables;->currentSize:I

    aput-boolean v0, v1, v2

    .line 95
    :cond_4
    iget v0, p1, Landroid/support/constraint/solver/SolverVariable;->usageInRowCount:I

    add-int/2addr v0, v4

    iput v0, p1, Landroid/support/constraint/solver/SolverVariable;->usageInRowCount:I

    .line 96
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayVariables;->mRow:Landroid/support/constraint/solver/ArrayRow;

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/SolverVariable;->addToRow(Landroid/support/constraint/solver/ArrayRow;)V

    .line 97
    iget v0, p0, Landroid/support/constraint/solver/ArrayVariables;->currentSize:I

    add-int/2addr v0, v4

    iput v0, p0, Landroid/support/constraint/solver/ArrayVariables;->currentSize:I

    .line 98
    return-void
.end method

.method public final remove(Landroid/support/constraint/solver/SolverVariable;Z)F
    .locals 5
    .param p1, "variable"    # Landroid/support/constraint/solver/SolverVariable;
    .param p2, "removeFromDefinition"    # Z

    .line 146
    const/4 v0, 0x0

    move v1, v0

    .line 146
    .local v1, "i":I
    :goto_0
    iget v2, p0, Landroid/support/constraint/solver/ArrayVariables;->currentSize:I

    const/4 v3, 0x0

    if-ge v1, v2, :cond_2

    .line 147
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayVariables;->mArrayIndices:[I

    aget v2, v2, v1

    iget v4, p1, Landroid/support/constraint/solver/SolverVariable;->id:I

    if-ne v2, v4, :cond_1

    .line 148
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayVariables;->mArrayValues:[F

    aget v2, v2, v1

    .line 149
    .local v2, "value":F
    iget-object v4, p0, Landroid/support/constraint/solver/ArrayVariables;->mArrayValues:[F

    aput v3, v4, v1

    .line 150
    iget-object v3, p0, Landroid/support/constraint/solver/ArrayVariables;->mArrayValid:[Z

    aput-boolean v0, v3, v1

    .line 151
    if-eqz p2, :cond_0

    .line 152
    iget v0, p1, Landroid/support/constraint/solver/SolverVariable;->usageInRowCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Landroid/support/constraint/solver/SolverVariable;->usageInRowCount:I

    .line 153
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayVariables;->mRow:Landroid/support/constraint/solver/ArrayRow;

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/SolverVariable;->removeFromRow(Landroid/support/constraint/solver/ArrayRow;)V

    .line 155
    :cond_0
    return v2

    .line 146
    .end local v2    # "value":F
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 158
    .end local v1    # "i":I
    :cond_2
    return v3
.end method

.method sizeInBytes()I
    .locals 3

    .line 493
    const/4 v0, 0x0

    .line 494
    .local v0, "size":I
    iget-object v1, p0, Landroid/support/constraint/solver/ArrayVariables;->mArrayIndices:[I

    const/4 v2, 0x3

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    mul-int/2addr v2, v1

    add-int/2addr v0, v2

    .line 495
    add-int/lit8 v0, v0, 0x24

    .line 496
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 522
    const-string v0, ""

    .line 523
    .local v0, "result":Ljava/lang/String;
    const/4 v1, 0x0

    .line 523
    .local v1, "i":I
    :goto_0
    iget v2, p0, Landroid/support/constraint/solver/ArrayVariables;->currentSize:I

    if-ge v1, v2, :cond_2

    .line 524
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayVariables;->mArrayValid:[Z

    aget-boolean v2, v2, v1

    if-nez v2, :cond_0

    .line 525
    goto :goto_1

    .line 527
    :cond_0
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayVariables;->mArrayValues:[F

    aget v2, v2, v1

    .line 528
    .local v2, "value":F
    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-nez v3, :cond_1

    .line 529
    goto :goto_1

    .line 531
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 532
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/support/constraint/solver/ArrayVariables;->mArrayValues:[F

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 533
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/support/constraint/solver/ArrayVariables;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v4, v4, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    iget-object v5, p0, Landroid/support/constraint/solver/ArrayVariables;->mArrayIndices:[I

    aget v5, v5, v1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 523
    .end local v2    # "value":F
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 535
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method final updateFromRow(Landroid/support/constraint/solver/ArrayRow;Landroid/support/constraint/solver/ArrayRow;Z)V
    .locals 8
    .param p1, "self"    # Landroid/support/constraint/solver/ArrayRow;
    .param p2, "definition"    # Landroid/support/constraint/solver/ArrayRow;
    .param p3, "removeFromDefinition"    # Z

    .line 336
    const/4 v0, 0x0

    move v1, v0

    .line 336
    .local v1, "i":I
    :goto_0
    iget v2, p0, Landroid/support/constraint/solver/ArrayVariables;->currentSize:I

    if-ge v1, v2, :cond_5

    .line 337
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayVariables;->mArrayValid:[Z

    aget-boolean v2, v2, v1

    if-nez v2, :cond_0

    .line 338
    goto :goto_2

    .line 340
    :cond_0
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayVariables;->mArrayIndices:[I

    aget v2, v2, v1

    iget-object v3, p2, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    iget v3, v3, Landroid/support/constraint/solver/SolverVariable;->id:I

    if-ne v2, v3, :cond_4

    .line 341
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayVariables;->mArrayValues:[F

    aget v2, v2, v1

    .line 342
    .local v2, "value":F
    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-nez v4, :cond_1

    .line 343
    goto :goto_2

    .line 345
    :cond_1
    iget-object v4, p0, Landroid/support/constraint/solver/ArrayVariables;->mArrayValues:[F

    aput v3, v4, v1

    .line 346
    iget-object v3, p0, Landroid/support/constraint/solver/ArrayVariables;->mArrayValid:[Z

    aput-boolean v0, v3, v1

    .line 347
    if-eqz p3, :cond_2

    .line 348
    iget-object v3, p2, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v4, p0, Landroid/support/constraint/solver/ArrayVariables;->mRow:Landroid/support/constraint/solver/ArrayRow;

    invoke-virtual {v3, v4}, Landroid/support/constraint/solver/SolverVariable;->removeFromRow(Landroid/support/constraint/solver/ArrayRow;)V

    .line 350
    :cond_2
    iget-object v3, p2, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    check-cast v3, Landroid/support/constraint/solver/ArrayVariables;

    .line 351
    .local v3, "definitionVariables":Landroid/support/constraint/solver/ArrayVariables;
    move v4, v0

    .line 351
    .local v4, "j":I
    :goto_1
    iget v5, v3, Landroid/support/constraint/solver/ArrayVariables;->currentSize:I

    if-ge v4, v5, :cond_3

    .line 352
    iget-object v5, p0, Landroid/support/constraint/solver/ArrayVariables;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v5, v5, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    iget-object v6, v3, Landroid/support/constraint/solver/ArrayVariables;->mArrayIndices:[I

    aget v6, v6, v4

    aget-object v5, v5, v6

    .line 354
    .local v5, "definitionVariable":Landroid/support/constraint/solver/SolverVariable;
    iget-object v6, v3, Landroid/support/constraint/solver/ArrayVariables;->mArrayValues:[F

    aget v6, v6, v4

    .line 355
    .local v6, "definitionValue":F
    mul-float v7, v6, v2

    invoke-virtual {p0, v5, v7, p3}, Landroid/support/constraint/solver/ArrayVariables;->add(Landroid/support/constraint/solver/SolverVariable;FZ)V

    .line 351
    .end local v5    # "definitionVariable":Landroid/support/constraint/solver/SolverVariable;
    .end local v6    # "definitionValue":F
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 357
    .end local v4    # "j":I
    :cond_3
    iget v4, p1, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    iget v5, p2, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    iput v4, p1, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    .line 358
    if-eqz p3, :cond_4

    .line 359
    iget-object v4, p2, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v4, p1}, Landroid/support/constraint/solver/SolverVariable;->removeFromRow(Landroid/support/constraint/solver/ArrayRow;)V

    .line 336
    .end local v2    # "value":F
    .end local v3    # "definitionVariables":Landroid/support/constraint/solver/ArrayVariables;
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 363
    .end local v1    # "i":I
    :cond_5
    return-void
.end method

.method updateFromSystem(Landroid/support/constraint/solver/ArrayRow;[Landroid/support/constraint/solver/ArrayRow;)V
    .locals 11
    .param p1, "self"    # Landroid/support/constraint/solver/ArrayRow;
    .param p2, "rows"    # [Landroid/support/constraint/solver/ArrayRow;

    .line 376
    const/4 v0, 0x0

    move v1, v0

    .line 376
    .local v1, "i":I
    :goto_0
    iget v2, p0, Landroid/support/constraint/solver/ArrayVariables;->currentSize:I

    if-ge v1, v2, :cond_3

    .line 377
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayVariables;->mArrayValid:[Z

    aget-boolean v2, v2, v1

    if-nez v2, :cond_0

    .line 378
    goto :goto_2

    .line 380
    :cond_0
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayVariables;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v2, v2, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    iget-object v3, p0, Landroid/support/constraint/solver/ArrayVariables;->mArrayIndices:[I

    aget v3, v3, v1

    aget-object v2, v2, v3

    .line 381
    .local v2, "variable":Landroid/support/constraint/solver/SolverVariable;
    iget v3, v2, Landroid/support/constraint/solver/SolverVariable;->definitionId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 382
    iget-object v3, p0, Landroid/support/constraint/solver/ArrayVariables;->mArrayValues:[F

    aget v3, v3, v1

    .line 383
    .local v3, "value":F
    iget-object v4, p0, Landroid/support/constraint/solver/ArrayVariables;->mArrayValues:[F

    const/4 v5, 0x0

    aput v5, v4, v1

    .line 384
    iget-object v4, p0, Landroid/support/constraint/solver/ArrayVariables;->mArrayValid:[Z

    aput-boolean v0, v4, v1

    .line 385
    iget-object v4, p0, Landroid/support/constraint/solver/ArrayVariables;->mRow:Landroid/support/constraint/solver/ArrayRow;

    invoke-virtual {v2, v4}, Landroid/support/constraint/solver/SolverVariable;->removeFromRow(Landroid/support/constraint/solver/ArrayRow;)V

    .line 387
    iget v4, v2, Landroid/support/constraint/solver/SolverVariable;->definitionId:I

    aget-object v4, p2, v4

    .line 388
    .local v4, "definition":Landroid/support/constraint/solver/ArrayRow;
    iget-boolean v5, v4, Landroid/support/constraint/solver/ArrayRow;->isSimpleDefinition:Z

    if-nez v5, :cond_1

    .line 389
    iget-object v5, v4, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    check-cast v5, Landroid/support/constraint/solver/ArrayVariables;

    .line 390
    .local v5, "definitionVariables":Landroid/support/constraint/solver/ArrayVariables;
    move v6, v0

    .line 390
    .local v6, "j":I
    :goto_1
    iget v7, v5, Landroid/support/constraint/solver/ArrayVariables;->currentSize:I

    if-ge v6, v7, :cond_1

    .line 391
    iget-object v7, p0, Landroid/support/constraint/solver/ArrayVariables;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v7, v7, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    iget-object v8, v5, Landroid/support/constraint/solver/ArrayVariables;->mArrayIndices:[I

    aget v8, v8, v6

    aget-object v7, v7, v8

    .line 393
    .local v7, "definitionVariable":Landroid/support/constraint/solver/SolverVariable;
    iget-object v8, v5, Landroid/support/constraint/solver/ArrayVariables;->mArrayValues:[F

    aget v8, v8, v6

    .line 394
    .local v8, "definitionValue":F
    mul-float v9, v8, v3

    const/4 v10, 0x1

    invoke-virtual {p0, v7, v9, v10}, Landroid/support/constraint/solver/ArrayVariables;->add(Landroid/support/constraint/solver/SolverVariable;FZ)V

    .line 390
    .end local v7    # "definitionVariable":Landroid/support/constraint/solver/SolverVariable;
    .end local v8    # "definitionValue":F
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 397
    .end local v5    # "definitionVariables":Landroid/support/constraint/solver/ArrayVariables;
    .end local v6    # "j":I
    :cond_1
    iget v5, p1, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    iget v6, v4, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    mul-float/2addr v6, v3

    add-float/2addr v5, v6

    iput v5, p1, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    .line 398
    iget-object v5, v4, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v5, p1}, Landroid/support/constraint/solver/SolverVariable;->removeFromRow(Landroid/support/constraint/solver/ArrayRow;)V

    .line 376
    .end local v2    # "variable":Landroid/support/constraint/solver/SolverVariable;
    .end local v3    # "value":F
    .end local v4    # "definition":Landroid/support/constraint/solver/ArrayRow;
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 401
    .end local v1    # "i":I
    :cond_3
    return-void
.end method
