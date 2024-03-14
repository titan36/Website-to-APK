.class public Lcom/onesignal/GcmBroadcastReceiver;
.super Landroid/support/v4/content/WakefulBroadcastReceiver;
.source "GcmBroadcastReceiver.java"


# static fields
.field private static final GCM_RECEIVE_ACTION:Ljava/lang/String; = "com.google.android.c2dm.intent.RECEIVE"

.field private static final GCM_TYPE:Ljava/lang/String; = "gcm"

.field private static final MESSAGE_TYPE_EXTRA_KEY:Ljava/lang/String; = "message_type"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Landroid/support/v4/content/WakefulBroadcastReceiver;-><init>()V

    return-void
.end method

.method private static isGcmMessage(Landroid/content/Intent;)Z
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;

    .line 54
    const-string v0, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 55
    const-string v0, "message_type"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "messageType":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v2, "gcm"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 58
    .end local v0    # "messageType":Ljava/lang/String;
    :cond_2
    return v1
.end method

.method private static processOrderBroadcast(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 109
    invoke-static {p1}, Lcom/onesignal/GcmBroadcastReceiver;->isGcmMessage(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    const/4 v0, 0x0

    return-object v0

    .line 112
    :cond_0
    invoke-static {p0, p2}, Lcom/onesignal/NotificationBundleProcessor;->processBundleFromReceiver(Landroid/content/Context;Landroid/os/Bundle;)Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;

    move-result-object v0

    .line 115
    .local v0, "processedResult":Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;
    invoke-virtual {v0}, Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;->processed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    return-object v0

    .line 118
    :cond_1
    invoke-static {p0, p2}, Lcom/onesignal/GcmBroadcastReceiver;->startGCMService(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 120
    return-object v0
.end method

.method private setAbort()V
    .locals 1

    .line 104
    invoke-virtual {p0}, Lcom/onesignal/GcmBroadcastReceiver;->isOrderedBroadcast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/onesignal/GcmBroadcastReceiver;->abortBroadcast()V

    .line 106
    :cond_0
    return-void
.end method

.method private static setCompatBundleForServer(Landroid/os/Bundle;Lcom/onesignal/BundleCompat;)Lcom/onesignal/BundleCompat;
    .locals 5
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "taskExtras"    # Lcom/onesignal/BundleCompat;

    .line 165
    const-string v0, "json_payload"

    invoke-static {p0}, Lcom/onesignal/NotificationBundleProcessor;->bundleAsJSONObject(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/onesignal/BundleCompat;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v0, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/onesignal/BundleCompat;->putLong(Ljava/lang/String;Ljava/lang/Long;)V

    .line 167
    return-object p1
.end method

.method private setResult(I)V
    .locals 1
    .param p1, "code"    # I

    .line 99
    invoke-virtual {p0}, Lcom/onesignal/GcmBroadcastReceiver;->isOrderedBroadcast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p0, p1}, Lcom/onesignal/GcmBroadcastReceiver;->setResultCode(I)V

    .line 101
    :cond_0
    return-void
.end method

.method private static startGCMService(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 127
    invoke-static {p1}, Lcom/onesignal/NotificationBundleProcessor;->hasRemoteResource(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    invoke-static {}, Lcom/onesignal/BundleCompatFactory;->getInstance()Lcom/onesignal/BundleCompat;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/onesignal/GcmBroadcastReceiver;->setCompatBundleForServer(Landroid/os/Bundle;Lcom/onesignal/BundleCompat;)Lcom/onesignal/BundleCompat;

    move-result-object v0

    .line 129
    .local v0, "taskExtras":Lcom/onesignal/BundleCompat;
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/onesignal/NotificationBundleProcessor;->ProcessFromGCMIntentService(Landroid/content/Context;Lcom/onesignal/BundleCompat;Lcom/onesignal/NotificationExtenderService$OverrideSettings;)V

    .line 130
    return-void

    .line 133
    .end local v0    # "taskExtras":Lcom/onesignal/BundleCompat;
    :cond_0
    const-string v0, "pri"

    const-string v1, "0"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x9

    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 134
    .local v0, "isHighPriority":Z
    :goto_0
    if-nez v0, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_2

    .line 135
    invoke-static {}, Lcom/onesignal/BundleCompatFactory;->getInstance()Lcom/onesignal/BundleCompat;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/onesignal/GcmBroadcastReceiver;->setCompatBundleForServer(Landroid/os/Bundle;Lcom/onesignal/BundleCompat;)Lcom/onesignal/BundleCompat;

    move-result-object v1

    .line 137
    .local v1, "taskExtras":Lcom/onesignal/BundleCompat;
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/onesignal/GcmIntentJobService;

    .line 138
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .local v2, "componentName":Landroid/content/ComponentName;
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 140
    .local v3, "random":Ljava/util/Random;
    new-instance v4, Landroid/app/job/JobInfo$Builder;

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v5

    invoke-direct {v4, v5, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const-wide/16 v5, 0x0

    .line 141
    invoke-virtual {v4, v5, v6}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v4

    .line 142
    invoke-interface {v1}, Lcom/onesignal/BundleCompat;->getBundle()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PersistableBundle;

    invoke-virtual {v4, v5}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object v4

    .line 143
    invoke-virtual {v4}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v4

    .line 144
    .local v4, "jobInfo":Landroid/app/job/JobInfo;
    const-string v5, "jobscheduler"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/job/JobScheduler;

    .line 150
    .local v5, "jobScheduler":Landroid/app/job/JobScheduler;
    invoke-virtual {v5, v4}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 151
    .end local v2    # "componentName":Landroid/content/ComponentName;
    .end local v3    # "random":Ljava/util/Random;
    .end local v4    # "jobInfo":Landroid/app/job/JobInfo;
    .end local v5    # "jobScheduler":Landroid/app/job/JobScheduler;
    goto :goto_1

    .line 153
    .end local v1    # "taskExtras":Lcom/onesignal/BundleCompat;
    :cond_2
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/onesignal/GcmIntentService;

    .line 154
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .local v1, "componentName":Landroid/content/ComponentName;
    new-instance v2, Lcom/onesignal/BundleCompatBundle;

    invoke-direct {v2}, Lcom/onesignal/BundleCompatBundle;-><init>()V

    invoke-static {p1, v2}, Lcom/onesignal/GcmBroadcastReceiver;->setCompatBundleForServer(Landroid/os/Bundle;Lcom/onesignal/BundleCompat;)Lcom/onesignal/BundleCompat;

    move-result-object v2

    .line 157
    .local v2, "taskExtras":Lcom/onesignal/BundleCompat;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 158
    invoke-interface {v2}, Lcom/onesignal/BundleCompat;->getBundle()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v3

    .line 159
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    .line 160
    .local v3, "intentForService":Landroid/content/Intent;
    invoke-static {p0, v3}, Lcom/onesignal/GcmBroadcastReceiver;->startWakefulService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 162
    .end local v1    # "componentName":Landroid/content/ComponentName;
    .end local v3    # "intentForService":Landroid/content/Intent;
    move-object v1, v2

    .line 162
    .end local v2    # "taskExtras":Lcom/onesignal/BundleCompat;
    .local v1, "taskExtras":Lcom/onesignal/BundleCompat;
    :goto_1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 65
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 66
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_5

    const-string v1, "google.com/iid"

    const-string v2, "from"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 69
    :cond_0
    invoke-static {p1, p2, v0}, Lcom/onesignal/GcmBroadcastReceiver;->processOrderBroadcast(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;

    move-result-object v1

    .line 72
    .local v1, "processedResult":Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;
    const/4 v2, -0x1

    if-nez v1, :cond_1

    .line 73
    invoke-direct {p0, v2}, Lcom/onesignal/GcmBroadcastReceiver;->setResult(I)V

    .line 74
    return-void

    .line 80
    :cond_1
    iget-boolean v3, v1, Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;->isDup:Z

    if-nez v3, :cond_4

    iget-boolean v3, v1, Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;->hasExtenderService:Z

    if-eqz v3, :cond_2

    goto :goto_0

    .line 89
    :cond_2
    iget-boolean v3, v1, Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;->isOneSignalPayload:Z

    if-eqz v3, :cond_3

    .line 90
    invoke-static {p1}, Lcom/onesignal/OneSignal;->getFilterOtherGCMReceivers(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 91
    invoke-direct {p0}, Lcom/onesignal/GcmBroadcastReceiver;->setAbort()V

    .line 92
    return-void

    .line 95
    :cond_3
    invoke-direct {p0, v2}, Lcom/onesignal/GcmBroadcastReceiver;->setResult(I)V

    .line 96
    return-void

    .line 82
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/onesignal/GcmBroadcastReceiver;->setAbort()V

    .line 83
    return-void

    .line 67
    .end local v1    # "processedResult":Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;
    :cond_5
    :goto_1
    return-void
.end method
