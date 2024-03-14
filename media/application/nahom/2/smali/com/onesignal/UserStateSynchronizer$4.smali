.class Lcom/onesignal/UserStateSynchronizer$4;
.super Lcom/onesignal/OneSignalRestClient$ResponseHandler;
.source "UserStateSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/UserStateSynchronizer;->doPutSync(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onesignal/UserStateSynchronizer;

.field final synthetic val$dependDiff:Lorg/json/JSONObject;

.field final synthetic val$jsonBody:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/onesignal/UserStateSynchronizer;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/onesignal/UserStateSynchronizer;

    .line 255
    iput-object p1, p0, Lcom/onesignal/UserStateSynchronizer$4;->this$0:Lcom/onesignal/UserStateSynchronizer;

    iput-object p2, p0, Lcom/onesignal/UserStateSynchronizer$4;->val$dependDiff:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/onesignal/UserStateSynchronizer$4;->val$jsonBody:Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/onesignal/OneSignalRestClient$ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method onFailure(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "statusCode"    # I
    .param p2, "response"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .line 258
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

    .line 260
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer$4;->this$0:Lcom/onesignal/UserStateSynchronizer;

    const-string v1, "No user with this id found"

    invoke-static {v0, p1, p2, v1}, Lcom/onesignal/UserStateSynchronizer;->access$100(Lcom/onesignal/UserStateSynchronizer;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer$4;->this$0:Lcom/onesignal/UserStateSynchronizer;

    invoke-static {v0}, Lcom/onesignal/UserStateSynchronizer;->access$300(Lcom/onesignal/UserStateSynchronizer;)V

    goto :goto_0

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer$4;->this$0:Lcom/onesignal/UserStateSynchronizer;

    invoke-static {v0}, Lcom/onesignal/UserStateSynchronizer;->access$400(Lcom/onesignal/UserStateSynchronizer;)V

    .line 264
    :goto_0
    return-void
.end method

.method onSuccess(Ljava/lang/String;)V
    .locals 3
    .param p1, "response"    # Ljava/lang/String;

    .line 268
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer$4;->this$0:Lcom/onesignal/UserStateSynchronizer;

    iget-object v0, v0, Lcom/onesignal/UserStateSynchronizer;->currentUserState:Lcom/onesignal/UserState;

    iget-object v1, p0, Lcom/onesignal/UserStateSynchronizer$4;->val$dependDiff:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/onesignal/UserStateSynchronizer$4;->val$jsonBody:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lcom/onesignal/UserState;->persistStateAfterSync(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 269
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer$4;->this$0:Lcom/onesignal/UserStateSynchronizer;

    iget-object v1, p0, Lcom/onesignal/UserStateSynchronizer$4;->val$jsonBody:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/onesignal/UserStateSynchronizer;->onSuccessfulSync(Lorg/json/JSONObject;)V

    .line 270
    return-void
.end method
