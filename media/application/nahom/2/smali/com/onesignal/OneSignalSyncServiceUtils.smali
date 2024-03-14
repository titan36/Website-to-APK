.class Lcom/onesignal/OneSignalSyncServiceUtils;
.super Ljava/lang/Object;
.source "OneSignalSyncServiceUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/OneSignalSyncServiceUtils$LegacySyncRunnable;,
        Lcom/onesignal/OneSignalSyncServiceUtils$LollipopSyncRunnable;,
        Lcom/onesignal/OneSignalSyncServiceUtils$SyncRunnable;
    }
.end annotation


# static fields
.field private static final SYNC_AFTER_BG_DELAY_MS:I = 0x1d4c0

.field private static final SYNC_TASK_ID:I = 0x7b7e1b66

.field private static nextScheduledSyncTime:Ljava/lang/Long;

.field private static runningOnFocusTime:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static syncBgThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/onesignal/OneSignalSyncServiceUtils;->nextScheduledSyncTime:Ljava/lang/Long;

    .line 157
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/onesignal/OneSignalSyncServiceUtils;->runningOnFocusTime:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Long;
    .locals 1

    .line 45
    sget-object v0, Lcom/onesignal/OneSignalSyncServiceUtils;->nextScheduledSyncTime:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0
    .param p0, "x0"    # Ljava/lang/Long;

    .line 45
    sput-object p0, Lcom/onesignal/OneSignalSyncServiceUtils;->nextScheduledSyncTime:Ljava/lang/Long;

    return-object p0
.end method

.method static cancelSyncTask(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 64
    sget-object v0, Lcom/onesignal/OneSignalSyncServiceUtils;->nextScheduledSyncTime:Ljava/lang/Long;

    monitor-enter v0

    .line 65
    const-wide/16 v1, 0x0

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sput-object v1, Lcom/onesignal/OneSignalSyncServiceUtils;->nextScheduledSyncTime:Ljava/lang/Long;

    .line 66
    invoke-static {p0}, Lcom/onesignal/LocationGMS;->scheduleUpdate(Landroid/content/Context;)Z

    move-result v1

    .line 67
    .local v1, "didSchedule":Z
    if-eqz v1, :cond_0

    .line 68
    monitor-exit v0

    return-void

    .line 70
    :cond_0
    invoke-static {}, Lcom/onesignal/OneSignalSyncServiceUtils;->useJob()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 71
    const-string v2, "jobscheduler"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobScheduler;

    .line 72
    .local v2, "jobScheduler":Landroid/app/job/JobScheduler;
    const v3, 0x7b7e1b66

    invoke-virtual {v2, v3}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 73
    .end local v2    # "jobScheduler":Landroid/app/job/JobScheduler;
    goto :goto_0

    .line 74
    :cond_1
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 75
    .local v2, "alarmManager":Landroid/app/AlarmManager;
    invoke-static {p0}, Lcom/onesignal/OneSignalSyncServiceUtils;->syncServicePendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 77
    .end local v1    # "didSchedule":Z
    .end local v2    # "alarmManager":Landroid/app/AlarmManager;
    :goto_0
    monitor-exit v0

    .line 78
    return-void

    .line 77
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static doBackgroundSync(Landroid/content/Context;Lcom/onesignal/OneSignalSyncServiceUtils$SyncRunnable;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "runnable"    # Lcom/onesignal/OneSignalSyncServiceUtils$SyncRunnable;

    .line 178
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    .line 179
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "OS_SYNCSRV_BG_SYNC"

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v0, Lcom/onesignal/OneSignalSyncServiceUtils;->syncBgThread:Ljava/lang/Thread;

    .line 180
    sget-object v0, Lcom/onesignal/OneSignalSyncServiceUtils;->syncBgThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 181
    return-void
.end method

.method private static internalSyncOnFocusTime()V
    .locals 5

    .line 169
    invoke-static {}, Lcom/onesignal/OneSignal;->GetUnsentActiveTime()J

    move-result-wide v0

    .line 170
    .local v0, "unsentTime":J
    const-wide/16 v2, 0x3c

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 171
    return-void

    .line 173
    :cond_0
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/onesignal/OneSignal;->sendOnFocus(JZ)V

    .line 174
    return-void
.end method

.method static scheduleLocationUpdateTask(Landroid/content/Context;J)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "delayMs"    # J

    .line 54
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->VERBOSE:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scheduleLocationUpdateTask:delayMs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 55
    invoke-static {p0, p1, p2}, Lcom/onesignal/OneSignalSyncServiceUtils;->scheduleSyncTask(Landroid/content/Context;J)V

    .line 56
    return-void
.end method

.method private static scheduleSyncServiceAsAlarm(Landroid/content/Context;J)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "delayMs"    # J

    .line 149
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->VERBOSE:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scheduleServiceSyncTask:atTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 151
    invoke-static {p0}, Lcom/onesignal/OneSignalSyncServiceUtils;->syncServicePendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 152
    .local v0, "pendingIntent":Landroid/app/PendingIntent;
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 153
    .local v1, "alarm":Landroid/app/AlarmManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long v4, v2, p1

    .line 154
    .local v4, "triggerAtMs":J
    add-long v2, v4, p1

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v2, v3, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 155
    return-void
.end method

.method private static scheduleSyncServiceAsJob(Landroid/content/Context;J)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "delayMs"    # J
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .line 122
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->VERBOSE:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scheduleSyncServiceAsJob:atTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 124
    new-instance v0, Landroid/app/job/JobInfo$Builder;

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/onesignal/SyncJobService;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v2, 0x7b7e1b66

    invoke-direct {v0, v2, v1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 129
    .local v0, "jobBuilder":Landroid/app/job/JobInfo$Builder;
    nop

    .line 130
    invoke-virtual {v0, p1, p2}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 131
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 132
    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 133
    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    .line 135
    .local v1, "job":Landroid/app/job/JobInfo;
    const-string v2, "jobscheduler"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobScheduler;

    .line 137
    .local v2, "jobScheduler":Landroid/app/job/JobScheduler;
    :try_start_0
    invoke-virtual {v2, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result v3

    .line 138
    .local v3, "result":I
    sget-object v4, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "scheduleSyncServiceAsJob:result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .end local v3    # "result":I
    goto :goto_0

    .line 139
    :catch_0
    move-exception v3

    .line 142
    .local v3, "e":Ljava/lang/NullPointerException;
    sget-object v4, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v5, "scheduleSyncServiceAsJob called JobScheduler.jobScheduler which triggered an internal null Android error. Skipping job."

    invoke-static {v4, v5, v3}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 146
    .end local v3    # "e":Ljava/lang/NullPointerException;
    :goto_0
    return-void
.end method

.method static scheduleSyncTask(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 59
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->VERBOSE:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "scheduleSyncTask:SYNC_AFTER_BG_DELAY_MS: 120000"

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 60
    const-wide/32 v0, 0x1d4c0

    invoke-static {p0, v0, v1}, Lcom/onesignal/OneSignalSyncServiceUtils;->scheduleSyncTask(Landroid/content/Context;J)V

    .line 61
    return-void
.end method

.method private static scheduleSyncTask(Landroid/content/Context;J)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "delayMs"    # J

    .line 104
    sget-object v0, Lcom/onesignal/OneSignalSyncServiceUtils;->nextScheduledSyncTime:Ljava/lang/Long;

    monitor-enter v0

    .line 105
    :try_start_0
    sget-object v1, Lcom/onesignal/OneSignalSyncServiceUtils;->nextScheduledSyncTime:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long v3, v1, p1

    sget-object v1, Lcom/onesignal/OneSignalSyncServiceUtils;->nextScheduledSyncTime:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v5, v3, v1

    if-lez v5, :cond_0

    .line 107
    monitor-exit v0

    return-void

    .line 109
    :cond_0
    const-wide/16 v1, 0x1388

    cmp-long v3, p1, v1

    if-gez v3, :cond_1

    .line 110
    const-wide/16 p1, 0x1388

    .line 112
    :cond_1
    invoke-static {}, Lcom/onesignal/OneSignalSyncServiceUtils;->useJob()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 113
    invoke-static {p0, p1, p2}, Lcom/onesignal/OneSignalSyncServiceUtils;->scheduleSyncServiceAsJob(Landroid/content/Context;J)V

    goto :goto_0

    .line 115
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/onesignal/OneSignalSyncServiceUtils;->scheduleSyncServiceAsAlarm(Landroid/content/Context;J)V

    .line 116
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long v3, v1, p1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sput-object v1, Lcom/onesignal/OneSignalSyncServiceUtils;->nextScheduledSyncTime:Ljava/lang/Long;

    .line 117
    monitor-exit v0

    .line 118
    return-void

    .line 117
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static stopSyncBgThread()Z
    .locals 2

    .line 184
    sget-object v0, Lcom/onesignal/OneSignalSyncServiceUtils;->syncBgThread:Ljava/lang/Thread;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 185
    return v1

    .line 187
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignalSyncServiceUtils;->syncBgThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 188
    return v1

    .line 190
    :cond_1
    sget-object v0, Lcom/onesignal/OneSignalSyncServiceUtils;->syncBgThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 191
    const/4 v0, 0x1

    return v0
.end method

.method static syncOnFocusTime()V
    .locals 3

    .line 159
    sget-object v0, Lcom/onesignal/OneSignalSyncServiceUtils;->runningOnFocusTime:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    return-void

    .line 161
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignalSyncServiceUtils;->runningOnFocusTime:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 162
    :try_start_0
    sget-object v1, Lcom/onesignal/OneSignalSyncServiceUtils;->runningOnFocusTime:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 163
    invoke-static {}, Lcom/onesignal/OneSignalSyncServiceUtils;->internalSyncOnFocusTime()V

    .line 164
    sget-object v1, Lcom/onesignal/OneSignalSyncServiceUtils;->runningOnFocusTime:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 165
    monitor-exit v0

    .line 166
    return-void

    .line 165
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static syncServicePendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 84
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/onesignal/SyncService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x7b7e1b66

    const/high16 v2, 0x8000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private static useJob()Z
    .locals 2

    .line 93
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
