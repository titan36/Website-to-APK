.class Lcom/onesignal/NotificationSummaryManager;
.super Ljava/lang/Object;
.source "NotificationSummaryManager.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getSummaryNotificationId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 12
    .param p0, "writableDb"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "group"    # Ljava/lang/String;

    .line 158
    const/4 v0, 0x0

    .line 159
    .local v0, "androidNotifId":Ljava/lang/Integer;
    const/4 v1, 0x0

    move-object v2, v1

    .line 162
    .local v2, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v4, "notification"

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    const-string v6, "android_notification_id"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-string v6, "group_id = ? AND dismissed = 0 AND opened = 0 AND is_summary = 1"

    new-array v8, v3, [Ljava/lang/String;

    aput-object p1, v8, v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v3, p0

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v2, v3

    .line 172
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    .line 173
    .local v3, "hasRecord":Z
    if-nez v3, :cond_1

    .line 174
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    nop

    .line 182
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 183
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 175
    :cond_0
    return-object v1

    .line 177
    :cond_1
    :try_start_1
    const-string v1, "android_notification_id"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v0, v1

    .line 178
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    .end local v3    # "hasRecord":Z
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 183
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 182
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 179
    :catch_0
    move-exception v1

    .line 180
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_2
    sget-object v3, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error getting android notification id for summary notification group: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 182
    .end local v1    # "t":Ljava/lang/Throwable;
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 186
    :cond_2
    :goto_1
    return-object v0

    .line 182
    :goto_2
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_3

    .line 183
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method

.method private static internalUpdateSummaryNotificationAfterChildRemoved(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "writableDb"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "group"    # Ljava/lang/String;
    .param p3, "dismissed"    # Z

    .line 49
    const-string v1, "notification"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "android_notification_id"

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "created_time"

    const/4 v8, 0x1

    aput-object v0, v2, v8

    const-string v4, "group_id = ? AND dismissed = 0 AND opened = 0 AND is_summary = 0"

    new-array v5, v8, [Ljava/lang/String;

    aput-object p2, v5, v3

    const-string v7, "_id DESC"

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v0, p1

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v9

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 61
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 66
    .local v1, "notifsInGroup":I
    if-nez v1, :cond_2

    .line 67
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 69
    invoke-static {p1, p2}, Lcom/onesignal/NotificationSummaryManager;->getSummaryNotificationId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 70
    .local v2, "androidNotifId":Ljava/lang/Integer;
    if-nez v2, :cond_0

    .line 71
    return-object v0

    .line 74
    :cond_0
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 75
    .local v3, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 78
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 79
    .local v4, "values":Landroid/content/ContentValues;
    if-eqz p3, :cond_1

    const-string v5, "dismissed"

    goto :goto_0

    :cond_1
    const-string v5, "opened"

    :goto_0
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 80
    const-string v5, "notification"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "android_notification_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p1, v5, v4, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 84
    return-object v0

    .line 90
    .end local v2    # "androidNotifId":Ljava/lang/Integer;
    .end local v3    # "notificationManager":Landroid/app/NotificationManager;
    .end local v4    # "values":Landroid/content/ContentValues;
    :cond_2
    if-ne v1, v8, :cond_4

    .line 91
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 92
    invoke-static {p1, p2}, Lcom/onesignal/NotificationSummaryManager;->getSummaryNotificationId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 93
    .restart local v2    # "androidNotifId":Ljava/lang/Integer;
    if-nez v2, :cond_3

    .line 94
    return-object v0

    .line 95
    :cond_3
    invoke-static {p0, p2}, Lcom/onesignal/NotificationSummaryManager;->restoreSummary(Landroid/content/Context;Ljava/lang/String;)V

    .line 96
    return-object v0

    .line 104
    .end local v2    # "androidNotifId":Ljava/lang/Integer;
    :cond_4
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 105
    const-string v2, "created_time"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 106
    .local v2, "datetime":Ljava/lang/Long;
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 108
    invoke-static {p1, p2}, Lcom/onesignal/NotificationSummaryManager;->getSummaryNotificationId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 109
    .local v3, "androidNotifId":Ljava/lang/Integer;
    if-nez v3, :cond_5

    .line 110
    return-object v0

    .line 112
    :cond_5
    new-instance v4, Lcom/onesignal/NotificationGenerationJob;

    invoke-direct {v4, p0}, Lcom/onesignal/NotificationGenerationJob;-><init>(Landroid/content/Context;)V

    .line 113
    .local v4, "notifJob":Lcom/onesignal/NotificationGenerationJob;
    iput-boolean v8, v4, Lcom/onesignal/NotificationGenerationJob;->restoring:Z

    .line 114
    iput-object v2, v4, Lcom/onesignal/NotificationGenerationJob;->shownTimeStamp:Ljava/lang/Long;

    .line 116
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 117
    .local v5, "payload":Lorg/json/JSONObject;
    const-string v6, "grp"

    invoke-virtual {v5, v6, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    iput-object v5, v4, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    .line 120
    invoke-static {v4}, Lcom/onesignal/GenerateNotification;->updateSummaryNotification(Lcom/onesignal/NotificationGenerationJob;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .end local v2    # "datetime":Ljava/lang/Long;
    .end local v3    # "androidNotifId":Ljava/lang/Integer;
    .end local v4    # "notifJob":Lcom/onesignal/NotificationGenerationJob;
    .end local v5    # "payload":Lorg/json/JSONObject;
    goto :goto_1

    :catch_0
    move-exception v2

    .line 123
    :goto_1
    return-object v0
.end method

.method private static restoreSummary(Landroid/content/Context;Ljava/lang/String;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "group"    # Ljava/lang/String;

    .line 127
    invoke-static {p0}, Lcom/onesignal/OneSignalDbHelper;->getInstance(Landroid/content/Context;)Lcom/onesignal/OneSignalDbHelper;

    move-result-object v0

    .line 129
    .local v0, "dbHelper":Lcom/onesignal/OneSignalDbHelper;
    const/4 v1, 0x0

    .line 131
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v7, v2

    .line 134
    .local v7, "whereArgs":[Ljava/lang/String;
    :try_start_0
    invoke-virtual {v0}, Lcom/onesignal/OneSignalDbHelper;->getReadableDbWithRetries()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 135
    .local v3, "readableDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "notification"

    sget-object v5, Lcom/onesignal/NotificationRestorer;->COLUMNS_FOR_RESTORE:[Ljava/lang/String;

    const-string v6, "group_id = ? AND dismissed = 0 AND opened = 0 AND is_summary = 0"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object v1, v4

    .line 148
    invoke-static {p0, v1, v2}, Lcom/onesignal/NotificationRestorer;->showNotifications(Landroid/content/Context;Landroid/database/Cursor;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    .end local v3    # "readableDb":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 153
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 152
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 149
    :catch_0
    move-exception v2

    .line 150
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_1
    sget-object v3, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v4, "Error restoring notification records! "

    invoke-static {v3, v4, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    .end local v2    # "t":Ljava/lang/Throwable;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 155
    :cond_0
    :goto_1
    return-void

    .line 152
    :goto_2
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 153
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v2
.end method

.method static updatePossibleDependentSummaryOnDismiss(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "writableDb"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "androidNotificationId"    # I

    .line 18
    const-string v1, "notification"

    const/4 v8, 0x1

    new-array v2, v8, [Ljava/lang/String;

    const-string v0, "group_id"

    const/4 v3, 0x0

    aput-object v0, v2, v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android_notification_id = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 24
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 25
    const-string v1, "group_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 26
    .local v1, "group":Ljava/lang/String;
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 28
    if-eqz v1, :cond_0

    .line 29
    invoke-static {p0, p1, v1, v8}, Lcom/onesignal/NotificationSummaryManager;->updateSummaryNotificationAfterChildRemoved(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)V

    .line 30
    .end local v1    # "group":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 32
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 33
    :goto_0
    return-void
.end method

.method static updateSummaryNotificationAfterChildRemoved(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "writableDb"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "group"    # Ljava/lang/String;
    .param p3, "dismissed"    # Z

    .line 37
    const/4 v0, 0x0

    .line 39
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/onesignal/NotificationSummaryManager;->internalUpdateSummaryNotificationAfterChildRemoved(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 43
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 44
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 43
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 40
    :catch_0
    move-exception v1

    .line 41
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_1
    sget-object v2, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v3, "Error running updateSummaryNotificationAfterChildRemoved!"

    invoke-static {v2, v3, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    .end local v1    # "t":Ljava/lang/Throwable;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    :goto_1
    return-void

    .line 43
    :goto_2
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 44
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v1
.end method
