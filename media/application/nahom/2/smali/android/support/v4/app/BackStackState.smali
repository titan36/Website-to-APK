.class final Landroid/support/v4/app/BackStackState;
.super Ljava/lang/Object;
.source "BackStackRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/support/v4/app/BackStackState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mBreadCrumbShortTitleRes:I

.field final mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

.field final mBreadCrumbTitleRes:I

.field final mBreadCrumbTitleText:Ljava/lang/CharSequence;

.field final mIndex:I

.field final mName:Ljava/lang/String;

.field final mOps:[I

.field final mReorderingAllowed:Z

.field final mSharedElementSourceNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mSharedElementTargetNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mTransition:I

.field final mTransitionStyle:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 156
    new-instance v0, Landroid/support/v4/app/BackStackState$1;

    invoke-direct {v0}, Landroid/support/v4/app/BackStackState$1;-><init>()V

    sput-object v0, Landroid/support/v4/app/BackStackState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->mTransition:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->mTransitionStyle:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->mName:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->mIndex:I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbTitleRes:I

    .line 84
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbShortTitleRes:I

    .line 86
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/support/v4/app/BackStackState;->mReorderingAllowed:Z

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/BackStackRecord;)V
    .locals 7
    .param p1, "bse"    # Landroid/support/v4/app/BackStackRecord;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iget-object v0, p1, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 48
    .local v0, "numOps":I
    mul-int/lit8 v1, v0, 0x6

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    .line 50
    iget-boolean v1, p1, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    if-nez v1, :cond_0

    .line 51
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Not on back stack"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 54
    :cond_0
    const/4 v1, 0x0

    .line 55
    .local v1, "pos":I
    const/4 v2, 0x0

    .line 55
    .local v2, "opNum":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 56
    iget-object v3, p1, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/BackStackRecord$Op;

    .line 57
    .local v3, "op":Landroid/support/v4/app/BackStackRecord$Op;
    iget-object v4, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v5, v1, 0x1

    .line 57
    .local v5, "pos":I
    iget v6, v3, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    aput v6, v4, v1

    .line 58
    .end local v1    # "pos":I
    iget-object v1, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v4, v5, 0x1

    .line 58
    .local v4, "pos":I
    iget-object v6, v3, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    if-eqz v6, :cond_1

    iget-object v6, v3, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    iget v6, v6, Landroid/support/v4/app/Fragment;->mIndex:I

    goto :goto_1

    :cond_1
    const/4 v6, -0x1

    :goto_1
    aput v6, v1, v5

    .line 59
    .end local v5    # "pos":I
    iget-object v1, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v5, v4, 0x1

    .line 59
    .restart local v5    # "pos":I
    iget v6, v3, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I

    aput v6, v1, v4

    .line 60
    .end local v4    # "pos":I
    iget-object v1, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v4, v5, 0x1

    .line 60
    .restart local v4    # "pos":I
    iget v6, v3, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I

    aput v6, v1, v5

    .line 61
    .end local v5    # "pos":I
    iget-object v1, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v5, v4, 0x1

    .line 61
    .restart local v5    # "pos":I
    iget v6, v3, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    aput v6, v1, v4

    .line 62
    .end local v4    # "pos":I
    iget-object v1, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v4, v5, 0x1

    .line 62
    .restart local v4    # "pos":I
    iget v6, v3, Landroid/support/v4/app/BackStackRecord$Op;->popExitAnim:I

    aput v6, v1, v5

    .line 55
    .end local v3    # "op":Landroid/support/v4/app/BackStackRecord$Op;
    .end local v5    # "pos":I
    add-int/lit8 v2, v2, 0x1

    move v1, v4

    goto :goto_0

    .line 64
    .end local v2    # "opNum":I
    .end local v4    # "pos":I
    .restart local v1    # "pos":I
    :cond_2
    iget v2, p1, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    iput v2, p0, Landroid/support/v4/app/BackStackState;->mTransition:I

    .line 65
    iget v2, p1, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    iput v2, p0, Landroid/support/v4/app/BackStackState;->mTransitionStyle:I

    .line 66
    iget-object v2, p1, Landroid/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;

    iput-object v2, p0, Landroid/support/v4/app/BackStackState;->mName:Ljava/lang/String;

    .line 67
    iget v2, p1, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    iput v2, p0, Landroid/support/v4/app/BackStackState;->mIndex:I

    .line 68
    iget v2, p1, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    iput v2, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbTitleRes:I

    .line 69
    iget-object v2, p1, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    iput-object v2, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 70
    iget v2, p1, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    iput v2, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbShortTitleRes:I

    .line 71
    iget-object v2, p1, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    iput-object v2, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    .line 72
    iget-object v2, p1, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    iput-object v2, p0, Landroid/support/v4/app/BackStackState;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 73
    iget-object v2, p1, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    iput-object v2, p0, Landroid/support/v4/app/BackStackState;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 74
    iget-boolean v2, p1, Landroid/support/v4/app/BackStackRecord;->mReorderingAllowed:Z

    iput-boolean v2, p0, Landroid/support/v4/app/BackStackState;->mReorderingAllowed:Z

    .line 75
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public instantiate(Landroid/support/v4/app/FragmentManagerImpl;)Landroid/support/v4/app/BackStackRecord;
    .locals 7
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManagerImpl;

    .line 93
    new-instance v0, Landroid/support/v4/app/BackStackRecord;

    invoke-direct {v0, p1}, Landroid/support/v4/app/BackStackRecord;-><init>(Landroid/support/v4/app/FragmentManagerImpl;)V

    .line 94
    .local v0, "bse":Landroid/support/v4/app/BackStackRecord;
    const/4 v1, 0x0

    .line 95
    .local v1, "pos":I
    const/4 v2, 0x0

    .line 96
    .local v2, "num":I
    :goto_0
    iget-object v3, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 97
    new-instance v3, Landroid/support/v4/app/BackStackRecord$Op;

    invoke-direct {v3}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V

    .line 98
    .local v3, "op":Landroid/support/v4/app/BackStackRecord$Op;
    iget-object v4, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v5, v1, 0x1

    .line 98
    .local v5, "pos":I
    aget v1, v4, v1

    .line 98
    .end local v1    # "pos":I
    iput v1, v3, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    .line 99
    sget-boolean v1, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Instantiate "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " op #"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " base fragment #"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    aget v6, v6, v5

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v4, v5, 0x1

    .line 101
    .local v4, "pos":I
    aget v1, v1, v5

    .line 102
    .end local v5    # "pos":I
    .local v1, "findex":I
    if-ltz v1, :cond_1

    .line 103
    iget-object v5, p1, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/app/Fragment;

    .line 104
    .local v5, "f":Landroid/support/v4/app/Fragment;
    iput-object v5, v3, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 105
    .end local v5    # "f":Landroid/support/v4/app/Fragment;
    goto :goto_1

    .line 106
    :cond_1
    const/4 v5, 0x0

    iput-object v5, v3, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 108
    :goto_1
    iget-object v5, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v6, v4, 0x1

    .line 108
    .local v6, "pos":I
    aget v4, v5, v4

    .line 108
    .end local v4    # "pos":I
    iput v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I

    .line 109
    iget-object v4, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v5, v6, 0x1

    .line 109
    .local v5, "pos":I
    aget v4, v4, v6

    .line 109
    .end local v6    # "pos":I
    iput v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I

    .line 110
    iget-object v4, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v6, v5, 0x1

    .line 110
    .restart local v6    # "pos":I
    aget v4, v4, v5

    .line 110
    .end local v5    # "pos":I
    iput v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    .line 111
    iget-object v4, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v5, v6, 0x1

    .line 111
    .restart local v5    # "pos":I
    aget v4, v4, v6

    .line 111
    .end local v6    # "pos":I
    iput v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->popExitAnim:I

    .line 112
    iget v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I

    iput v4, v0, Landroid/support/v4/app/BackStackRecord;->mEnterAnim:I

    .line 113
    iget v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I

    iput v4, v0, Landroid/support/v4/app/BackStackRecord;->mExitAnim:I

    .line 114
    iget v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    iput v4, v0, Landroid/support/v4/app/BackStackRecord;->mPopEnterAnim:I

    .line 115
    iget v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->popExitAnim:I

    iput v4, v0, Landroid/support/v4/app/BackStackRecord;->mPopExitAnim:I

    .line 116
    invoke-virtual {v0, v3}, Landroid/support/v4/app/BackStackRecord;->addOp(Landroid/support/v4/app/BackStackRecord$Op;)V

    .line 117
    add-int/lit8 v2, v2, 0x1

    .line 118
    .end local v1    # "findex":I
    .end local v3    # "op":Landroid/support/v4/app/BackStackRecord$Op;
    nop

    .line 95
    move v1, v5

    goto/16 :goto_0

    .line 119
    .end local v5    # "pos":I
    .local v1, "pos":I
    :cond_2
    iget v3, p0, Landroid/support/v4/app/BackStackState;->mTransition:I

    iput v3, v0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    .line 120
    iget v3, p0, Landroid/support/v4/app/BackStackState;->mTransitionStyle:I

    iput v3, v0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    .line 121
    iget-object v3, p0, Landroid/support/v4/app/BackStackState;->mName:Ljava/lang/String;

    iput-object v3, v0, Landroid/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;

    .line 122
    iget v3, p0, Landroid/support/v4/app/BackStackState;->mIndex:I

    iput v3, v0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    .line 123
    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    .line 124
    iget v4, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbTitleRes:I

    iput v4, v0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    .line 125
    iget-object v4, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    iput-object v4, v0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 126
    iget v4, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbShortTitleRes:I

    iput v4, v0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    .line 127
    iget-object v4, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    iput-object v4, v0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    .line 128
    iget-object v4, p0, Landroid/support/v4/app/BackStackState;->mSharedElementSourceNames:Ljava/util/ArrayList;

    iput-object v4, v0, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 129
    iget-object v4, p0, Landroid/support/v4/app/BackStackState;->mSharedElementTargetNames:Ljava/util/ArrayList;

    iput-object v4, v0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 130
    iget-boolean v4, p0, Landroid/support/v4/app/BackStackState;->mReorderingAllowed:Z

    iput-boolean v4, v0, Landroid/support/v4/app/BackStackRecord;->mReorderingAllowed:Z

    .line 131
    invoke-virtual {v0, v3}, Landroid/support/v4/app/BackStackRecord;->bumpBackStackNesting(I)V

    .line 132
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 142
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 143
    iget v0, p0, Landroid/support/v4/app/BackStackState;->mTransition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget v0, p0, Landroid/support/v4/app/BackStackState;->mTransitionStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    iget v0, p0, Landroid/support/v4/app/BackStackState;->mIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    iget v0, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbTitleRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 149
    iget v0, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbShortTitleRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    invoke-static {v0, p1, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 151
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 152
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 153
    iget-boolean v0, p0, Landroid/support/v4/app/BackStackState;->mReorderingAllowed:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    return-void
.end method
