.class Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;
.super Landroid/os/HandlerThread;
.source "UserStateSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/UserStateSynchronizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NetworkHandlerThread"
.end annotation


# static fields
.field static final MAX_RETRIES:I = 0x3

.field static final NETWORK_CALL_DELAY_TO_BUFFER_MS:I = 0x1388

.field protected static final NETWORK_HANDLER_USERSTATE:I


# instance fields
.field currentRetry:I

.field mHandler:Landroid/os/Handler;

.field mType:I

.field final synthetic this$0:Lcom/onesignal/UserStateSynchronizer;


# direct methods
.method constructor <init>(Lcom/onesignal/UserStateSynchronizer;I)V
    .locals 2
    .param p1, "this$0"    # Lcom/onesignal/UserStateSynchronizer;
    .param p2, "type"    # I

    .line 47
    iput-object p1, p0, Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;->this$0:Lcom/onesignal/UserStateSynchronizer;

    .line 48
    const-string v0, "OSH_NetworkHandlerThread"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;->mHandler:Landroid/os/Handler;

    .line 49
    iput p2, p0, Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;->mType:I

    .line 50
    invoke-virtual {p0}, Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;->start()V

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;->mHandler:Landroid/os/Handler;

    .line 52
    return-void
.end method

.method private getNewRunnable()Ljava/lang/Runnable;
    .locals 1

    .line 63
    iget v0, p0, Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;->mType:I

    if-eqz v0, :cond_0

    .line 74
    const/4 v0, 0x0

    return-object v0

    .line 65
    :cond_0
    new-instance v0, Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread$1;

    invoke-direct {v0, p0}, Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread$1;-><init>(Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;)V

    return-object v0
.end method


# virtual methods
.method doRetry()Z
    .locals 8

    .line 84
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;->mHandler:Landroid/os/Handler;

    monitor-enter v0

    .line 85
    :try_start_0
    iget v1, p0, Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;->currentRetry:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ge v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    .line 86
    .local v1, "doRetry":Z
    :goto_0
    iget-object v2, p0, Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    .line 88
    .local v2, "futureSync":Z
    if-eqz v1, :cond_1

    if-nez v2, :cond_1

    .line 89
    iget v5, p0, Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;->currentRetry:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;->currentRetry:I

    .line 90
    iget-object v3, p0, Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;->getNewRunnable()Ljava/lang/Runnable;

    move-result-object v5

    iget v6, p0, Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;->currentRetry:I

    mul-int/lit16 v6, v6, 0x3a98

    int-to-long v6, v6

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 93
    :cond_1
    iget-object v3, p0, Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    monitor-exit v0

    return v3

    .line 94
    .end local v1    # "doRetry":Z
    .end local v2    # "futureSync":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method runNewJobDelayed()V
    .locals 5

    .line 55
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;->mHandler:Landroid/os/Handler;

    monitor-enter v0

    .line 56
    const/4 v1, 0x0

    :try_start_0
    iput v1, p0, Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;->currentRetry:I

    .line 57
    iget-object v1, p0, Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 58
    iget-object v1, p0, Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;->getNewRunnable()Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 59
    monitor-exit v0

    .line 60
    return-void

    .line 59
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method stopScheduledRunnable()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 79
    return-void
.end method
