.class public Lcom/onesignal/OSPermissionSubscriptionState;
.super Ljava/lang/Object;
.source "OSPermissionSubscriptionState.java"


# instance fields
.field emailSubscriptionStatus:Lcom/onesignal/OSEmailSubscriptionState;

.field permissionStatus:Lcom/onesignal/OSPermissionState;

.field subscriptionStatus:Lcom/onesignal/OSSubscriptionState;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEmailSubscriptionStatus()Lcom/onesignal/OSEmailSubscriptionState;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/onesignal/OSPermissionSubscriptionState;->emailSubscriptionStatus:Lcom/onesignal/OSEmailSubscriptionState;

    return-object v0
.end method

.method public getPermissionStatus()Lcom/onesignal/OSPermissionState;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/onesignal/OSPermissionSubscriptionState;->permissionStatus:Lcom/onesignal/OSPermissionState;

    return-object v0
.end method

.method public getSubscriptionStatus()Lcom/onesignal/OSSubscriptionState;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/onesignal/OSPermissionSubscriptionState;->subscriptionStatus:Lcom/onesignal/OSSubscriptionState;

    return-object v0
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .line 50
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 53
    .local v0, "mainObj":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "permissionStatus"

    iget-object v2, p0, Lcom/onesignal/OSPermissionSubscriptionState;->permissionStatus:Lcom/onesignal/OSPermissionState;

    invoke-virtual {v2}, Lcom/onesignal/OSPermissionState;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    const-string v1, "subscriptionStatus"

    iget-object v2, p0, Lcom/onesignal/OSPermissionSubscriptionState;->subscriptionStatus:Lcom/onesignal/OSSubscriptionState;

    invoke-virtual {v2}, Lcom/onesignal/OSSubscriptionState;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    const-string v1, "emailSubscriptionStatus"

    iget-object v2, p0, Lcom/onesignal/OSPermissionSubscriptionState;->emailSubscriptionStatus:Lcom/onesignal/OSEmailSubscriptionState;

    invoke-virtual {v2}, Lcom/onesignal/OSEmailSubscriptionState;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    goto :goto_0

    .line 57
    :catch_0
    move-exception v1

    .line 58
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 61
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/onesignal/OSPermissionSubscriptionState;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
