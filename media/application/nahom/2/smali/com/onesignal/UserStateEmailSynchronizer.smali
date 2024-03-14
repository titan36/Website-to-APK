.class Lcom/onesignal/UserStateEmailSynchronizer;
.super Lcom/onesignal/UserStateSynchronizer;
.source "UserStateEmailSynchronizer.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/onesignal/UserStateSynchronizer;-><init>()V

    return-void
.end method


# virtual methods
.method protected addOnSessionOrCreateExtras(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "jsonBody"    # Lorg/json/JSONObject;

    .line 106
    :try_start_0
    const-string v0, "device_type"

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 107
    const-string v0, "device_player_id"

    invoke-static {}, Lcom/onesignal/OneSignal;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 111
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method protected fireEventsForUpdateFailure(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "jsonFields"    # Lorg/json/JSONObject;

    .line 128
    const-string v0, "identifier"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-static {}, Lcom/onesignal/OneSignal;->fireEmailUpdateFailure()V

    .line 130
    :cond_0
    return-void
.end method

.method protected getId()Ljava/lang/String;
    .locals 1

    .line 95
    invoke-static {}, Lcom/onesignal/OneSignal;->getEmailId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getSubscribed()Z
    .locals 1

    .line 16
    const/4 v0, 0x0

    return v0
.end method

.method getTags(Z)Lcom/onesignal/UserStateSynchronizer$GetTagsResult;
    .locals 1
    .param p1, "fromServer"    # Z

    .line 22
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserSubscribePreference()Z
    .locals 1

    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method logoutEmail()V
    .locals 2

    .line 115
    const-string v0, ""

    invoke-static {v0}, Lcom/onesignal/OneSignal;->saveEmailId(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcom/onesignal/UserStateEmailSynchronizer;->resetCurrentState()V

    .line 118
    invoke-virtual {p0}, Lcom/onesignal/UserStateEmailSynchronizer;->getToSyncUserState()Lcom/onesignal/UserState;

    move-result-object v0

    iget-object v0, v0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    const-string v1, "identifier"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 119
    iget-object v0, p0, Lcom/onesignal/UserStateEmailSynchronizer;->toSyncUserState:Lcom/onesignal/UserState;

    iget-object v0, v0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    const-string v1, "email_auth_hash"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 120
    iget-object v0, p0, Lcom/onesignal/UserStateEmailSynchronizer;->toSyncUserState:Lcom/onesignal/UserState;

    iget-object v0, v0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    const-string v1, "device_player_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 121
    iget-object v0, p0, Lcom/onesignal/UserStateEmailSynchronizer;->toSyncUserState:Lcom/onesignal/UserState;

    invoke-virtual {v0}, Lcom/onesignal/UserState;->persistState()V

    .line 123
    invoke-static {}, Lcom/onesignal/OneSignal;->getPermissionSubscriptionState()Lcom/onesignal/OSPermissionSubscriptionState;

    move-result-object v0

    iget-object v0, v0, Lcom/onesignal/OSPermissionSubscriptionState;->emailSubscriptionStatus:Lcom/onesignal/OSEmailSubscriptionState;

    invoke-virtual {v0}, Lcom/onesignal/OSEmailSubscriptionState;->clearEmailAndId()V

    .line 124
    return-void
.end method

.method protected newUserState(Ljava/lang/String;Z)Lcom/onesignal/UserState;
    .locals 1
    .param p1, "inPersistKey"    # Ljava/lang/String;
    .param p2, "load"    # Z

    .line 10
    new-instance v0, Lcom/onesignal/UserStateEmail;

    invoke-direct {v0, p1, p2}, Lcom/onesignal/UserStateEmail;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method protected onSuccessfulSync(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "jsonFields"    # Lorg/json/JSONObject;

    .line 134
    const-string v0, "identifier"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-static {}, Lcom/onesignal/OneSignal;->fireEmailUpdateSuccess()V

    .line 136
    :cond_0
    return-void
.end method

.method refresh()V
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcom/onesignal/UserStateEmailSynchronizer;->scheduleSyncToServer()V

    .line 44
    return-void
.end method

.method protected scheduleSyncToServer()V
    .locals 3

    .line 49
    invoke-virtual {p0}, Lcom/onesignal/UserStateEmailSynchronizer;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/onesignal/UserStateEmailSynchronizer;->getRegistrationId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 50
    .local v0, "neverEmail":Z
    :goto_0
    if-nez v0, :cond_2

    invoke-static {}, Lcom/onesignal/OneSignal;->getUserId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 53
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onesignal/UserStateEmailSynchronizer;->getNetworkHandlerThread(Ljava/lang/Integer;)Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;->runNewJobDelayed()V

    .line 54
    return-void

    .line 51
    :cond_2
    :goto_1
    return-void
.end method

.method setEmail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "emailAuthHash"    # Ljava/lang/String;

    .line 57
    invoke-virtual {p0}, Lcom/onesignal/UserStateEmailSynchronizer;->getUserStateForModification()Lcom/onesignal/UserState;

    move-result-object v0

    iget-object v0, v0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    .line 59
    .local v0, "syncValues":Lorg/json/JSONObject;
    const-string v1, "identifier"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "email_auth_hash"

    .line 60
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez p2, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    move-object v2, p2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 61
    .local v1, "noChange":Z
    :goto_1
    if-eqz v1, :cond_2

    .line 62
    invoke-static {}, Lcom/onesignal/OneSignal;->fireEmailUpdateSuccess()V

    .line 63
    return-void

    .line 66
    :cond_2
    const-string v2, "identifier"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, "existingEmail":Ljava/lang/String;
    if-nez v2, :cond_3

    .line 68
    invoke-virtual {p0}, Lcom/onesignal/UserStateEmailSynchronizer;->setSyncAsNewSession()V

    .line 71
    :cond_3
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 72
    .local v4, "emailJSON":Lorg/json/JSONObject;
    const-string v5, "identifier"

    invoke-virtual {v4, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    if-eqz p2, :cond_4

    .line 75
    const-string v5, "email_auth_hash"

    invoke-virtual {v4, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    :cond_4
    if-nez p2, :cond_5

    .line 78
    if-eqz v2, :cond_5

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 79
    const-string v5, ""

    invoke-static {v5}, Lcom/onesignal/OneSignal;->saveEmailId(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/onesignal/UserStateEmailSynchronizer;->resetCurrentState()V

    .line 81
    invoke-virtual {p0}, Lcom/onesignal/UserStateEmailSynchronizer;->setSyncAsNewSession()V

    .line 85
    :cond_5
    invoke-virtual {p0, v0, v4, v0, v3}, Lcom/onesignal/UserStateEmailSynchronizer;->generateJsonDiff(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;

    .line 86
    invoke-virtual {p0}, Lcom/onesignal/UserStateEmailSynchronizer;->scheduleSyncToServer()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .end local v4    # "emailJSON":Lorg/json/JSONObject;
    goto :goto_2

    .line 88
    :catch_0
    move-exception v3

    .line 89
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 91
    .end local v3    # "e":Lorg/json/JSONException;
    :goto_2
    return-void
.end method

.method public setPermission(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 37
    return-void
.end method

.method setSubscription(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 27
    return-void
.end method

.method updateIdDependents(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .line 100
    invoke-static {p1}, Lcom/onesignal/OneSignal;->updateEmailIdDependents(Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method updateState(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "state"    # Lorg/json/JSONObject;

    .line 40
    return-void
.end method
