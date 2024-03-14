.class Lcom/onesignal/GooglePlayServicesUpgradePrompt;
.super Ljava/lang/Object;
.source "GooglePlayServicesUpgradePrompt.java"


# static fields
.field private static final PLAY_SERVICES_RESOLUTION_REQUEST:I = 0x2328


# direct methods
.method constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static OpenPlayStoreToApp(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .line 86
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    .line 87
    .local v0, "apiAvailability":Lcom/google/android/gms/common/GoogleApiAvailability;
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1

    .line 89
    .local v1, "resultCode":I
    const/16 v2, 0x2328

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/android/gms/common/GoogleApiAvailability;->getErrorResolutionPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v2

    .line 93
    invoke-virtual {v2}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .end local v0    # "apiAvailability":Lcom/google/android/gms/common/GoogleApiAvailability;
    .end local v1    # "resultCode":I
    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 96
    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_1

    .line 94
    :catch_1
    move-exception v0

    .line 97
    :goto_0
    nop

    .line 98
    :goto_1
    return-void
.end method

.method static ShowUpdateGPSDialog()V
    .locals 3

    .line 40
    invoke-static {}, Lcom/onesignal/GooglePlayServicesUpgradePrompt;->isGMSInstalledAndEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/onesignal/GooglePlayServicesUpgradePrompt;->isGooglePlayStoreInstalled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v1, "GT_DO_NOT_SHOW_MISSING_GPS"

    const/4 v2, 0x0

    .line 44
    invoke-static {v0, v1, v2}, Lcom/onesignal/OneSignalPrefs;->getBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 49
    .local v0, "userSelectedSkip":Z
    if-eqz v0, :cond_1

    .line 50
    return-void

    .line 52
    :cond_1
    new-instance v1, Lcom/onesignal/GooglePlayServicesUpgradePrompt$1;

    invoke-direct {v1}, Lcom/onesignal/GooglePlayServicesUpgradePrompt$1;-><init>()V

    invoke-static {v1}, Lcom/onesignal/OSUtils;->runOnMainUIThread(Ljava/lang/Runnable;)V

    .line 81
    return-void

    .line 41
    .end local v0    # "userSelectedSkip":Z
    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic access$000(Landroid/app/Activity;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/Activity;

    .line 14
    invoke-static {p0}, Lcom/onesignal/GooglePlayServicesUpgradePrompt;->OpenPlayStoreToApp(Landroid/app/Activity;)V

    return-void
.end method

.method static isGMSInstalledAndEnabled()Z
    .locals 3

    .line 19
    :try_start_0
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 20
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "com.google.android.gms"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 22
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 23
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method private static isGooglePlayStoreInstalled()Z
    .locals 6

    .line 30
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 31
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string v2, "com.google.android.gms"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 32
    .local v2, "info":Landroid/content/pm/PackageInfo;
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 33
    .local v4, "label":Ljava/lang/String;
    if-eqz v4, :cond_0

    const-string v5, "Market"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_0

    move v0, v3

    nop

    :cond_0
    return v0

    .line 34
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v4    # "label":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 36
    return v0
.end method
