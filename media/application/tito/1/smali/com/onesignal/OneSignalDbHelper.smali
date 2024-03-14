.class public Lcom/onesignal/OneSignalDbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "OneSignalDbHelper.java"


# static fields
.field private static final COMMA_SEP:Ljava/lang/String; = ","

.field private static final DATABASE_NAME:Ljava/lang/String; = "OneSignal.db"

.field private static final DATABASE_VERSION:I = 0x2

.field private static final DB_OPEN_RETRY_BACKOFF:I = 0x190

.field private static final DB_OPEN_RETRY_MAX:I = 0x5

.field private static final INT_TYPE:Ljava/lang/String; = " INTEGER"

.field private static final SQL_CREATE_ENTRIES:Ljava/lang/String; = "CREATE TABLE notification (_id INTEGER PRIMARY KEY,notification_id TEXT,android_notification_id INTEGER,group_id TEXT,collapse_id TEXT,is_summary INTEGER DEFAULT 0,opened INTEGER DEFAULT 0,dismissed INTEGER DEFAULT 0,title TEXT,message TEXT,full_data TEXT,created_time TIMESTAMP DEFAULT (strftime(\'%s\', \'now\')));"

.field private static final SQL_INDEX_ENTRIES:Ljava/lang/String; = "CREATE INDEX notification_notification_id_idx ON notification(notification_id); CREATE INDEX notification_android_notification_id_idx ON notification(android_notification_id); CREATE INDEX notification_group_id_idx ON notification(group_id); CREATE INDEX notification_collapse_id_idx ON notification(collapse_id); CREATE INDEX notification_created_time_idx ON notification(created_time); "

.field private static final TEXT_TYPE:Ljava/lang/String; = " TEXT"

.field private static sInstance:Lcom/onesignal/OneSignalDbHelper;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 79
    const-string v0, "OneSignal.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 80
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/onesignal/OneSignalDbHelper;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/onesignal/OneSignalDbHelper;

    monitor-enter v0

    .line 83
    :try_start_0
    sget-object v1, Lcom/onesignal/OneSignalDbHelper;->sInstance:Lcom/onesignal/OneSignalDbHelper;

    if-nez v1, :cond_0

    .line 84
    new-instance v1, Lcom/onesignal/OneSignalDbHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/onesignal/OneSignalDbHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/onesignal/OneSignalDbHelper;->sInstance:Lcom/onesignal/OneSignalDbHelper;

    .line 85
    :cond_0
    sget-object v1, Lcom/onesignal/OneSignalDbHelper;->sInstance:Lcom/onesignal/OneSignalDbHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 82
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static internalOnUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "oldVersion"    # I
    .param p2, "newVersion"    # I

    .line 135
    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    .line 136
    const-string v0, "ALTER TABLE notification ADD COLUMN collapse_id TEXT;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 138
    const-string v0, "CREATE INDEX notification_group_id_idx ON notification(group_id); "

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 140
    :cond_0
    return-void
.end method


# virtual methods
.method declared-synchronized getReadableDbWithRetries()Landroid/database/sqlite/SQLiteDatabase;
    .locals 4

    monitor-enter p0

    .line 104
    const/4 v0, 0x0

    .line 107
    .local v0, "count":I
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/onesignal/OneSignalDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 103
    .end local v0    # "count":I
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 108
    .restart local v0    # "count":I
    :catch_0
    move-exception v1

    .line 109
    .local v1, "t":Ljava/lang/Throwable;
    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x5

    if-lt v0, v2, :cond_0

    .line 110
    :try_start_1
    throw v1

    .line 111
    :cond_0
    mul-int/lit16 v2, v0, 0x190

    int-to-long v2, v2

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    .end local v1    # "t":Ljava/lang/Throwable;
    goto :goto_0

    .line 103
    .end local v0    # "count":I
    :goto_1
    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getWritableDbWithRetries()Landroid/database/sqlite/SQLiteDatabase;
    .locals 4

    monitor-enter p0

    .line 91
    const/4 v0, 0x0

    .line 94
    .local v0, "count":I
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/onesignal/OneSignalDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 90
    .end local v0    # "count":I
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 95
    .restart local v0    # "count":I
    :catch_0
    move-exception v1

    .line 96
    .local v1, "t":Ljava/lang/Throwable;
    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x5

    if-lt v0, v2, :cond_0

    .line 97
    :try_start_1
    throw v1

    .line 98
    :cond_0
    mul-int/lit16 v2, v0, 0x190

    int-to-long v2, v2

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    .end local v1    # "t":Ljava/lang/Throwable;
    goto :goto_0

    .line 90
    .end local v0    # "count":I
    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 118
    const-string v0, "CREATE TABLE notification (_id INTEGER PRIMARY KEY,notification_id TEXT,android_notification_id INTEGER,group_id TEXT,collapse_id TEXT,is_summary INTEGER DEFAULT 0,opened INTEGER DEFAULT 0,dismissed INTEGER DEFAULT 0,title TEXT,message TEXT,full_data TEXT,created_time TIMESTAMP DEFAULT (strftime(\'%s\', \'now\')));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 119
    const-string v0, "CREATE INDEX notification_notification_id_idx ON notification(notification_id); CREATE INDEX notification_android_notification_id_idx ON notification(android_notification_id); CREATE INDEX notification_group_id_idx ON notification(group_id); CREATE INDEX notification_collapse_id_idx ON notification(collapse_id); CREATE INDEX notification_created_time_idx ON notification(created_time); "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 144
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "SDK version rolled back! Clearing OneSignal.db as it could be in an unexpected state."

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 146
    const-string v0, "SELECT name FROM sqlite_master WHERE type=\'table\'"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 148
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 150
    .local v1, "tables":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 151
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 153
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 154
    .local v3, "table":Ljava/lang/String;
    const-string v4, "sqlite_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 155
    goto :goto_1

    .line 156
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DROP TABLE IF EXISTS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    .end local v3    # "table":Ljava/lang/String;
    goto :goto_1

    .line 159
    .end local v1    # "tables":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 160
    nop

    .line 162
    invoke-virtual {p0, p1}, Lcom/onesignal/OneSignalDbHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 163
    return-void

    .line 159
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 125
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/onesignal/OneSignalDbHelper;->internalOnUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "Error in upgrade, migration may have already run! Skipping!"

    invoke-static {v1, v2, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :goto_0
    return-void
.end method
