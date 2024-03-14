.class final Lcom/onesignal/OneSignal$21;
.super Ljava/lang/Object;
.source "OneSignal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignal;->clearOneSignalNotifications()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 2269
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 2271
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/onesignal/OneSignalDbHelper;->getInstance(Landroid/content/Context;)Lcom/onesignal/OneSignalDbHelper;

    move-result-object v1

    .line 2272
    .local v1, "dbHelper":Lcom/onesignal/OneSignalDbHelper;
    const/4 v2, 0x0

    move-object v3, v2

    .line 2274
    .local v3, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {v1}, Lcom/onesignal/OneSignalDbHelper;->getReadableDbWithRetries()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 2276
    .local v4, "readableDb":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v12, 0x1

    new-array v6, v12, [Ljava/lang/String;

    const-string v5, "android_notification_id"

    const/4 v13, 0x0

    aput-object v5, v6, v13

    .line 2278
    .local v6, "retColumn":[Ljava/lang/String;
    const-string v5, "notification"

    const-string v7, "dismissed = 0 AND opened = 0"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    move-object v3, v5

    .line 2289
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2291
    :cond_0
    const-string v5, "android_notification_id"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 2292
    .local v5, "existingId":I
    invoke-virtual {v0, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 2293
    .end local v5    # "existingId":I
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v5, :cond_0

    .line 2298
    :cond_1
    move-object v5, v2

    .line 2300
    .local v5, "writableDb":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    invoke-virtual {v1}, Lcom/onesignal/OneSignalDbHelper;->getWritableDbWithRetries()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    move-object v5, v7

    .line 2301
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2303
    const-string v7, "opened = 0"

    .line 2304
    .local v7, "whereStr":Ljava/lang/String;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 2305
    .local v8, "values":Landroid/content/ContentValues;
    const-string v9, "dismissed"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2306
    const-string v9, "notification"

    invoke-virtual {v5, v9, v8, v7, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2307
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2311
    .end local v7    # "whereStr":Ljava/lang/String;
    .end local v8    # "values":Landroid/content/ContentValues;
    if-eqz v5, :cond_2

    .line 2313
    :try_start_2
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2316
    :goto_0
    goto :goto_2

    .line 2314
    :catch_0
    move-exception v2

    .line 2315
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_3
    sget-object v7, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v8, "Error closing transaction! "

    :goto_1
    invoke-static {v7, v8, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2315
    .end local v2    # "t":Ljava/lang/Throwable;
    goto :goto_0

    .line 2311
    :catchall_0
    move-exception v2

    goto :goto_4

    .line 2308
    :catch_1
    move-exception v2

    .line 2309
    .restart local v2    # "t":Ljava/lang/Throwable;
    :try_start_4
    sget-object v7, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v8, "Error marking all notifications as dismissed! "

    invoke-static {v7, v8, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2311
    .end local v2    # "t":Ljava/lang/Throwable;
    if-eqz v5, :cond_2

    .line 2313
    :try_start_5
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 2314
    :catch_2
    move-exception v2

    .line 2315
    .restart local v2    # "t":Ljava/lang/Throwable;
    :try_start_6
    sget-object v7, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v8, "Error closing transaction! "

    goto :goto_1

    .line 2320
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_2
    :goto_2
    sget-object v2, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v13, v2}, Lcom/onesignal/BadgeCountUpdater;->updateCount(ILandroid/content/Context;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2324
    .end local v4    # "readableDb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v5    # "writableDb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v6    # "retColumn":[Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 2325
    :goto_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_6

    .line 2311
    .restart local v4    # "readableDb":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v5    # "writableDb":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v6    # "retColumn":[Ljava/lang/String;
    :goto_4
    if-eqz v5, :cond_3

    .line 2313
    :try_start_7
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2316
    goto :goto_5

    .line 2314
    :catch_3
    move-exception v7

    .line 2315
    .local v7, "t":Ljava/lang/Throwable;
    :try_start_8
    sget-object v8, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v9, "Error closing transaction! "

    invoke-static {v8, v9, v7}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2316
    .end local v7    # "t":Ljava/lang/Throwable;
    :cond_3
    :goto_5
    throw v2
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 2324
    .end local v4    # "readableDb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v5    # "writableDb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v6    # "retColumn":[Ljava/lang/String;
    :catchall_1
    move-exception v2

    goto :goto_7

    .line 2321
    :catch_4
    move-exception v2

    .line 2322
    .restart local v2    # "t":Ljava/lang/Throwable;
    :try_start_9
    sget-object v4, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v5, "Error canceling all notifications! "

    invoke-static {v4, v5, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 2324
    .end local v2    # "t":Ljava/lang/Throwable;
    if-eqz v3, :cond_4

    goto :goto_3

    .line 2327
    :cond_4
    :goto_6
    return-void

    .line 2324
    :goto_7
    if-eqz v3, :cond_5

    .line 2325
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v2
.end method
