.class abstract Lcom/onesignal/JobIntentService;
.super Landroid/app/Service;
.source "JobIntentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/JobIntentService$CommandProcessor;,
        Lcom/onesignal/JobIntentService$CompatWorkItem;,
        Lcom/onesignal/JobIntentService$GenericWorkItem;,
        Lcom/onesignal/JobIntentService$JobWorkEnqueuer;,
        Lcom/onesignal/JobIntentService$JobServiceEngineImpl;,
        Lcom/onesignal/JobIntentService$CompatWorkEnqueuer;,
        Lcom/onesignal/JobIntentService$CompatJobEngine;,
        Lcom/onesignal/JobIntentService$WorkEnqueuer;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "JobIntentService"

.field static final sClassWorkEnqueuer:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "Lcom/onesignal/JobIntentService$WorkEnqueuer;",
            ">;"
        }
    .end annotation
.end field

.field static final sLock:Ljava/lang/Object;


# instance fields
.field final mCompatQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/onesignal/JobIntentService$CompatWorkItem;",
            ">;"
        }
    .end annotation
.end field

.field mCompatWorkEnqueuer:Lcom/onesignal/JobIntentService$WorkEnqueuer;

.field mCurProcessor:Lcom/onesignal/JobIntentService$CommandProcessor;

.field mInterruptIfStopped:Z

.field mJobImpl:Lcom/onesignal/JobIntentService$CompatJobEngine;

.field mStopped:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 103
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/onesignal/JobIntentService;->sLock:Ljava/lang/Object;

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/onesignal/JobIntentService;->sClassWorkEnqueuer:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 410
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onesignal/JobIntentService;->mInterruptIfStopped:Z

    .line 99
    iput-boolean v0, p0, Lcom/onesignal/JobIntentService;->mStopped:Z

    .line 411
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 412
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onesignal/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    goto :goto_0

    .line 414
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onesignal/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    .line 416
    :goto_0
    return-void
.end method

.method public static enqueueWork(Landroid/content/Context;Landroid/content/ComponentName;ILandroid/content/Intent;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "component"    # Landroid/content/ComponentName;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "jobId"    # I
    .param p3, "work"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 509
    if-nez p3, :cond_0

    .line 510
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "work must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 512
    :cond_0
    sget-object v0, Lcom/onesignal/JobIntentService;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 513
    const/4 v1, 0x1

    :try_start_0
    invoke-static {p0, p1, v1, p2}, Lcom/onesignal/JobIntentService;->getWorkEnqueuer(Landroid/content/Context;Landroid/content/ComponentName;ZI)Lcom/onesignal/JobIntentService$WorkEnqueuer;

    move-result-object v1

    .line 514
    .local v1, "we":Lcom/onesignal/JobIntentService$WorkEnqueuer;
    invoke-virtual {v1, p2}, Lcom/onesignal/JobIntentService$WorkEnqueuer;->ensureJobId(I)V

    .line 515
    invoke-virtual {v1, p3}, Lcom/onesignal/JobIntentService$WorkEnqueuer;->enqueueWork(Landroid/content/Intent;)V

    .line 516
    .end local v1    # "we":Lcom/onesignal/JobIntentService$WorkEnqueuer;
    monitor-exit v0

    .line 517
    return-void

    .line 516
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static enqueueWork(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "cls"    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "jobId"    # I
    .param p3, "work"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 493
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v0, p2, p3}, Lcom/onesignal/JobIntentService;->enqueueWork(Landroid/content/Context;Landroid/content/ComponentName;ILandroid/content/Intent;)V

    .line 494
    return-void
.end method

.method static getWorkEnqueuer(Landroid/content/Context;Landroid/content/ComponentName;ZI)Lcom/onesignal/JobIntentService$WorkEnqueuer;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cn"    # Landroid/content/ComponentName;
    .param p2, "hasJobId"    # Z
    .param p3, "jobId"    # I

    .line 521
    sget-object v0, Lcom/onesignal/JobIntentService;->sClassWorkEnqueuer:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onesignal/JobIntentService$WorkEnqueuer;

    .line 522
    .local v0, "we":Lcom/onesignal/JobIntentService$WorkEnqueuer;
    if-nez v0, :cond_2

    .line 523
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1

    .line 524
    if-nez p2, :cond_0

    .line 525
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can\'t be here without a job id"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 527
    :cond_0
    new-instance v1, Lcom/onesignal/JobIntentService$JobWorkEnqueuer;

    invoke-direct {v1, p0, p1, p3}, Lcom/onesignal/JobIntentService$JobWorkEnqueuer;-><init>(Landroid/content/Context;Landroid/content/ComponentName;I)V

    move-object v0, v1

    goto :goto_0

    .line 529
    :cond_1
    new-instance v1, Lcom/onesignal/JobIntentService$CompatWorkEnqueuer;

    invoke-direct {v1, p0, p1}, Lcom/onesignal/JobIntentService$CompatWorkEnqueuer;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    move-object v0, v1

    .line 531
    :goto_0
    sget-object v1, Lcom/onesignal/JobIntentService;->sClassWorkEnqueuer:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    :cond_2
    return-object v0
.end method


# virtual methods
.method dequeueWork()Lcom/onesignal/JobIntentService$GenericWorkItem;
    .locals 3

    .line 626
    iget-object v0, p0, Lcom/onesignal/JobIntentService;->mJobImpl:Lcom/onesignal/JobIntentService$CompatJobEngine;

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Lcom/onesignal/JobIntentService;->mJobImpl:Lcom/onesignal/JobIntentService$CompatJobEngine;

    invoke-interface {v0}, Lcom/onesignal/JobIntentService$CompatJobEngine;->dequeueWork()Lcom/onesignal/JobIntentService$GenericWorkItem;

    move-result-object v0

    return-object v0

    .line 629
    :cond_0
    iget-object v0, p0, Lcom/onesignal/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 630
    :try_start_0
    iget-object v1, p0, Lcom/onesignal/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 631
    iget-object v1, p0, Lcom/onesignal/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onesignal/JobIntentService$GenericWorkItem;

    monitor-exit v0

    return-object v1

    .line 633
    :cond_1
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 635
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method doStopCurrentWork()Z
    .locals 2

    .line 591
    iget-object v0, p0, Lcom/onesignal/JobIntentService;->mCurProcessor:Lcom/onesignal/JobIntentService$CommandProcessor;

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/onesignal/JobIntentService;->mCurProcessor:Lcom/onesignal/JobIntentService$CommandProcessor;

    iget-boolean v1, p0, Lcom/onesignal/JobIntentService;->mInterruptIfStopped:Z

    invoke-virtual {v0, v1}, Lcom/onesignal/JobIntentService$CommandProcessor;->cancel(Z)Z

    .line 594
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onesignal/JobIntentService;->mStopped:Z

    .line 595
    invoke-virtual {p0}, Lcom/onesignal/JobIntentService;->onStopCurrentWork()Z

    move-result v0

    return v0
.end method

.method ensureProcessorRunningLocked()V
    .locals 3

    .line 599
    iget-object v0, p0, Lcom/onesignal/JobIntentService;->mCurProcessor:Lcom/onesignal/JobIntentService$CommandProcessor;

    if-nez v0, :cond_0

    .line 600
    new-instance v0, Lcom/onesignal/JobIntentService$CommandProcessor;

    invoke-direct {v0, p0}, Lcom/onesignal/JobIntentService$CommandProcessor;-><init>(Lcom/onesignal/JobIntentService;)V

    iput-object v0, p0, Lcom/onesignal/JobIntentService;->mCurProcessor:Lcom/onesignal/JobIntentService$CommandProcessor;

    .line 602
    iget-object v0, p0, Lcom/onesignal/JobIntentService;->mCurProcessor:Lcom/onesignal/JobIntentService$CommandProcessor;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/onesignal/JobIntentService$CommandProcessor;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 604
    :cond_0
    return-void
.end method

.method public isStopped()Z
    .locals 1

    .line 572
    iget-boolean v0, p0, Lcom/onesignal/JobIntentService;->mStopped:Z

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 460
    iget-object v0, p0, Lcom/onesignal/JobIntentService;->mJobImpl:Lcom/onesignal/JobIntentService$CompatJobEngine;

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/onesignal/JobIntentService;->mJobImpl:Lcom/onesignal/JobIntentService$CompatJobEngine;

    invoke-interface {v0}, Lcom/onesignal/JobIntentService$CompatJobEngine;->compatGetBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 463
    .local v0, "engine":Landroid/os/IBinder;
    return-object v0

    .line 465
    .end local v0    # "engine":Landroid/os/IBinder;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .line 420
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 422
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_0

    .line 423
    new-instance v0, Lcom/onesignal/JobIntentService$JobServiceEngineImpl;

    invoke-direct {v0, p0}, Lcom/onesignal/JobIntentService$JobServiceEngineImpl;-><init>(Lcom/onesignal/JobIntentService;)V

    iput-object v0, p0, Lcom/onesignal/JobIntentService;->mJobImpl:Lcom/onesignal/JobIntentService$CompatJobEngine;

    .line 424
    iput-object v1, p0, Lcom/onesignal/JobIntentService;->mCompatWorkEnqueuer:Lcom/onesignal/JobIntentService$WorkEnqueuer;

    goto :goto_0

    .line 426
    :cond_0
    iput-object v1, p0, Lcom/onesignal/JobIntentService;->mJobImpl:Lcom/onesignal/JobIntentService$CompatJobEngine;

    .line 427
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 428
    .local v0, "cn":Landroid/content/ComponentName;
    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1}, Lcom/onesignal/JobIntentService;->getWorkEnqueuer(Landroid/content/Context;Landroid/content/ComponentName;ZI)Lcom/onesignal/JobIntentService$WorkEnqueuer;

    move-result-object v1

    iput-object v1, p0, Lcom/onesignal/JobIntentService;->mCompatWorkEnqueuer:Lcom/onesignal/JobIntentService$WorkEnqueuer;

    .line 429
    iget-object v1, p0, Lcom/onesignal/JobIntentService;->mCompatWorkEnqueuer:Lcom/onesignal/JobIntentService$WorkEnqueuer;

    invoke-virtual {v1}, Lcom/onesignal/JobIntentService$WorkEnqueuer;->serviceCreated()V

    .line 431
    .end local v0    # "cn":Landroid/content/ComponentName;
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 471
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 472
    iget-object v0, p0, Lcom/onesignal/JobIntentService;->mCompatWorkEnqueuer:Lcom/onesignal/JobIntentService$WorkEnqueuer;

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/onesignal/JobIntentService;->mCompatWorkEnqueuer:Lcom/onesignal/JobIntentService$WorkEnqueuer;

    invoke-virtual {v0}, Lcom/onesignal/JobIntentService$WorkEnqueuer;->serviceDestroyed()V

    .line 475
    :cond_0
    return-void
.end method

.method protected abstract onHandleWork(Landroid/content/Intent;)V
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 439
    iget-object v0, p0, Lcom/onesignal/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 440
    iget-object v0, p0, Lcom/onesignal/JobIntentService;->mCompatWorkEnqueuer:Lcom/onesignal/JobIntentService$WorkEnqueuer;

    invoke-virtual {v0}, Lcom/onesignal/JobIntentService$WorkEnqueuer;->serviceStartReceived()V

    .line 442
    iget-object v0, p0, Lcom/onesignal/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 443
    :try_start_0
    iget-object v1, p0, Lcom/onesignal/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    new-instance v2, Lcom/onesignal/JobIntentService$CompatWorkItem;

    if-eqz p1, :cond_0

    move-object v3, p1

    goto :goto_0

    :cond_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    :goto_0
    invoke-direct {v2, p0, v3, p3}, Lcom/onesignal/JobIntentService$CompatWorkItem;-><init>(Lcom/onesignal/JobIntentService;Landroid/content/Intent;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    invoke-virtual {p0}, Lcom/onesignal/JobIntentService;->ensureProcessorRunningLocked()V

    .line 446
    monitor-exit v0

    .line 447
    const/4 v0, 0x3

    return v0

    .line 446
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 450
    :cond_1
    const/4 v0, 0x2

    return v0
.end method

.method public onStopCurrentWork()Z
    .locals 1

    .line 587
    const/4 v0, 0x1

    return v0
.end method

.method processorFinished()V
    .locals 2

    .line 607
    iget-object v0, p0, Lcom/onesignal/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 608
    iget-object v0, p0, Lcom/onesignal/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 609
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/onesignal/JobIntentService;->mCurProcessor:Lcom/onesignal/JobIntentService$CommandProcessor;

    .line 618
    iget-object v1, p0, Lcom/onesignal/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/onesignal/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 619
    invoke-virtual {p0}, Lcom/onesignal/JobIntentService;->ensureProcessorRunningLocked()V

    .line 621
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 623
    :cond_1
    :goto_0
    return-void
.end method

.method public setInterruptIfStopped(Z)V
    .locals 0
    .param p1, "interruptIfStopped"    # Z

    .line 564
    iput-boolean p1, p0, Lcom/onesignal/JobIntentService;->mInterruptIfStopped:Z

    .line 565
    return-void
.end method
