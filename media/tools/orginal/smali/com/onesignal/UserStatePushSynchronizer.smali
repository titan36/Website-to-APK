.class Lcom/onesignal/UserStatePushSynchronizer;
.super Lcom/onesignal/UserStateSynchronizer;
.source "UserStatePushSynchronizer.java"


# static fields
.field private static serverSuccess:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/onesignal/UserStateSynchronizer;-><init>()V

    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 6
    sput-boolean p0, Lcom/onesignal/UserStatePushSynchronizer;->serverSuccess:Z

    return p0
.end method


# virtual methods
.method protected addOnSessionOrCreateExtras(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "jsonBody"    # Lorg/json/JSONObject;

    .line 139
    return-void
.end method

.method protected fireEventsForUpdateFailure(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "jsonFields"    # Lorg/json/JSONObject;

    .line 152
    const-string v0, "email"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    invoke-static {}, Lcom/onesignal/OneSignal;->fireEmailUpdateFailure()V

    .line 154
    :cond_0
    return-void
.end method

.method protected getId()Ljava/lang/String;
    .locals 1

    .line 130
    invoke-static {}, Lcom/onesignal/OneSignal;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getSubscribed()Z
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/onesignal/UserStatePushSynchronizer;->getToSyncUserState()Lcom/onesignal/UserState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserState;->isSubscribed()Z

    move-result v0

    return v0
.end method

.method getTags(Z)Lcom/onesignal/UserStateSynchronizer$GetTagsResult;
    .locals 5
    .param p1, "fromServer"    # Z

    .line 22
    if-eqz p1, :cond_0

    .line 23
    invoke-static {}, Lcom/onesignal/OneSignal;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, "userId":Ljava/lang/String;
    invoke-static {}, Lcom/onesignal/OneSignal;->getSavedAppId()Ljava/lang/String;

    move-result-object v1

    .line 26
    .local v1, "appId":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "players/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "?app_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/onesignal/UserStatePushSynchronizer$1;

    invoke-direct {v3, p0}, Lcom/onesignal/UserStatePushSynchronizer$1;-><init>(Lcom/onesignal/UserStatePushSynchronizer;)V

    invoke-static {v2, v3}, Lcom/onesignal/OneSignalRestClient;->getSync(Ljava/lang/String;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V

    .line 54
    .end local v0    # "userId":Ljava/lang/String;
    .end local v1    # "appId":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/onesignal/UserStatePushSynchronizer;->syncLock:Ljava/lang/Object;

    monitor-enter v0

    .line 55
    :try_start_0
    new-instance v1, Lcom/onesignal/UserStateSynchronizer$GetTagsResult;

    sget-boolean v2, Lcom/onesignal/UserStatePushSynchronizer;->serverSuccess:Z

    iget-object v3, p0, Lcom/onesignal/UserStatePushSynchronizer;->toSyncUserState:Lcom/onesignal/UserState;

    iget-object v3, v3, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    const-string v4, "tags"

    invoke-static {v3, v4}, Lcom/onesignal/JSONUtils;->getJSONObjectWithoutBlankValues(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/onesignal/UserStateSynchronizer$GetTagsResult;-><init>(ZLorg/json/JSONObject;)V

    monitor-exit v0

    return-object v1

    .line 56
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUserSubscribePreference()Z
    .locals 3

    .line 116
    invoke-virtual {p0}, Lcom/onesignal/UserStatePushSynchronizer;->getToSyncUserState()Lcom/onesignal/UserState;

    move-result-object v0

    iget-object v0, v0, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    const-string v1, "userSubscribePref"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method logoutEmail()V
    .locals 3

    .line 144
    :try_start_0
    invoke-virtual {p0}, Lcom/onesignal/UserStatePushSynchronizer;->getUserStateForModification()Lcom/onesignal/UserState;

    move-result-object v0

    iget-object v0, v0, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    const-string v1, "logoutEmail"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 148
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method protected newUserState(Ljava/lang/String;Z)Lcom/onesignal/UserState;
    .locals 1
    .param p1, "inPersistKey"    # Ljava/lang/String;
    .param p2, "load"    # Z

    .line 10
    new-instance v0, Lcom/onesignal/UserStatePush;

    invoke-direct {v0, p1, p2}, Lcom/onesignal/UserStatePush;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method protected onSuccessfulSync(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "jsonFields"    # Lorg/json/JSONObject;

    .line 158
    const-string v0, "email"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    invoke-static {}, Lcom/onesignal/OneSignal;->fireEmailUpdateSuccess()V

    .line 160
    :cond_0
    return-void
.end method

.method protected scheduleSyncToServer()V
    .locals 1

    .line 61
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onesignal/UserStatePushSynchronizer;->getNetworkHandlerThread(Ljava/lang/Integer;)Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;->runNewJobDelayed()V

    .line 62
    return-void
.end method

.method setEmail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "emailAuthHash"    # Ljava/lang/String;

    .line 93
    :try_start_0
    invoke-virtual {p0}, Lcom/onesignal/UserStatePushSynchronizer;->getUserStateForModification()Lcom/onesignal/UserState;

    move-result-object v0

    .line 95
    .local v0, "userState":Lcom/onesignal/UserState;
    iget-object v1, v0, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    const-string v2, "email_auth_hash"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    iget-object v1, v0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    .line 98
    .local v1, "syncValues":Lorg/json/JSONObject;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "email"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v1, v3}, Lcom/onesignal/UserStatePushSynchronizer;->generateJsonDiff(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .end local v0    # "userState":Lcom/onesignal/UserState;
    .end local v1    # "syncValues":Lorg/json/JSONObject;
    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 103
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method public setPermission(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 122
    :try_start_0
    invoke-virtual {p0}, Lcom/onesignal/UserStatePushSynchronizer;->getUserStateForModification()Lcom/onesignal/UserState;

    move-result-object v0

    iget-object v0, v0, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    const-string v1, "androidPermission"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 126
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method setSubscription(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 108
    :try_start_0
    invoke-virtual {p0}, Lcom/onesignal/UserStatePushSynchronizer;->getUserStateForModification()Lcom/onesignal/UserState;

    move-result-object v0

    iget-object v0, v0, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    const-string v1, "userSubscribePref"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 112
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method updateIdDependents(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .line 135
    invoke-static {p1}, Lcom/onesignal/OneSignal;->updateUserIdDependents(Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method updateState(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "pushState"    # Lorg/json/JSONObject;

    .line 67
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 68
    .local v1, "syncUpdate":Lorg/json/JSONObject;
    const-string v2, "identifier"

    const-string v3, "identifier"

    invoke-virtual {p1, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    const-string v2, "device_type"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    const-string v2, "device_type"

    const-string v3, "device_type"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 71
    :cond_0
    const-string v2, "parent_player_id"

    const-string v3, "parent_player_id"

    invoke-virtual {p1, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    invoke-virtual {p0}, Lcom/onesignal/UserStatePushSynchronizer;->getUserStateForModification()Lcom/onesignal/UserState;

    move-result-object v2

    iget-object v2, v2, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    .line 73
    .local v2, "toSync":Lorg/json/JSONObject;
    invoke-virtual {p0, v2, v1, v2, v0}, Lcom/onesignal/UserStatePushSynchronizer;->generateJsonDiff(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .end local v1    # "syncUpdate":Lorg/json/JSONObject;
    .end local v2    # "toSync":Lorg/json/JSONObject;
    goto :goto_0

    .line 74
    :catch_0
    move-exception v1

    .line 75
    .local v1, "t":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 79
    .end local v1    # "t":Lorg/json/JSONException;
    :goto_0
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 80
    .local v1, "dependUpdate":Lorg/json/JSONObject;
    const-string v2, "subscribableStatus"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 81
    const-string v2, "subscribableStatus"

    const-string v3, "subscribableStatus"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 82
    :cond_1
    const-string v2, "androidPermission"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 83
    const-string v2, "androidPermission"

    const-string v3, "androidPermission"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 84
    :cond_2
    invoke-virtual {p0}, Lcom/onesignal/UserStatePushSynchronizer;->getUserStateForModification()Lcom/onesignal/UserState;

    move-result-object v2

    iget-object v2, v2, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    .line 85
    .local v2, "dependValues":Lorg/json/JSONObject;
    invoke-virtual {p0, v2, v1, v2, v0}, Lcom/onesignal/UserStatePushSynchronizer;->generateJsonDiff(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 88
    .end local v1    # "dependUpdate":Lorg/json/JSONObject;
    .end local v2    # "dependValues":Lorg/json/JSONObject;
    goto :goto_1

    .line 86
    :catch_1
    move-exception v0

    .line 87
    .local v0, "t":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 89
    .end local v0    # "t":Lorg/json/JSONException;
    :goto_1
    return-void
.end method
