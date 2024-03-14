.class Lcom/onesignal/NotificationChannelManager;
.super Ljava/lang/Object;
.source "NotificationChannelManager.java"


# static fields
.field private static final DEFAULT_CHANNEL_ID:Ljava/lang/String; = "fcm_fallback_notification_channel"

.field private static final RESTORE_CHANNEL_ID:Ljava/lang/String; = "restored_OS_notifications"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createChannel(Landroid/content/Context;Landroid/app/NotificationManager;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notificationManager"    # Landroid/app/NotificationManager;
    .param p2, "payload"    # Lorg/json/JSONObject;
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 97
    const-string v0, "chnl"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 98
    .local v0, "objChannelPayload":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 99
    .local v1, "channelPayload":Lorg/json/JSONObject;
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 100
    new-instance v2, Lorg/json/JSONObject;

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_0

    .line 102
    :cond_0
    move-object v1, v0

    check-cast v1, Lorg/json/JSONObject;

    .line 104
    :goto_0
    const-string v2, "id"

    const-string v3, "fcm_fallback_notification_channel"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, "channel_id":Ljava/lang/String;
    const-string v3, "miscellaneous"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 107
    const-string v2, "fcm_fallback_notification_channel"

    .line 109
    :cond_1
    move-object v3, v1

    .line 110
    .local v3, "payloadWithText":Lorg/json/JSONObject;
    const-string v4, "langs"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 111
    const-string v4, "langs"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 112
    .local v4, "langList":Lorg/json/JSONObject;
    invoke-static {}, Lcom/onesignal/OSUtils;->getCorrectedLanguage()Ljava/lang/String;

    move-result-object v5

    .line 113
    .local v5, "deviceLanguage":Ljava/lang/String;
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 114
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 117
    .end local v4    # "langList":Lorg/json/JSONObject;
    .end local v5    # "deviceLanguage":Ljava/lang/String;
    :cond_2
    const-string v4, "nm"

    const-string v5, "Miscellaneous"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 119
    .local v4, "channel_name":Ljava/lang/String;
    const-string v5, "pri"

    const/4 v6, 0x6

    invoke-virtual {p2, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Lcom/onesignal/NotificationChannelManager;->priorityToImportance(I)I

    move-result v5

    .line 120
    .local v5, "importance":I
    new-instance v6, Landroid/app/NotificationChannel;

    invoke-direct {v6, v2, v4, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 121
    .local v6, "channel":Landroid/app/NotificationChannel;
    const-string v7, "dscr"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 123
    const-string v7, "grp_id"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 124
    const-string v7, "grp_id"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 125
    .local v7, "group_id":Ljava/lang/String;
    const-string v9, "grp_nm"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 126
    .local v9, "group_name":Ljava/lang/CharSequence;
    new-instance v10, Landroid/app/NotificationChannelGroup;

    invoke-direct {v10, v7, v9}, Landroid/app/NotificationChannelGroup;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v10}, Landroid/app/NotificationManager;->createNotificationChannelGroup(Landroid/app/NotificationChannelGroup;)V

    .line 127
    invoke-virtual {v6, v7}, Landroid/app/NotificationChannel;->setGroup(Ljava/lang/String;)V

    .line 130
    .end local v7    # "group_id":Ljava/lang/String;
    .end local v9    # "group_name":Ljava/lang/CharSequence;
    :cond_3
    const-string v7, "ledc"

    invoke-virtual {p2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 131
    new-instance v7, Ljava/math/BigInteger;

    const-string v9, "ledc"

    invoke-virtual {p2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x10

    invoke-direct {v7, v9, v10}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 132
    .local v7, "ledColor":Ljava/math/BigInteger;
    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 134
    .end local v7    # "ledColor":Ljava/math/BigInteger;
    :cond_4
    const-string v7, "led"

    const/4 v9, 0x1

    invoke-virtual {p2, v7, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    const/4 v10, 0x0

    if-ne v7, v9, :cond_5

    move v7, v9

    goto :goto_1

    :cond_5
    move v7, v10

    :goto_1
    invoke-virtual {v6, v7}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 136
    const-string v7, "vib_pt"

    invoke-virtual {p2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 137
    invoke-static {p2}, Lcom/onesignal/OSUtils;->parseVibrationPattern(Lorg/json/JSONObject;)[J

    move-result-object v7

    .line 138
    .local v7, "vibrationPattern":[J
    if-eqz v7, :cond_6

    .line 139
    invoke-virtual {v6, v7}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    .line 141
    .end local v7    # "vibrationPattern":[J
    :cond_6
    const-string v7, "vib"

    invoke-virtual {p2, v7, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v9, :cond_7

    move v7, v9

    goto :goto_2

    :cond_7
    move v7, v10

    :goto_2
    invoke-virtual {v6, v7}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 143
    const-string v7, "sound"

    invoke-virtual {p2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 145
    const-string v7, "sound"

    invoke-virtual {p2, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 146
    .local v7, "sound":Ljava/lang/String;
    invoke-static {p0, v7}, Lcom/onesignal/OSUtils;->getSoundUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 147
    .local v11, "uri":Landroid/net/Uri;
    if-eqz v11, :cond_8

    .line 148
    invoke-virtual {v6, v11, v8}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    goto :goto_3

    .line 149
    :cond_8
    const-string v12, "null"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_9

    const-string v12, "nil"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 150
    :cond_9
    invoke-virtual {v6, v8, v8}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 156
    .end local v7    # "sound":Ljava/lang/String;
    .end local v11    # "uri":Landroid/net/Uri;
    :cond_a
    :goto_3
    const-string v7, "vis"

    invoke-virtual {p2, v7, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 157
    const-string v7, "bdg"

    invoke-virtual {p2, v7, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v9, :cond_b

    move v7, v9

    goto :goto_4

    :cond_b
    move v7, v10

    :goto_4
    invoke-virtual {v6, v7}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 158
    const-string v7, "bdnd"

    invoke-virtual {p2, v7, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v9, :cond_c

    goto :goto_5

    :cond_c
    move v9, v10

    :goto_5
    invoke-virtual {v6, v9}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    .line 160
    invoke-virtual {p1, v6}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 161
    return-object v2
.end method

.method private static createDefaultChannel(Landroid/app/NotificationManager;)Ljava/lang/String;
    .locals 4
    .param p0, "notificationManager"    # Landroid/app/NotificationManager;
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .line 166
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "fcm_fallback_notification_channel"

    const-string v2, "Miscellaneous"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 170
    .local v0, "channel":Landroid/app/NotificationChannel;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 171
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 172
    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 174
    const-string v1, "fcm_fallback_notification_channel"

    return-object v1
.end method

.method static createNotificationChannel(Lcom/onesignal/NotificationGenerationJob;)Ljava/lang/String;
    .locals 6
    .param p0, "notifJob"    # Lcom/onesignal/NotificationGenerationJob;

    .line 59
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    .line 60
    const-string v0, "fcm_fallback_notification_channel"

    return-object v0

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/onesignal/NotificationGenerationJob;->context:Landroid/content/Context;

    .line 63
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    .line 65
    .local v1, "jsonPayload":Lorg/json/JSONObject;
    const-string v2, "notification"

    .line 66
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 68
    .local v2, "notificationManager":Landroid/app/NotificationManager;
    iget-boolean v3, p0, Lcom/onesignal/NotificationGenerationJob;->restoring:Z

    if-eqz v3, :cond_1

    .line 69
    invoke-static {v2}, Lcom/onesignal/NotificationChannelManager;->createRestoreChannel(Landroid/app/NotificationManager;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 72
    :cond_1
    const-string v3, "oth_chnl"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 73
    const-string v3, "oth_chnl"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 74
    .local v3, "otherChannel":Ljava/lang/String;
    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 75
    return-object v3

    .line 78
    .end local v3    # "otherChannel":Ljava/lang/String;
    :cond_2
    const-string v3, "chnl"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 79
    invoke-static {v2}, Lcom/onesignal/NotificationChannelManager;->createDefaultChannel(Landroid/app/NotificationManager;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 82
    :cond_3
    :try_start_0
    invoke-static {v0, v2, v1}, Lcom/onesignal/NotificationChannelManager;->createChannel(Landroid/content/Context;Landroid/app/NotificationManager;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 83
    :catch_0
    move-exception v3

    .line 84
    .local v3, "e":Lorg/json/JSONException;
    sget-object v4, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v5, "Could not create notification channel due to JSON payload error!"

    invoke-static {v4, v5, v3}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    .end local v3    # "e":Lorg/json/JSONException;
    const-string v3, "fcm_fallback_notification_channel"

    return-object v3
.end method

.method private static createRestoreChannel(Landroid/app/NotificationManager;)Ljava/lang/String;
    .locals 4
    .param p0, "notificationManager"    # Landroid/app/NotificationManager;
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .line 179
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "restored_OS_notifications"

    const-string v2, "Restored"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 183
    .local v0, "channel":Landroid/app/NotificationChannel;
    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 185
    const-string v1, "restored_OS_notifications"

    return-object v1
.end method

.method private static priorityToImportance(I)I
    .locals 2
    .param p0, "priority"    # I

    .line 220
    const/4 v0, 0x5

    const/16 v1, 0x9

    if-le p0, v1, :cond_0

    .line 221
    return v0

    .line 222
    :cond_0
    const/4 v1, 0x7

    if-le p0, v1, :cond_1

    .line 223
    const/4 v0, 0x4

    return v0

    .line 224
    :cond_1
    const/4 v1, 0x3

    if-le p0, v0, :cond_2

    .line 225
    return v1

    .line 226
    :cond_2
    if-le p0, v1, :cond_3

    .line 227
    const/4 v0, 0x2

    return v0

    .line 228
    :cond_3
    const/4 v0, 0x1

    if-le p0, v0, :cond_4

    .line 229
    return v0

    .line 231
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method static processChannelList(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "payload"    # Lorg/json/JSONObject;

    .line 189
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    .line 190
    return-void

    .line 192
    :cond_0
    const-string v0, "chnl_lst"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 193
    return-void

    .line 195
    :cond_1
    const-string v0, "notification"

    .line 196
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 198
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 199
    .local v1, "sycnedChannelSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v2, "chnl_lst"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 200
    .local v2, "chnlList":Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 201
    .local v3, "jsonArraySize":I
    const/4 v4, 0x0

    .line 201
    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 203
    :try_start_0
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {p0, v0, v5}, Lcom/onesignal/NotificationChannelManager;->createChannel(Landroid/content/Context;Landroid/app/NotificationManager;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    goto :goto_1

    .line 204
    :catch_0
    move-exception v5

    .line 205
    .local v5, "e":Lorg/json/JSONException;
    sget-object v6, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v7, "Could not create notification channel due to JSON payload error!"

    invoke-static {v6, v7, v5}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 201
    .end local v5    # "e":Lorg/json/JSONException;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 211
    .end local v4    # "i":I
    :cond_2
    invoke-virtual {v0}, Landroid/app/NotificationManager;->getNotificationChannels()Ljava/util/List;

    move-result-object v4

    .line 212
    .local v4, "existingChannels":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannel;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationChannel;

    .line 213
    .local v6, "existingChannel":Landroid/app/NotificationChannel;
    invoke-virtual {v6}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v7

    .line 214
    .local v7, "id":Ljava/lang/String;
    const-string v8, "OS_"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 215
    invoke-virtual {v0, v7}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    .line 216
    .end local v6    # "existingChannel":Landroid/app/NotificationChannel;
    .end local v7    # "id":Ljava/lang/String;
    :cond_3
    goto :goto_2

    .line 217
    :cond_4
    return-void
.end method
