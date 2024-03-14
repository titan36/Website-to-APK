.class public Lcom/onesignal/PermissionsActivity;
.super Landroid/app/Activity;
.source "PermissionsActivity.java"


# static fields
.field private static final REQUEST_LOCATION:I = 0x2

.field private static activityAvailableListener:Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;

.field static answered:Z

.field static waiting:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private requestPermission()V
    .locals 3

    .line 71
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/onesignal/PermissionsActivity;->finish()V

    .line 73
    return-void

    .line 76
    :cond_0
    sget-boolean v0, Lcom/onesignal/PermissionsActivity;->waiting:Z

    if-nez v0, :cond_1

    .line 77
    const/4 v0, 0x1

    sput-boolean v0, Lcom/onesignal/PermissionsActivity;->waiting:Z

    .line 78
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/onesignal/LocationGMS;->requestPermission:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lcom/onesignal/AndroidSupportV4Compat$ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 80
    :cond_1
    return-void
.end method

.method static startPrompt()V
    .locals 1

    .line 100
    sget-boolean v0, Lcom/onesignal/PermissionsActivity;->waiting:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/onesignal/PermissionsActivity;->answered:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    new-instance v0, Lcom/onesignal/PermissionsActivity$1;

    invoke-direct {v0}, Lcom/onesignal/PermissionsActivity$1;-><init>()V

    sput-object v0, Lcom/onesignal/PermissionsActivity;->activityAvailableListener:Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;

    .line 114
    sget-object v0, Lcom/onesignal/PermissionsActivity;->activityAvailableListener:Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;

    invoke-static {v0}, Lcom/onesignal/ActivityLifecycleHandler;->setActivityAvailableListener(Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;)V

    .line 115
    return-void

    .line 101
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    if-eqz p1, :cond_0

    const-string v0, "android:hasCurrentPermissionsRequest"

    const/4 v1, 0x0

    .line 54
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    const/4 v0, 0x1

    sput-boolean v0, Lcom/onesignal/PermissionsActivity;->waiting:Z

    goto :goto_0

    .line 57
    :cond_0
    invoke-direct {p0}, Lcom/onesignal/PermissionsActivity;->requestPermission()V

    .line 58
    :goto_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 64
    sget-boolean v0, Lcom/onesignal/OneSignal;->initDone:Z

    if-eqz v0, :cond_0

    .line 65
    invoke-direct {p0}, Lcom/onesignal/PermissionsActivity;->requestPermission()V

    .line 66
    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 84
    const/4 v0, 0x1

    sput-boolean v0, Lcom/onesignal/PermissionsActivity;->answered:Z

    .line 85
    const/4 v0, 0x0

    sput-boolean v0, Lcom/onesignal/PermissionsActivity;->waiting:Z

    .line 87
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 88
    array-length v1, p3

    if-lez v1, :cond_0

    aget v0, p3, v0

    if-nez v0, :cond_0

    .line 89
    invoke-static {}, Lcom/onesignal/LocationGMS;->startGetLocation()V

    goto :goto_0

    .line 91
    :cond_0
    invoke-static {}, Lcom/onesignal/LocationGMS;->fireFailedComplete()V

    .line 94
    :cond_1
    :goto_0
    sget-object v0, Lcom/onesignal/PermissionsActivity;->activityAvailableListener:Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;

    invoke-static {v0}, Lcom/onesignal/ActivityLifecycleHandler;->removeActivityAvailableListener(Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;)V

    .line 95
    invoke-virtual {p0}, Lcom/onesignal/PermissionsActivity;->finish()V

    .line 96
    return-void
.end method
