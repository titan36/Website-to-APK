.class final Lcom/google/android/gms/internal/zzcni;
.super Ljava/lang/Object;


# instance fields
.field private mStartTime:J

.field private final zzdir:Lcom/google/android/gms/common/util/zze;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/util/zze;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcni;->zzdir:Lcom/google/android/gms/common/util/zze;

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzcni;->mStartTime:J

    return-void
.end method

.method public final start()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcni;->zzdir:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzcni;->mStartTime:J

    return-void
.end method

.method public final zzu(J)Z
    .locals 6

    iget-wide p1, p0, Lcom/google/android/gms/internal/zzcni;->mStartTime:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const/4 p1, 0x1

    if-nez v2, :cond_0

    return p1

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/zzcni;->zzdir:Lcom/google/android/gms/common/util/zze;

    invoke-interface {p2}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzcni;->mStartTime:J

    sub-long v4, v0, v2

    const-wide/32 v0, 0x36ee80

    cmp-long p2, v4, v0

    if-ltz p2, :cond_1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
