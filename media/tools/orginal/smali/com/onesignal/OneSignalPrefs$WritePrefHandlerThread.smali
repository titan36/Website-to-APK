.class public Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;
.super Landroid/os/HandlerThread;
.source "OneSignalPrefs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/OneSignalPrefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WritePrefHandlerThread"
.end annotation


# static fields
.field private static final WRITE_CALL_DELAY_TO_BUFFER_MS:I = 0xc8


# instance fields
.field private lastSyncTime:J

.field public mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 91
    const-string v0, "OSH_WritePrefs"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 88
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;->lastSyncTime:J

    .line 92
    invoke-virtual {p0}, Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;->start()V

    .line 93
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;->mHandler:Landroid/os/Handler;

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;)V
    .locals 0
    .param p0, "x0"    # Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;

    .line 84
    invoke-direct {p0}, Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;->flushBufferToDisk()V

    return-void
.end method

.method private flushBufferToDisk()V
    .locals 11

    .line 118
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->synchronizer:Ljava/lang/Object;

    monitor-enter v0

    .line 119
    :try_start_0
    sget-object v1, Lcom/onesignal/OneSignalPrefs;->prefsToApply:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 120
    .local v2, "pref":Ljava/lang/String;
    invoke-static {v2}, Lcom/onesignal/OneSignalPrefs;->access$100(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 121
    .local v3, "prefsToWrite":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 122
    .local v4, "editor":Landroid/content/SharedPreferences$Editor;
    sget-object v5, Lcom/onesignal/OneSignalPrefs;->prefsToApply:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    .line 123
    .local v5, "prefHash":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 124
    .local v7, "key":Ljava/lang/String;
    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 125
    .local v8, "value":Ljava/lang/Object;
    instance-of v9, v8, Ljava/lang/String;

    if-eqz v9, :cond_0

    .line 126
    move-object v9, v8

    check-cast v9, Ljava/lang/String;

    invoke-interface {v4, v7, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 127
    :cond_0
    instance-of v9, v8, Ljava/lang/Boolean;

    if-eqz v9, :cond_1

    .line 128
    move-object v9, v8

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-interface {v4, v7, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 129
    :cond_1
    instance-of v9, v8, Ljava/lang/Integer;

    if-eqz v9, :cond_2

    .line 130
    move-object v9, v8

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v4, v7, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 131
    :cond_2
    instance-of v9, v8, Ljava/lang/Long;

    if-eqz v9, :cond_3

    .line 132
    move-object v9, v8

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-interface {v4, v7, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 133
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/Object;
    :cond_3
    :goto_2
    goto :goto_1

    .line 134
    :cond_4
    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 136
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 137
    .end local v2    # "pref":Ljava/lang/String;
    .end local v3    # "prefsToWrite":Landroid/content/SharedPreferences;
    .end local v4    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v5    # "prefHash":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_0

    .line 139
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;->lastSyncTime:J

    .line 140
    monitor-exit v0

    .line 141
    return-void

    .line 140
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getNewRunnable()Ljava/lang/Runnable;
    .locals 1

    .line 109
    new-instance v0, Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread$1;

    invoke-direct {v0, p0}, Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread$1;-><init>(Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;)V

    return-object v0
.end method


# virtual methods
.method startDelayedWrite()V
    .locals 7

    .line 97
    iget-object v0, p0, Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;->mHandler:Landroid/os/Handler;

    monitor-enter v0

    .line 98
    :try_start_0
    iget-object v1, p0, Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 99
    iget-wide v1, p0, Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;->lastSyncTime:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;->lastSyncTime:J

    .line 102
    :cond_0
    iget-wide v1, p0, Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;->lastSyncTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v5, v1, v3

    const-wide/16 v1, 0xc8

    add-long v3, v5, v1

    .line 104
    .local v3, "delay":J
    iget-object v1, p0, Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;->getNewRunnable()Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 105
    .end local v3    # "delay":J
    monitor-exit v0

    .line 106
    return-void

    .line 105
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
