.class public Lcom/onesignal/OSPermissionState;
.super Ljava/lang/Object;
.source "OSPermissionState.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private enabled:Z

.field observable:Lcom/onesignal/OSObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onesignal/OSObservable<",
            "Ljava/lang/Object;",
            "Lcom/onesignal/OSPermissionState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Z)V
    .locals 3
    .param p1, "asFrom"    # Z

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/onesignal/OSObservable;

    const-string v1, "changed"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/onesignal/OSObservable;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/onesignal/OSPermissionState;->observable:Lcom/onesignal/OSObservable;

    .line 43
    if-eqz p1, :cond_0

    .line 44
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v1, "ONESIGNAL_ACCEPTED_NOTIFICATION_LAST"

    invoke-static {v0, v1, v2}, Lcom/onesignal/OneSignalPrefs;->getBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/onesignal/OSPermissionState;->enabled:Z

    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/onesignal/OSPermissionState;->refreshAsTo()V

    .line 49
    :goto_0
    return-void
.end method

.method private setEnabled(Z)V
    .locals 2
    .param p1, "set"    # Z

    .line 62
    iget-boolean v0, p0, Lcom/onesignal/OSPermissionState;->enabled:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 63
    .local v0, "changed":Z
    :goto_0
    iput-boolean p1, p0, Lcom/onesignal/OSPermissionState;->enabled:Z

    .line 64
    if-eqz v0, :cond_1

    .line 65
    iget-object v1, p0, Lcom/onesignal/OSPermissionState;->observable:Lcom/onesignal/OSObservable;

    invoke-virtual {v1, p0}, Lcom/onesignal/OSObservable;->notifyChange(Ljava/lang/Object;)Z

    .line 66
    :cond_1
    return-void
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .locals 1

    .line 79
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method compare(Lcom/onesignal/OSPermissionState;)Z
    .locals 2
    .param p1, "from"    # Lcom/onesignal/OSPermissionState;

    .line 74
    iget-boolean v0, p0, Lcom/onesignal/OSPermissionState;->enabled:Z

    iget-boolean v1, p1, Lcom/onesignal/OSPermissionState;->enabled:Z

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getEnabled()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcom/onesignal/OSPermissionState;->enabled:Z

    return v0
.end method

.method persistAsFrom()V
    .locals 3

    .line 69
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v1, "ONESIGNAL_ACCEPTED_NOTIFICATION_LAST"

    iget-boolean v2, p0, Lcom/onesignal/OSPermissionState;->enabled:Z

    invoke-static {v0, v1, v2}, Lcom/onesignal/OneSignalPrefs;->saveBool(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 71
    return-void
.end method

.method refreshAsTo()V
    .locals 1

    .line 54
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OSUtils;->areNotificationsEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/onesignal/OSPermissionState;->setEnabled(Z)V

    .line 55
    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .line 85
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 88
    .local v0, "mainObj":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "enabled"

    iget-boolean v2, p0, Lcom/onesignal/OSPermissionState;->enabled:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    goto :goto_0

    .line 90
    :catch_0
    move-exception v1

    .line 91
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 94
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 99
    invoke-virtual {p0}, Lcom/onesignal/OSPermissionState;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
