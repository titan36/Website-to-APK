.class abstract Lcom/onesignal/OneSignalSyncServiceUtils$SyncRunnable;
.super Ljava/lang/Object;
.source "OneSignalSyncServiceUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/OneSignalSyncServiceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "SyncRunnable"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 204
    invoke-static {}, Lcom/onesignal/OneSignalSyncServiceUtils;->access$000()Ljava/lang/Long;

    move-result-object v0

    monitor-enter v0

    .line 205
    const-wide/16 v1, 0x0

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lcom/onesignal/OneSignalSyncServiceUtils;->access$002(Ljava/lang/Long;)Ljava/lang/Long;

    .line 206
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    invoke-static {}, Lcom/onesignal/OneSignal;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/onesignal/OneSignalSyncServiceUtils$SyncRunnable;->stopSync()V

    .line 209
    return-void

    .line 212
    :cond_0
    invoke-static {}, Lcom/onesignal/OneSignal;->getSavedAppId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    .line 213
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->initUserState()V

    .line 215
    new-instance v0, Lcom/onesignal/OneSignalSyncServiceUtils$SyncRunnable$1;

    invoke-direct {v0, p0}, Lcom/onesignal/OneSignalSyncServiceUtils$SyncRunnable$1;-><init>(Lcom/onesignal/OneSignalSyncServiceUtils$SyncRunnable;)V

    .line 233
    .local v0, "locationHandler":Lcom/onesignal/LocationGMS$LocationHandler;
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/onesignal/LocationGMS;->getLocation(Landroid/content/Context;ZLcom/onesignal/LocationGMS$LocationHandler;)V

    .line 234
    return-void

    .line 206
    .end local v0    # "locationHandler":Lcom/onesignal/LocationGMS$LocationHandler;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected abstract stopSync()V
.end method
