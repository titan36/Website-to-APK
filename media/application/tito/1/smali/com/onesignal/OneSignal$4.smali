.class final Lcom/onesignal/OneSignal$4;
.super Lcom/onesignal/OneSignalRestClient$ResponseHandler;
.source "OneSignal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignal;->makeAndroidParamsRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 806
    invoke-direct {p0}, Lcom/onesignal/OneSignalRestClient$ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method onFailure(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "statusCode"    # I
    .param p2, "response"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .line 809
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/onesignal/OneSignal$4$1;

    invoke-direct {v1, p0}, Lcom/onesignal/OneSignal$4$1;-><init>(Lcom/onesignal/OneSignal$4;)V

    const-string v2, "OS_PARAMS_REQUEST"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 823
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 824
    return-void
.end method

.method onSuccess(Ljava/lang/String;)V
    .locals 5
    .param p1, "response"    # Ljava/lang/String;

    .line 829
    const/4 v0, 0x1

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 830
    .local v1, "responseJson":Lorg/json/JSONObject;
    const-string v2, "android_sender_id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 831
    invoke-static {v0}, Lcom/onesignal/OneSignal;->access$1502(Z)Z

    .line 832
    const-string v2, "android_sender_id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/onesignal/OneSignal;->access$1602(Ljava/lang/String;)Ljava/lang/String;

    .line 835
    :cond_0
    const-string v2, "enterp"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/onesignal/OneSignal;->mEnterp:Z

    .line 837
    const-string v2, "use_email_auth"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Lcom/onesignal/OneSignal;->access$1702(Z)Z

    .line 839
    const-string v2, "awl_list"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/onesignal/OneSignal;->access$1802(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 841
    const-string v2, "fba"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 842
    .local v2, "firebaseAnalytics":Z
    sget-object v3, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v4, "GT_FIREBASE_TRACKING_ENABLED"

    invoke-static {v3, v4, v2}, Lcom/onesignal/OneSignalPrefs;->saveBool(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 845
    sget-object v3, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/onesignal/NotificationChannelManager;->processChannelList(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 848
    .end local v1    # "responseJson":Lorg/json/JSONObject;
    .end local v2    # "firebaseAnalytics":Z
    goto :goto_0

    .line 846
    :catch_0
    move-exception v1

    .line 847
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 849
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_0
    invoke-static {v0}, Lcom/onesignal/OneSignal;->access$1902(Z)Z

    .line 850
    invoke-static {}, Lcom/onesignal/OneSignal;->access$2000()V

    .line 851
    return-void
.end method
