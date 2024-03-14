.class Lcom/onesignal/UserStateSynchronizer$5;
.super Lcom/onesignal/OneSignalRestClient$ResponseHandler;
.source "UserStateSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/UserStateSynchronizer;->doCreateOrNewSession(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onesignal/UserStateSynchronizer;

.field final synthetic val$dependDiff:Lorg/json/JSONObject;

.field final synthetic val$jsonBody:Lorg/json/JSONObject;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/onesignal/UserStateSynchronizer;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/onesignal/UserStateSynchronizer;

    .line 283
    iput-object p1, p0, Lcom/onesignal/UserStateSynchronizer$5;->this$0:Lcom/onesignal/UserStateSynchronizer;

    iput-object p2, p0, Lcom/onesignal/UserStateSynchronizer$5;->val$dependDiff:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/onesignal/UserStateSynchronizer$5;->val$jsonBody:Lorg/json/JSONObject;

    iput-object p4, p0, Lcom/onesignal/UserStateSynchronizer$5;->val$userId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/onesignal/OneSignalRestClient$ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method onFailure(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "statusCode"    # I
    .param p2, "response"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .line 286
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer$5;->this$0:Lcom/onesignal/UserStateSynchronizer;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/onesignal/UserStateSynchronizer;->waitingForSessionResponse:Z

    .line 287
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed last request. statusCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\nresponse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer$5;->this$0:Lcom/onesignal/UserStateSynchronizer;

    const-string v1, "not a valid device_type"

    invoke-static {v0, p1, p2, v1}, Lcom/onesignal/UserStateSynchronizer;->access$100(Lcom/onesignal/UserStateSynchronizer;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer$5;->this$0:Lcom/onesignal/UserStateSynchronizer;

    invoke-static {v0}, Lcom/onesignal/UserStateSynchronizer;->access$300(Lcom/onesignal/UserStateSynchronizer;)V

    goto :goto_0

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer$5;->this$0:Lcom/onesignal/UserStateSynchronizer;

    invoke-static {v0}, Lcom/onesignal/UserStateSynchronizer;->access$400(Lcom/onesignal/UserStateSynchronizer;)V

    .line 293
    :goto_0
    return-void
.end method

.method onSuccess(Ljava/lang/String;)V
    .locals 5
    .param p1, "response"    # Ljava/lang/String;

    .line 297
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer$5;->this$0:Lcom/onesignal/UserStateSynchronizer;

    iget-object v1, p0, Lcom/onesignal/UserStateSynchronizer$5;->this$0:Lcom/onesignal/UserStateSynchronizer;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/onesignal/UserStateSynchronizer;->waitingForSessionResponse:Z

    iput-boolean v2, v0, Lcom/onesignal/UserStateSynchronizer;->nextSyncIsSession:Z

    .line 298
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer$5;->this$0:Lcom/onesignal/UserStateSynchronizer;

    iget-object v0, v0, Lcom/onesignal/UserStateSynchronizer;->currentUserState:Lcom/onesignal/UserState;

    iget-object v1, p0, Lcom/onesignal/UserStateSynchronizer$5;->val$dependDiff:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/onesignal/UserStateSynchronizer$5;->val$jsonBody:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lcom/onesignal/UserState;->persistStateAfterSync(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 301
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 303
    .local v0, "jsonResponse":Lorg/json/JSONObject;
    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 304
    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 305
    .local v1, "newUserId":Ljava/lang/String;
    iget-object v2, p0, Lcom/onesignal/UserStateSynchronizer$5;->this$0:Lcom/onesignal/UserStateSynchronizer;

    invoke-virtual {v2, v1}, Lcom/onesignal/UserStateSynchronizer;->updateIdDependents(Ljava/lang/String;)V

    .line 307
    sget-object v2, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Device registered, UserId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 308
    .end local v1    # "newUserId":Ljava/lang/String;
    goto :goto_0

    .line 310
    :cond_0
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "session sent, UserId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/onesignal/UserStateSynchronizer$5;->val$userId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 312
    :goto_0
    invoke-static {}, Lcom/onesignal/OneSignal;->updateOnSessionDependents()V

    .line 313
    iget-object v1, p0, Lcom/onesignal/UserStateSynchronizer$5;->this$0:Lcom/onesignal/UserStateSynchronizer;

    iget-object v2, p0, Lcom/onesignal/UserStateSynchronizer$5;->val$jsonBody:Lorg/json/JSONObject;

    invoke-virtual {v1, v2}, Lcom/onesignal/UserStateSynchronizer;->onSuccessfulSync(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    .end local v0    # "jsonResponse":Lorg/json/JSONObject;
    goto :goto_1

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "ERROR parsing on_session or create JSON Response."

    invoke-static {v1, v2, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 317
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method
