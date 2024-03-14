.class final Lcom/onesignal/JobIntentService$JobServiceEngineImpl;
.super Landroid/app/job/JobServiceEngine;
.source "JobIntentService.java"

# interfaces
.implements Lcom/onesignal/JobIntentService$CompatJobEngine;


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x1a
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/JobIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "JobServiceEngineImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/JobIntentService$JobServiceEngineImpl$WrapperWorkItem;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "JobServiceEngineImpl"


# instance fields
.field final mLock:Ljava/lang/Object;

.field mParams:Landroid/app/job/JobParameters;

.field final mService:Lcom/onesignal/JobIntentService;


# direct methods
.method constructor <init>(Lcom/onesignal/JobIntentService;)V
    .locals 1
    .param p1, "service"    # Lcom/onesignal/JobIntentService;

    .line 269
    invoke-direct {p0, p1}, Landroid/app/job/JobServiceEngine;-><init>(Landroid/app/Service;)V

    .line 243
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/onesignal/JobIntentService$JobServiceEngineImpl;->mLock:Ljava/lang/Object;

    .line 270
    iput-object p1, p0, Lcom/onesignal/JobIntentService$JobServiceEngineImpl;->mService:Lcom/onesignal/JobIntentService;

    .line 271
    return-void
.end method


# virtual methods
.method public compatGetBinder()Landroid/os/IBinder;
    .locals 1

    .line 275
    invoke-virtual {p0}, Lcom/onesignal/JobIntentService$JobServiceEngineImpl;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public dequeueWork()Lcom/onesignal/JobIntentService$GenericWorkItem;
    .locals 3

    .line 305
    iget-object v0, p0, Lcom/onesignal/JobIntentService$JobServiceEngineImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 306
    :try_start_0
    iget-object v1, p0, Lcom/onesignal/JobIntentService$JobServiceEngineImpl;->mParams:Landroid/app/job/JobParameters;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 307
    monitor-exit v0

    return-object v2

    .line 309
    :cond_0
    iget-object v1, p0, Lcom/onesignal/JobIntentService$JobServiceEngineImpl;->mParams:Landroid/app/job/JobParameters;

    invoke-virtual {v1}, Landroid/app/job/JobParameters;->dequeueWork()Landroid/app/job/JobWorkItem;

    move-result-object v1

    .line 310
    .local v1, "work":Landroid/app/job/JobWorkItem;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    if-eqz v1, :cond_1

    .line 312
    invoke-virtual {v1}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v2, p0, Lcom/onesignal/JobIntentService$JobServiceEngineImpl;->mService:Lcom/onesignal/JobIntentService;

    invoke-virtual {v2}, Lcom/onesignal/JobIntentService;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 313
    new-instance v0, Lcom/onesignal/JobIntentService$JobServiceEngineImpl$WrapperWorkItem;

    invoke-direct {v0, p0, v1}, Lcom/onesignal/JobIntentService$JobServiceEngineImpl$WrapperWorkItem;-><init>(Lcom/onesignal/JobIntentService$JobServiceEngineImpl;Landroid/app/job/JobWorkItem;)V

    return-object v0

    .line 315
    :cond_1
    return-object v2

    .line 310
    .end local v1    # "work":Landroid/app/job/JobWorkItem;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 1
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 281
    iput-object p1, p0, Lcom/onesignal/JobIntentService$JobServiceEngineImpl;->mParams:Landroid/app/job/JobParameters;

    .line 283
    iget-object v0, p0, Lcom/onesignal/JobIntentService$JobServiceEngineImpl;->mService:Lcom/onesignal/JobIntentService;

    invoke-virtual {v0}, Lcom/onesignal/JobIntentService;->ensureProcessorRunningLocked()V

    .line 284
    const/4 v0, 0x1

    return v0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 3
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 290
    iget-object v0, p0, Lcom/onesignal/JobIntentService$JobServiceEngineImpl;->mService:Lcom/onesignal/JobIntentService;

    invoke-virtual {v0}, Lcom/onesignal/JobIntentService;->doStopCurrentWork()Z

    move-result v0

    .line 291
    .local v0, "result":Z
    iget-object v1, p0, Lcom/onesignal/JobIntentService$JobServiceEngineImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 294
    const/4 v2, 0x0

    :try_start_0
    iput-object v2, p0, Lcom/onesignal/JobIntentService$JobServiceEngineImpl;->mParams:Landroid/app/job/JobParameters;

    .line 295
    monitor-exit v1

    .line 296
    return v0

    .line 295
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
