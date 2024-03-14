.class Lcom/onesignal/NotificationRestorer;
.super Ljava/lang/Object;
.source "NotificationRestorer.java"


# static fields
.field static final COLUMNS_FOR_RESTORE:[Ljava/lang/String;

.field private static final RESTORE_KICKOFF_REQUEST_CODE:I = 0x7b7e1b68

.field private static final RESTORE_NOTIFICATIONS_DELAY_MS:I = 0x3a98

.field public static restored:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 72
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android_notification_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "full_data"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "created_time"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/onesignal/NotificationRestorer;->COLUMNS_FOR_RESTORE:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addRestoreExtras(Landroid/content/Intent;Landroid/database/Cursor;)Landroid/content/Intent;
    .locals 6
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 224
    const-string v0, "android_notification_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 225
    .local v0, "existingId":I
    const-string v1, "full_data"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, "fullData":Ljava/lang/String;
    const-string v2, "created_time"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 228
    .local v2, "datetime":Ljava/lang/Long;
    const-string v3, "json_payload"

    invoke-virtual {p0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "android_notif_id"

    .line 229
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "restoring"

    .line 230
    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "timestamp"

    .line 231
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 233
    return-object p0
.end method

.method static asyncRestore(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 82
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/onesignal/NotificationRestorer$1;

    invoke-direct {v1, p0}, Lcom/onesignal/NotificationRestorer$1;-><init>(Landroid/content/Context;)V

    const-string v2, "OS_RESTORE_NOTIFS"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 89
    return-void
.end method

.method public static restore(Landroid/content/Context;)V
    .locals 19
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 93
    move-object/from16 v1, p0

    sget-boolean v2, Lcom/onesignal/NotificationRestorer;->restored:Z

    if-eqz v2, :cond_0

    .line 94
    return-void

    .line 95
    :cond_0
    const/4 v2, 0x1

    sput-boolean v2, Lcom/onesignal/NotificationRestorer;->restored:Z

    .line 97
    sget-object v2, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v3, "restoring notifications"

    invoke-static {v2, v3}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 99
    invoke-static/range {p0 .. p0}, Lcom/onesignal/OneSignalDbHelper;->getInstance(Landroid/content/Context;)Lcom/onesignal/OneSignalDbHelper;

    move-result-object v2

    .line 100
    .local v2, "dbHelper":Lcom/onesignal/OneSignalDbHelper;
    const/4 v3, 0x0

    move-object v4, v3

    .line 103
    .local v4, "writableDb":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {v2}, Lcom/onesignal/OneSignalDbHelper;->getWritableDbWithRetries()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    move-object v4, v5

    .line 105
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 107
    invoke-static {v4}, Lcom/onesignal/NotificationBundleProcessor;->deleteOldNotifications(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 108
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    if-eqz v4, :cond_2

    .line 114
    :try_start_1
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 117
    :goto_0
    goto :goto_3

    .line 115
    :catch_0
    move-exception v0

    move-object v5, v0

    .line 116
    .local v5, "t":Ljava/lang/Throwable;
    sget-object v6, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v7, "Error closing transaction! "

    invoke-static {v6, v7, v5}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    .end local v5    # "t":Ljava/lang/Throwable;
    goto :goto_0

    .line 112
    :catchall_0
    move-exception v0

    move-object v3, v0

    goto/16 :goto_7

    .line 109
    :catch_1
    move-exception v0

    move-object v5, v4

    move-object v4, v0

    .line 110
    .local v4, "t":Ljava/lang/Throwable;
    .local v5, "writableDb":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_2
    sget-object v6, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v7, "Error deleting old notification records! "

    invoke-static {v6, v7, v4}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 112
    .end local v4    # "t":Ljava/lang/Throwable;
    if-eqz v5, :cond_1

    .line 114
    :try_start_3
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 117
    :goto_1
    goto :goto_2

    .line 115
    :catch_2
    move-exception v0

    move-object v4, v0

    .line 116
    .restart local v4    # "t":Ljava/lang/Throwable;
    sget-object v6, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v7, "Error closing transaction! "

    invoke-static {v6, v7, v4}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    .end local v4    # "t":Ljava/lang/Throwable;
    goto :goto_1

    .line 121
    :cond_1
    :goto_2
    move-object v4, v5

    .line 121
    .end local v5    # "writableDb":Landroid/database/sqlite/SQLiteDatabase;
    .local v4, "writableDb":Landroid/database/sqlite/SQLiteDatabase;
    :cond_2
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    const-wide/32 v7, 0x93a80

    sub-long v9, v5, v7

    .line 122
    .local v9, "created_at_cutoff":J
    new-instance v5, Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "created_time > "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "dismissed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " = 0 AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "opened"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " = 0 AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "is_summary"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " = 0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    .local v5, "dbQuerySelection":Ljava/lang/StringBuilder;
    invoke-static {v1, v5}, Lcom/onesignal/NotificationRestorer;->skipVisibleNotifications(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    .line 131
    sget-object v6, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Querying DB for notfs to restore: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 131
    invoke-static {v6, v7}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 134
    nop

    .line 136
    .local v3, "cursor":Landroid/database/Cursor;
    :try_start_4
    invoke-virtual {v2}, Lcom/onesignal/OneSignalDbHelper;->getReadableDbWithRetries()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    .line 137
    .local v11, "readableDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v12, "notification"

    sget-object v13, Lcom/onesignal/NotificationRestorer;->COLUMNS_FOR_RESTORE:[Ljava/lang/String;

    .line 140
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v18, "_id ASC"

    .line 137
    invoke-virtual/range {v11 .. v18}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    move-object v3, v6

    .line 147
    const/16 v6, 0x64

    invoke-static {v1, v3, v6}, Lcom/onesignal/NotificationRestorer;->showNotifications(Landroid/content/Context;Landroid/database/Cursor;I)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 152
    .end local v11    # "readableDb":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v3, :cond_4

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_4

    .line 153
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_5

    .line 152
    :catchall_1
    move-exception v0

    move-object v6, v3

    .line 152
    .end local v3    # "cursor":Landroid/database/Cursor;
    .local v6, "cursor":Landroid/database/Cursor;
    :goto_4
    move-object v3, v0

    goto :goto_6

    .line 149
    .end local v6    # "cursor":Landroid/database/Cursor;
    .restart local v3    # "cursor":Landroid/database/Cursor;
    :catch_3
    move-exception v0

    move-object v6, v3

    move-object v3, v0

    .line 150
    .local v3, "t":Ljava/lang/Throwable;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :try_start_5
    sget-object v7, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v8, "Error restoring notification records! "

    invoke-static {v7, v8, v3}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 152
    .end local v3    # "t":Ljava/lang/Throwable;
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_3

    .line 153
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 155
    :cond_3
    move-object v3, v6

    .line 155
    .end local v6    # "cursor":Landroid/database/Cursor;
    .local v3, "cursor":Landroid/database/Cursor;
    :cond_4
    :goto_5
    return-void

    .line 152
    .end local v3    # "cursor":Landroid/database/Cursor;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :catchall_2
    move-exception v0

    goto :goto_4

    :goto_6
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_5

    .line 153
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v3

    .line 112
    .end local v4    # "writableDb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v9    # "created_at_cutoff":J
    .local v5, "writableDb":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_3
    move-exception v0

    move-object v3, v0

    move-object v4, v5

    .line 112
    .end local v5    # "writableDb":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v4    # "writableDb":Landroid/database/sqlite/SQLiteDatabase;
    :goto_7
    if-eqz v4, :cond_6

    .line 114
    :try_start_6
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    .line 117
    goto :goto_8

    .line 115
    :catch_4
    move-exception v0

    move-object v5, v0

    .line 116
    .local v5, "t":Ljava/lang/Throwable;
    sget-object v6, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v7, "Error closing transaction! "

    invoke-static {v6, v7, v5}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    .end local v5    # "t":Ljava/lang/Throwable;
    :cond_6
    :goto_8
    throw v3
.end method

.method static showNotifications(Landroid/content/Context;Landroid/database/Cursor;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "delay"    # I

    .line 198
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    return-void

    .line 201
    :cond_0
    invoke-static {p0}, Lcom/onesignal/NotificationExtenderService;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 204
    .local v0, "useExtender":Z
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 205
    invoke-static {p0}, Lcom/onesignal/NotificationExtenderService;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 206
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {v1, p1}, Lcom/onesignal/NotificationRestorer;->addRestoreExtras(Landroid/content/Intent;Landroid/database/Cursor;)Landroid/content/Intent;

    .line 207
    nop

    .line 208
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    const v3, 0x7b7e1b69

    .line 207
    invoke-static {p0, v2, v3, v1}, Lcom/onesignal/NotificationExtenderService;->enqueueWork(Landroid/content/Context;Landroid/content/ComponentName;ILandroid/content/Intent;)V

    .line 211
    .end local v1    # "intent":Landroid/content/Intent;
    goto :goto_1

    .line 213
    :cond_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static {v1, p1}, Lcom/onesignal/NotificationRestorer;->addRestoreExtras(Landroid/content/Intent;Landroid/database/Cursor;)Landroid/content/Intent;

    move-result-object v1

    .line 214
    .restart local v1    # "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/onesignal/RestoreJobService;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 215
    .local v2, "componentName":Landroid/content/ComponentName;
    const v3, 0x7b7e1b6a

    invoke-static {p0, v2, v3, v1}, Lcom/onesignal/RestoreJobService;->enqueueWork(Landroid/content/Context;Landroid/content/ComponentName;ILandroid/content/Intent;)V

    .line 218
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "componentName":Landroid/content/ComponentName;
    :goto_1
    if-lez p2, :cond_4

    .line 219
    invoke-static {p2}, Lcom/onesignal/OSUtils;->sleep(I)V

    .line 220
    :cond_4
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 221
    return-void
.end method

.method private static skipVisibleNotifications(Landroid/content/Context;Ljava/lang/StringBuilder;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dbQuerySelection"    # Ljava/lang/StringBuilder;

    .line 163
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 164
    return-void

    .line 166
    :cond_0
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 167
    .local v0, "notifManager":Landroid/app/NotificationManager;
    if-nez v0, :cond_1

    .line 168
    return-void

    .line 171
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    .line 172
    .local v1, "activeNotifs":[Landroid/service/notification/StatusBarNotification;
    array-length v2, v1

    if-nez v2, :cond_2

    .line 173
    return-void

    .line 175
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 176
    .local v2, "activeNotifIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v1, v4

    .line 177
    .local v5, "activeNotif":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    .end local v5    # "activeNotif":Landroid/service/notification/StatusBarNotification;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 179
    :cond_3
    const-string v3, " AND android_notification_id NOT IN ("

    .line 180
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    .line 181
    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    .line 182
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    .end local v1    # "activeNotifs":[Landroid/service/notification/StatusBarNotification;
    .end local v2    # "activeNotifIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    goto :goto_1

    .line 183
    :catch_0
    move-exception v1

    .line 189
    :goto_1
    return-void
.end method

.method static startDelayedRestoreTaskFromReceiver(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .line 238
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const v1, 0x7b7e1b68

    const-wide/16 v2, 0x3a98

    const/16 v4, 0x1a

    if-lt v0, v4, :cond_0

    .line 240
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v4, "scheduleRestoreKickoffJob"

    invoke-static {v0, v4}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 243
    new-instance v0, Landroid/app/job/JobInfo$Builder;

    new-instance v4, Landroid/content/ComponentName;

    const-class v5, Lcom/onesignal/RestoreKickoffJobService;

    invoke-direct {v4, p0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v0, v1, v4}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 245
    .local v0, "jobBuilder":Landroid/app/job/JobInfo$Builder;
    nop

    .line 246
    invoke-virtual {v0, v2, v3}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 247
    invoke-virtual {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 248
    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    .line 249
    .local v1, "job":Landroid/app/job/JobInfo;
    const-string v2, "jobscheduler"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobScheduler;

    .line 250
    .local v2, "jobScheduler":Landroid/app/job/JobScheduler;
    invoke-virtual {v2, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 251
    .end local v0    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .end local v1    # "job":Landroid/app/job/JobInfo;
    .end local v2    # "jobScheduler":Landroid/app/job/JobScheduler;
    goto :goto_0

    .line 253
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v4, "scheduleRestoreKickoffAlarmTask"

    invoke-static {v0, v4}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 255
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 256
    .local v0, "intentForService":Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/onesignal/NotificationRestoreService;

    .line 257
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 259
    const/high16 v4, 0x10000000

    invoke-static {p0, v1, v0, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 262
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long v6, v4, v2

    .line 263
    .local v6, "scheduleTime":J
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 264
    .local v2, "alarm":Landroid/app/AlarmManager;
    const/4 v3, 0x1

    invoke-virtual {v2, v3, v6, v7, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 266
    .end local v0    # "intentForService":Landroid/content/Intent;
    .end local v1    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v2    # "alarm":Landroid/app/AlarmManager;
    .end local v6    # "scheduleTime":J
    :goto_0
    return-void
.end method
