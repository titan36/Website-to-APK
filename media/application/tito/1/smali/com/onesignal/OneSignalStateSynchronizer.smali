.class Lcom/onesignal/OneSignalStateSynchronizer;
.super Ljava/lang/Object;
.source "OneSignalStateSynchronizer.java"


# static fields
.field private static userStateEmailSynchronizer:Lcom/onesignal/UserStateEmailSynchronizer;

.field private static userStatePushSynchronizer:Lcom/onesignal/UserStatePushSynchronizer;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static clearLocation()V
    .locals 1

    .line 60
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getPushStateSynchronizer()Lcom/onesignal/UserStatePushSynchronizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserStatePushSynchronizer;->clearLocation()V

    .line 61
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getEmailStateSynchronizer()Lcom/onesignal/UserStateEmailSynchronizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserStateEmailSynchronizer;->clearLocation()V

    .line 62
    return-void
.end method

.method static getEmailStateSynchronizer()Lcom/onesignal/UserStateEmailSynchronizer;
    .locals 1

    .line 45
    sget-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->userStateEmailSynchronizer:Lcom/onesignal/UserStateEmailSynchronizer;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/onesignal/UserStateEmailSynchronizer;

    invoke-direct {v0}, Lcom/onesignal/UserStateEmailSynchronizer;-><init>()V

    sput-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->userStateEmailSynchronizer:Lcom/onesignal/UserStateEmailSynchronizer;

    .line 47
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->userStateEmailSynchronizer:Lcom/onesignal/UserStateEmailSynchronizer;

    return-object v0
.end method

.method static getPushStateSynchronizer()Lcom/onesignal/UserStatePushSynchronizer;
    .locals 1

    .line 39
    sget-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->userStatePushSynchronizer:Lcom/onesignal/UserStatePushSynchronizer;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/onesignal/UserStatePushSynchronizer;

    invoke-direct {v0}, Lcom/onesignal/UserStatePushSynchronizer;-><init>()V

    sput-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->userStatePushSynchronizer:Lcom/onesignal/UserStatePushSynchronizer;

    .line 41
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->userStatePushSynchronizer:Lcom/onesignal/UserStatePushSynchronizer;

    return-object v0
.end method

.method static getRegistrationId()Ljava/lang/String;
    .locals 1

    .line 123
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getPushStateSynchronizer()Lcom/onesignal/UserStatePushSynchronizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserStatePushSynchronizer;->getRegistrationId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getSubscribed()Z
    .locals 1

    .line 119
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getPushStateSynchronizer()Lcom/onesignal/UserStatePushSynchronizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserStatePushSynchronizer;->getSubscribed()Z

    move-result v0

    return v0
.end method

.method static getTags(Z)Lcom/onesignal/UserStateSynchronizer$GetTagsResult;
    .locals 1
    .param p0, "fromServer"    # Z

    .line 127
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getPushStateSynchronizer()Lcom/onesignal/UserStatePushSynchronizer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/UserStatePushSynchronizer;->getTags(Z)Lcom/onesignal/UserStateSynchronizer$GetTagsResult;

    move-result-object v0

    return-object v0
.end method

.method static getUserSubscribePreference()Z
    .locals 1

    .line 106
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getPushStateSynchronizer()Lcom/onesignal/UserStatePushSynchronizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserStatePushSynchronizer;->getUserSubscribePreference()Z

    move-result v0

    return v0
.end method

.method static initUserState()V
    .locals 1

    .line 65
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getPushStateSynchronizer()Lcom/onesignal/UserStatePushSynchronizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserStatePushSynchronizer;->initUserState()V

    .line 66
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getEmailStateSynchronizer()Lcom/onesignal/UserStateEmailSynchronizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserStateEmailSynchronizer;->initUserState()V

    .line 67
    return-void
.end method

.method static logoutEmail()V
    .locals 1

    .line 163
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getPushStateSynchronizer()Lcom/onesignal/UserStatePushSynchronizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserStatePushSynchronizer;->logoutEmail()V

    .line 164
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getEmailStateSynchronizer()Lcom/onesignal/UserStateEmailSynchronizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserStateEmailSynchronizer;->logoutEmail()V

    .line 165
    return-void
.end method

.method static persist()Z
    .locals 5

    .line 51
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getPushStateSynchronizer()Lcom/onesignal/UserStatePushSynchronizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserStatePushSynchronizer;->persist()Z

    move-result v0

    .line 52
    .local v0, "pushPersisted":Z
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getEmailStateSynchronizer()Lcom/onesignal/UserStateEmailSynchronizer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onesignal/UserStateEmailSynchronizer;->persist()Z

    move-result v1

    .line 53
    .local v1, "emailPersisted":Z
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 54
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getEmailStateSynchronizer()Lcom/onesignal/UserStateEmailSynchronizer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onesignal/UserStateEmailSynchronizer;->getRegistrationId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    move v1, v4

    .line 56
    :cond_1
    if-nez v0, :cond_3

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    goto :goto_2

    :cond_3
    :goto_1
    move v2, v3

    :goto_2
    return v2
.end method

.method static refreshEmailState()V
    .locals 1

    .line 150
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getEmailStateSynchronizer()Lcom/onesignal/UserStateEmailSynchronizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserStateEmailSynchronizer;->refresh()V

    .line 151
    return-void
.end method

.method static resetCurrentState()V
    .locals 2

    .line 131
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getPushStateSynchronizer()Lcom/onesignal/UserStatePushSynchronizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserStatePushSynchronizer;->resetCurrentState()V

    .line 132
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getEmailStateSynchronizer()Lcom/onesignal/UserStateEmailSynchronizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserStateEmailSynchronizer;->resetCurrentState()V

    .line 134
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/onesignal/OneSignal;->saveUserId(Ljava/lang/String;)V

    .line 135
    invoke-static {v0}, Lcom/onesignal/OneSignal;->saveEmailId(Ljava/lang/String;)V

    .line 137
    const-wide/16 v0, -0xe4c

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->setLastSessionTime(J)V

    .line 138
    return-void
.end method

.method static sendTags(Lorg/json/JSONObject;)V
    .locals 2
    .param p0, "newTags"    # Lorg/json/JSONObject;

    .line 76
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "tags"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 77
    .local v0, "jsonField":Lorg/json/JSONObject;
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getPushStateSynchronizer()Lcom/onesignal/UserStatePushSynchronizer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/onesignal/UserStatePushSynchronizer;->sendTags(Lorg/json/JSONObject;)V

    .line 78
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getEmailStateSynchronizer()Lcom/onesignal/UserStateEmailSynchronizer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/onesignal/UserStateEmailSynchronizer;->sendTags(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .end local v0    # "jsonField":Lorg/json/JSONObject;
    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 82
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method static setEmail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "email"    # Ljava/lang/String;
    .param p1, "emailAuthHash"    # Ljava/lang/String;

    .line 97
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getPushStateSynchronizer()Lcom/onesignal/UserStatePushSynchronizer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/onesignal/UserStatePushSynchronizer;->setEmail(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getEmailStateSynchronizer()Lcom/onesignal/UserStateEmailSynchronizer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/onesignal/UserStateEmailSynchronizer;->setEmail(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method static setPermission(Z)V
    .locals 1
    .param p0, "enable"    # Z

    .line 110
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getPushStateSynchronizer()Lcom/onesignal/UserStatePushSynchronizer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/UserStatePushSynchronizer;->setPermission(Z)V

    .line 111
    return-void
.end method

.method static setSubscription(Z)V
    .locals 1
    .param p0, "enable"    # Z

    .line 102
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getPushStateSynchronizer()Lcom/onesignal/UserStatePushSynchronizer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/UserStatePushSynchronizer;->setSubscription(Z)V

    .line 103
    return-void
.end method

.method static setSyncAsNewSession()V
    .locals 1

    .line 154
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getPushStateSynchronizer()Lcom/onesignal/UserStatePushSynchronizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserStatePushSynchronizer;->setSyncAsNewSession()V

    .line 155
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getEmailStateSynchronizer()Lcom/onesignal/UserStateEmailSynchronizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserStateEmailSynchronizer;->setSyncAsNewSession()V

    .line 156
    return-void
.end method

.method static setSyncAsNewSessionForEmail()V
    .locals 1

    .line 159
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getEmailStateSynchronizer()Lcom/onesignal/UserStateEmailSynchronizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserStateEmailSynchronizer;->setSyncAsNewSession()V

    .line 160
    return-void
.end method

.method static syncHashedEmail(Ljava/lang/String;)V
    .locals 3
    .param p0, "email"    # Ljava/lang/String;

    .line 86
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 87
    .local v0, "emailFields":Lorg/json/JSONObject;
    const-string v1, "em_m"

    const-string v2, "MD5"

    invoke-static {p0, v2}, Lcom/onesignal/OSUtils;->hexDigest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    const-string v1, "em_s"

    const-string v2, "SHA-1"

    invoke-static {p0, v2}, Lcom/onesignal/OSUtils;->hexDigest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getPushStateSynchronizer()Lcom/onesignal/UserStatePushSynchronizer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/onesignal/UserStatePushSynchronizer;->syncHashedEmail(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .end local v0    # "emailFields":Lorg/json/JSONObject;
    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 94
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method static syncUserState(Z)V
    .locals 1
    .param p0, "fromSyncService"    # Z

    .line 70
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getPushStateSynchronizer()Lcom/onesignal/UserStatePushSynchronizer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/UserStatePushSynchronizer;->syncUserState(Z)V

    .line 71
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getEmailStateSynchronizer()Lcom/onesignal/UserStateEmailSynchronizer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/UserStateEmailSynchronizer;->syncUserState(Z)V

    .line 72
    return-void
.end method

.method static updateDeviceInfo(Lorg/json/JSONObject;)V
    .locals 1
    .param p0, "deviceInfo"    # Lorg/json/JSONObject;

    .line 141
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getPushStateSynchronizer()Lcom/onesignal/UserStatePushSynchronizer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/UserStatePushSynchronizer;->updateDeviceInfo(Lorg/json/JSONObject;)V

    .line 142
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getEmailStateSynchronizer()Lcom/onesignal/UserStateEmailSynchronizer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/UserStateEmailSynchronizer;->updateDeviceInfo(Lorg/json/JSONObject;)V

    .line 143
    return-void
.end method

.method static updateLocation(Lcom/onesignal/LocationGMS$LocationPoint;)V
    .locals 1
    .param p0, "point"    # Lcom/onesignal/LocationGMS$LocationPoint;

    .line 114
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getPushStateSynchronizer()Lcom/onesignal/UserStatePushSynchronizer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/UserStatePushSynchronizer;->updateLocation(Lcom/onesignal/LocationGMS$LocationPoint;)V

    .line 115
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getEmailStateSynchronizer()Lcom/onesignal/UserStateEmailSynchronizer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/UserStateEmailSynchronizer;->updateLocation(Lcom/onesignal/LocationGMS$LocationPoint;)V

    .line 116
    return-void
.end method

.method static updatePushState(Lorg/json/JSONObject;)V
    .locals 1
    .param p0, "pushState"    # Lorg/json/JSONObject;

    .line 146
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getPushStateSynchronizer()Lcom/onesignal/UserStatePushSynchronizer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/UserStatePushSynchronizer;->updateState(Lorg/json/JSONObject;)V

    .line 147
    return-void
.end method
