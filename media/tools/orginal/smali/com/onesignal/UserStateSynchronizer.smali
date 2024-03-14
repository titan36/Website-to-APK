.class abstract Lcom/onesignal/UserStateSynchronizer;
.super Ljava/lang/Object;
.source "UserStateSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;,
        Lcom/onesignal/UserStateSynchronizer$GetTagsResult;
    }
.end annotation


# instance fields
.field protected currentUserState:Lcom/onesignal/UserState;

.field private final networkHandlerSyncLock:Ljava/lang/Object;

.field networkHandlerThreads:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;",
            ">;"
        }
    .end annotation
.end field

.field protected nextSyncIsSession:Z

.field private runningSyncUserState:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected final syncLock:Ljava/lang/Object;

.field protected toSyncUserState:Lcom/onesignal/UserState;

.field protected waitingForSessionResponse:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/onesignal/UserStateSynchronizer$1;

    invoke-direct {v0, p0}, Lcom/onesignal/UserStateSynchronizer$1;-><init>(Lcom/onesignal/UserStateSynchronizer;)V

    iput-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->syncLock:Ljava/lang/Object;

    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->runningSyncUserState:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->networkHandlerThreads:Ljava/util/HashMap;

    .line 99
    new-instance v0, Lcom/onesignal/UserStateSynchronizer$2;

    invoke-direct {v0, p0}, Lcom/onesignal/UserStateSynchronizer$2;-><init>(Lcom/onesignal/UserStateSynchronizer;)V

    iput-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->networkHandlerSyncLock:Ljava/lang/Object;

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onesignal/UserStateSynchronizer;->nextSyncIsSession:Z

    iput-boolean v0, p0, Lcom/onesignal/UserStateSynchronizer;->waitingForSessionResponse:Z

    return-void
.end method

.method static synthetic access$000(Lcom/onesignal/UserStateSynchronizer;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/onesignal/UserStateSynchronizer;

    .line 13
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->runningSyncUserState:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$100(Lcom/onesignal/UserStateSynchronizer;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/onesignal/UserStateSynchronizer;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/onesignal/UserStateSynchronizer;->response400WithErrorsContaining(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/onesignal/UserStateSynchronizer;)V
    .locals 0
    .param p0, "x0"    # Lcom/onesignal/UserStateSynchronizer;

    .line 13
    invoke-direct {p0}, Lcom/onesignal/UserStateSynchronizer;->logoutEmailSyncSuccess()V

    return-void
.end method

.method static synthetic access$300(Lcom/onesignal/UserStateSynchronizer;)V
    .locals 0
    .param p0, "x0"    # Lcom/onesignal/UserStateSynchronizer;

    .line 13
    invoke-direct {p0}, Lcom/onesignal/UserStateSynchronizer;->handlePlayerDeletedFromServer()V

    return-void
.end method

.method static synthetic access$400(Lcom/onesignal/UserStateSynchronizer;)V
    .locals 0
    .param p0, "x0"    # Lcom/onesignal/UserStateSynchronizer;

    .line 13
    invoke-direct {p0}, Lcom/onesignal/UserStateSynchronizer;->handleNetworkFailure()V

    return-void
.end method

.method private doCreateOrNewSession(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "jsonBody"    # Lorg/json/JSONObject;
    .param p3, "dependDiff"    # Lorg/json/JSONObject;

    .line 276
    if-nez p1, :cond_0

    .line 277
    const-string v0, "players"

    .line 277
    .local v0, "urlStr":Ljava/lang/String;
    goto :goto_0

    .line 279
    .end local v0    # "urlStr":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "players/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/on_session"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 281
    .restart local v0    # "urlStr":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/onesignal/UserStateSynchronizer;->waitingForSessionResponse:Z

    .line 282
    invoke-virtual {p0, p2}, Lcom/onesignal/UserStateSynchronizer;->addOnSessionOrCreateExtras(Lorg/json/JSONObject;)V

    .line 283
    new-instance v1, Lcom/onesignal/UserStateSynchronizer$5;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/onesignal/UserStateSynchronizer$5;-><init>(Lcom/onesignal/UserStateSynchronizer;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-static {v0, p2, v1}, Lcom/onesignal/OneSignalRestClient;->postSync(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V

    .line 319
    return-void
.end method

.method private doEmailLogout(Ljava/lang/String;)V
    .locals 6
    .param p1, "userId"    # Ljava/lang/String;

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "players/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/email_logout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "urlStr":Ljava/lang/String;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 198
    .local v1, "jsonBody":Lorg/json/JSONObject;
    :try_start_0
    iget-object v2, p0, Lcom/onesignal/UserStateSynchronizer;->currentUserState:Lcom/onesignal/UserState;

    iget-object v2, v2, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    .line 199
    .local v2, "dependValues":Lorg/json/JSONObject;
    const-string v3, "email_auth_hash"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 200
    const-string v3, "email_auth_hash"

    const-string v4, "email_auth_hash"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 202
    :cond_0
    iget-object v3, p0, Lcom/onesignal/UserStateSynchronizer;->currentUserState:Lcom/onesignal/UserState;

    iget-object v3, v3, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    .line 203
    .local v3, "syncValues":Lorg/json/JSONObject;
    const-string v4, "parent_player_id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 204
    const-string v4, "parent_player_id"

    const-string v5, "parent_player_id"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 206
    :cond_1
    const-string v4, "app_id"

    const-string v5, "app_id"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    .end local v2    # "dependValues":Lorg/json/JSONObject;
    .end local v3    # "syncValues":Lorg/json/JSONObject;
    goto :goto_0

    .line 207
    :catch_0
    move-exception v2

    .line 208
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 211
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_0
    new-instance v2, Lcom/onesignal/UserStateSynchronizer$3;

    invoke-direct {v2, p0}, Lcom/onesignal/UserStateSynchronizer$3;-><init>(Lcom/onesignal/UserStateSynchronizer;)V

    invoke-static {v0, v1, v2}, Lcom/onesignal/OneSignalRestClient;->postSync(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V

    .line 232
    return-void
.end method

.method private doPutSync(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "jsonBody"    # Lorg/json/JSONObject;
    .param p3, "dependDiff"    # Lorg/json/JSONObject;

    .line 252
    if-nez p1, :cond_0

    .line 253
    return-void

    .line 255
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "players/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/onesignal/UserStateSynchronizer$4;

    invoke-direct {v1, p0, p3, p2}, Lcom/onesignal/UserStateSynchronizer$4;-><init>(Lcom/onesignal/UserStateSynchronizer;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    invoke-static {v0, p2, v1}, Lcom/onesignal/OneSignalRestClient;->putSync(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V

    .line 272
    return-void
.end method

.method private handleNetworkFailure()V
    .locals 5

    .line 324
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onesignal/UserStateSynchronizer;->getNetworkHandlerThread(Ljava/lang/Integer;)Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;->doRetry()Z

    move-result v1

    .line 325
    .local v1, "retried":Z
    if-eqz v1, :cond_0

    .line 326
    return-void

    .line 329
    :cond_0
    iget-object v2, p0, Lcom/onesignal/UserStateSynchronizer;->currentUserState:Lcom/onesignal/UserState;

    iget-object v3, p0, Lcom/onesignal/UserStateSynchronizer;->toSyncUserState:Lcom/onesignal/UserState;

    invoke-virtual {v2, v3, v0}, Lcom/onesignal/UserState;->generateJsonDiff(Lcom/onesignal/UserState;Z)Lorg/json/JSONObject;

    move-result-object v2

    .line 330
    .local v2, "jsonBody":Lorg/json/JSONObject;
    if-eqz v2, :cond_1

    .line 331
    invoke-virtual {p0, v2}, Lcom/onesignal/UserStateSynchronizer;->fireEventsForUpdateFailure(Lorg/json/JSONObject;)V

    .line 333
    :cond_1
    invoke-virtual {p0}, Lcom/onesignal/UserStateSynchronizer;->getToSyncUserState()Lcom/onesignal/UserState;

    move-result-object v3

    iget-object v3, v3, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    const-string v4, "logoutEmail"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 334
    invoke-static {}, Lcom/onesignal/OneSignal;->handleFailedEmailLogout()V

    .line 335
    :cond_2
    return-void
.end method

.method private handlePlayerDeletedFromServer()V
    .locals 1

    .line 401
    invoke-static {}, Lcom/onesignal/OneSignal;->handleSuccessfulEmailLogout()V

    .line 403
    invoke-virtual {p0}, Lcom/onesignal/UserStateSynchronizer;->resetCurrentState()V

    .line 404
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onesignal/UserStateSynchronizer;->nextSyncIsSession:Z

    .line 405
    invoke-virtual {p0}, Lcom/onesignal/UserStateSynchronizer;->scheduleSyncToServer()V

    .line 406
    return-void
.end method

.method private internalSyncUserState(Z)V
    .locals 7
    .param p1, "fromSyncService"    # Z

    .line 165
    invoke-virtual {p0}, Lcom/onesignal/UserStateSynchronizer;->getId()Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "userId":Ljava/lang/String;
    invoke-direct {p0}, Lcom/onesignal/UserStateSynchronizer;->syncEmailLogout()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 168
    invoke-direct {p0, v0}, Lcom/onesignal/UserStateSynchronizer;->doEmailLogout(Ljava/lang/String;)V

    .line 169
    return-void

    .line 172
    :cond_0
    iget-object v1, p0, Lcom/onesignal/UserStateSynchronizer;->currentUserState:Lcom/onesignal/UserState;

    if-nez v1, :cond_1

    .line 173
    invoke-virtual {p0}, Lcom/onesignal/UserStateSynchronizer;->initUserState()V

    .line 175
    :cond_1
    invoke-direct {p0}, Lcom/onesignal/UserStateSynchronizer;->isSessionCall()Z

    move-result v1

    .line 177
    .local v1, "isSessionCall":Z
    iget-object v2, p0, Lcom/onesignal/UserStateSynchronizer;->syncLock:Ljava/lang/Object;

    monitor-enter v2

    .line 178
    :try_start_0
    iget-object v3, p0, Lcom/onesignal/UserStateSynchronizer;->currentUserState:Lcom/onesignal/UserState;

    invoke-virtual {p0}, Lcom/onesignal/UserStateSynchronizer;->getToSyncUserState()Lcom/onesignal/UserState;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/onesignal/UserState;->generateJsonDiff(Lcom/onesignal/UserState;Z)Lorg/json/JSONObject;

    move-result-object v3

    .line 179
    .local v3, "jsonBody":Lorg/json/JSONObject;
    iget-object v4, p0, Lcom/onesignal/UserStateSynchronizer;->currentUserState:Lcom/onesignal/UserState;

    iget-object v4, v4, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/onesignal/UserStateSynchronizer;->getToSyncUserState()Lcom/onesignal/UserState;

    move-result-object v5

    iget-object v5, v5, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v5, v6, v6}, Lcom/onesignal/UserStateSynchronizer;->generateJsonDiff(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;

    move-result-object v4

    .line 181
    .local v4, "dependDiff":Lorg/json/JSONObject;
    if-nez v3, :cond_2

    .line 182
    iget-object v5, p0, Lcom/onesignal/UserStateSynchronizer;->currentUserState:Lcom/onesignal/UserState;

    invoke-virtual {v5, v4, v6}, Lcom/onesignal/UserState;->persistStateAfterSync(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 183
    monitor-exit v2

    return-void

    .line 185
    :cond_2
    invoke-virtual {p0}, Lcom/onesignal/UserStateSynchronizer;->getToSyncUserState()Lcom/onesignal/UserState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/onesignal/UserState;->persistState()V

    .line 186
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    if-eqz v1, :cond_4

    if-eqz p1, :cond_3

    goto :goto_0

    .line 191
    :cond_3
    invoke-direct {p0, v0, v3, v4}, Lcom/onesignal/UserStateSynchronizer;->doCreateOrNewSession(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 189
    :cond_4
    :goto_0
    invoke-direct {p0, v0, v3, v4}, Lcom/onesignal/UserStateSynchronizer;->doPutSync(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 192
    :goto_1
    return-void

    .line 186
    .end local v3    # "jsonBody":Lorg/json/JSONObject;
    .end local v4    # "dependDiff":Lorg/json/JSONObject;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private isSessionCall()Z
    .locals 1

    .line 151
    iget-boolean v0, p0, Lcom/onesignal/UserStateSynchronizer;->nextSyncIsSession:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/onesignal/UserStateSynchronizer;->waitingForSessionResponse:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private logoutEmailSyncSuccess()V
    .locals 4

    .line 235
    invoke-virtual {p0}, Lcom/onesignal/UserStateSynchronizer;->getToSyncUserState()Lcom/onesignal/UserState;

    move-result-object v0

    iget-object v0, v0, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    const-string v1, "logoutEmail"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 236
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->toSyncUserState:Lcom/onesignal/UserState;

    iget-object v0, v0, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    const-string v1, "email_auth_hash"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 237
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->toSyncUserState:Lcom/onesignal/UserState;

    iget-object v0, v0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    const-string v1, "parent_player_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 238
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->toSyncUserState:Lcom/onesignal/UserState;

    invoke-virtual {v0}, Lcom/onesignal/UserState;->persistState()V

    .line 240
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->currentUserState:Lcom/onesignal/UserState;

    iget-object v0, v0, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    const-string v1, "email_auth_hash"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 241
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->currentUserState:Lcom/onesignal/UserState;

    iget-object v0, v0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    const-string v1, "parent_player_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 242
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->currentUserState:Lcom/onesignal/UserState;

    iget-object v0, v0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    const-string v1, "email"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, "emailLoggedOut":Ljava/lang/String;
    iget-object v1, p0, Lcom/onesignal/UserStateSynchronizer;->currentUserState:Lcom/onesignal/UserState;

    iget-object v1, v1, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    const-string v2, "email"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 245
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->setSyncAsNewSessionForEmail()V

    .line 247
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device successfully logged out of email: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 248
    invoke-static {}, Lcom/onesignal/OneSignal;->handleSuccessfulEmailLogout()V

    .line 249
    return-void
.end method

.method private response400WithErrorsContaining(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "statusCode"    # I
    .param p2, "response"    # Ljava/lang/String;
    .param p3, "contains"    # Ljava/lang/String;

    .line 342
    const/4 v0, 0x0

    const/16 v1, 0x190

    if-ne p1, v1, :cond_1

    if-eqz p2, :cond_1

    .line 344
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 345
    .local v1, "responseJson":Lorg/json/JSONObject;
    const-string v2, "errors"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "errors"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    .line 346
    .end local v1    # "responseJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 347
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 351
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_1
    return v0
.end method

.method private syncEmailLogout()Z
    .locals 3

    .line 155
    invoke-virtual {p0}, Lcom/onesignal/UserStateSynchronizer;->getToSyncUserState()Lcom/onesignal/UserState;

    move-result-object v0

    iget-object v0, v0, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    const-string v1, "logoutEmail"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected abstract addOnSessionOrCreateExtras(Lorg/json/JSONObject;)V
.end method

.method clearLocation()V
    .locals 1

    .line 133
    invoke-virtual {p0}, Lcom/onesignal/UserStateSynchronizer;->getToSyncUserState()Lcom/onesignal/UserState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserState;->clearLocation()V

    .line 134
    invoke-virtual {p0}, Lcom/onesignal/UserStateSynchronizer;->getToSyncUserState()Lcom/onesignal/UserState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserState;->persistState()V

    .line 135
    return-void
.end method

.method protected abstract fireEventsForUpdateFailure(Lorg/json/JSONObject;)V
.end method

.method protected generateJsonDiff(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;
    .locals 2
    .param p1, "cur"    # Lorg/json/JSONObject;
    .param p2, "changedTo"    # Lorg/json/JSONObject;
    .param p3, "baseOutput"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 109
    .local p4, "includeFields":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->syncLock:Ljava/lang/Object;

    monitor-enter v0

    .line 110
    :try_start_0
    invoke-static {p1, p2, p3, p4}, Lcom/onesignal/JSONUtils;->generateJsonDiff(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 111
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected abstract getId()Ljava/lang/String;
.end method

.method protected getNetworkHandlerThread(Ljava/lang/Integer;)Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;
    .locals 4
    .param p1, "type"    # Ljava/lang/Integer;

    .line 355
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->networkHandlerSyncLock:Ljava/lang/Object;

    monitor-enter v0

    .line 356
    :try_start_0
    iget-object v1, p0, Lcom/onesignal/UserStateSynchronizer;->networkHandlerThreads:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 357
    iget-object v1, p0, Lcom/onesignal/UserStateSynchronizer;->networkHandlerThreads:Ljava/util/HashMap;

    new-instance v2, Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v2, p0, v3}, Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;-><init>(Lcom/onesignal/UserStateSynchronizer;I)V

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    :cond_0
    iget-object v1, p0, Lcom/onesignal/UserStateSynchronizer;->networkHandlerThreads:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;

    monitor-exit v0

    return-object v1

    .line 359
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getRegistrationId()Ljava/lang/String;
    .locals 3

    .line 31
    invoke-virtual {p0}, Lcom/onesignal/UserStateSynchronizer;->getToSyncUserState()Lcom/onesignal/UserState;

    move-result-object v0

    iget-object v0, v0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    const-string v1, "identifier"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method abstract getSubscribed()Z
.end method

.method abstract getTags(Z)Lcom/onesignal/UserStateSynchronizer$GetTagsResult;
.end method

.method protected declared-synchronized getToSyncUserState()Lcom/onesignal/UserState;
    .locals 2

    monitor-enter p0

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->toSyncUserState:Lcom/onesignal/UserState;

    if-nez v0, :cond_0

    .line 116
    const-string v0, "TOSYNC_STATE"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/onesignal/UserStateSynchronizer;->newUserState(Ljava/lang/String;Z)Lcom/onesignal/UserState;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->toSyncUserState:Lcom/onesignal/UserState;

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->toSyncUserState:Lcom/onesignal/UserState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getUserStateForModification()Lcom/onesignal/UserState;
    .locals 2

    .line 366
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->toSyncUserState:Lcom/onesignal/UserState;

    if-nez v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->currentUserState:Lcom/onesignal/UserState;

    const-string v1, "TOSYNC_STATE"

    invoke-virtual {v0, v1}, Lcom/onesignal/UserState;->deepClone(Ljava/lang/String;)Lcom/onesignal/UserState;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->toSyncUserState:Lcom/onesignal/UserState;

    .line 369
    :cond_0
    invoke-virtual {p0}, Lcom/onesignal/UserStateSynchronizer;->scheduleSyncToServer()V

    .line 371
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->toSyncUserState:Lcom/onesignal/UserState;

    return-object v0
.end method

.method public abstract getUserSubscribePreference()Z
.end method

.method initUserState()V
    .locals 3

    .line 122
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->syncLock:Ljava/lang/Object;

    monitor-enter v0

    .line 123
    :try_start_0
    iget-object v1, p0, Lcom/onesignal/UserStateSynchronizer;->currentUserState:Lcom/onesignal/UserState;

    if-nez v1, :cond_0

    .line 124
    const-string v1, "CURRENT_STATE"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/onesignal/UserStateSynchronizer;->newUserState(Ljava/lang/String;Z)Lcom/onesignal/UserState;

    move-result-object v1

    iput-object v1, p0, Lcom/onesignal/UserStateSynchronizer;->currentUserState:Lcom/onesignal/UserState;

    .line 125
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    invoke-virtual {p0}, Lcom/onesignal/UserStateSynchronizer;->getToSyncUserState()Lcom/onesignal/UserState;

    .line 128
    return-void

    .line 125
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method abstract logoutEmail()V
.end method

.method protected abstract newUserState(Ljava/lang/String;Z)Lcom/onesignal/UserState;
.end method

.method protected abstract onSuccessfulSync(Lorg/json/JSONObject;)V
.end method

.method persist()Z
    .locals 5

    .line 138
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->toSyncUserState:Lcom/onesignal/UserState;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->syncLock:Ljava/lang/Object;

    monitor-enter v0

    .line 140
    :try_start_0
    iget-object v2, p0, Lcom/onesignal/UserStateSynchronizer;->currentUserState:Lcom/onesignal/UserState;

    iget-object v3, p0, Lcom/onesignal/UserStateSynchronizer;->toSyncUserState:Lcom/onesignal/UserState;

    invoke-direct {p0}, Lcom/onesignal/UserStateSynchronizer;->isSessionCall()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/onesignal/UserState;->generateJsonDiff(Lcom/onesignal/UserState;Z)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    nop

    .line 141
    .local v1, "unSynced":Z
    :cond_0
    iget-object v2, p0, Lcom/onesignal/UserStateSynchronizer;->toSyncUserState:Lcom/onesignal/UserState;

    invoke-virtual {v2}, Lcom/onesignal/UserState;->persistState()V

    .line 142
    monitor-exit v0

    return v1

    .line 143
    .end local v1    # "unSynced":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 145
    :cond_1
    return v1
.end method

.method resetCurrentState()V
    .locals 2

    .line 409
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->currentUserState:Lcom/onesignal/UserState;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, v0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    .line 410
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->currentUserState:Lcom/onesignal/UserState;

    invoke-virtual {v0}, Lcom/onesignal/UserState;->persistState()V

    .line 411
    return-void
.end method

.method protected abstract scheduleSyncToServer()V
.end method

.method sendTags(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "tags"    # Lorg/json/JSONObject;

    .line 389
    invoke-virtual {p0}, Lcom/onesignal/UserStateSynchronizer;->getUserStateForModification()Lcom/onesignal/UserState;

    move-result-object v0

    iget-object v0, v0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    .line 390
    .local v0, "userStateTags":Lorg/json/JSONObject;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v0, v1}, Lcom/onesignal/UserStateSynchronizer;->generateJsonDiff(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;

    .line 391
    return-void
.end method

.method public abstract setPermission(Z)V
.end method

.method abstract setSubscription(Z)V
.end method

.method setSyncAsNewSession()V
    .locals 1

    .line 384
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onesignal/UserStateSynchronizer;->nextSyncIsSession:Z

    .line 385
    return-void
.end method

.method syncHashedEmail(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "emailFields"    # Lorg/json/JSONObject;

    .line 394
    invoke-virtual {p0}, Lcom/onesignal/UserStateSynchronizer;->getUserStateForModification()Lcom/onesignal/UserState;

    move-result-object v0

    iget-object v0, v0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    .line 395
    .local v0, "syncValues":Lorg/json/JSONObject;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v0, v1}, Lcom/onesignal/UserStateSynchronizer;->generateJsonDiff(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;

    .line 396
    return-void
.end method

.method declared-synchronized syncUserState(Z)V
    .locals 2
    .param p1, "fromSyncService"    # Z

    monitor-enter p0

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->runningSyncUserState:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 160
    invoke-direct {p0, p1}, Lcom/onesignal/UserStateSynchronizer;->internalSyncUserState(Z)V

    .line 161
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->runningSyncUserState:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    monitor-exit p0

    return-void

    .line 158
    .end local p1    # "fromSyncService":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method updateDeviceInfo(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "deviceInfo"    # Lorg/json/JSONObject;

    .line 377
    invoke-virtual {p0}, Lcom/onesignal/UserStateSynchronizer;->getUserStateForModification()Lcom/onesignal/UserState;

    move-result-object v0

    iget-object v0, v0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    .line 378
    .local v0, "toSync":Lorg/json/JSONObject;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v0, v1}, Lcom/onesignal/UserStateSynchronizer;->generateJsonDiff(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;

    .line 379
    return-void
.end method

.method abstract updateIdDependents(Ljava/lang/String;)V
.end method

.method updateLocation(Lcom/onesignal/LocationGMS$LocationPoint;)V
    .locals 1
    .param p1, "point"    # Lcom/onesignal/LocationGMS$LocationPoint;

    .line 417
    invoke-virtual {p0}, Lcom/onesignal/UserStateSynchronizer;->getUserStateForModification()Lcom/onesignal/UserState;

    move-result-object v0

    .line 418
    .local v0, "userState":Lcom/onesignal/UserState;
    invoke-virtual {v0, p1}, Lcom/onesignal/UserState;->setLocation(Lcom/onesignal/LocationGMS$LocationPoint;)V

    .line 419
    return-void
.end method

.method abstract updateState(Lorg/json/JSONObject;)V
.end method
