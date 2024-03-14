.class public Lkidus/mikael/yebahil/hikmna/AndroidManiaApp;
.super Landroid/app/Application;
.source "AndroidManiaApp.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .line 10
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 12
    invoke-static {p0}, Lcom/onesignal/OneSignal;->startInit(Landroid/content/Context;)Lcom/onesignal/OneSignal$Builder;

    move-result-object v0

    sget-object v1, Lcom/onesignal/OneSignal$OSInFocusDisplayOption;->Notification:Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    .line 13
    invoke-virtual {v0, v1}, Lcom/onesignal/OneSignal$Builder;->inFocusDisplaying(Lcom/onesignal/OneSignal$OSInFocusDisplayOption;)Lcom/onesignal/OneSignal$Builder;

    move-result-object v0

    .line 14
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/onesignal/OneSignal$Builder;->unsubscribeWhenNotificationsAreDisabled(Z)Lcom/onesignal/OneSignal$Builder;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/onesignal/OneSignal$Builder;->init()V

    .line 17
    return-void
.end method
