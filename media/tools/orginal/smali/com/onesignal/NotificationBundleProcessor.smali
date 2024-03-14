.class Lcom/onesignal/NotificationBundleProcessor;
.super Ljava/lang/Object;
.source "NotificationBundleProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;
    }
.end annotation


# static fields
.field static final DEFAULT_ACTION:Ljava/lang/String; = "__DEFAULT__"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static OSNotificationPayloadFrom(Lorg/json/JSONObject;)Lcom/onesignal/OSNotificationPayload;
    .locals 7
    .param p0, "currentJsonPayload"    # Lorg/json/JSONObject;

    .line 306
    new-instance v0, Lcom/onesignal/OSNotificationPayload;

    invoke-direct {v0}, Lcom/onesignal/OSNotificationPayload;-><init>()V

    .line 308
    .local v0, "notification":Lcom/onesignal/OSNotificationPayload;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "custom"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 309
    .local v1, "customJson":Lorg/json/JSONObject;
    const-string v2, "i"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/onesignal/OSNotificationPayload;->notificationID:Ljava/lang/String;

    .line 310
    const-string v2, "ti"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/onesignal/OSNotificationPayload;->templateId:Ljava/lang/String;

    .line 311
    const-string v2, "tn"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/onesignal/OSNotificationPayload;->templateName:Ljava/lang/String;

    .line 312
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/onesignal/OSNotificationPayload;->rawPayload:Ljava/lang/String;

    .line 313
    const-string v2, "a"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, v0, Lcom/onesignal/OSNotificationPayload;->additionalData:Lorg/json/JSONObject;

    .line 314
    const-string v2, "u"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/onesignal/OSNotificationPayload;->launchURL:Ljava/lang/String;

    .line 316
    const-string v2, "alert"

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/onesignal/OSNotificationPayload;->body:Ljava/lang/String;

    .line 317
    const-string v2, "title"

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/onesignal/OSNotificationPayload;->title:Ljava/lang/String;

    .line 318
    const-string v2, "sicon"

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/onesignal/OSNotificationPayload;->smallIcon:Ljava/lang/String;

    .line 319
    const-string v2, "bicon"

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/onesignal/OSNotificationPayload;->bigPicture:Ljava/lang/String;

    .line 320
    const-string v2, "licon"

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/onesignal/OSNotificationPayload;->largeIcon:Ljava/lang/String;

    .line 321
    const-string v2, "sound"

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/onesignal/OSNotificationPayload;->sound:Ljava/lang/String;

    .line 322
    const-string v2, "grp"

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/onesignal/OSNotificationPayload;->groupKey:Ljava/lang/String;

    .line 323
    const-string v2, "grp_msg"

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/onesignal/OSNotificationPayload;->groupMessage:Ljava/lang/String;

    .line 324
    const-string v2, "bgac"

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/onesignal/OSNotificationPayload;->smallIconAccentColor:Ljava/lang/String;

    .line 325
    const-string v2, "ledc"

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/onesignal/OSNotificationPayload;->ledColor:Ljava/lang/String;

    .line 326
    const-string v2, "vis"

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 327
    .local v2, "visibility":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 328
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/onesignal/OSNotificationPayload;->lockScreenVisibility:I

    .line 329
    :cond_0
    const-string v4, "from"

    invoke-virtual {p0, v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/onesignal/OSNotificationPayload;->fromProjectNumber:Ljava/lang/String;

    .line 330
    const-string v4, "pri"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lcom/onesignal/OSNotificationPayload;->priority:I

    .line 331
    const-string v4, "collapse_key"

    invoke-virtual {p0, v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 332
    .local v3, "collapseKey":Ljava/lang/String;
    const-string v4, "do_not_collapse"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 333
    iput-object v3, v0, Lcom/onesignal/OSNotificationPayload;->collapseId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 336
    :cond_1
    :try_start_1
    invoke-static {v0}, Lcom/onesignal/NotificationBundleProcessor;->setActionButtons(Lcom/onesignal/OSNotificationPayload;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 339
    goto :goto_0

    .line 337
    :catch_0
    move-exception v4

    .line 338
    .local v4, "t":Ljava/lang/Throwable;
    :try_start_2
    sget-object v5, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v6, "Error assigning OSNotificationPayload.actionButtons values!"

    invoke-static {v5, v6, v4}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 342
    .end local v4    # "t":Ljava/lang/Throwable;
    :goto_0
    :try_start_3
    invoke-static {v0, p0}, Lcom/onesignal/NotificationBundleProcessor;->setBackgroundImageLayout(Lcom/onesignal/OSNotificationPayload;Lorg/json/JSONObject;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 345
    goto :goto_1

    .line 343
    :catch_1
    move-exception v4

    .line 344
    .restart local v4    # "t":Ljava/lang/Throwable;
    :try_start_4
    sget-object v5, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v6, "Error assigning OSNotificationPayload.backgroundImageLayout values!"

    invoke-static {v5, v6, v4}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    .line 348
    .end local v1    # "customJson":Lorg/json/JSONObject;
    .end local v2    # "visibility":Ljava/lang/String;
    .end local v3    # "collapseKey":Ljava/lang/String;
    .end local v4    # "t":Ljava/lang/Throwable;
    :goto_1
    goto :goto_2

    .line 346
    :catch_2
    move-exception v1

    .line 347
    .local v1, "t":Ljava/lang/Throwable;
    sget-object v2, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v3, "Error assigning OSNotificationPayload values!"

    invoke-static {v2, v3, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 350
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_2
    return-object v0
.end method

.method static ProcessFromGCMIntentService(Landroid/content/Context;Lcom/onesignal/BundleCompat;Lcom/onesignal/NotificationExtenderService$OverrideSettings;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bundle"    # Lcom/onesignal/BundleCompat;
    .param p2, "overrideSettings"    # Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    .line 54
    :try_start_0
    const-string v0, "json_payload"

    invoke-interface {p1, v0}, Lcom/onesignal/BundleCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "jsonStrPayload":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 56
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "json_payload key is nonexistent from mBundle passed to ProcessFromGCMIntentService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 57
    return-void

    .line 60
    :cond_0
    new-instance v1, Lcom/onesignal/NotificationGenerationJob;

    invoke-direct {v1, p0}, Lcom/onesignal/NotificationGenerationJob;-><init>(Landroid/content/Context;)V

    .line 61
    .local v1, "notifJob":Lcom/onesignal/NotificationGenerationJob;
    const-string v2, "restoring"

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Lcom/onesignal/BundleCompat;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/onesignal/NotificationGenerationJob;->restoring:Z

    .line 62
    const-string v2, "timestamp"

    invoke-interface {p1, v2}, Lcom/onesignal/BundleCompat;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/onesignal/NotificationGenerationJob;->shownTimeStamp:Ljava/lang/Long;

    .line 63
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    .line 65
    iget-boolean v2, v1, Lcom/onesignal/NotificationGenerationJob;->restoring:Z

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    invoke-static {p0, v2}, Lcom/onesignal/OneSignal;->notValidOrDuplicated(Landroid/content/Context;Lorg/json/JSONObject;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 66
    return-void

    .line 68
    :cond_1
    const-string v2, "android_notif_id"

    invoke-interface {p1, v2}, Lcom/onesignal/BundleCompat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 69
    if-nez p2, :cond_2

    .line 70
    new-instance v2, Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    invoke-direct {v2}, Lcom/onesignal/NotificationExtenderService$OverrideSettings;-><init>()V

    move-object p2, v2

    .line 71
    :cond_2
    const-string v2, "android_notif_id"

    invoke-interface {p1, v2}, Lcom/onesignal/BundleCompat;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p2, Lcom/onesignal/NotificationExtenderService$OverrideSettings;->androidNotificationId:Ljava/lang/Integer;

    .line 74
    :cond_3
    iput-object p2, v1, Lcom/onesignal/NotificationGenerationJob;->overrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    .line 75
    invoke-static {v1}, Lcom/onesignal/NotificationBundleProcessor;->ProcessJobForDisplay(Lcom/onesignal/NotificationGenerationJob;)I

    .line 79
    iget-boolean v2, v1, Lcom/onesignal/NotificationGenerationJob;->restoring:Z

    if-eqz v2, :cond_4

    .line 80
    const/16 v2, 0x64

    invoke-static {v2}, Lcom/onesignal/OSUtils;->sleep(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .end local v0    # "jsonStrPayload":Ljava/lang/String;
    .end local v1    # "notifJob":Lcom/onesignal/NotificationGenerationJob;
    :cond_4
    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 84
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method static ProcessJobForDisplay(Lcom/onesignal/NotificationGenerationJob;)I
    .locals 5
    .param p0, "notifJob"    # Lcom/onesignal/NotificationGenerationJob;

    .line 87
    invoke-static {}, Lcom/onesignal/OneSignal;->getInAppAlertNotificationEnabled()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/onesignal/OneSignal;->isAppActive()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/onesignal/NotificationGenerationJob;->showAsAlert:Z

    .line 88
    invoke-static {p0}, Lcom/onesignal/NotificationBundleProcessor;->processCollapseKey(Lcom/onesignal/NotificationGenerationJob;)V

    .line 90
    nop

    .line 91
    invoke-virtual {p0}, Lcom/onesignal/NotificationGenerationJob;->hasExtender()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    const-string v3, "alert"

    .line 92
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/onesignal/NotificationBundleProcessor;->shouldDisplay(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_2

    :cond_2
    :goto_1
    move v0, v2

    .line 95
    .local v0, "doDisplay":Z
    :goto_2
    if-eqz v0, :cond_3

    .line 96
    invoke-static {p0}, Lcom/onesignal/GenerateNotification;->fromJsonPayload(Lcom/onesignal/NotificationGenerationJob;)V

    .line 98
    :cond_3
    iget-boolean v3, p0, Lcom/onesignal/NotificationGenerationJob;->restoring:Z

    if-nez v3, :cond_4

    .line 99
    invoke-static {p0, v1}, Lcom/onesignal/NotificationBundleProcessor;->saveNotification(Lcom/onesignal/NotificationGenerationJob;Z)V

    .line 101
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 102
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "notificationId"

    invoke-virtual {p0}, Lcom/onesignal/NotificationGenerationJob;->getAndroidId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    invoke-static {v1}, Lcom/onesignal/NotificationBundleProcessor;->newJsonArray(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v3

    iget-boolean v4, p0, Lcom/onesignal/NotificationGenerationJob;->showAsAlert:Z

    invoke-static {v3, v2, v4}, Lcom/onesignal/OneSignal;->handleNotificationReceived(Lorg/json/JSONArray;ZZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_3

    :catch_0
    move-exception v1

    .line 107
    :cond_4
    :goto_3
    invoke-virtual {p0}, Lcom/onesignal/NotificationGenerationJob;->getAndroidId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method static synthetic access$000(Landroid/os/Bundle;)Lorg/json/JSONArray;
    .locals 1
    .param p0, "x0"    # Landroid/os/Bundle;

    .line 48
    invoke-static {p0}, Lcom/onesignal/NotificationBundleProcessor;->bundleAsJsonArray(Landroid/os/Bundle;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method static bundleAsJSONObject(Landroid/os/Bundle;)Lorg/json/JSONObject;
    .locals 8
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 243
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 244
    .local v0, "json":Lorg/json/JSONObject;
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 246
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 248
    .local v3, "key":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    goto :goto_1

    .line 249
    :catch_0
    move-exception v4

    .line 250
    .local v4, "e":Lorg/json/JSONException;
    sget-object v5, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bundleAsJSONObject error for key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 252
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "e":Lorg/json/JSONException;
    :goto_1
    goto :goto_0

    .line 254
    :cond_0
    return-object v0
.end method

.method private static bundleAsJsonArray(Landroid/os/Bundle;)Lorg/json/JSONArray;
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 111
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 112
    .local v0, "jsonArray":Lorg/json/JSONArray;
    invoke-static {p0}, Lcom/onesignal/NotificationBundleProcessor;->bundleAsJSONObject(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 113
    return-object v0
.end method

.method static deleteOldNotifications(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8
    .param p0, "writableDb"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 237
    const-string v0, "notification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "created_time < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const-wide/32 v4, 0x93a80

    sub-long v6, v2, v4

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 237
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 240
    return-void
.end method

.method static hasRemoteResource(Landroid/os/Bundle;)Z
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 490
    const-string v0, "licon"

    invoke-static {p0, v0}, Lcom/onesignal/NotificationBundleProcessor;->isBuildKeyRemote(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "bicon"

    .line 491
    invoke-static {p0, v0}, Lcom/onesignal/NotificationBundleProcessor;->isBuildKeyRemote(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "bg_img"

    const/4 v1, 0x0

    .line 492
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 490
    :goto_1
    return v0
.end method

.method private static isBuildKeyRemote(Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;

    .line 496
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 497
    .local v0, "value":Ljava/lang/String;
    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method static markRestoredNotificationAsDismissed(Lcom/onesignal/NotificationGenerationJob;)V
    .locals 7
    .param p0, "notifiJob"    # Lcom/onesignal/NotificationGenerationJob;

    .line 202
    invoke-virtual {p0}, Lcom/onesignal/NotificationGenerationJob;->getAndroidIdWithoutCreate()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 203
    return-void

    .line 205
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android_notification_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onesignal/NotificationGenerationJob;->getAndroidIdWithoutCreate()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "whereStr":Ljava/lang/String;
    iget-object v1, p0, Lcom/onesignal/NotificationGenerationJob;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/onesignal/OneSignalDbHelper;->getInstance(Landroid/content/Context;)Lcom/onesignal/OneSignalDbHelper;

    move-result-object v1

    .line 208
    .local v1, "dbHelper":Lcom/onesignal/OneSignalDbHelper;
    const/4 v2, 0x0

    move-object v3, v2

    .line 211
    .local v3, "writableDb":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {v1}, Lcom/onesignal/OneSignalDbHelper;->getWritableDbWithRetries()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    move-object v3, v4

    .line 212
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 214
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 215
    .local v4, "values":Landroid/content/ContentValues;
    const-string v5, "dismissed"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 217
    const-string v5, "notification"

    invoke-virtual {v3, v5, v4, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 218
    iget-object v2, p0, Lcom/onesignal/NotificationGenerationJob;->context:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/onesignal/BadgeCountUpdater;->update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V

    .line 220
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    .end local v4    # "values":Landroid/content/ContentValues;
    if-eqz v3, :cond_1

    .line 227
    :try_start_1
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 230
    :goto_0
    goto :goto_1

    .line 228
    :catch_0
    move-exception v2

    .line 229
    .local v2, "t":Ljava/lang/Throwable;
    sget-object v4, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v5, "Error closing transaction! "

    invoke-static {v4, v5, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 229
    .end local v2    # "t":Ljava/lang/Throwable;
    goto :goto_0

    .line 225
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 222
    :catch_1
    move-exception v2

    .line 223
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v4, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v5, "Error saving notification record! "

    invoke-static {v4, v5, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 225
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_1

    .line 227
    :try_start_3
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 233
    :cond_1
    :goto_1
    return-void

    .line 225
    :goto_2
    if-eqz v3, :cond_2

    .line 227
    :try_start_4
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    .line 230
    goto :goto_3

    .line 228
    :catch_2
    move-exception v4

    .line 229
    .local v4, "t":Ljava/lang/Throwable;
    sget-object v5, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v6, "Error closing transaction! "

    invoke-static {v5, v6, v4}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 230
    .end local v4    # "t":Ljava/lang/Throwable;
    :cond_2
    :goto_3
    throw v2
.end method

.method static newJsonArray(Lorg/json/JSONObject;)Lorg/json/JSONArray;
    .locals 1
    .param p0, "jsonObject"    # Lorg/json/JSONObject;

    .line 484
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 485
    .local v0, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v0, p0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 486
    return-object v0
.end method

.method static processBundleFromReceiver(Landroid/content/Context;Landroid/os/Bundle;)Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 420
    new-instance v0, Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;

    invoke-direct {v0}, Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;-><init>()V

    .line 423
    .local v0, "result":Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;
    invoke-static {p1}, Lcom/onesignal/OneSignal;->getNotificationIdFromGCMBundle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 424
    return-object v0

    .line 425
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;->isOneSignalPayload:Z

    .line 427
    invoke-static {p1}, Lcom/onesignal/NotificationBundleProcessor;->unMinifyBundle(Landroid/os/Bundle;)V

    .line 429
    invoke-static {p0, p1, v0}, Lcom/onesignal/NotificationBundleProcessor;->startExtenderService(Landroid/content/Context;Landroid/os/Bundle;Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    .line 432
    :cond_1
    invoke-static {p1}, Lcom/onesignal/NotificationBundleProcessor;->bundleAsJSONObject(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/onesignal/OneSignal;->notValidOrDuplicated(Landroid/content/Context;Lorg/json/JSONObject;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;->isDup:Z

    .line 433
    iget-boolean v2, v0, Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;->isDup:Z

    if-eqz v2, :cond_2

    .line 434
    return-object v0

    .line 436
    :cond_2
    const-string v2, "alert"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 439
    .local v2, "alert":Ljava/lang/String;
    invoke-static {v2}, Lcom/onesignal/NotificationBundleProcessor;->shouldDisplay(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 440
    const/4 v3, -0x1

    invoke-static {p0, p1, v1, v3}, Lcom/onesignal/NotificationBundleProcessor;->saveNotification(Landroid/content/Context;Landroid/os/Bundle;ZI)V

    .line 443
    new-instance v1, Ljava/lang/Thread;

    new-instance v3, Lcom/onesignal/NotificationBundleProcessor$1;

    invoke-direct {v3, p1}, Lcom/onesignal/NotificationBundleProcessor$1;-><init>(Landroid/os/Bundle;)V

    const-string v4, "OS_PROC_BUNDLE"

    invoke-direct {v1, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 447
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 450
    :cond_3
    return-object v0
.end method

.method private static processCollapseKey(Lcom/onesignal/NotificationGenerationJob;)V
    .locals 12
    .param p0, "notifJob"    # Lcom/onesignal/NotificationGenerationJob;

    .line 384
    iget-boolean v0, p0, Lcom/onesignal/NotificationGenerationJob;->restoring:Z

    if-eqz v0, :cond_0

    .line 385
    return-void

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    const-string v1, "collapse_key"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "do_not_collapse"

    iget-object v1, p0, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    const-string v2, "collapse_key"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_3

    .line 388
    :cond_1
    iget-object v0, p0, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    const-string v1, "collapse_key"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, "collapse_id":Ljava/lang/String;
    iget-object v1, p0, Lcom/onesignal/NotificationGenerationJob;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/onesignal/OneSignalDbHelper;->getInstance(Landroid/content/Context;)Lcom/onesignal/OneSignalDbHelper;

    move-result-object v1

    .line 392
    .local v1, "dbHelper":Lcom/onesignal/OneSignalDbHelper;
    const/4 v2, 0x0

    .line 395
    .local v2, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {v1}, Lcom/onesignal/OneSignalDbHelper;->getReadableDbWithRetries()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 396
    .local v3, "readableDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "notification"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/String;

    const-string v7, "android_notification_id"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const-string v7, "collapse_id = ? AND dismissed = 0 AND opened = 0 "

    new-array v9, v5, [Ljava/lang/String;

    aput-object v0, v9, v8

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v5, v6

    move-object v6, v7

    move-object v7, v9

    move-object v9, v10

    move-object v10, v11

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object v2, v4

    .line 405
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 406
    const-string v4, "android_notification_id"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 407
    .local v4, "androidNotificationId":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/onesignal/NotificationGenerationJob;->setAndroidIdWithOutOverriding(Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    .end local v3    # "readableDb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v4    # "androidNotificationId":I
    :cond_2
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_3

    .line 414
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 413
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 409
    :catch_0
    move-exception v3

    .line 410
    .local v3, "t":Ljava/lang/Throwable;
    :try_start_1
    sget-object v4, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v5, "Could not read DB to find existing collapse_key!"

    invoke-static {v4, v5, v3}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 413
    .end local v3    # "t":Ljava/lang/Throwable;
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    .line 416
    :cond_3
    :goto_1
    return-void

    .line 413
    :goto_2
    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_4

    .line 414
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v3

    .line 387
    .end local v0    # "collapse_id":Ljava/lang/String;
    .end local v1    # "dbHelper":Lcom/onesignal/OneSignalDbHelper;
    .end local v2    # "cursor":Landroid/database/Cursor;
    :cond_5
    :goto_3
    return-void
.end method

.method private static saveNotification(Landroid/content/Context;Landroid/os/Bundle;ZI)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "opened"    # Z
    .param p3, "notificationId"    # I

    .line 118
    new-instance v0, Lcom/onesignal/NotificationGenerationJob;

    invoke-direct {v0, p0}, Lcom/onesignal/NotificationGenerationJob;-><init>(Landroid/content/Context;)V

    .line 119
    .local v0, "notifJob":Lcom/onesignal/NotificationGenerationJob;
    invoke-static {p1}, Lcom/onesignal/NotificationBundleProcessor;->bundleAsJSONObject(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    .line 120
    new-instance v1, Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    invoke-direct {v1}, Lcom/onesignal/NotificationExtenderService$OverrideSettings;-><init>()V

    iput-object v1, v0, Lcom/onesignal/NotificationGenerationJob;->overrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    .line 121
    iget-object v1, v0, Lcom/onesignal/NotificationGenerationJob;->overrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/onesignal/NotificationExtenderService$OverrideSettings;->androidNotificationId:Ljava/lang/Integer;

    .line 123
    invoke-static {v0, p2}, Lcom/onesignal/NotificationBundleProcessor;->saveNotification(Lcom/onesignal/NotificationGenerationJob;Z)V

    .line 124
    return-void
.end method

.method static saveNotification(Lcom/onesignal/NotificationGenerationJob;Z)V
    .locals 10
    .param p0, "notifiJob"    # Lcom/onesignal/NotificationGenerationJob;
    .param p1, "opened"    # Z

    .line 133
    iget-object v0, p0, Lcom/onesignal/NotificationGenerationJob;->context:Landroid/content/Context;

    .line 134
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    .line 137
    .local v1, "jsonPayload":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    const-string v4, "custom"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 139
    .local v2, "customJSON":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/onesignal/NotificationGenerationJob;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/onesignal/OneSignalDbHelper;->getInstance(Landroid/content/Context;)Lcom/onesignal/OneSignalDbHelper;

    move-result-object v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_4

    .line 140
    .local v3, "dbHelper":Lcom/onesignal/OneSignalDbHelper;
    const/4 v4, 0x0

    move-object v5, v4

    .line 143
    .local v5, "writableDb":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    invoke-virtual {v3}, Lcom/onesignal/OneSignalDbHelper;->getWritableDbWithRetries()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    move-object v5, v6

    .line 145
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 147
    invoke-static {v5}, Lcom/onesignal/NotificationBundleProcessor;->deleteOldNotifications(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 151
    invoke-virtual {p0}, Lcom/onesignal/NotificationGenerationJob;->getAndroidIdWithoutCreate()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 152
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "android_notification_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onesignal/NotificationGenerationJob;->getAndroidIdWithoutCreate()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 154
    .local v6, "whereStr":Ljava/lang/String;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 155
    .local v7, "values":Landroid/content/ContentValues;
    const-string v8, "dismissed"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 157
    const-string v8, "notification"

    invoke-virtual {v5, v8, v7, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 158
    invoke-static {v5, v0}, Lcom/onesignal/BadgeCountUpdater;->update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V

    .line 162
    .end local v6    # "whereStr":Ljava/lang/String;
    .end local v7    # "values":Landroid/content/ContentValues;
    :cond_0
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 163
    .local v6, "values":Landroid/content/ContentValues;
    const-string v7, "notification_id"

    const-string v8, "i"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v7, "grp"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 165
    const-string v7, "group_id"

    const-string v8, "grp"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :cond_1
    const-string v7, "collapse_key"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "do_not_collapse"

    const-string v8, "collapse_key"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 167
    const-string v7, "collapse_id"

    const-string v8, "collapse_key"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :cond_2
    const-string v7, "opened"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 170
    if-nez p1, :cond_3

    .line 171
    const-string v7, "android_notification_id"

    invoke-virtual {p0}, Lcom/onesignal/NotificationGenerationJob;->getAndroidIdWithoutCreate()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 173
    :cond_3
    invoke-virtual {p0}, Lcom/onesignal/NotificationGenerationJob;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 174
    const-string v7, "title"

    invoke-virtual {p0}, Lcom/onesignal/NotificationGenerationJob;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_4
    invoke-virtual {p0}, Lcom/onesignal/NotificationGenerationJob;->getBody()Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 176
    const-string v7, "message"

    invoke-virtual {p0}, Lcom/onesignal/NotificationGenerationJob;->getBody()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :cond_5
    const-string v7, "full_data"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v7, "notification"

    invoke-virtual {v5, v7, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 182
    if-nez p1, :cond_6

    .line 183
    invoke-static {v5, v0}, Lcom/onesignal/BadgeCountUpdater;->update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V

    .line 184
    :cond_6
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    .end local v6    # "values":Landroid/content/ContentValues;
    if-eqz v5, :cond_7

    .line 190
    :try_start_2
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_1

    .line 191
    :catch_0
    move-exception v4

    .line 192
    .local v4, "t":Ljava/lang/Throwable;
    :try_start_3
    sget-object v6, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v7, "Error closing transaction! "

    :goto_0
    invoke-static {v6, v7, v4}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_4

    .line 192
    .end local v4    # "t":Ljava/lang/Throwable;
    goto :goto_1

    .line 188
    :catchall_0
    move-exception v4

    goto :goto_3

    .line 185
    :catch_1
    move-exception v4

    .line 186
    .local v4, "e":Ljava/lang/Exception;
    :try_start_4
    sget-object v6, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v7, "Error saving notification record! "

    invoke-static {v6, v7, v4}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 188
    .end local v4    # "e":Ljava/lang/Exception;
    if-eqz v5, :cond_7

    .line 190
    :try_start_5
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_4

    .line 193
    :goto_1
    goto :goto_2

    .line 191
    :catch_2
    move-exception v4

    .line 192
    .local v4, "t":Ljava/lang/Throwable;
    :try_start_6
    sget-object v6, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v7, "Error closing transaction! "
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 198
    .end local v2    # "customJSON":Lorg/json/JSONObject;
    .end local v3    # "dbHelper":Lcom/onesignal/OneSignalDbHelper;
    .end local v4    # "t":Ljava/lang/Throwable;
    .end local v5    # "writableDb":Landroid/database/sqlite/SQLiteDatabase;
    :cond_7
    :goto_2
    goto :goto_5

    .line 188
    .restart local v2    # "customJSON":Lorg/json/JSONObject;
    .restart local v3    # "dbHelper":Lcom/onesignal/OneSignalDbHelper;
    .restart local v5    # "writableDb":Landroid/database/sqlite/SQLiteDatabase;
    :goto_3
    if-eqz v5, :cond_8

    .line 190
    :try_start_7
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_4

    .line 193
    goto :goto_4

    .line 191
    :catch_3
    move-exception v6

    .line 192
    .local v6, "t":Ljava/lang/Throwable;
    :try_start_8
    sget-object v7, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v8, "Error closing transaction! "

    invoke-static {v7, v8, v6}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 193
    .end local v6    # "t":Ljava/lang/Throwable;
    :cond_8
    :goto_4
    throw v4
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_4

    .line 196
    .end local v2    # "customJSON":Lorg/json/JSONObject;
    .end local v3    # "dbHelper":Lcom/onesignal/OneSignalDbHelper;
    .end local v5    # "writableDb":Landroid/database/sqlite/SQLiteDatabase;
    :catch_4
    move-exception v2

    .line 197
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 199
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_5
    return-void
.end method

.method private static setActionButtons(Lcom/onesignal/OSNotificationPayload;)V
    .locals 6
    .param p0, "notification"    # Lcom/onesignal/OSNotificationPayload;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 355
    iget-object v0, p0, Lcom/onesignal/OSNotificationPayload;->additionalData:Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/onesignal/OSNotificationPayload;->additionalData:Lorg/json/JSONObject;

    const-string v1, "actionButtons"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 356
    iget-object v0, p0, Lcom/onesignal/OSNotificationPayload;->additionalData:Lorg/json/JSONObject;

    const-string v1, "actionButtons"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 357
    .local v0, "jsonActionButtons":Lorg/json/JSONArray;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/onesignal/OSNotificationPayload;->actionButtons:Ljava/util/List;

    .line 359
    const/4 v1, 0x0

    .line 359
    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 360
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 361
    .local v2, "jsonActionButton":Lorg/json/JSONObject;
    new-instance v3, Lcom/onesignal/OSNotificationPayload$ActionButton;

    invoke-direct {v3}, Lcom/onesignal/OSNotificationPayload$ActionButton;-><init>()V

    .line 362
    .local v3, "actionButton":Lcom/onesignal/OSNotificationPayload$ActionButton;
    const-string v4, "id"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/onesignal/OSNotificationPayload$ActionButton;->id:Ljava/lang/String;

    .line 363
    const-string v4, "text"

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/onesignal/OSNotificationPayload$ActionButton;->text:Ljava/lang/String;

    .line 364
    const-string v4, "icon"

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/onesignal/OSNotificationPayload$ActionButton;->icon:Ljava/lang/String;

    .line 365
    iget-object v4, p0, Lcom/onesignal/OSNotificationPayload;->actionButtons:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    .end local v2    # "jsonActionButton":Lorg/json/JSONObject;
    .end local v3    # "actionButton":Lcom/onesignal/OSNotificationPayload$ActionButton;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 367
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/onesignal/OSNotificationPayload;->additionalData:Lorg/json/JSONObject;

    const-string v2, "actionSelected"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 368
    iget-object v1, p0, Lcom/onesignal/OSNotificationPayload;->additionalData:Lorg/json/JSONObject;

    const-string v2, "actionButtons"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 370
    .end local v0    # "jsonActionButtons":Lorg/json/JSONArray;
    :cond_1
    return-void
.end method

.method private static setBackgroundImageLayout(Lcom/onesignal/OSNotificationPayload;Lorg/json/JSONObject;)V
    .locals 4
    .param p0, "notification"    # Lcom/onesignal/OSNotificationPayload;
    .param p1, "currentJsonPayload"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 373
    const-string v0, "bg_img"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 374
    .local v0, "jsonStrBgImage":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 375
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 376
    .local v1, "jsonBgImage":Lorg/json/JSONObject;
    new-instance v2, Lcom/onesignal/OSNotificationPayload$BackgroundImageLayout;

    invoke-direct {v2}, Lcom/onesignal/OSNotificationPayload$BackgroundImageLayout;-><init>()V

    iput-object v2, p0, Lcom/onesignal/OSNotificationPayload;->backgroundImageLayout:Lcom/onesignal/OSNotificationPayload$BackgroundImageLayout;

    .line 377
    iget-object v2, p0, Lcom/onesignal/OSNotificationPayload;->backgroundImageLayout:Lcom/onesignal/OSNotificationPayload$BackgroundImageLayout;

    const-string v3, "img"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/onesignal/OSNotificationPayload$BackgroundImageLayout;->image:Ljava/lang/String;

    .line 378
    iget-object v2, p0, Lcom/onesignal/OSNotificationPayload;->backgroundImageLayout:Lcom/onesignal/OSNotificationPayload$BackgroundImageLayout;

    const-string v3, "tc"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/onesignal/OSNotificationPayload$BackgroundImageLayout;->titleTextColor:Ljava/lang/String;

    .line 379
    iget-object v2, p0, Lcom/onesignal/OSNotificationPayload;->backgroundImageLayout:Lcom/onesignal/OSNotificationPayload$BackgroundImageLayout;

    const-string v3, "bc"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/onesignal/OSNotificationPayload$BackgroundImageLayout;->bodyTextColor:Ljava/lang/String;

    .line 381
    .end local v1    # "jsonBgImage":Lorg/json/JSONObject;
    :cond_0
    return-void
.end method

.method static shouldDisplay(Ljava/lang/String;)Z
    .locals 6
    .param p0, "body"    # Ljava/lang/String;

    .line 474
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    const-string v2, ""

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 475
    .local v2, "hasBody":Z
    :goto_0
    invoke-static {}, Lcom/onesignal/OneSignal;->getInAppAlertNotificationEnabled()Z

    move-result v3

    .line 476
    .local v3, "showAsAlert":Z
    invoke-static {}, Lcom/onesignal/OneSignal;->isAppActive()Z

    move-result v4

    .line 477
    .local v4, "isActive":Z
    if-eqz v2, :cond_2

    .line 478
    invoke-static {}, Lcom/onesignal/OneSignal;->getNotificationsWhenActiveEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    if-nez v3, :cond_1

    if-nez v4, :cond_2

    .line 477
    :cond_1
    move v0, v1

    goto :goto_1

    .line 478
    :cond_2
    nop

    .line 477
    :goto_1
    return v0
.end method

.method private static startExtenderService(Landroid/content/Context;Landroid/os/Bundle;Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "result"    # Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;

    .line 455
    invoke-static {p0}, Lcom/onesignal/NotificationExtenderService;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 456
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 458
    :cond_0
    const-string v1, "json_payload"

    invoke-static {p1}, Lcom/onesignal/NotificationBundleProcessor;->bundleAsJSONObject(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 459
    const-string v1, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 462
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    .line 463
    nop

    .line 464
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    const v2, 0x7b7e1b69

    .line 463
    invoke-static {p0, v1, v2, v0}, Lcom/onesignal/NotificationExtenderService;->enqueueWork(Landroid/content/Context;Landroid/content/ComponentName;ILandroid/content/Intent;)V

    goto :goto_0

    .line 467
    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 469
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p2, Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;->hasExtenderService:Z

    .line 470
    return v1
.end method

.method private static unMinifyBundle(Landroid/os/Bundle;)V
    .locals 9
    .param p0, "gcmBundle"    # Landroid/os/Bundle;

    .line 259
    const-string v0, "o"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    return-void

    .line 263
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    const-string v1, "custom"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 266
    .local v0, "customJSON":Lorg/json/JSONObject;
    const-string v1, "a"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 267
    const-string v1, "a"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 267
    .local v1, "additionalDataJSON":Lorg/json/JSONObject;
    goto :goto_0

    .line 269
    .end local v1    # "additionalDataJSON":Lorg/json/JSONObject;
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 271
    .restart local v1    # "additionalDataJSON":Lorg/json/JSONObject;
    :goto_0
    new-instance v2, Lorg/json/JSONArray;

    const-string v3, "o"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 272
    .local v2, "buttons":Lorg/json/JSONArray;
    const-string v3, "o"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 273
    const/4 v3, 0x0

    .line 273
    .local v3, "i":I
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 274
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 276
    .local v4, "button":Lorg/json/JSONObject;
    const-string v5, "n"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 277
    .local v5, "buttonText":Ljava/lang/String;
    const-string v6, "n"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 279
    const-string v6, "i"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 280
    const-string v6, "i"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 281
    .local v6, "buttonId":Ljava/lang/String;
    const-string v7, "i"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_2

    .line 283
    .end local v6    # "buttonId":Ljava/lang/String;
    :cond_2
    move-object v6, v5

    .line 285
    .restart local v6    # "buttonId":Ljava/lang/String;
    :goto_2
    const-string v7, "id"

    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 286
    const-string v7, "text"

    invoke-virtual {v4, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 288
    const-string v7, "p"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 289
    const-string v7, "icon"

    const-string v8, "p"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 290
    const-string v7, "p"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 273
    .end local v4    # "button":Lorg/json/JSONObject;
    .end local v5    # "buttonText":Ljava/lang/String;
    .end local v6    # "buttonId":Ljava/lang/String;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 294
    .end local v3    # "i":I
    :cond_4
    const-string v3, "actionButtons"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 295
    const-string v3, "actionSelected"

    const-string v4, "__DEFAULT__"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 296
    const-string v3, "a"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 297
    const-string v3, "a"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 299
    :cond_5
    const-string v3, "custom"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    .end local v0    # "customJSON":Lorg/json/JSONObject;
    .end local v1    # "additionalDataJSON":Lorg/json/JSONObject;
    .end local v2    # "buttons":Lorg/json/JSONArray;
    goto :goto_3

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 303
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_3
    return-void
.end method
