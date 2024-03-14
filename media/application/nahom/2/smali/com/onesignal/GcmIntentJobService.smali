.class public Lcom/onesignal/GcmIntentJobService;
.super Lcom/onesignal/OneSignalJobServiceBase;
.source "GcmIntentJobService.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    api = 0x16
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/onesignal/OneSignalJobServiceBase;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    .line 8
    invoke-super {p0, p1}, Lcom/onesignal/OneSignalJobServiceBase;->onStartJob(Landroid/app/job/JobParameters;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    .line 8
    invoke-super {p0, p1}, Lcom/onesignal/OneSignalJobServiceBase;->onStopJob(Landroid/app/job/JobParameters;)Z

    move-result p1

    return p1
.end method

.method startProcessing(Landroid/app/job/JobService;Landroid/app/job/JobParameters;)V
    .locals 2
    .param p1, "jobService"    # Landroid/app/job/JobService;
    .param p2, "jobParameters"    # Landroid/app/job/JobParameters;

    .line 12
    new-instance v0, Lcom/onesignal/BundleCompatPersistableBundle;

    .line 13
    invoke-virtual {p2}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/onesignal/BundleCompatPersistableBundle;-><init>(Landroid/os/PersistableBundle;)V

    .line 12
    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/onesignal/NotificationBundleProcessor;->ProcessFromGCMIntentService(Landroid/content/Context;Lcom/onesignal/BundleCompat;Lcom/onesignal/NotificationExtenderService$OverrideSettings;)V

    .line 15
    return-void
.end method
