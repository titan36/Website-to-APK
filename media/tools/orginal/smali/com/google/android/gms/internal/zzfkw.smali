.class final Lcom/google/android/gms/internal/zzfkw;
.super Lcom/google/android/gms/internal/zzfkt;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzfkt;-><init>()V

    return-void
.end method

.method private static zza([BIJI)I
    .locals 4

    packed-switch p4, :pswitch_data_0

    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :pswitch_0
    invoke-static {p0, p2, p3}, Lcom/google/android/gms/internal/zzfkq;->zzb([BJ)B

    move-result p4

    const-wide/16 v0, 0x1

    add-long v2, p2, v0

    invoke-static {p0, v2, v3}, Lcom/google/android/gms/internal/zzfkq;->zzb([BJ)B

    move-result p0

    invoke-static {p1, p4, p0}, Lcom/google/android/gms/internal/zzfks;->zzj(III)I

    move-result p0

    return p0

    :pswitch_1
    invoke-static {p0, p2, p3}, Lcom/google/android/gms/internal/zzfkq;->zzb([BJ)B

    move-result p0

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/zzfks;->zzan(II)I

    move-result p0

    return p0

    :pswitch_2
    invoke-static {p1}, Lcom/google/android/gms/internal/zzfks;->zzmv(I)I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static zzb([BJI)I
    .locals 9

    const/4 v0, 0x0

    const-wide/16 v1, 0x1

    const/16 v3, 0x10

    if-ge p3, v3, :cond_0

    move v3, v0

    goto :goto_1

    :cond_0
    move-wide v4, p1

    move v3, v0

    :goto_0
    if-ge v3, p3, :cond_2

    add-long v6, v4, v1

    invoke-static {p0, v4, v5}, Lcom/google/android/gms/internal/zzfkq;->zzb([BJ)B

    move-result v4

    if-gez v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    move-wide v4, v6

    goto :goto_0

    :cond_2
    move v3, p3

    :goto_1
    sub-int/2addr p3, v3

    int-to-long v3, v3

    add-long v5, p1, v3

    :cond_3
    :goto_2
    move p1, v0

    :goto_3
    if-lez p3, :cond_5

    add-long p1, v5, v1

    invoke-static {p0, v5, v6}, Lcom/google/android/gms/internal/zzfkq;->zzb([BJ)B

    move-result v3

    if-ltz v3, :cond_4

    add-int/lit8 p3, p3, -0x1

    move-wide v5, p1

    move p1, v3

    goto :goto_3

    :cond_4
    move-wide v5, p1

    move p1, v3

    :cond_5
    if-nez p3, :cond_6

    return v0

    :cond_6
    add-int/lit8 p3, p3, -0x1

    const/16 p2, -0x20

    const/16 v3, -0x41

    const/4 v4, -0x1

    if-ge p1, p2, :cond_a

    if-nez p3, :cond_7

    return p1

    :cond_7
    add-int/lit8 p3, p3, -0x1

    const/16 p2, -0x3e

    if-lt p1, p2, :cond_9

    add-long p1, v5, v1

    invoke-static {p0, v5, v6}, Lcom/google/android/gms/internal/zzfkq;->zzb([BJ)B

    move-result v5

    if-le v5, v3, :cond_8

    return v4

    :cond_8
    move-wide v5, p1

    goto :goto_2

    :cond_9
    return v4

    :cond_a
    const/16 v7, -0x10

    if-ge p1, v7, :cond_f

    const/4 v7, 0x2

    if-ge p3, v7, :cond_b

    invoke-static {p0, p1, v5, v6, p3}, Lcom/google/android/gms/internal/zzfkw;->zza([BIJI)I

    move-result p0

    return p0

    :cond_b
    add-int/lit8 p3, p3, -0x2

    add-long v7, v5, v1

    invoke-static {p0, v5, v6}, Lcom/google/android/gms/internal/zzfkq;->zzb([BJ)B

    move-result v5

    if-gt v5, v3, :cond_e

    const/16 v6, -0x60

    if-ne p1, p2, :cond_c

    if-lt v5, v6, :cond_e

    :cond_c
    const/16 p2, -0x13

    if-ne p1, p2, :cond_d

    if-ge v5, v6, :cond_e

    :cond_d
    add-long v5, v7, v1

    invoke-static {p0, v7, v8}, Lcom/google/android/gms/internal/zzfkq;->zzb([BJ)B

    move-result p1

    if-le p1, v3, :cond_3

    :cond_e
    return v4

    :cond_f
    const/4 p2, 0x3

    if-ge p3, p2, :cond_10

    invoke-static {p0, p1, v5, v6, p3}, Lcom/google/android/gms/internal/zzfkw;->zza([BIJI)I

    move-result p0

    return p0

    :cond_10
    add-int/lit8 p3, p3, -0x3

    add-long v7, v5, v1

    invoke-static {p0, v5, v6}, Lcom/google/android/gms/internal/zzfkq;->zzb([BJ)B

    move-result p2

    if-gt p2, v3, :cond_11

    shl-int/lit8 p1, p1, 0x1c

    add-int/lit8 p2, p2, 0x70

    add-int/2addr p1, p2

    shr-int/lit8 p1, p1, 0x1e

    if-nez p1, :cond_11

    add-long p1, v7, v1

    invoke-static {p0, v7, v8}, Lcom/google/android/gms/internal/zzfkq;->zzb([BJ)B

    move-result v5

    if-gt v5, v3, :cond_11

    add-long v5, p1, v1

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzfkq;->zzb([BJ)B

    move-result p1

    if-le p1, v3, :cond_3

    :cond_11
    return v4
.end method


# virtual methods
.method final zzb(I[BII)I
    .locals 4

    or-int p1, p3, p4

    array-length v0, p2

    sub-int/2addr v0, p4

    or-int/2addr p1, v0

    if-gez p1, :cond_0

    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v0, "Array length=%d, index=%d, limit=%d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    array-length p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v2

    const/4 p2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v1, p2

    const/4 p2, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v1, p2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    int-to-long v0, p3

    int-to-long p3, p4

    sub-long v2, p3, v0

    long-to-int p1, v2

    invoke-static {p2, v0, v1, p1}, Lcom/google/android/gms/internal/zzfkw;->zzb([BJI)I

    move-result p1

    return p1
.end method

.method final zzb(Ljava/lang/CharSequence;[BII)I
    .locals 19

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    int-to-long v4, v2

    int-to-long v6, v3

    add-long v8, v4, v6

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-gt v6, v3, :cond_d

    array-length v7, v1

    sub-int/2addr v7, v3

    if-ge v7, v2, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x80

    const-wide/16 v10, 0x1

    if-ge v2, v6, :cond_1

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-ge v7, v3, :cond_1

    add-long v12, v4, v10

    int-to-byte v3, v7

    invoke-static {v1, v4, v5, v3}, Lcom/google/android/gms/internal/zzfkq;->zza([BJB)V

    add-int/lit8 v2, v2, 0x1

    move-wide v4, v12

    goto :goto_0

    :cond_1
    if-ne v2, v6, :cond_2

    long-to-int v0, v4

    return v0

    :cond_2
    :goto_1
    if-ge v2, v6, :cond_c

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-ge v7, v3, :cond_3

    cmp-long v12, v4, v8

    if-gez v12, :cond_3

    add-long v12, v4, v10

    int-to-byte v7, v7

    invoke-static {v1, v4, v5, v7}, Lcom/google/android/gms/internal/zzfkq;->zza([BJB)V

    move-wide v4, v12

    goto/16 :goto_2

    :cond_3
    const/16 v12, 0x800

    const/16 v13, 0x3f

    if-ge v7, v12, :cond_4

    const-wide/16 v14, 0x2

    sub-long v16, v8, v14

    cmp-long v12, v4, v16

    if-gtz v12, :cond_4

    add-long v14, v4, v10

    const/16 v12, 0x3c0

    ushr-int/lit8 v16, v7, 0x6

    or-int v12, v12, v16

    int-to-byte v12, v12

    invoke-static {v1, v4, v5, v12}, Lcom/google/android/gms/internal/zzfkq;->zza([BJB)V

    add-long v4, v14, v10

    and-int/2addr v7, v13

    or-int/2addr v7, v3

    int-to-byte v7, v7

    invoke-static {v1, v14, v15, v7}, Lcom/google/android/gms/internal/zzfkq;->zza([BJB)V

    goto/16 :goto_2

    :cond_4
    const v12, 0xdfff

    const v14, 0xd800

    if-lt v7, v14, :cond_5

    if-ge v12, v7, :cond_6

    :cond_5
    const-wide/16 v15, 0x3

    sub-long v17, v8, v15

    cmp-long v15, v4, v17

    if-gtz v15, :cond_6

    add-long v14, v4, v10

    const/16 v12, 0x1e0

    ushr-int/lit8 v16, v7, 0xc

    or-int v12, v12, v16

    int-to-byte v12, v12

    invoke-static {v1, v4, v5, v12}, Lcom/google/android/gms/internal/zzfkq;->zza([BJB)V

    add-long v4, v14, v10

    ushr-int/lit8 v12, v7, 0x6

    and-int/2addr v12, v13

    or-int/2addr v12, v3

    int-to-byte v12, v12

    invoke-static {v1, v14, v15, v12}, Lcom/google/android/gms/internal/zzfkq;->zza([BJB)V

    add-long v14, v4, v10

    and-int/2addr v7, v13

    or-int/2addr v7, v3

    int-to-byte v7, v7

    invoke-static {v1, v4, v5, v7}, Lcom/google/android/gms/internal/zzfkq;->zza([BJB)V

    move-wide v4, v14

    goto :goto_2

    :cond_6
    const-wide/16 v15, 0x4

    sub-long v17, v8, v15

    cmp-long v15, v4, v17

    if-gtz v15, :cond_9

    add-int/lit8 v12, v2, 0x1

    if-eq v12, v6, :cond_8

    invoke-interface {v0, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v7, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v14

    if-nez v14, :cond_7

    goto :goto_3

    :cond_7
    invoke-static {v7, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    add-long v14, v4, v10

    const/16 v7, 0xf0

    ushr-int/lit8 v16, v2, 0x12

    or-int v7, v7, v16

    int-to-byte v7, v7

    invoke-static {v1, v4, v5, v7}, Lcom/google/android/gms/internal/zzfkq;->zza([BJB)V

    add-long v4, v14, v10

    ushr-int/lit8 v7, v2, 0xc

    and-int/2addr v7, v13

    or-int/2addr v7, v3

    int-to-byte v7, v7

    invoke-static {v1, v14, v15, v7}, Lcom/google/android/gms/internal/zzfkq;->zza([BJB)V

    add-long v14, v4, v10

    ushr-int/lit8 v7, v2, 0x6

    and-int/2addr v7, v13

    or-int/2addr v7, v3

    int-to-byte v7, v7

    invoke-static {v1, v4, v5, v7}, Lcom/google/android/gms/internal/zzfkq;->zza([BJB)V

    add-long v4, v14, v10

    and-int/2addr v2, v13

    or-int/2addr v2, v3

    int-to-byte v2, v2

    invoke-static {v1, v14, v15, v2}, Lcom/google/android/gms/internal/zzfkq;->zza([BJB)V

    move v2, v12

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_8
    move v12, v2

    :goto_3
    new-instance v0, Lcom/google/android/gms/internal/zzfkv;

    add-int/lit8 v12, v12, -0x1

    invoke-direct {v0, v12, v6}, Lcom/google/android/gms/internal/zzfkv;-><init>(II)V

    throw v0

    :cond_9
    if-gt v14, v7, :cond_b

    if-gt v7, v12, :cond_b

    add-int/lit8 v1, v2, 0x1

    if-eq v1, v6, :cond_a

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v0

    if-nez v0, :cond_b

    :cond_a
    new-instance v0, Lcom/google/android/gms/internal/zzfkv;

    invoke-direct {v0, v2, v6}, Lcom/google/android/gms/internal/zzfkv;-><init>(II)V

    throw v0

    :cond_b
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/16 v1, 0x2e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Failed writing "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, " at index "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    long-to-int v0, v4

    return v0

    :cond_d
    :goto_4
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    add-int/2addr v2, v3

    const/16 v3, 0x25

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Failed writing "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, " at index "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
