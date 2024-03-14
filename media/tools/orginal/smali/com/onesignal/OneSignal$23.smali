.class final Lcom/onesignal/OneSignal$23;
.super Ljava/lang/Object;
.source "OneSignal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignal;->cancelGroupedNotifications(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$group:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2412
    iput-object p1, p0, Lcom/onesignal/OneSignal$23;->val$group:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 2415
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 2417
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/onesignal/OneSignalDbHelper;->getInstance(Landroid/content/Context;)Lcom/onesignal/OneSignalDbHelper;

    move-result-object v1

    .line 2418
    .local v1, "dbHelper":Lcom/onesignal/OneSignalDbHelper;
    const/4 v2, 0x0

    move-object v3, v2

    .line 2421
    .local v3, "cursor":Landroid/database/Cursor;
    const/4 v4, 0x0

    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v1}, Lcom/onesignal/OneSignalDbHelper;->getReadableDbWithRetries()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 2423
    .local v6, "readableDb":Landroid/database/sqlite/SQLiteDatabase;
    new-array v8, v5, [Ljava/lang/String;

    const-string v7, "android_notification_id"

    aput-object v7, v8, v4

    .line 2425
    .local v8, "retColumn":[Ljava/lang/String;
    const-string v9, "group_id = ? AND dismissed = 0 AND opened = 0"

    .line 2428
    .local v9, "whereStr":Ljava/lang/String;
    new-array v10, v5, [Ljava/lang/String;

    iget-object v7, p0, Lcom/onesignal/OneSignal$23;->val$group:Ljava/lang/String;

    aput-object v7, v10, v4

    .line 2430
    .local v10, "whereArgs":[Ljava/lang/String;
    const-string v7, "notification"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v6 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    move-object v3, v7

    .line 2437
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2438
    const-string v7, "android_notification_id"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 2439
    .local v7, "notifId":I
    const/4 v11, -0x1

    if-eq v7, v11, :cond_0

    .line 2440
    invoke-virtual {v0, v7}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2441
    .end local v7    # "notifId":I
    :cond_0
    goto :goto_0

    .line 2447
    .end local v6    # "readableDb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "retColumn":[Ljava/lang/String;
    .end local v9    # "whereStr":Ljava/lang/String;
    .end local v10    # "whereArgs":[Ljava/lang/String;
    :cond_1
    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_2

    .line 2448
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 2447
    :catchall_0
    move-exception v2

    goto/16 :goto_7

    .line 2443
    :catch_0
    move-exception v6

    .line 2444
    .local v6, "t":Ljava/lang/Throwable;
    :try_start_1
    sget-object v7, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error getting android notifications part of group: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/onesignal/OneSignal$23;->val$group:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v6}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2447
    .end local v6    # "t":Ljava/lang/Throwable;
    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    .line 2451
    :cond_2
    :goto_2
    nop

    .line 2453
    .local v2, "writableDb":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_2
    invoke-virtual {v1}, Lcom/onesignal/OneSignalDbHelper;->getWritableDbWithRetries()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    move-object v2, v6

    .line 2454
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2456
    const-string v6, "group_id = ? AND opened = 0 AND dismissed = 0"

    .line 2459
    .local v6, "whereStr":Ljava/lang/String;
    new-array v7, v5, [Ljava/lang/String;

    iget-object v8, p0, Lcom/onesignal/OneSignal$23;->val$group:Ljava/lang/String;

    aput-object v8, v7, v4

    move-object v4, v7

    .line 2461
    .local v4, "whereArgs":[Ljava/lang/String;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 2462
    .local v7, "values":Landroid/content/ContentValues;
    const-string v8, "dismissed"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2464
    const-string v5, "notification"

    invoke-virtual {v2, v5, v7, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2465
    sget-object v5, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v2, v5}, Lcom/onesignal/BadgeCountUpdater;->update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V

    .line 2467
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2471
    .end local v4    # "whereArgs":[Ljava/lang/String;
    .end local v6    # "whereStr":Ljava/lang/String;
    .end local v7    # "values":Landroid/content/ContentValues;
    if-eqz v2, :cond_3

    .line 2473
    :try_start_3
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 2476
    :goto_3
    goto :goto_4

    .line 2474
    :catch_1
    move-exception v4

    .line 2475
    .local v4, "t":Ljava/lang/Throwable;
    sget-object v5, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v6, "Error closing transaction! "

    invoke-static {v5, v6, v4}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2475
    .end local v4    # "t":Ljava/lang/Throwable;
    goto :goto_3

    .line 2471
    :catchall_1
    move-exception v4

    goto :goto_5

    .line 2468
    :catch_2
    move-exception v4

    .line 2469
    .restart local v4    # "t":Ljava/lang/Throwable;
    :try_start_4
    sget-object v5, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error marking a notifications with group "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/onesignal/OneSignal$23;->val$group:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " as dismissed! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2471
    .end local v4    # "t":Ljava/lang/Throwable;
    if-eqz v2, :cond_3

    .line 2473
    :try_start_5
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    .line 2479
    :cond_3
    :goto_4
    return-void

    .line 2471
    :goto_5
    if-eqz v2, :cond_4

    .line 2473
    :try_start_6
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    .line 2476
    goto :goto_6

    .line 2474
    :catch_3
    move-exception v5

    .line 2475
    .local v5, "t":Ljava/lang/Throwable;
    sget-object v6, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v7, "Error closing transaction! "

    invoke-static {v6, v7, v5}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2476
    .end local v5    # "t":Ljava/lang/Throwable;
    :cond_4
    :goto_6
    throw v4

    .line 2447
    .end local v2    # "writableDb":Landroid/database/sqlite/SQLiteDatabase;
    :goto_7
    if-eqz v3, :cond_5

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_5

    .line 2448
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v2
.end method
