.class final Lcom/onesignal/OneSignal$6;
.super Lcom/onesignal/OneSignalRestClient$ResponseHandler;
.source "OneSignal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignal;->sendOnFocusToPlayer(Ljava/lang/String;Lorg/json/JSONObject;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1090
    invoke-direct {p0}, Lcom/onesignal/OneSignalRestClient$ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method onFailure(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "statusCode"    # I
    .param p2, "response"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .line 1093
    const-string v0, "sending on_focus Failed"

    invoke-static {v0, p1, p3, p2}, Lcom/onesignal/OneSignal;->access$2100(Ljava/lang/String;ILjava/lang/Throwable;Ljava/lang/String;)V

    .line 1094
    return-void
.end method

.method onSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "response"    # Ljava/lang/String;

    .line 1098
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->access$2200(J)V

    .line 1099
    return-void
.end method
