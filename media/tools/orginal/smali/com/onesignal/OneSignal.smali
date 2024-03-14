.class public Lcom/onesignal/OneSignal;
.super Ljava/lang/Object;
.source "OneSignal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/OneSignal$PendingTaskRunnable;,
        Lcom/onesignal/OneSignal$IAPUpdateJob;,
        Lcom/onesignal/OneSignal$Builder;,
        Lcom/onesignal/OneSignal$PostNotificationResponseHandler;,
        Lcom/onesignal/OneSignal$EmailUpdateHandler;,
        Lcom/onesignal/OneSignal$EmailUpdateError;,
        Lcom/onesignal/OneSignal$EmailErrorType;,
        Lcom/onesignal/OneSignal$GetTagsHandler;,
        Lcom/onesignal/OneSignal$IdsAvailableHandler;,
        Lcom/onesignal/OneSignal$NotificationReceivedHandler;,
        Lcom/onesignal/OneSignal$NotificationOpenedHandler;,
        Lcom/onesignal/OneSignal$OSInFocusDisplayOption;,
        Lcom/onesignal/OneSignal$LOG_LEVEL;
    }
.end annotation


# static fields
.field static final MIN_ON_FOCUS_TIME:J = 0x3cL

.field private static final MIN_ON_SESSION_TIME:J = 0x1eL

.field public static final VERSION:Ljava/lang/String; = "030901"

.field private static androidParamsReties:I

.field static appContext:Landroid/content/Context;

.field static appId:Ljava/lang/String;

.field private static awl:Lorg/json/JSONObject;

.field private static awlFired:Z

.field private static currentEmailSubscriptionState:Lcom/onesignal/OSEmailSubscriptionState;

.field private static currentPermissionState:Lcom/onesignal/OSPermissionState;

.field private static currentSubscriptionState:Lcom/onesignal/OSSubscriptionState;

.field static delayedInitParams:Lcom/onesignal/DelayedConsentInitializationParameters;

.field private static deviceType:I

.field private static emailId:Ljava/lang/String;

.field private static emailLogoutHandler:Lcom/onesignal/OneSignal$EmailUpdateHandler;

.field private static emailSubscriptionStateChangesObserver:Lcom/onesignal/OSObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onesignal/OSObservable<",
            "Lcom/onesignal/OSEmailSubscriptionObserver;",
            "Lcom/onesignal/OSEmailSubscriptionStateChanges;",
            ">;"
        }
    .end annotation
.end field

.field private static emailUpdateHandler:Lcom/onesignal/OneSignal$EmailUpdateHandler;

.field private static foreground:Z

.field private static getTagsCall:Z

.field private static iapUpdateJob:Lcom/onesignal/OneSignal$IAPUpdateJob;

.field private static idsAvailableHandler:Lcom/onesignal/OneSignal$IdsAvailableHandler;

.field static initDone:Z

.field static lastEmailSubscriptionState:Lcom/onesignal/OSEmailSubscriptionState;

.field private static lastLocationPoint:Lcom/onesignal/LocationGMS$LocationPoint;

.field static lastPermissionState:Lcom/onesignal/OSPermissionState;

.field private static lastRegistrationId:Ljava/lang/String;

.field static lastSubscriptionState:Lcom/onesignal/OSSubscriptionState;

.field static lastTaskId:Ljava/util/concurrent/atomic/AtomicLong;

.field private static lastTrackedFocusTime:J

.field private static locationFired:Z

.field private static logCatLevel:Lcom/onesignal/OneSignal$LOG_LEVEL;

.field static mEnterp:Z

.field private static mGoogleProjectNumber:Ljava/lang/String;

.field private static mGoogleProjectNumberIsRemote:Z

.field static mInitBuilder:Lcom/onesignal/OneSignal$Builder;

.field private static mPushRegistrator:Lcom/onesignal/PushRegistrator;

.field private static mainAdIdProvider:Lcom/onesignal/AdvertisingIdentifierProvider;

.field private static osUtils:Lcom/onesignal/OSUtils;

.field private static pendingGetTagsHandler:Lcom/onesignal/OneSignal$GetTagsHandler;

.field static pendingTaskExecutor:Ljava/util/concurrent/ExecutorService;

.field private static permissionStateChangesObserver:Lcom/onesignal/OSObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onesignal/OSObservable<",
            "Lcom/onesignal/OSPermissionObserver;",
            "Lcom/onesignal/OSPermissionStateChanges;",
            ">;"
        }
    .end annotation
.end field

.field private static postedOpenedNotifIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static promptedLocation:Z

.field private static registerForPushFired:Z

.field static requiresUserPrivacyConsent:Z

.field public static sdkType:Ljava/lang/String;

.field private static sendAsSession:Z

.field static shareLocation:Z

.field private static subscribableStatus:I

.field private static subscriptionStateChangesObserver:Lcom/onesignal/OSObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onesignal/OSObservable<",
            "Lcom/onesignal/OSSubscriptionObserver;",
            "Lcom/onesignal/OSSubscriptionStateChanges;",
            ">;"
        }
    .end annotation
.end field

.field public static taskQueueWaitingForInit:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static trackAmazonPurchase:Lcom/onesignal/TrackAmazonPurchase;

.field private static trackFirebaseAnalytics:Lcom/onesignal/TrackFirebaseAnalytics;

.field private static trackGooglePurchase:Lcom/onesignal/TrackGooglePurchase;

.field private static unSentActiveTime:J

.field private static unprocessedOpenedNotifis:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/json/JSONArray;",
            ">;"
        }
    .end annotation
.end field

.field private static useEmailAuth:Z

.field private static userId:Ljava/lang/String;

.field private static visualLogLevel:Lcom/onesignal/OneSignal$LOG_LEVEL;

.field private static waitingToPostStateSync:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 324
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->NONE:Lcom/onesignal/OneSignal$LOG_LEVEL;

    sput-object v0, Lcom/onesignal/OneSignal;->visualLogLevel:Lcom/onesignal/OneSignal$LOG_LEVEL;

    .line 325
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    sput-object v0, Lcom/onesignal/OneSignal;->logCatLevel:Lcom/onesignal/OneSignal$LOG_LEVEL;

    .line 327
    const/4 v0, 0x0

    sput-object v0, Lcom/onesignal/OneSignal;->userId:Ljava/lang/String;

    sput-object v0, Lcom/onesignal/OneSignal;->emailId:Ljava/lang/String;

    .line 335
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/onesignal/OneSignal;->taskQueueWaitingForInit:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 336
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/onesignal/OneSignal;->lastTaskId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 340
    const-wide/16 v0, 0x1

    sput-wide v0, Lcom/onesignal/OneSignal;->lastTrackedFocusTime:J

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/onesignal/OneSignal;->unSentActiveTime:J

    .line 348
    new-instance v0, Lcom/onesignal/AdvertisingIdProviderGPS;

    invoke-direct {v0}, Lcom/onesignal/AdvertisingIdProviderGPS;-><init>()V

    sput-object v0, Lcom/onesignal/OneSignal;->mainAdIdProvider:Lcom/onesignal/AdvertisingIdentifierProvider;

    .line 352
    const-string v0, "native"

    sput-object v0, Lcom/onesignal/OneSignal;->sdkType:Ljava/lang/String;

    .line 361
    const/4 v0, 0x1

    sput-boolean v0, Lcom/onesignal/OneSignal;->shareLocation:Z

    .line 364
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/onesignal/OneSignal;->unprocessedOpenedNotifis:Ljava/util/Collection;

    .line 365
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/onesignal/OneSignal;->postedOpenedNotifIds:Ljava/util/HashSet;

    .line 377
    const/4 v0, 0x0

    sput-boolean v0, Lcom/onesignal/OneSignal;->requiresUserPrivacyConsent:Z

    .line 796
    sput v0, Lcom/onesignal/OneSignal;->androidParamsReties:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static GetUnsentActiveTime()J
    .locals 5

    .line 2651
    sget-wide v0, Lcom/onesignal/OneSignal;->unSentActiveTime:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 2652
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v1, "GT_UNSENT_ACTIVE_TIME"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/onesignal/OneSignalPrefs;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/onesignal/OneSignal;->unSentActiveTime:J

    .line 2656
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetUnsentActiveTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/onesignal/OneSignal;->unSentActiveTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 2658
    sget-wide v0, Lcom/onesignal/OneSignal;->unSentActiveTime:J

    return-wide v0
.end method

.method static Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V
    .locals 1
    .param p0, "level"    # Lcom/onesignal/OneSignal$LOG_LEVEL;
    .param p1, "message"    # Ljava/lang/String;

    .line 960
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 961
    return-void
.end method

.method static Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .param p0, "level"    # Lcom/onesignal/OneSignal$LOG_LEVEL;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .line 964
    const-string v0, "OneSignal"

    .line 966
    .local v0, "TAG":Ljava/lang/String;
    sget-object v1, Lcom/onesignal/OneSignal;->logCatLevel:Lcom/onesignal/OneSignal$LOG_LEVEL;

    invoke-virtual {p0, v1}, Lcom/onesignal/OneSignal$LOG_LEVEL;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_5

    .line 967
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->VERBOSE:Lcom/onesignal/OneSignal$LOG_LEVEL;

    if-ne p0, v1, :cond_0

    .line 968
    const-string v1, "OneSignal"

    invoke-static {v1, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 969
    :cond_0
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    if-ne p0, v1, :cond_1

    .line 970
    const-string v1, "OneSignal"

    invoke-static {v1, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 971
    :cond_1
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    if-ne p0, v1, :cond_2

    .line 972
    const-string v1, "OneSignal"

    invoke-static {v1, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 973
    :cond_2
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    if-ne p0, v1, :cond_3

    .line 974
    const-string v1, "OneSignal"

    invoke-static {v1, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 975
    :cond_3
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    if-eq p0, v1, :cond_4

    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->FATAL:Lcom/onesignal/OneSignal$LOG_LEVEL;

    if-ne p0, v1, :cond_5

    .line 976
    :cond_4
    const-string v1, "OneSignal"

    invoke-static {v1, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 979
    :cond_5
    :goto_0
    sget-object v1, Lcom/onesignal/OneSignal;->visualLogLevel:Lcom/onesignal/OneSignal$LOG_LEVEL;

    invoke-virtual {p0, v1}, Lcom/onesignal/OneSignal$LOG_LEVEL;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-ge v1, v2, :cond_7

    sget-object v1, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    if-eqz v1, :cond_7

    .line 981
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 982
    .local v1, "fullMessage":Ljava/lang/String;
    if-eqz p2, :cond_6

    .line 983
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 984
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 985
    .local v2, "sw":Ljava/io/StringWriter;
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 986
    .local v3, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p2, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 987
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 990
    .end local v2    # "sw":Ljava/io/StringWriter;
    .end local v3    # "pw":Ljava/io/PrintWriter;
    :cond_6
    move-object v2, v1

    .line 991
    .local v2, "finalFullMessage":Ljava/lang/String;
    new-instance v3, Lcom/onesignal/OneSignal$5;

    invoke-direct {v3, p0, v2}, Lcom/onesignal/OneSignal$5;-><init>(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/onesignal/OSUtils;->runOnMainUIThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1003
    .end local v1    # "fullMessage":Ljava/lang/String;
    .end local v2    # "finalFullMessage":Ljava/lang/String;
    goto :goto_1

    .line 1001
    :catch_0
    move-exception v1

    .line 1002
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "OneSignal"

    const-string v3, "Error showing logging message."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1005
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_7
    :goto_1
    return-void
.end method

.method private static SaveAppId(Ljava/lang/String;)V
    .locals 2
    .param p0, "appId"    # Ljava/lang/String;

    .line 1930
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1931
    return-void

    .line 1932
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v1, "GT_APP_ID"

    invoke-static {v0, v1, p0}, Lcom/onesignal/OneSignalPrefs;->saveString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1934
    return-void
.end method

.method private static SaveUnsentActiveTime(J)V
    .locals 4
    .param p0, "time"    # J

    .line 2662
    sput-wide p0, Lcom/onesignal/OneSignal;->unSentActiveTime:J

    .line 2663
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 2664
    return-void

    .line 2666
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SaveUnsentActiveTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/onesignal/OneSignal;->unSentActiveTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 2668
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v1, "GT_UNSENT_ACTIVE_TIME"

    invoke-static {v0, v1, p0, p1}, Lcom/onesignal/OneSignalPrefs;->saveLong(Ljava/lang/String;Ljava/lang/String;J)V

    .line 2670
    return-void
.end method

.method static synthetic access$000(Lcom/onesignal/OneSignal$Builder;)V
    .locals 0
    .param p0, "x0"    # Lcom/onesignal/OneSignal$Builder;

    .line 80
    invoke-static {p0}, Lcom/onesignal/OneSignal;->init(Lcom/onesignal/OneSignal$Builder;)V

    return-void
.end method

.method static synthetic access$1002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 80
    sput-object p0, Lcom/onesignal/OneSignal;->lastRegistrationId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 80
    sput-boolean p0, Lcom/onesignal/OneSignal;->registerForPushFired:Z

    return p0
.end method

.method static synthetic access$1200(Landroid/content/Context;)Lcom/onesignal/OSSubscriptionState;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .line 80
    invoke-static {p0}, Lcom/onesignal/OneSignal;->getCurrentSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSSubscriptionState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300()I
    .locals 1

    .line 80
    sget v0, Lcom/onesignal/OneSignal;->androidParamsReties:I

    return v0
.end method

.method static synthetic access$1308()I
    .locals 2

    .line 80
    sget v0, Lcom/onesignal/OneSignal;->androidParamsReties:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/onesignal/OneSignal;->androidParamsReties:I

    return v0
.end method

.method static synthetic access$1400()V
    .locals 0

    .line 80
    invoke-static {}, Lcom/onesignal/OneSignal;->makeAndroidParamsRequest()V

    return-void
.end method

.method static synthetic access$1502(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 80
    sput-boolean p0, Lcom/onesignal/OneSignal;->mGoogleProjectNumberIsRemote:Z

    return p0
.end method

.method static synthetic access$1602(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 80
    sput-object p0, Lcom/onesignal/OneSignal;->mGoogleProjectNumber:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1702(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 80
    sput-boolean p0, Lcom/onesignal/OneSignal;->useEmailAuth:Z

    return p0
.end method

.method static synthetic access$1802(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0
    .param p0, "x0"    # Lorg/json/JSONObject;

    .line 80
    sput-object p0, Lcom/onesignal/OneSignal;->awl:Lorg/json/JSONObject;

    return-object p0
.end method

.method static synthetic access$1902(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 80
    sput-boolean p0, Lcom/onesignal/OneSignal;->awlFired:Z

    return p0
.end method

.method static synthetic access$2000()V
    .locals 0

    .line 80
    invoke-static {}, Lcom/onesignal/OneSignal;->registerForPushToken()V

    return-void
.end method

.method static synthetic access$2100(Ljava/lang/String;ILjava/lang/Throwable;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/Throwable;
    .param p3, "x3"    # Ljava/lang/String;

    .line 80
    invoke-static {p0, p1, p2, p3}, Lcom/onesignal/OneSignal;->logHttpError(Ljava/lang/String;ILjava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(J)V
    .locals 0
    .param p0, "x0"    # J

    .line 80
    invoke-static {p0, p1}, Lcom/onesignal/OneSignal;->SaveUnsentActiveTime(J)V

    return-void
.end method

.method static synthetic access$2300()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 80
    invoke-static {}, Lcom/onesignal/OneSignal;->registerUserTask()V

    return-void
.end method

.method static synthetic access$2400()Ljava/lang/String;
    .locals 1

    .line 80
    sget-object v0, Lcom/onesignal/OneSignal;->userId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Landroid/content/Context;)Lcom/onesignal/OSEmailSubscriptionState;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .line 80
    invoke-static {p0}, Lcom/onesignal/OneSignal;->getCurrentEmailSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSEmailSubscriptionState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600()Lcom/onesignal/OneSignal$GetTagsHandler;
    .locals 1

    .line 80
    sget-object v0, Lcom/onesignal/OneSignal;->pendingGetTagsHandler:Lcom/onesignal/OneSignal$GetTagsHandler;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/onesignal/OneSignal$GetTagsHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/onesignal/OneSignal$GetTagsHandler;

    .line 80
    invoke-static {p0}, Lcom/onesignal/OneSignal;->internalFireGetTagsCallback(Lcom/onesignal/OneSignal$GetTagsHandler;)V

    return-void
.end method

.method static synthetic access$2800()Z
    .locals 1

    .line 80
    sget-boolean v0, Lcom/onesignal/OneSignal;->getTagsCall:Z

    return v0
.end method

.method static synthetic access$2802(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 80
    sput-boolean p0, Lcom/onesignal/OneSignal;->getTagsCall:Z

    return p0
.end method

.method static synthetic access$2900()V
    .locals 0

    .line 80
    invoke-static {}, Lcom/onesignal/OneSignal;->internalFireIdsAvailableCallback()V

    return-void
.end method

.method static synthetic access$300(J)V
    .locals 0
    .param p0, "x0"    # J

    .line 80
    invoke-static {p0, p1}, Lcom/onesignal/OneSignal;->onTaskRan(J)V

    return-void
.end method

.method static synthetic access$3002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 80
    sput-boolean p0, Lcom/onesignal/OneSignal;->promptedLocation:Z

    return p0
.end method

.method static synthetic access$502(Lcom/onesignal/LocationGMS$LocationPoint;)Lcom/onesignal/LocationGMS$LocationPoint;
    .locals 0
    .param p0, "x0"    # Lcom/onesignal/LocationGMS$LocationPoint;

    .line 80
    sput-object p0, Lcom/onesignal/OneSignal;->lastLocationPoint:Lcom/onesignal/LocationGMS$LocationPoint;

    return-object p0
.end method

.method static synthetic access$602(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 80
    sput-boolean p0, Lcom/onesignal/OneSignal;->locationFired:Z

    return p0
.end method

.method static synthetic access$700()V
    .locals 0

    .line 80
    invoke-static {}, Lcom/onesignal/OneSignal;->registerUser()V

    return-void
.end method

.method static synthetic access$800()I
    .locals 1

    .line 80
    sget v0, Lcom/onesignal/OneSignal;->subscribableStatus:I

    return v0
.end method

.method static synthetic access$802(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 80
    sput p0, Lcom/onesignal/OneSignal;->subscribableStatus:I

    return p0
.end method

.method static synthetic access$900(I)Z
    .locals 1
    .param p0, "x0"    # I

    .line 80
    invoke-static {p0}, Lcom/onesignal/OneSignal;->pushStatusRuntimeError(I)Z

    move-result v0

    return v0
.end method

.method public static addEmailSubscriptionObserver(Lcom/onesignal/OSEmailSubscriptionObserver;)V
    .locals 2
    .param p0, "observer"    # Lcom/onesignal/OSEmailSubscriptionObserver;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 2598
    const-string v0, "addEmailSubscriptionObserver()"

    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2599
    return-void

    .line 2601
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 2602
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "OneSignal.init has not been called. Could not add email subscription observer"

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 2603
    return-void

    .line 2606
    :cond_1
    invoke-static {}, Lcom/onesignal/OneSignal;->getEmailSubscriptionStateChangesObserver()Lcom/onesignal/OSObservable;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/OSObservable;->addObserver(Ljava/lang/Object;)V

    .line 2608
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OneSignal;->getCurrentEmailSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSEmailSubscriptionState;

    move-result-object v0

    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/onesignal/OneSignal;->getLastEmailSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSEmailSubscriptionState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onesignal/OSEmailSubscriptionState;->compare(Lcom/onesignal/OSEmailSubscriptionState;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2609
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OneSignal;->getCurrentEmailSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSEmailSubscriptionState;

    move-result-object v0

    invoke-static {v0}, Lcom/onesignal/OSEmailSubscriptionChangedInternalObserver;->fireChangesToPublicObserver(Lcom/onesignal/OSEmailSubscriptionState;)V

    .line 2610
    :cond_2
    return-void
.end method

.method private static addNetType(Lorg/json/JSONObject;)V
    .locals 2
    .param p0, "jsonObj"    # Lorg/json/JSONObject;

    .line 1140
    :try_start_0
    const-string v0, "net_type"

    sget-object v1, Lcom/onesignal/OneSignal;->osUtils:Lcom/onesignal/OSUtils;

    invoke-virtual {v1}, Lcom/onesignal/OSUtils;->getNetType()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1141
    goto :goto_0

    :catch_0
    move-exception v0

    .line 1142
    :goto_0
    return-void
.end method

.method public static addPermissionObserver(Lcom/onesignal/OSPermissionObserver;)V
    .locals 2
    .param p0, "observer"    # Lcom/onesignal/OSPermissionObserver;

    .line 2519
    const-string v0, "addPermissionObserver()"

    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2520
    return-void

    .line 2522
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 2523
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "OneSignal.init has not been called. Could not add permission observer"

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 2524
    return-void

    .line 2527
    :cond_1
    invoke-static {}, Lcom/onesignal/OneSignal;->getPermissionStateChangesObserver()Lcom/onesignal/OSObservable;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/OSObservable;->addObserver(Ljava/lang/Object;)V

    .line 2529
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OneSignal;->getCurrentPermissionState(Landroid/content/Context;)Lcom/onesignal/OSPermissionState;

    move-result-object v0

    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/onesignal/OneSignal;->getLastPermissionState(Landroid/content/Context;)Lcom/onesignal/OSPermissionState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onesignal/OSPermissionState;->compare(Lcom/onesignal/OSPermissionState;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2530
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OneSignal;->getCurrentPermissionState(Landroid/content/Context;)Lcom/onesignal/OSPermissionState;

    move-result-object v0

    invoke-static {v0}, Lcom/onesignal/OSPermissionChangedInternalObserver;->fireChangesToPublicObserver(Lcom/onesignal/OSPermissionState;)V

    .line 2531
    :cond_2
    return-void
.end method

.method public static addSubscriptionObserver(Lcom/onesignal/OSSubscriptionObserver;)V
    .locals 2
    .param p0, "observer"    # Lcom/onesignal/OSSubscriptionObserver;

    .line 2560
    const-string v0, "addSubscriptionObserver()"

    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2561
    return-void

    .line 2563
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 2564
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "OneSignal.init has not been called. Could not add subscription observer"

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 2565
    return-void

    .line 2568
    :cond_1
    invoke-static {}, Lcom/onesignal/OneSignal;->getSubscriptionStateChangesObserver()Lcom/onesignal/OSObservable;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/OSObservable;->addObserver(Ljava/lang/Object;)V

    .line 2570
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OneSignal;->getCurrentSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSSubscriptionState;

    move-result-object v0

    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/onesignal/OneSignal;->getLastSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSSubscriptionState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onesignal/OSSubscriptionState;->compare(Lcom/onesignal/OSSubscriptionState;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2571
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OneSignal;->getCurrentSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSSubscriptionState;

    move-result-object v0

    invoke-static {v0}, Lcom/onesignal/OSSubscriptionChangedInternalObserver;->fireChangesToPublicObserver(Lcom/onesignal/OSSubscriptionState;)V

    .line 2572
    :cond_2
    return-void
.end method

.method private static addTaskToQueue(Lcom/onesignal/OneSignal$PendingTaskRunnable;)V
    .locals 4
    .param p0, "task"    # Lcom/onesignal/OneSignal$PendingTaskRunnable;

    .line 689
    sget-object v0, Lcom/onesignal/OneSignal;->lastTaskId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/onesignal/OneSignal$PendingTaskRunnable;->access$402(Lcom/onesignal/OneSignal$PendingTaskRunnable;J)J

    .line 691
    sget-object v0, Lcom/onesignal/OneSignal;->pendingTaskExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 692
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding a task to the pending queue with ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/onesignal/OneSignal$PendingTaskRunnable;->access$400(Lcom/onesignal/OneSignal$PendingTaskRunnable;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 694
    sget-object v0, Lcom/onesignal/OneSignal;->taskQueueWaitingForInit:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 696
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->pendingTaskExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 697
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Executor is still running, add to the executor with ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/onesignal/OneSignal$PendingTaskRunnable;->access$400(Lcom/onesignal/OneSignal$PendingTaskRunnable;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 699
    sget-object v0, Lcom/onesignal/OneSignal;->pendingTaskExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 702
    :cond_1
    :goto_0
    return-void
.end method

.method static areNotificationsEnabledForSubscribedState()Z
    .locals 1

    .line 2765
    sget-object v0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    iget-boolean v0, v0, Lcom/onesignal/OneSignal$Builder;->mUnsubscribeWhenNotificationsAreDisabled:Z

    if-eqz v0, :cond_0

    .line 2766
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OSUtils;->areNotificationsEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0

    .line 2767
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private static atLogLevel(Lcom/onesignal/OneSignal$LOG_LEVEL;)Z
    .locals 2
    .param p0, "level"    # Lcom/onesignal/OneSignal$LOG_LEVEL;

    .line 956
    sget-object v0, Lcom/onesignal/OneSignal;->visualLogLevel:Lcom/onesignal/OneSignal$LOG_LEVEL;

    invoke-virtual {p0, v0}, Lcom/onesignal/OneSignal$LOG_LEVEL;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    sget-object v0, Lcom/onesignal/OneSignal;->logCatLevel:Lcom/onesignal/OneSignal$LOG_LEVEL;

    invoke-virtual {p0, v0}, Lcom/onesignal/OneSignal$LOG_LEVEL;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    nop

    :cond_1
    :goto_0
    return v1
.end method

.method public static cancelGroupedNotifications(Ljava/lang/String;)V
    .locals 4
    .param p0, "group"    # Ljava/lang/String;

    .line 2409
    const-string v0, "cancelGroupedNotifications()"

    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2410
    return-void

    .line 2412
    :cond_0
    new-instance v0, Lcom/onesignal/OneSignal$23;

    invoke-direct {v0, p0}, Lcom/onesignal/OneSignal$23;-><init>(Ljava/lang/String;)V

    .line 2482
    .local v0, "runCancelGroupedNotifications":Ljava/lang/Runnable;
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/onesignal/OneSignal;->shouldRunTaskThroughQueue()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 2490
    :cond_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2491
    return-void

    .line 2483
    :cond_2
    :goto_0
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OneSignal.init has not been called. Could not clear notifications part of group "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - movingthis operation to a waiting task queue."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 2486
    new-instance v1, Lcom/onesignal/OneSignal$PendingTaskRunnable;

    invoke-direct {v1, v0}, Lcom/onesignal/OneSignal$PendingTaskRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v1}, Lcom/onesignal/OneSignal;->addTaskToQueue(Lcom/onesignal/OneSignal$PendingTaskRunnable;)V

    .line 2487
    return-void
.end method

.method public static cancelNotification(I)V
    .locals 4
    .param p0, "id"    # I

    .line 2350
    const-string v0, "cancelNotification()"

    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2351
    return-void

    .line 2353
    :cond_0
    new-instance v0, Lcom/onesignal/OneSignal$22;

    invoke-direct {v0, p0}, Lcom/onesignal/OneSignal$22;-><init>(I)V

    .line 2390
    .local v0, "runCancelNotification":Ljava/lang/Runnable;
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/onesignal/OneSignal;->shouldRunTaskThroughQueue()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 2399
    :cond_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2401
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 2402
    .local v1, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v1, p0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 2403
    return-void

    .line 2391
    .end local v1    # "notificationManager":Landroid/app/NotificationManager;
    :cond_2
    :goto_0
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OneSignal.init has not been called. Could not clear notification id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " at this time - movingthis operation to a waiting task queue. The notification will still be canceledfrom NotificationManager at this time."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 2395
    sget-object v1, Lcom/onesignal/OneSignal;->taskQueueWaitingForInit:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 2396
    return-void
.end method

.method public static clearOneSignalNotifications()V
    .locals 3

    .line 2263
    const-string v0, "clearOneSignalNotifications()"

    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2264
    return-void

    .line 2266
    :cond_0
    new-instance v0, Lcom/onesignal/OneSignal$21;

    invoke-direct {v0}, Lcom/onesignal/OneSignal$21;-><init>()V

    .line 2330
    .local v0, "runClearOneSignalNotifications":Ljava/lang/Runnable;
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/onesignal/OneSignal;->shouldRunTaskThroughQueue()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 2338
    :cond_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2339
    return-void

    .line 2331
    :cond_2
    :goto_0
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "OneSignal.init has not been called. Could not clear notifications at this time - moving this operation toa waiting task queue."

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 2334
    new-instance v1, Lcom/onesignal/OneSignal$PendingTaskRunnable;

    invoke-direct {v1, v0}, Lcom/onesignal/OneSignal$PendingTaskRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v1}, Lcom/onesignal/OneSignal;->addTaskToQueue(Lcom/onesignal/OneSignal$PendingTaskRunnable;)V

    .line 2335
    return-void
.end method

.method public static deleteTag(Ljava/lang/String;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .line 1606
    const-string v0, "deleteTag()"

    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1607
    return-void

    .line 1609
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1610
    .local v0, "tempList":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {v0, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1611
    invoke-static {v0}, Lcom/onesignal/OneSignal;->deleteTags(Ljava/util/Collection;)V

    .line 1612
    return-void
.end method

.method public static deleteTags(Ljava/lang/String;)V
    .locals 5
    .param p0, "jsonArrayString"    # Ljava/lang/String;

    .line 1639
    const-string v0, "deleteTags()"

    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1640
    return-void

    .line 1643
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1644
    .local v0, "jsonTags":Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1646
    .local v1, "jsonArray":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .line 1646
    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1647
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1646
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1649
    .end local v2    # "i":I
    :cond_1
    invoke-static {v0}, Lcom/onesignal/OneSignal;->sendTags(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1652
    .end local v0    # "jsonTags":Lorg/json/JSONObject;
    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    goto :goto_1

    .line 1650
    :catch_0
    move-exception v0

    .line 1651
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "Failed to generate JSON for deleteTags."

    invoke-static {v1, v2, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1653
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method

.method public static deleteTags(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1622
    .local p0, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const-string v0, "deleteTags()"

    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1623
    return-void

    .line 1626
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1627
    .local v0, "jsonTags":Lorg/json/JSONObject;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1628
    .local v2, "key":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1628
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_0

    .line 1630
    :cond_1
    invoke-static {v0}, Lcom/onesignal/OneSignal;->sendTags(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1633
    .end local v0    # "jsonTags":Lorg/json/JSONObject;
    goto :goto_1

    .line 1631
    :catch_0
    move-exception v0

    .line 1632
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "Failed to generate JSON for deleteTags."

    invoke-static {v1, v2, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1634
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method

.method public static enableSound(Z)V
    .locals 2
    .param p0, "enable"    # Z

    .line 2088
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 2089
    return-void

    .line 2091
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v1, "GT_SOUND_ENABLED"

    invoke-static {v0, v1, p0}, Lcom/onesignal/OneSignalPrefs;->saveBool(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2093
    return-void
.end method

.method public static enableVibrate(Z)V
    .locals 2
    .param p0, "enable"    # Z

    .line 2066
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 2067
    return-void

    .line 2069
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v1, "GT_VIBRATE_ENABLED"

    invoke-static {v0, v1, p0}, Lcom/onesignal/OneSignalPrefs;->saveBool(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2071
    return-void
.end method

.method private static fireCallbackForOpenedNotifications()V
    .locals 4

    .line 864
    sget-object v0, Lcom/onesignal/OneSignal;->unprocessedOpenedNotifis:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;

    .line 865
    .local v1, "dataArray":Lorg/json/JSONArray;
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/onesignal/OneSignal;->runNotificationOpenedCallback(Lorg/json/JSONArray;ZZ)V

    .line 865
    .end local v1    # "dataArray":Lorg/json/JSONArray;
    goto :goto_0

    .line 867
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->unprocessedOpenedNotifis:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 868
    return-void
.end method

.method static fireEmailUpdateFailure()V
    .locals 4

    .line 2792
    sget-object v0, Lcom/onesignal/OneSignal;->emailUpdateHandler:Lcom/onesignal/OneSignal$EmailUpdateHandler;

    if-eqz v0, :cond_0

    .line 2793
    sget-object v0, Lcom/onesignal/OneSignal;->emailUpdateHandler:Lcom/onesignal/OneSignal$EmailUpdateHandler;

    new-instance v1, Lcom/onesignal/OneSignal$EmailUpdateError;

    sget-object v2, Lcom/onesignal/OneSignal$EmailErrorType;->NETWORK:Lcom/onesignal/OneSignal$EmailErrorType;

    const-string v3, "Failed due to network failure. Will retry on next sync."

    invoke-direct {v1, v2, v3}, Lcom/onesignal/OneSignal$EmailUpdateError;-><init>(Lcom/onesignal/OneSignal$EmailErrorType;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/onesignal/OneSignal$EmailUpdateHandler;->onFailure(Lcom/onesignal/OneSignal$EmailUpdateError;)V

    .line 2794
    const/4 v0, 0x0

    sput-object v0, Lcom/onesignal/OneSignal;->emailUpdateHandler:Lcom/onesignal/OneSignal$EmailUpdateHandler;

    .line 2796
    :cond_0
    return-void
.end method

.method static fireEmailUpdateSuccess()V
    .locals 1

    .line 2785
    sget-object v0, Lcom/onesignal/OneSignal;->emailUpdateHandler:Lcom/onesignal/OneSignal$EmailUpdateHandler;

    if-eqz v0, :cond_0

    .line 2786
    sget-object v0, Lcom/onesignal/OneSignal;->emailUpdateHandler:Lcom/onesignal/OneSignal$EmailUpdateHandler;

    invoke-interface {v0}, Lcom/onesignal/OneSignal$EmailUpdateHandler;->onSuccess()V

    .line 2787
    const/4 v0, 0x0

    sput-object v0, Lcom/onesignal/OneSignal;->emailUpdateHandler:Lcom/onesignal/OneSignal$EmailUpdateHandler;

    .line 2789
    :cond_0
    return-void
.end method

.method private static fireIdsAvailableCallback()V
    .locals 1

    .line 1687
    sget-object v0, Lcom/onesignal/OneSignal;->idsAvailableHandler:Lcom/onesignal/OneSignal$IdsAvailableHandler;

    if-eqz v0, :cond_0

    .line 1688
    new-instance v0, Lcom/onesignal/OneSignal$16;

    invoke-direct {v0}, Lcom/onesignal/OneSignal$16;-><init>()V

    invoke-static {v0}, Lcom/onesignal/OSUtils;->runOnMainUIThread(Ljava/lang/Runnable;)V

    .line 1695
    :cond_0
    return-void
.end method

.method private static fireIntentFromNotificationOpen(Landroid/content/Context;)V
    .locals 2
    .param p0, "inContext"    # Landroid/content/Context;

    .line 1887
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1888
    return-void

    .line 1890
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1892
    .local v0, "launchIntent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 1893
    const/high16 v1, 0x10020000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1894
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1896
    :cond_1
    return-void
.end method

.method private static fireNotificationOpenedHandler(Lcom/onesignal/OSNotificationOpenResult;)V
    .locals 1
    .param p0, "openedResult"    # Lcom/onesignal/OSNotificationOpenResult;

    .line 1837
    new-instance v0, Lcom/onesignal/OneSignal$17;

    invoke-direct {v0, p0}, Lcom/onesignal/OneSignal$17;-><init>(Lcom/onesignal/OSNotificationOpenResult;)V

    invoke-static {v0}, Lcom/onesignal/OSUtils;->runOnMainUIThread(Ljava/lang/Runnable;)V

    .line 1843
    return-void
.end method

.method private static generateOsNotificationOpenResult(Lorg/json/JSONArray;ZZ)Lcom/onesignal/OSNotificationOpenResult;
    .locals 10
    .param p0, "dataArray"    # Lorg/json/JSONArray;
    .param p1, "shown"    # Z
    .param p2, "fromAlert"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1792
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 1794
    .local v0, "jsonArraySize":I
    const/4 v1, 0x1

    .line 1796
    .local v1, "firstMessage":Z
    new-instance v2, Lcom/onesignal/OSNotificationOpenResult;

    invoke-direct {v2}, Lcom/onesignal/OSNotificationOpenResult;-><init>()V

    .line 1797
    .local v2, "openResult":Lcom/onesignal/OSNotificationOpenResult;
    new-instance v3, Lcom/onesignal/OSNotification;

    invoke-direct {v3}, Lcom/onesignal/OSNotification;-><init>()V

    .line 1798
    .local v3, "notification":Lcom/onesignal/OSNotification;
    invoke-static {}, Lcom/onesignal/OneSignal;->isAppActive()Z

    move-result v4

    iput-boolean v4, v3, Lcom/onesignal/OSNotification;->isAppInFocus:Z

    .line 1799
    iput-boolean p1, v3, Lcom/onesignal/OSNotification;->shown:Z

    .line 1800
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "notificationId"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/onesignal/OSNotification;->androidNotificationId:I

    .line 1802
    const/4 v5, 0x0

    .line 1804
    .local v5, "actionSelected":Ljava/lang/String;
    nop

    .line 1804
    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_3

    .line 1806
    :try_start_0
    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 1808
    .local v6, "data":Lorg/json/JSONObject;
    invoke-static {v6}, Lcom/onesignal/NotificationBundleProcessor;->OSNotificationPayloadFrom(Lorg/json/JSONObject;)Lcom/onesignal/OSNotificationPayload;

    move-result-object v7

    iput-object v7, v3, Lcom/onesignal/OSNotification;->payload:Lcom/onesignal/OSNotificationPayload;

    .line 1809
    if-nez v5, :cond_0

    const-string v7, "actionSelected"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1810
    const-string v7, "actionSelected"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 1812
    :cond_0
    if-eqz v1, :cond_1

    .line 1813
    const/4 v1, 0x0

    goto :goto_1

    .line 1815
    :cond_1
    iget-object v7, v3, Lcom/onesignal/OSNotification;->groupedNotifications:Ljava/util/List;

    if-nez v7, :cond_2

    .line 1816
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v3, Lcom/onesignal/OSNotification;->groupedNotifications:Ljava/util/List;

    .line 1817
    :cond_2
    iget-object v7, v3, Lcom/onesignal/OSNotification;->groupedNotifications:Ljava/util/List;

    iget-object v8, v3, Lcom/onesignal/OSNotification;->payload:Lcom/onesignal/OSNotificationPayload;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1821
    .end local v6    # "data":Lorg/json/JSONObject;
    :goto_1
    goto :goto_2

    .line 1819
    :catch_0
    move-exception v6

    .line 1820
    .local v6, "t":Ljava/lang/Throwable;
    sget-object v7, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error parsing JSON item "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " for callback."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v6}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1804
    .end local v6    # "t":Ljava/lang/Throwable;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1824
    .end local v4    # "i":I
    :cond_3
    iput-object v3, v2, Lcom/onesignal/OSNotificationOpenResult;->notification:Lcom/onesignal/OSNotification;

    .line 1825
    new-instance v4, Lcom/onesignal/OSNotificationAction;

    invoke-direct {v4}, Lcom/onesignal/OSNotificationAction;-><init>()V

    iput-object v4, v2, Lcom/onesignal/OSNotificationOpenResult;->action:Lcom/onesignal/OSNotificationAction;

    .line 1826
    iget-object v4, v2, Lcom/onesignal/OSNotificationOpenResult;->action:Lcom/onesignal/OSNotificationAction;

    iput-object v5, v4, Lcom/onesignal/OSNotificationAction;->actionID:Ljava/lang/String;

    .line 1827
    iget-object v4, v2, Lcom/onesignal/OSNotificationOpenResult;->action:Lcom/onesignal/OSNotificationAction;

    if-eqz v5, :cond_4

    sget-object v6, Lcom/onesignal/OSNotificationAction$ActionType;->ActionTaken:Lcom/onesignal/OSNotificationAction$ActionType;

    goto :goto_3

    :cond_4
    sget-object v6, Lcom/onesignal/OSNotificationAction$ActionType;->Opened:Lcom/onesignal/OSNotificationAction$ActionType;

    :goto_3
    iput-object v6, v4, Lcom/onesignal/OSNotificationAction;->type:Lcom/onesignal/OSNotificationAction$ActionType;

    .line 1828
    if-eqz p2, :cond_5

    .line 1829
    iget-object v4, v2, Lcom/onesignal/OSNotificationOpenResult;->notification:Lcom/onesignal/OSNotification;

    sget-object v6, Lcom/onesignal/OSNotification$DisplayType;->InAppAlert:Lcom/onesignal/OSNotification$DisplayType;

    iput-object v6, v4, Lcom/onesignal/OSNotification;->displayType:Lcom/onesignal/OSNotification$DisplayType;

    goto :goto_4

    .line 1831
    :cond_5
    iget-object v4, v2, Lcom/onesignal/OSNotificationOpenResult;->notification:Lcom/onesignal/OSNotification;

    sget-object v6, Lcom/onesignal/OSNotification$DisplayType;->Notification:Lcom/onesignal/OSNotification$DisplayType;

    iput-object v6, v4, Lcom/onesignal/OSNotification;->displayType:Lcom/onesignal/OSNotification$DisplayType;

    .line 1833
    :goto_4
    return-object v2
.end method

.method private static getCurrentEmailSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSEmailSubscriptionState;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 451
    if-nez p0, :cond_0

    .line 452
    const/4 v0, 0x0

    return-object v0

    .line 454
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->currentEmailSubscriptionState:Lcom/onesignal/OSEmailSubscriptionState;

    if-nez v0, :cond_1

    .line 455
    new-instance v0, Lcom/onesignal/OSEmailSubscriptionState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onesignal/OSEmailSubscriptionState;-><init>(Z)V

    sput-object v0, Lcom/onesignal/OneSignal;->currentEmailSubscriptionState:Lcom/onesignal/OSEmailSubscriptionState;

    .line 456
    sget-object v0, Lcom/onesignal/OneSignal;->currentEmailSubscriptionState:Lcom/onesignal/OSEmailSubscriptionState;

    iget-object v0, v0, Lcom/onesignal/OSEmailSubscriptionState;->observable:Lcom/onesignal/OSObservable;

    new-instance v1, Lcom/onesignal/OSEmailSubscriptionChangedInternalObserver;

    invoke-direct {v1}, Lcom/onesignal/OSEmailSubscriptionChangedInternalObserver;-><init>()V

    invoke-virtual {v0, v1}, Lcom/onesignal/OSObservable;->addObserverStrong(Ljava/lang/Object;)V

    .line 459
    :cond_1
    sget-object v0, Lcom/onesignal/OneSignal;->currentEmailSubscriptionState:Lcom/onesignal/OSEmailSubscriptionState;

    return-object v0
.end method

.method public static getCurrentOrNewInitBuilder()Lcom/onesignal/OneSignal$Builder;
    .locals 2

    .line 494
    sget-object v0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    if-nez v0, :cond_0

    .line 495
    new-instance v0, Lcom/onesignal/OneSignal$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onesignal/OneSignal$Builder;-><init>(Lcom/onesignal/OneSignal$1;)V

    sput-object v0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    .line 496
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    return-object v0
.end method

.method private static getCurrentPermissionState(Landroid/content/Context;)Lcom/onesignal/OSPermissionState;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 383
    if-nez p0, :cond_0

    .line 384
    const/4 v0, 0x0

    return-object v0

    .line 386
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->currentPermissionState:Lcom/onesignal/OSPermissionState;

    if-nez v0, :cond_1

    .line 387
    new-instance v0, Lcom/onesignal/OSPermissionState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onesignal/OSPermissionState;-><init>(Z)V

    sput-object v0, Lcom/onesignal/OneSignal;->currentPermissionState:Lcom/onesignal/OSPermissionState;

    .line 388
    sget-object v0, Lcom/onesignal/OneSignal;->currentPermissionState:Lcom/onesignal/OSPermissionState;

    iget-object v0, v0, Lcom/onesignal/OSPermissionState;->observable:Lcom/onesignal/OSObservable;

    new-instance v1, Lcom/onesignal/OSPermissionChangedInternalObserver;

    invoke-direct {v1}, Lcom/onesignal/OSPermissionChangedInternalObserver;-><init>()V

    invoke-virtual {v0, v1}, Lcom/onesignal/OSObservable;->addObserverStrong(Ljava/lang/Object;)V

    .line 391
    :cond_1
    sget-object v0, Lcom/onesignal/OneSignal;->currentPermissionState:Lcom/onesignal/OSPermissionState;

    return-object v0
.end method

.method private static getCurrentSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSSubscriptionState;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 416
    if-nez p0, :cond_0

    .line 417
    const/4 v0, 0x0

    return-object v0

    .line 419
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->currentSubscriptionState:Lcom/onesignal/OSSubscriptionState;

    if-nez v0, :cond_1

    .line 420
    new-instance v0, Lcom/onesignal/OSSubscriptionState;

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/onesignal/OneSignal;->getCurrentPermissionState(Landroid/content/Context;)Lcom/onesignal/OSPermissionState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onesignal/OSPermissionState;->getEnabled()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/onesignal/OSSubscriptionState;-><init>(ZZ)V

    sput-object v0, Lcom/onesignal/OneSignal;->currentSubscriptionState:Lcom/onesignal/OSSubscriptionState;

    .line 421
    invoke-static {p0}, Lcom/onesignal/OneSignal;->getCurrentPermissionState(Landroid/content/Context;)Lcom/onesignal/OSPermissionState;

    move-result-object v0

    iget-object v0, v0, Lcom/onesignal/OSPermissionState;->observable:Lcom/onesignal/OSObservable;

    sget-object v1, Lcom/onesignal/OneSignal;->currentSubscriptionState:Lcom/onesignal/OSSubscriptionState;

    invoke-virtual {v0, v1}, Lcom/onesignal/OSObservable;->addObserver(Ljava/lang/Object;)V

    .line 422
    sget-object v0, Lcom/onesignal/OneSignal;->currentSubscriptionState:Lcom/onesignal/OSSubscriptionState;

    iget-object v0, v0, Lcom/onesignal/OSSubscriptionState;->observable:Lcom/onesignal/OSObservable;

    new-instance v1, Lcom/onesignal/OSSubscriptionChangedInternalObserver;

    invoke-direct {v1}, Lcom/onesignal/OSSubscriptionChangedInternalObserver;-><init>()V

    invoke-virtual {v0, v1}, Lcom/onesignal/OSObservable;->addObserverStrong(Ljava/lang/Object;)V

    .line 425
    :cond_1
    sget-object v0, Lcom/onesignal/OneSignal;->currentSubscriptionState:Lcom/onesignal/OSSubscriptionState;

    return-object v0
.end method

.method static getEmailId()Ljava/lang/String;
    .locals 3

    .line 1990
    const-string v0, ""

    sget-object v1, Lcom/onesignal/OneSignal;->emailId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1991
    return-object v1

    .line 1993
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->emailId:Ljava/lang/String;

    if-nez v0, :cond_1

    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 1994
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v2, "OS_EMAIL_ID"

    invoke-static {v0, v2, v1}, Lcom/onesignal/OneSignalPrefs;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/onesignal/OneSignal;->emailId:Ljava/lang/String;

    .line 1997
    :cond_1
    sget-object v0, Lcom/onesignal/OneSignal;->emailId:Ljava/lang/String;

    return-object v0
.end method

.method static getEmailSubscriptionStateChangesObserver()Lcom/onesignal/OSObservable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onesignal/OSObservable<",
            "Lcom/onesignal/OSEmailSubscriptionObserver;",
            "Lcom/onesignal/OSEmailSubscriptionStateChanges;",
            ">;"
        }
    .end annotation

    .line 475
    sget-object v0, Lcom/onesignal/OneSignal;->emailSubscriptionStateChangesObserver:Lcom/onesignal/OSObservable;

    if-nez v0, :cond_0

    .line 476
    new-instance v0, Lcom/onesignal/OSObservable;

    const-string v1, "onOSEmailSubscriptionChanged"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/onesignal/OSObservable;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/onesignal/OneSignal;->emailSubscriptionStateChangesObserver:Lcom/onesignal/OSObservable;

    .line 477
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->emailSubscriptionStateChangesObserver:Lcom/onesignal/OSObservable;

    return-object v0
.end method

.method static getFilterOtherGCMReceivers(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 2010
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v1, "OS_FILTER_OTHER_GCM_RECEIVERS"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/onesignal/OneSignalPrefs;->getBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static getFirebaseAnalyticsEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 2052
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v1, "GT_FIREBASE_TRACKING_ENABLED"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/onesignal/OneSignalPrefs;->getBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static getInAppAlertNotificationEnabled()Z
    .locals 3

    .line 2152
    sget-object v0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2153
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    iget-object v0, v0, Lcom/onesignal/OneSignal$Builder;->mDisplayOption:Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    sget-object v2, Lcom/onesignal/OneSignal$OSInFocusDisplayOption;->InAppAlert:Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method private static getInFocusDisplaying(I)Lcom/onesignal/OneSignal$OSInFocusDisplayOption;
    .locals 1
    .param p0, "displayOption"    # I

    .line 2131
    packed-switch p0, :pswitch_data_0

    .line 2140
    if-gez p0, :cond_0

    .line 2141
    sget-object v0, Lcom/onesignal/OneSignal$OSInFocusDisplayOption;->None:Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    return-object v0

    .line 2137
    :pswitch_0
    sget-object v0, Lcom/onesignal/OneSignal$OSInFocusDisplayOption;->Notification:Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    return-object v0

    .line 2135
    :pswitch_1
    sget-object v0, Lcom/onesignal/OneSignal$OSInFocusDisplayOption;->InAppAlert:Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    return-object v0

    .line 2133
    :pswitch_2
    sget-object v0, Lcom/onesignal/OneSignal$OSInFocusDisplayOption;->None:Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    return-object v0

    .line 2142
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal$OSInFocusDisplayOption;->Notification:Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getLastEmailSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSEmailSubscriptionState;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 464
    if-nez p0, :cond_0

    .line 465
    const/4 v0, 0x0

    return-object v0

    .line 467
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->lastEmailSubscriptionState:Lcom/onesignal/OSEmailSubscriptionState;

    if-nez v0, :cond_1

    .line 468
    new-instance v0, Lcom/onesignal/OSEmailSubscriptionState;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/onesignal/OSEmailSubscriptionState;-><init>(Z)V

    sput-object v0, Lcom/onesignal/OneSignal;->lastEmailSubscriptionState:Lcom/onesignal/OSEmailSubscriptionState;

    .line 470
    :cond_1
    sget-object v0, Lcom/onesignal/OneSignal;->lastEmailSubscriptionState:Lcom/onesignal/OSEmailSubscriptionState;

    return-object v0
.end method

.method private static getLastPermissionState(Landroid/content/Context;)Lcom/onesignal/OSPermissionState;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 396
    if-nez p0, :cond_0

    .line 397
    const/4 v0, 0x0

    return-object v0

    .line 399
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->lastPermissionState:Lcom/onesignal/OSPermissionState;

    if-nez v0, :cond_1

    .line 400
    new-instance v0, Lcom/onesignal/OSPermissionState;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/onesignal/OSPermissionState;-><init>(Z)V

    sput-object v0, Lcom/onesignal/OneSignal;->lastPermissionState:Lcom/onesignal/OSPermissionState;

    .line 402
    :cond_1
    sget-object v0, Lcom/onesignal/OneSignal;->lastPermissionState:Lcom/onesignal/OSPermissionState;

    return-object v0
.end method

.method private static getLastSessionTime(Landroid/content/Context;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 2106
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v1, "OS_LAST_SESSION_TIME"

    const-wide/16 v2, -0x7918

    invoke-static {v0, v1, v2, v3}, Lcom/onesignal/OneSignalPrefs;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getLastSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSSubscriptionState;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 430
    if-nez p0, :cond_0

    .line 431
    const/4 v0, 0x0

    return-object v0

    .line 433
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->lastSubscriptionState:Lcom/onesignal/OSSubscriptionState;

    if-nez v0, :cond_1

    .line 434
    new-instance v0, Lcom/onesignal/OSSubscriptionState;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/onesignal/OSSubscriptionState;-><init>(ZZ)V

    sput-object v0, Lcom/onesignal/OneSignal;->lastSubscriptionState:Lcom/onesignal/OSSubscriptionState;

    .line 436
    :cond_1
    sget-object v0, Lcom/onesignal/OneSignal;->lastSubscriptionState:Lcom/onesignal/OSSubscriptionState;

    return-object v0
.end method

.method private static getLogLevel(I)Lcom/onesignal/OneSignal$LOG_LEVEL;
    .locals 1
    .param p0, "level"    # I

    .line 933
    packed-switch p0, :pswitch_data_0

    .line 950
    if-gez p0, :cond_0

    .line 951
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->NONE:Lcom/onesignal/OneSignal$LOG_LEVEL;

    return-object v0

    .line 947
    :pswitch_0
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->VERBOSE:Lcom/onesignal/OneSignal$LOG_LEVEL;

    return-object v0

    .line 945
    :pswitch_1
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    return-object v0

    .line 943
    :pswitch_2
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    return-object v0

    .line 941
    :pswitch_3
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    return-object v0

    .line 939
    :pswitch_4
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    return-object v0

    .line 937
    :pswitch_5
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->FATAL:Lcom/onesignal/OneSignal$LOG_LEVEL;

    return-object v0

    .line 935
    :pswitch_6
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->NONE:Lcom/onesignal/OneSignal$LOG_LEVEL;

    return-object v0

    .line 952
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->VERBOSE:Lcom/onesignal/OneSignal$LOG_LEVEL;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static getNotificationIdFromGCMBundle(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 4
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 2718
    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2719
    return-object v1

    .line 2722
    :cond_0
    :try_start_0
    const-string v0, "custom"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2723
    new-instance v0, Lorg/json/JSONObject;

    const-string v2, "custom"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2725
    .local v0, "customJSON":Lorg/json/JSONObject;
    const-string v2, "i"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2726
    const-string v2, "i"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2728
    :cond_1
    sget-object v2, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v3, "Not a OneSignal formatted GCM message. No \'i\' field in custom."

    invoke-static {v2, v3}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 2729
    .end local v0    # "customJSON":Lorg/json/JSONObject;
    goto :goto_0

    .line 2731
    :cond_2
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "Not a OneSignal formatted GCM message. No \'custom\' field in the bundle."

    invoke-static {v0, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2734
    :goto_0
    goto :goto_1

    .line 2732
    :catch_0
    move-exception v0

    .line 2733
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v2, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v3, "Could not parse bundle, probably not a OneSignal notification."

    invoke-static {v2, v3, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2736
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_1
    return-object v1
.end method

.method private static getNotificationIdFromGCMJsonPayload(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3
    .param p0, "jsonPayload"    # Lorg/json/JSONObject;

    .line 2741
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "custom"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2742
    .local v1, "customJSON":Lorg/json/JSONObject;
    const-string v2, "i"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 2743
    .end local v1    # "customJSON":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 2744
    return-object v0
.end method

.method static getNotificationsWhenActiveEnabled()Z
    .locals 3

    .line 2147
    sget-object v0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2148
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    iget-object v0, v0, Lcom/onesignal/OneSignal$Builder;->mDisplayOption:Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    sget-object v2, Lcom/onesignal/OneSignal$OSInFocusDisplayOption;->Notification:Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static getPermissionStateChangesObserver()Lcom/onesignal/OSObservable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onesignal/OSObservable<",
            "Lcom/onesignal/OSPermissionObserver;",
            "Lcom/onesignal/OSPermissionStateChanges;",
            ">;"
        }
    .end annotation

    .line 407
    sget-object v0, Lcom/onesignal/OneSignal;->permissionStateChangesObserver:Lcom/onesignal/OSObservable;

    if-nez v0, :cond_0

    .line 408
    new-instance v0, Lcom/onesignal/OSObservable;

    const-string v1, "onOSPermissionChanged"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/onesignal/OSObservable;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/onesignal/OneSignal;->permissionStateChangesObserver:Lcom/onesignal/OSObservable;

    .line 409
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->permissionStateChangesObserver:Lcom/onesignal/OSObservable;

    return-object v0
.end method

.method public static getPermissionSubscriptionState()Lcom/onesignal/OSPermissionSubscriptionState;
    .locals 3

    .line 2634
    const-string v0, "getPermissionSubscriptionState()"

    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2635
    return-object v1

    .line 2637
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 2638
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "OneSignal.init has not been called. Could not get OSPermissionSubscriptionState"

    invoke-static {v0, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 2639
    return-object v1

    .line 2642
    :cond_1
    new-instance v0, Lcom/onesignal/OSPermissionSubscriptionState;

    invoke-direct {v0}, Lcom/onesignal/OSPermissionSubscriptionState;-><init>()V

    .line 2643
    .local v0, "status":Lcom/onesignal/OSPermissionSubscriptionState;
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/onesignal/OneSignal;->getCurrentSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSSubscriptionState;

    move-result-object v1

    iput-object v1, v0, Lcom/onesignal/OSPermissionSubscriptionState;->subscriptionStatus:Lcom/onesignal/OSSubscriptionState;

    .line 2644
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/onesignal/OneSignal;->getCurrentPermissionState(Landroid/content/Context;)Lcom/onesignal/OSPermissionState;

    move-result-object v1

    iput-object v1, v0, Lcom/onesignal/OSPermissionSubscriptionState;->permissionStatus:Lcom/onesignal/OSPermissionState;

    .line 2645
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/onesignal/OneSignal;->getCurrentEmailSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSEmailSubscriptionState;

    move-result-object v1

    iput-object v1, v0, Lcom/onesignal/OSPermissionSubscriptionState;->emailSubscriptionStatus:Lcom/onesignal/OSEmailSubscriptionState;

    .line 2647
    return-object v0
.end method

.method private static getPushRegistrator()Lcom/onesignal/PushRegistrator;
    .locals 2

    .line 754
    sget-object v0, Lcom/onesignal/OneSignal;->mPushRegistrator:Lcom/onesignal/PushRegistrator;

    if-eqz v0, :cond_0

    .line 755
    sget-object v0, Lcom/onesignal/OneSignal;->mPushRegistrator:Lcom/onesignal/PushRegistrator;

    return-object v0

    .line 757
    :cond_0
    sget v0, Lcom/onesignal/OneSignal;->deviceType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 758
    new-instance v0, Lcom/onesignal/PushRegistratorADM;

    invoke-direct {v0}, Lcom/onesignal/PushRegistratorADM;-><init>()V

    sput-object v0, Lcom/onesignal/OneSignal;->mPushRegistrator:Lcom/onesignal/PushRegistrator;

    goto :goto_0

    .line 759
    :cond_1
    invoke-static {}, Lcom/onesignal/OSUtils;->hasFCMLibrary()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 760
    new-instance v0, Lcom/onesignal/PushRegistratorFCM;

    invoke-direct {v0}, Lcom/onesignal/PushRegistratorFCM;-><init>()V

    sput-object v0, Lcom/onesignal/OneSignal;->mPushRegistrator:Lcom/onesignal/PushRegistrator;

    goto :goto_0

    .line 762
    :cond_2
    new-instance v0, Lcom/onesignal/PushRegistratorGCM;

    invoke-direct {v0}, Lcom/onesignal/PushRegistratorGCM;-><init>()V

    sput-object v0, Lcom/onesignal/OneSignal;->mPushRegistrator:Lcom/onesignal/PushRegistrator;

    .line 764
    :goto_0
    sget-object v0, Lcom/onesignal/OneSignal;->mPushRegistrator:Lcom/onesignal/PushRegistrator;

    return-object v0
.end method

.method static getSavedAppId()Ljava/lang/String;
    .locals 1

    .line 1937
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OneSignal;->getSavedAppId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSavedAppId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "inContext"    # Landroid/content/Context;

    .line 1941
    if-nez p0, :cond_0

    .line 1942
    const-string v0, ""

    return-object v0

    .line 1944
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v1, "GT_APP_ID"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/onesignal/OneSignalPrefs;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getSavedUserConsentStatus()Z
    .locals 1

    .line 1948
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OneSignal;->getSavedUserConsentStatus(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private static getSavedUserConsentStatus(Landroid/content/Context;)Z
    .locals 3
    .param p0, "inContext"    # Landroid/content/Context;

    .line 1951
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1952
    return v0

    .line 1954
    :cond_0
    sget-object v1, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v2, "ONESIGNAL_USER_PROVIDED_CONSENT"

    invoke-static {v1, v2, v0}, Lcom/onesignal/OneSignalPrefs;->getBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static getSavedUserId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "inContext"    # Landroid/content/Context;

    .line 1965
    if-nez p0, :cond_0

    .line 1966
    const-string v0, ""

    return-object v0

    .line 1968
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v1, "GT_PLAYER_ID"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/onesignal/OneSignalPrefs;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getSoundEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 2096
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v1, "GT_SOUND_ENABLED"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/onesignal/OneSignalPrefs;->getBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static getSubscriptionStateChangesObserver()Lcom/onesignal/OSObservable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onesignal/OSObservable<",
            "Lcom/onesignal/OSSubscriptionObserver;",
            "Lcom/onesignal/OSSubscriptionStateChanges;",
            ">;"
        }
    .end annotation

    .line 441
    sget-object v0, Lcom/onesignal/OneSignal;->subscriptionStateChangesObserver:Lcom/onesignal/OSObservable;

    if-nez v0, :cond_0

    .line 442
    new-instance v0, Lcom/onesignal/OSObservable;

    const-string v1, "onOSSubscriptionChanged"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/onesignal/OSObservable;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/onesignal/OneSignal;->subscriptionStateChangesObserver:Lcom/onesignal/OSObservable;

    .line 443
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->subscriptionStateChangesObserver:Lcom/onesignal/OSObservable;

    return-object v0
.end method

.method public static getTags(Lcom/onesignal/OneSignal$GetTagsHandler;)V
    .locals 3
    .param p0, "getTagsHandler"    # Lcom/onesignal/OneSignal$GetTagsHandler;

    .line 1551
    const-string v0, "getTags()"

    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1552
    return-void

    .line 1554
    :cond_0
    sput-object p0, Lcom/onesignal/OneSignal;->pendingGetTagsHandler:Lcom/onesignal/OneSignal$GetTagsHandler;

    .line 1556
    new-instance v0, Lcom/onesignal/OneSignal$13;

    invoke-direct {v0, p0}, Lcom/onesignal/OneSignal$13;-><init>(Lcom/onesignal/OneSignal$GetTagsHandler;)V

    .line 1571
    .local v0, "getTagsRunnable":Ljava/lang/Runnable;
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 1572
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "You must initialize OneSignal before getting tags! Moving this tag operation to a pending queue."

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 1574
    sget-object v1, Lcom/onesignal/OneSignal;->taskQueueWaitingForInit:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 1575
    return-void

    .line 1578
    :cond_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1579
    return-void
.end method

.method private static getTimeZoneOffset()I
    .locals 3

    .line 1145
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    .line 1146
    .local v0, "timezone":Ljava/util/TimeZone;
    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    .line 1148
    .local v1, "offset":I
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1149
    invoke-virtual {v0}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v2

    add-int/2addr v1, v2

    .line 1151
    :cond_0
    div-int/lit16 v2, v1, 0x3e8

    return v2
.end method

.method static getUserId()Ljava/lang/String;
    .locals 3

    .line 1973
    sget-object v0, Lcom/onesignal/OneSignal;->userId:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1974
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v1, "GT_PLAYER_ID"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/onesignal/OneSignalPrefs;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/onesignal/OneSignal;->userId:Ljava/lang/String;

    .line 1977
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->userId:Ljava/lang/String;

    return-object v0
.end method

.method static getVibrate(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 2074
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v1, "GT_VIBRATE_ENABLED"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/onesignal/OneSignalPrefs;->getBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static handleFailedEmailLogout()V
    .locals 4

    .line 2778
    sget-object v0, Lcom/onesignal/OneSignal;->emailLogoutHandler:Lcom/onesignal/OneSignal$EmailUpdateHandler;

    if-eqz v0, :cond_0

    .line 2779
    sget-object v0, Lcom/onesignal/OneSignal;->emailLogoutHandler:Lcom/onesignal/OneSignal$EmailUpdateHandler;

    new-instance v1, Lcom/onesignal/OneSignal$EmailUpdateError;

    sget-object v2, Lcom/onesignal/OneSignal$EmailErrorType;->NETWORK:Lcom/onesignal/OneSignal$EmailErrorType;

    const-string v3, "Failed due to network failure. Will retry on next sync."

    invoke-direct {v1, v2, v3}, Lcom/onesignal/OneSignal$EmailUpdateError;-><init>(Lcom/onesignal/OneSignal$EmailErrorType;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/onesignal/OneSignal$EmailUpdateHandler;->onFailure(Lcom/onesignal/OneSignal$EmailUpdateError;)V

    .line 2780
    const/4 v0, 0x0

    sput-object v0, Lcom/onesignal/OneSignal;->emailLogoutHandler:Lcom/onesignal/OneSignal$EmailUpdateHandler;

    .line 2782
    :cond_0
    return-void
.end method

.method public static handleNotificationOpen(Landroid/content/Context;Lorg/json/JSONArray;Z)V
    .locals 4
    .param p0, "inContext"    # Landroid/content/Context;
    .param p1, "data"    # Lorg/json/JSONArray;
    .param p2, "fromAlert"    # Z

    .line 1863
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1864
    return-void

    .line 1866
    :cond_0
    invoke-static {p0, p1}, Lcom/onesignal/OneSignal;->notificationOpenedRESTCall(Landroid/content/Context;Lorg/json/JSONArray;)V

    .line 1868
    sget-object v0, Lcom/onesignal/OneSignal;->trackFirebaseAnalytics:Lcom/onesignal/TrackFirebaseAnalytics;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OneSignal;->getFirebaseAnalyticsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1869
    sget-object v0, Lcom/onesignal/OneSignal;->trackFirebaseAnalytics:Lcom/onesignal/TrackFirebaseAnalytics;

    invoke-static {p1, v1, p2}, Lcom/onesignal/OneSignal;->generateOsNotificationOpenResult(Lorg/json/JSONArray;ZZ)Lcom/onesignal/OSNotificationOpenResult;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onesignal/TrackFirebaseAnalytics;->trackOpenedEvent(Lcom/onesignal/OSNotificationOpenResult;)V

    .line 1871
    :cond_1
    const/4 v0, 0x0

    .line 1872
    .local v0, "urlOpened":Z
    const-string v2, "DISABLE"

    const-string v3, "com.onesignal.NotificationOpened.DEFAULT"

    invoke-static {p0, v3}, Lcom/onesignal/OSUtils;->getManifestMeta(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1874
    .local v2, "defaultOpenActionDisabled":Z
    if-nez v2, :cond_2

    .line 1875
    invoke-static {p0, p1}, Lcom/onesignal/OneSignal;->openURLFromNotification(Landroid/content/Context;Lorg/json/JSONArray;)Z

    move-result v0

    .line 1877
    :cond_2
    invoke-static {p1, v1, p2}, Lcom/onesignal/OneSignal;->runNotificationOpenedCallback(Lorg/json/JSONArray;ZZ)V

    .line 1880
    if-nez p2, :cond_3

    if-nez v0, :cond_3

    if-nez v2, :cond_3

    .line 1881
    invoke-static {p0}, Lcom/onesignal/OneSignal;->fireIntentFromNotificationOpen(Landroid/content/Context;)V

    .line 1882
    :cond_3
    return-void
.end method

.method static handleNotificationReceived(Lorg/json/JSONArray;ZZ)V
    .locals 3
    .param p0, "data"    # Lorg/json/JSONArray;
    .param p1, "displayed"    # Z
    .param p2, "fromAlert"    # Z

    .line 1849
    invoke-static {p0, p1, p2}, Lcom/onesignal/OneSignal;->generateOsNotificationOpenResult(Lorg/json/JSONArray;ZZ)Lcom/onesignal/OSNotificationOpenResult;

    move-result-object v0

    .line 1850
    .local v0, "openResult":Lcom/onesignal/OSNotificationOpenResult;
    sget-object v1, Lcom/onesignal/OneSignal;->trackFirebaseAnalytics:Lcom/onesignal/TrackFirebaseAnalytics;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/onesignal/OneSignal;->getFirebaseAnalyticsEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1851
    sget-object v1, Lcom/onesignal/OneSignal;->trackFirebaseAnalytics:Lcom/onesignal/TrackFirebaseAnalytics;

    invoke-virtual {v1, v0}, Lcom/onesignal/TrackFirebaseAnalytics;->trackReceivedEvent(Lcom/onesignal/OSNotificationOpenResult;)V

    .line 1853
    :cond_0
    sget-object v1, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    iget-object v1, v1, Lcom/onesignal/OneSignal$Builder;->mNotificationReceivedHandler:Lcom/onesignal/OneSignal$NotificationReceivedHandler;

    if-nez v1, :cond_1

    goto :goto_0

    .line 1856
    :cond_1
    sget-object v1, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    iget-object v1, v1, Lcom/onesignal/OneSignal$Builder;->mNotificationReceivedHandler:Lcom/onesignal/OneSignal$NotificationReceivedHandler;

    iget-object v2, v0, Lcom/onesignal/OSNotificationOpenResult;->notification:Lcom/onesignal/OSNotification;

    invoke-interface {v1, v2}, Lcom/onesignal/OneSignal$NotificationReceivedHandler;->notificationReceived(Lcom/onesignal/OSNotification;)V

    .line 1857
    return-void

    .line 1854
    :cond_2
    :goto_0
    return-void
.end method

.method static handleSuccessfulEmailLogout()V
    .locals 1

    .line 2771
    sget-object v0, Lcom/onesignal/OneSignal;->emailLogoutHandler:Lcom/onesignal/OneSignal$EmailUpdateHandler;

    if-eqz v0, :cond_0

    .line 2772
    sget-object v0, Lcom/onesignal/OneSignal;->emailLogoutHandler:Lcom/onesignal/OneSignal$EmailUpdateHandler;

    invoke-interface {v0}, Lcom/onesignal/OneSignal$EmailUpdateHandler;->onSuccess()V

    .line 2773
    const/4 v0, 0x0

    sput-object v0, Lcom/onesignal/OneSignal;->emailLogoutHandler:Lcom/onesignal/OneSignal$EmailUpdateHandler;

    .line 2775
    :cond_0
    return-void
.end method

.method public static idsAvailable(Lcom/onesignal/OneSignal$IdsAvailableHandler;)V
    .locals 3
    .param p0, "inIdsAvailableHandler"    # Lcom/onesignal/OneSignal$IdsAvailableHandler;

    .line 1658
    const-string v0, "idsAvailable()"

    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1659
    return-void

    .line 1661
    :cond_0
    sput-object p0, Lcom/onesignal/OneSignal;->idsAvailableHandler:Lcom/onesignal/OneSignal$IdsAvailableHandler;

    .line 1663
    new-instance v0, Lcom/onesignal/OneSignal$15;

    invoke-direct {v0}, Lcom/onesignal/OneSignal$15;-><init>()V

    .line 1676
    .local v0, "runIdsAvailable":Ljava/lang/Runnable;
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/onesignal/OneSignal;->shouldRunTaskThroughQueue()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 1683
    :cond_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1684
    return-void

    .line 1677
    :cond_2
    :goto_0
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "You must initialize OneSignal before getting tags! Moving this tag operation to a pending queue."

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 1679
    new-instance v1, Lcom/onesignal/OneSignal$PendingTaskRunnable;

    invoke-direct {v1, v0}, Lcom/onesignal/OneSignal$PendingTaskRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v1}, Lcom/onesignal/OneSignal;->addTaskToQueue(Lcom/onesignal/OneSignal$PendingTaskRunnable;)V

    .line 1680
    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "googleProjectNumber"    # Ljava/lang/String;
    .param p2, "oneSignalAppId"    # Ljava/lang/String;

    .line 547
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, v0}, Lcom/onesignal/OneSignal;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OneSignal$NotificationOpenedHandler;Lcom/onesignal/OneSignal$NotificationReceivedHandler;)V

    .line 548
    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OneSignal$NotificationOpenedHandler;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "googleProjectNumber"    # Ljava/lang/String;
    .param p2, "oneSignalAppId"    # Ljava/lang/String;
    .param p3, "notificationOpenedHandler"    # Lcom/onesignal/OneSignal$NotificationOpenedHandler;

    .line 551
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/onesignal/OneSignal;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OneSignal$NotificationOpenedHandler;Lcom/onesignal/OneSignal$NotificationReceivedHandler;)V

    .line 552
    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OneSignal$NotificationOpenedHandler;Lcom/onesignal/OneSignal$NotificationReceivedHandler;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "googleProjectNumber"    # Ljava/lang/String;
    .param p2, "oneSignalAppId"    # Ljava/lang/String;
    .param p3, "notificationOpenedHandler"    # Lcom/onesignal/OneSignal$NotificationOpenedHandler;
    .param p4, "notificationReceivedHandler"    # Lcom/onesignal/OneSignal$NotificationReceivedHandler;

    .line 555
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    .line 557
    sget-boolean v0, Lcom/onesignal/OneSignal;->requiresUserPrivacyConsent:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/onesignal/OneSignal;->userProvidedPrivacyConsent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 558
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->VERBOSE:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "OneSignal SDK initialization delayed, user privacy consent is set to required for this application."

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 559
    new-instance v0, Lcom/onesignal/DelayedConsentInitializationParameters;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/onesignal/DelayedConsentInitializationParameters;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OneSignal$NotificationOpenedHandler;Lcom/onesignal/OneSignal$NotificationReceivedHandler;)V

    sput-object v0, Lcom/onesignal/OneSignal;->delayedInitParams:Lcom/onesignal/DelayedConsentInitializationParameters;

    .line 560
    return-void

    .line 563
    :cond_0
    invoke-static {}, Lcom/onesignal/OneSignal;->getCurrentOrNewInitBuilder()Lcom/onesignal/OneSignal$Builder;

    move-result-object v0

    sput-object v0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    .line 564
    sget-object v0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/onesignal/OneSignal$Builder;->mDisplayOptionCarryOver:Z

    .line 565
    sget-object v0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    iput-object p3, v0, Lcom/onesignal/OneSignal$Builder;->mNotificationOpenedHandler:Lcom/onesignal/OneSignal$NotificationOpenedHandler;

    .line 566
    sget-object v0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    iput-object p4, v0, Lcom/onesignal/OneSignal$Builder;->mNotificationReceivedHandler:Lcom/onesignal/OneSignal$NotificationReceivedHandler;

    .line 567
    sget-boolean v0, Lcom/onesignal/OneSignal;->mGoogleProjectNumberIsRemote:Z

    if-nez v0, :cond_1

    .line 568
    sput-object p1, Lcom/onesignal/OneSignal;->mGoogleProjectNumber:Ljava/lang/String;

    .line 570
    :cond_1
    new-instance v0, Lcom/onesignal/OSUtils;

    invoke-direct {v0}, Lcom/onesignal/OSUtils;-><init>()V

    sput-object v0, Lcom/onesignal/OneSignal;->osUtils:Lcom/onesignal/OSUtils;

    .line 571
    sget-object v0, Lcom/onesignal/OneSignal;->osUtils:Lcom/onesignal/OSUtils;

    invoke-virtual {v0}, Lcom/onesignal/OSUtils;->getDeviceType()I

    move-result v0

    sput v0, Lcom/onesignal/OneSignal;->deviceType:I

    .line 572
    sget-object v0, Lcom/onesignal/OneSignal;->osUtils:Lcom/onesignal/OSUtils;

    sget v2, Lcom/onesignal/OneSignal;->deviceType:I

    invoke-virtual {v0, p0, v2, p2}, Lcom/onesignal/OSUtils;->initializationChecker(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/onesignal/OneSignal;->subscribableStatus:I

    .line 573
    sget v0, Lcom/onesignal/OneSignal;->subscribableStatus:I

    const/16 v2, -0x3e7

    if-ne v0, v2, :cond_2

    .line 574
    return-void

    .line 576
    :cond_2
    sget-boolean v0, Lcom/onesignal/OneSignal;->initDone:Z

    if-eqz v0, :cond_5

    .line 577
    if-eqz p0, :cond_3

    .line 578
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    .line 580
    :cond_3
    sget-object v0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    iget-object v0, v0, Lcom/onesignal/OneSignal$Builder;->mNotificationOpenedHandler:Lcom/onesignal/OneSignal$NotificationOpenedHandler;

    if-eqz v0, :cond_4

    .line 581
    invoke-static {}, Lcom/onesignal/OneSignal;->fireCallbackForOpenedNotifications()V

    .line 583
    :cond_4
    return-void

    .line 586
    :cond_5
    instance-of v0, p0, Landroid/app/Activity;

    .line 588
    .local v0, "contextIsActivity":Z
    sput-boolean v0, Lcom/onesignal/OneSignal;->foreground:Z

    .line 589
    sput-object p2, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    .line 590
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    .line 592
    sget-object v2, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    iget-boolean v2, v2, Lcom/onesignal/OneSignal$Builder;->mFilterOtherGCMReceivers:Z

    invoke-static {v2}, Lcom/onesignal/OneSignal;->saveFilterOtherGCMReceivers(Z)V

    .line 594
    const/4 v2, 0x1

    if-eqz v0, :cond_6

    .line 595
    move-object v3, p0

    check-cast v3, Landroid/app/Activity;

    sput-object v3, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    .line 596
    sget-object v3, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/onesignal/NotificationRestorer;->asyncRestore(Landroid/content/Context;)V

    goto :goto_0

    .line 599
    :cond_6
    sput-boolean v2, Lcom/onesignal/ActivityLifecycleHandler;->nextResumeIsFirstActivity:Z

    .line 601
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sput-wide v3, Lcom/onesignal/OneSignal;->lastTrackedFocusTime:J

    .line 603
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->initUserState()V

    .line 605
    sget-object v3, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Application;

    new-instance v4, Lcom/onesignal/ActivityLifecycleListener;

    invoke-direct {v4}, Lcom/onesignal/ActivityLifecycleListener;-><init>()V

    invoke-virtual {v3, v4}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 608
    :try_start_0
    const-string v3, "com.amazon.device.iap.PurchasingListener"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 609
    new-instance v3, Lcom/onesignal/TrackAmazonPurchase;

    sget-object v4, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/onesignal/TrackAmazonPurchase;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/onesignal/OneSignal;->trackAmazonPurchase:Lcom/onesignal/TrackAmazonPurchase;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 610
    goto :goto_1

    :catch_0
    move-exception v3

    .line 613
    :goto_1
    invoke-static {}, Lcom/onesignal/OneSignal;->getSavedAppId()Ljava/lang/String;

    move-result-object v3

    .line 614
    .local v3, "oldAppId":Ljava/lang/String;
    if-eqz v3, :cond_7

    .line 615
    sget-object v1, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 616
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v4, "APP ID changed, clearing user id as it is no longer valid."

    invoke-static {v1, v4}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 617
    sget-object v1, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    invoke-static {v1}, Lcom/onesignal/OneSignal;->SaveAppId(Ljava/lang/String;)V

    .line 618
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->resetCurrentState()V

    goto :goto_2

    .line 622
    :cond_7
    sget-object v4, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/onesignal/BadgeCountUpdater;->updateCount(ILandroid/content/Context;)V

    .line 623
    sget-object v1, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    invoke-static {v1}, Lcom/onesignal/OneSignal;->SaveAppId(Ljava/lang/String;)V

    .line 626
    :cond_8
    :goto_2
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/onesignal/OneSignal;->getCurrentPermissionState(Landroid/content/Context;)Lcom/onesignal/OSPermissionState;

    move-result-object v1

    invoke-static {v1}, Lcom/onesignal/OSPermissionChangedInternalObserver;->handleInternalChanges(Lcom/onesignal/OSPermissionState;)V

    .line 628
    sget-boolean v1, Lcom/onesignal/OneSignal;->foreground:Z

    if-nez v1, :cond_9

    invoke-static {}, Lcom/onesignal/OneSignal;->getUserId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    .line 629
    :cond_9
    invoke-static {}, Lcom/onesignal/OneSignal;->isPastOnSessionTime()Z

    move-result v1

    sput-boolean v1, Lcom/onesignal/OneSignal;->sendAsSession:Z

    .line 630
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/onesignal/OneSignal;->setLastSessionTime(J)V

    .line 631
    invoke-static {}, Lcom/onesignal/OneSignal;->startRegistrationOrOnSession()V

    .line 634
    :cond_a
    sget-object v1, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    iget-object v1, v1, Lcom/onesignal/OneSignal$Builder;->mNotificationOpenedHandler:Lcom/onesignal/OneSignal$NotificationOpenedHandler;

    if-eqz v1, :cond_b

    .line 635
    invoke-static {}, Lcom/onesignal/OneSignal;->fireCallbackForOpenedNotifications()V

    .line 637
    :cond_b
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/onesignal/TrackGooglePurchase;->CanTrack(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 638
    new-instance v1, Lcom/onesignal/TrackGooglePurchase;

    sget-object v4, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/onesignal/TrackGooglePurchase;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/onesignal/OneSignal;->trackGooglePurchase:Lcom/onesignal/TrackGooglePurchase;

    .line 640
    :cond_c
    invoke-static {}, Lcom/onesignal/TrackFirebaseAnalytics;->CanTrack()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 641
    new-instance v1, Lcom/onesignal/TrackFirebaseAnalytics;

    sget-object v4, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/onesignal/TrackFirebaseAnalytics;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/onesignal/OneSignal;->trackFirebaseAnalytics:Lcom/onesignal/TrackFirebaseAnalytics;

    .line 643
    :cond_d
    sput-boolean v2, Lcom/onesignal/OneSignal;->initDone:Z

    .line 646
    invoke-static {}, Lcom/onesignal/OneSignal;->startPendingTasks()V

    .line 647
    return-void
.end method

.method private static init(Lcom/onesignal/OneSignal$Builder;)V
    .locals 8
    .param p0, "inBuilder"    # Lcom/onesignal/OneSignal$Builder;

    .line 522
    invoke-static {}, Lcom/onesignal/OneSignal;->getCurrentOrNewInitBuilder()Lcom/onesignal/OneSignal$Builder;

    move-result-object v0

    iget-boolean v0, v0, Lcom/onesignal/OneSignal$Builder;->mDisplayOptionCarryOver:Z

    if-eqz v0, :cond_0

    .line 523
    invoke-static {}, Lcom/onesignal/OneSignal;->getCurrentOrNewInitBuilder()Lcom/onesignal/OneSignal$Builder;

    move-result-object v0

    iget-object v0, v0, Lcom/onesignal/OneSignal$Builder;->mDisplayOption:Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    iput-object v0, p0, Lcom/onesignal/OneSignal$Builder;->mDisplayOption:Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    .line 524
    :cond_0
    sput-object p0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    .line 526
    sget-object v0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    iget-object v0, v0, Lcom/onesignal/OneSignal$Builder;->mContext:Landroid/content/Context;

    .line 527
    .local v0, "context":Landroid/content/Context;
    sget-object v1, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/onesignal/OneSignal$Builder;->mContext:Landroid/content/Context;

    .line 530
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 531
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 533
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v3, "onesignal_google_project_number"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 534
    .local v3, "sender_id":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x4

    if-le v4, v5, :cond_1

    .line 535
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 538
    :cond_1
    const-string v4, "com.onesignal.PrivacyConsent"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 539
    .local v4, "requireSetting":Ljava/lang/String;
    const-string v5, "ENABLE"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Lcom/onesignal/OneSignal;->setRequiresUserPrivacyConsent(Z)V

    .line 540
    const-string v5, "onesignal_app_id"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    iget-object v6, v6, Lcom/onesignal/OneSignal$Builder;->mNotificationOpenedHandler:Lcom/onesignal/OneSignal$NotificationOpenedHandler;

    sget-object v7, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    iget-object v7, v7, Lcom/onesignal/OneSignal$Builder;->mNotificationReceivedHandler:Lcom/onesignal/OneSignal$NotificationReceivedHandler;

    invoke-static {v0, v3, v5, v6, v7}, Lcom/onesignal/OneSignal;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OneSignal$NotificationOpenedHandler;Lcom/onesignal/OneSignal$NotificationReceivedHandler;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 543
    .end local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v3    # "sender_id":Ljava/lang/String;
    .end local v4    # "requireSetting":Ljava/lang/String;
    goto :goto_0

    .line 541
    :catch_0
    move-exception v1

    .line 542
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 544
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method private static internalFireGetTagsCallback(Lcom/onesignal/OneSignal$GetTagsHandler;)V
    .locals 3
    .param p0, "getTagsHandler"    # Lcom/onesignal/OneSignal$GetTagsHandler;

    .line 1582
    if-nez p0, :cond_0

    return-void

    .line 1584
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/onesignal/OneSignal$14;

    invoke-direct {v1, p0}, Lcom/onesignal/OneSignal$14;-><init>(Lcom/onesignal/OneSignal$GetTagsHandler;)V

    const-string v2, "OS_GETTAGS_CALLBACK"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1594
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1595
    return-void
.end method

.method private static declared-synchronized internalFireIdsAvailableCallback()V
    .locals 4

    const-class v0, Lcom/onesignal/OneSignal;

    monitor-enter v0

    .line 1698
    :try_start_0
    sget-object v1, Lcom/onesignal/OneSignal;->idsAvailableHandler:Lcom/onesignal/OneSignal$IdsAvailableHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1699
    monitor-exit v0

    return-void

    .line 1701
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getRegistrationId()Ljava/lang/String;

    move-result-object v1

    .line 1702
    .local v1, "regId":Ljava/lang/String;
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getSubscribed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1703
    const/4 v1, 0x0

    .line 1705
    :cond_1
    invoke-static {}, Lcom/onesignal/OneSignal;->getUserId()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1706
    .local v2, "userId":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 1707
    monitor-exit v0

    return-void

    .line 1709
    :cond_2
    :try_start_2
    sget-object v3, Lcom/onesignal/OneSignal;->idsAvailableHandler:Lcom/onesignal/OneSignal$IdsAvailableHandler;

    invoke-interface {v3, v2, v1}, Lcom/onesignal/OneSignal$IdsAvailableHandler;->idsAvailable(Ljava/lang/String;Ljava/lang/String;)V

    .line 1711
    if-eqz v1, :cond_3

    .line 1712
    const/4 v3, 0x0

    sput-object v3, Lcom/onesignal/OneSignal;->idsAvailableHandler:Lcom/onesignal/OneSignal$IdsAvailableHandler;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1713
    :cond_3
    monitor-exit v0

    return-void

    .line 1697
    .end local v1    # "regId":Ljava/lang/String;
    .end local v2    # "userId":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static isAppActive()Z
    .locals 1

    .line 2748
    sget-boolean v0, Lcom/onesignal/OneSignal;->initDone:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/onesignal/OneSignal;->isForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isDuplicateNotification(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 13
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .line 2673
    const/4 v0, 0x0

    if-eqz p0, :cond_4

    const-string v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    .line 2676
    :cond_0
    const/4 v1, 0x0

    .line 2678
    .local v1, "exists":Z
    invoke-static {p1}, Lcom/onesignal/OneSignalDbHelper;->getInstance(Landroid/content/Context;)Lcom/onesignal/OneSignalDbHelper;

    move-result-object v2

    .line 2679
    .local v2, "dbHelper":Lcom/onesignal/OneSignalDbHelper;
    const/4 v3, 0x0

    .line 2682
    .local v3, "cursor":Landroid/database/Cursor;
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v2}, Lcom/onesignal/OneSignalDbHelper;->getReadableDbWithRetries()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 2684
    .local v5, "readableDb":Landroid/database/sqlite/SQLiteDatabase;
    new-array v7, v4, [Ljava/lang/String;

    const-string v6, "notification_id"

    aput-object v6, v7, v0

    .line 2685
    .local v7, "retColumn":[Ljava/lang/String;
    new-array v9, v4, [Ljava/lang/String;

    aput-object p0, v9, v0

    .line 2687
    .local v9, "whereArgs":[Ljava/lang/String;
    const-string v6, "notification"

    const-string v8, "notification_id = ?"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    move-object v3, v6

    .line 2694
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v6

    .line 2700
    .end local v5    # "readableDb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v7    # "retColumn":[Ljava/lang/String;
    .end local v9    # "whereArgs":[Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 2701
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 2700
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 2696
    :catch_0
    move-exception v5

    .line 2697
    .local v5, "t":Ljava/lang/Throwable;
    :try_start_1
    sget-object v6, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v7, "Could not check for duplicate, assuming unique."

    invoke-static {v6, v7, v5}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2700
    .end local v5    # "t":Ljava/lang/Throwable;
    if-eqz v3, :cond_1

    goto :goto_0

    .line 2704
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 2705
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Duplicate GCM message received, skip processing of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 2706
    return v4

    .line 2709
    :cond_2
    return v0

    .line 2700
    :goto_2
    if-eqz v3, :cond_3

    .line 2701
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 2674
    .end local v1    # "exists":Z
    .end local v2    # "dbHelper":Lcom/onesignal/OneSignalDbHelper;
    .end local v3    # "cursor":Landroid/database/Cursor;
    :cond_4
    :goto_3
    return v0
.end method

.method static isForeground()Z
    .locals 1

    .line 1135
    sget-boolean v0, Lcom/onesignal/OneSignal;->foreground:Z

    return v0
.end method

.method private static isPastOnSessionTime()Z
    .locals 8

    .line 2757
    sget-boolean v0, Lcom/onesignal/OneSignal;->sendAsSession:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2758
    return v1

    .line 2760
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OneSignal;->getLastSessionTime(Landroid/content/Context;)J

    move-result-wide v4

    sub-long v6, v2, v4

    const-wide/16 v2, 0x3e8

    div-long/2addr v6, v2

    const-wide/16 v2, 0x1e

    cmp-long v0, v6, v2

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static logHttpError(Ljava/lang/String;ILjava/lang/Throwable;Ljava/lang/String;)V
    .locals 4
    .param p0, "errorString"    # Ljava/lang/String;
    .param p1, "statusCode"    # I
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .param p3, "errorResponse"    # Ljava/lang/String;

    .line 1008
    const-string v0, ""

    .line 1009
    .local v0, "jsonError":Ljava/lang/String;
    if-eqz p3, :cond_0

    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    invoke-static {v1}, Lcom/onesignal/OneSignal;->atLogLevel(Lcom/onesignal/OneSignal$LOG_LEVEL;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1010
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1011
    :cond_0
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HTTP code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1012
    return-void
.end method

.method public static logoutEmail()V
    .locals 1

    .line 1338
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/onesignal/OneSignal;->logoutEmail(Lcom/onesignal/OneSignal$EmailUpdateHandler;)V

    .line 1339
    return-void
.end method

.method public static logoutEmail(Lcom/onesignal/OneSignal$EmailUpdateHandler;)V
    .locals 4
    .param p0, "callback"    # Lcom/onesignal/OneSignal$EmailUpdateHandler;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1344
    const-string v0, "logoutEmail()"

    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1345
    return-void

    .line 1347
    :cond_0
    invoke-static {}, Lcom/onesignal/OneSignal;->getEmailId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1348
    const-string v0, "logoutEmail not valid as email was not set or already logged out!"

    .line 1349
    .local v0, "message":Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 1350
    new-instance v1, Lcom/onesignal/OneSignal$EmailUpdateError;

    sget-object v2, Lcom/onesignal/OneSignal$EmailErrorType;->INVALID_OPERATION:Lcom/onesignal/OneSignal$EmailErrorType;

    const-string v3, "logoutEmail not valid as email was not set or already logged out!"

    invoke-direct {v1, v2, v3}, Lcom/onesignal/OneSignal$EmailUpdateError;-><init>(Lcom/onesignal/OneSignal$EmailErrorType;Ljava/lang/String;)V

    invoke-interface {p0, v1}, Lcom/onesignal/OneSignal$EmailUpdateHandler;->onFailure(Lcom/onesignal/OneSignal$EmailUpdateError;)V

    .line 1351
    :cond_1
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "logoutEmail not valid as email was not set or already logged out!"

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 1352
    return-void

    .line 1355
    .end local v0    # "message":Ljava/lang/String;
    :cond_2
    sput-object p0, Lcom/onesignal/OneSignal;->emailLogoutHandler:Lcom/onesignal/OneSignal$EmailUpdateHandler;

    .line 1357
    new-instance v0, Lcom/onesignal/OneSignal$10;

    invoke-direct {v0}, Lcom/onesignal/OneSignal$10;-><init>()V

    .line 1365
    .local v0, "emailLogout":Ljava/lang/Runnable;
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/onesignal/OneSignal;->shouldRunTaskThroughQueue()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 1371
    :cond_3
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1372
    return-void

    .line 1366
    :cond_4
    :goto_0
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "You should initialize OneSignal before calling logoutEmail! Moving this operation to a pending task queue."

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 1368
    new-instance v1, Lcom/onesignal/OneSignal$PendingTaskRunnable;

    invoke-direct {v1, v0}, Lcom/onesignal/OneSignal$PendingTaskRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v1}, Lcom/onesignal/OneSignal;->addTaskToQueue(Lcom/onesignal/OneSignal$PendingTaskRunnable;)V

    .line 1369
    return-void
.end method

.method private static makeAndroidParamsRequest()V
    .locals 5

    .line 799
    sget-boolean v0, Lcom/onesignal/OneSignal;->awlFired:Z

    if-eqz v0, :cond_0

    .line 802
    invoke-static {}, Lcom/onesignal/OneSignal;->registerForPushToken()V

    .line 803
    return-void

    .line 806
    :cond_0
    new-instance v0, Lcom/onesignal/OneSignal$4;

    invoke-direct {v0}, Lcom/onesignal/OneSignal$4;-><init>()V

    .line 854
    .local v0, "responseHandler":Lcom/onesignal/OneSignalRestClient$ResponseHandler;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "apps/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/android_params.js"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 855
    .local v1, "awl_url":Ljava/lang/String;
    invoke-static {}, Lcom/onesignal/OneSignal;->getUserId()Ljava/lang/String;

    move-result-object v2

    .line 856
    .local v2, "userId":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 857
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "?player_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 859
    :cond_1
    sget-object v3, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v4, "Starting request to get Android parameters."

    invoke-static {v3, v4}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 860
    invoke-static {v1, v0}, Lcom/onesignal/OneSignalRestClient;->get(Ljava/lang/String;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V

    .line 861
    return-void
.end method

.method static notValidOrDuplicated(Landroid/content/Context;Lorg/json/JSONObject;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "jsonPayload"    # Lorg/json/JSONObject;

    .line 2713
    invoke-static {p1}, Lcom/onesignal/OneSignal;->getNotificationIdFromGCMJsonPayload(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 2714
    .local v0, "id":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-static {v0, p0}, Lcom/onesignal/OneSignal;->isDuplicateNotification(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method private static notificationOpenedRESTCall(Landroid/content/Context;Lorg/json/JSONArray;)V
    .locals 7
    .param p0, "inContext"    # Landroid/content/Context;
    .param p1, "dataArray"    # Lorg/json/JSONArray;

    .line 1899
    const/4 v0, 0x0

    .line 1899
    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1901
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 1902
    .local v1, "data":Lorg/json/JSONObject;
    new-instance v2, Lorg/json/JSONObject;

    const-string v3, "custom"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1904
    .local v2, "customJson":Lorg/json/JSONObject;
    const-string v3, "i"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1907
    .local v3, "notificationId":Ljava/lang/String;
    sget-object v4, Lcom/onesignal/OneSignal;->postedOpenedNotifIds:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1908
    goto :goto_1

    .line 1909
    :cond_0
    sget-object v4, Lcom/onesignal/OneSignal;->postedOpenedNotifIds:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1911
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 1912
    .local v4, "jsonBody":Lorg/json/JSONObject;
    const-string v5, "app_id"

    invoke-static {p0}, Lcom/onesignal/OneSignal;->getSavedAppId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1913
    const-string v5, "player_id"

    invoke-static {p0}, Lcom/onesignal/OneSignal;->getSavedUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1914
    const-string v5, "opened"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1916
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifications/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/onesignal/OneSignal$18;

    invoke-direct {v6}, Lcom/onesignal/OneSignal$18;-><init>()V

    invoke-static {v5, v4, v6}, Lcom/onesignal/OneSignalRestClient;->put(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1925
    .end local v1    # "data":Lorg/json/JSONObject;
    .end local v2    # "customJson":Lorg/json/JSONObject;
    .end local v3    # "notificationId":Ljava/lang/String;
    .end local v4    # "jsonBody":Lorg/json/JSONObject;
    goto :goto_1

    .line 1923
    :catch_0
    move-exception v1

    .line 1924
    .local v1, "t":Ljava/lang/Throwable;
    sget-object v2, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v3, "Failed to generate JSON to send notification opened."

    invoke-static {v2, v3, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1899
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1927
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method static onAppFocus()V
    .locals 2

    .line 1110
    const/4 v0, 0x1

    sput-boolean v0, Lcom/onesignal/OneSignal;->foreground:Z

    .line 1112
    invoke-static {}, Lcom/onesignal/LocationGMS;->onFocusChange()V

    .line 1114
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/onesignal/OneSignal;->lastTrackedFocusTime:J

    .line 1116
    invoke-static {}, Lcom/onesignal/OneSignal;->isPastOnSessionTime()Z

    move-result v0

    sput-boolean v0, Lcom/onesignal/OneSignal;->sendAsSession:Z

    .line 1117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->setLastSessionTime(J)V

    .line 1119
    invoke-static {}, Lcom/onesignal/OneSignal;->startRegistrationOrOnSession()V

    .line 1121
    sget-object v0, Lcom/onesignal/OneSignal;->trackGooglePurchase:Lcom/onesignal/TrackGooglePurchase;

    if-eqz v0, :cond_0

    .line 1122
    sget-object v0, Lcom/onesignal/OneSignal;->trackGooglePurchase:Lcom/onesignal/TrackGooglePurchase;

    invoke-virtual {v0}, Lcom/onesignal/TrackGooglePurchase;->trackIAP()V

    .line 1124
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/NotificationRestorer;->asyncRestore(Landroid/content/Context;)V

    .line 1126
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OneSignal;->getCurrentPermissionState(Landroid/content/Context;)Lcom/onesignal/OSPermissionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/OSPermissionState;->refreshAsTo()V

    .line 1128
    sget-object v0, Lcom/onesignal/OneSignal;->trackFirebaseAnalytics:Lcom/onesignal/TrackFirebaseAnalytics;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OneSignal;->getFirebaseAnalyticsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1129
    sget-object v0, Lcom/onesignal/OneSignal;->trackFirebaseAnalytics:Lcom/onesignal/TrackFirebaseAnalytics;

    invoke-virtual {v0}, Lcom/onesignal/TrackFirebaseAnalytics;->trackInfluenceOpenEvent()V

    .line 1131
    :cond_1
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OneSignalSyncServiceUtils;->cancelSyncTask(Landroid/content/Context;)V

    .line 1132
    return-void
.end method

.method static onAppLostFocus()Z
    .locals 11
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 1017
    const/4 v0, 0x0

    sput-boolean v0, Lcom/onesignal/OneSignal;->foreground:Z

    .line 1019
    invoke-static {}, Lcom/onesignal/LocationGMS;->onFocusChange()V

    .line 1021
    sget-boolean v1, Lcom/onesignal/OneSignal;->initDone:Z

    if-nez v1, :cond_0

    return v0

    .line 1023
    :cond_0
    sget-object v1, Lcom/onesignal/OneSignal;->trackAmazonPurchase:Lcom/onesignal/TrackAmazonPurchase;

    if-eqz v1, :cond_1

    .line 1024
    sget-object v1, Lcom/onesignal/OneSignal;->trackAmazonPurchase:Lcom/onesignal/TrackAmazonPurchase;

    invoke-virtual {v1}, Lcom/onesignal/TrackAmazonPurchase;->checkListener()V

    .line 1026
    :cond_1
    sget-wide v1, Lcom/onesignal/OneSignal;->lastTrackedFocusTime:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_2

    .line 1027
    return v0

    .line 1029
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sget-wide v3, Lcom/onesignal/OneSignal;->lastTrackedFocusTime:J

    sub-long v5, v1, v3

    long-to-double v1, v5

    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double/2addr v1, v3

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v3

    double-to-long v1, v1

    .line 1030
    .local v1, "time_elapsed":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sput-wide v3, Lcom/onesignal/OneSignal;->lastTrackedFocusTime:J

    .line 1031
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_9

    const-wide/32 v3, 0x15180

    cmp-long v5, v1, v3

    if-lez v5, :cond_3

    goto :goto_1

    .line 1034
    :cond_3
    sget-object v3, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v3, :cond_4

    .line 1035
    sget-object v3, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v4, "Android Context not found, please call OneSignal.init when your app starts."

    invoke-static {v3, v4}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 1036
    return v0

    .line 1039
    :cond_4
    invoke-static {}, Lcom/onesignal/OneSignal;->scheduleSyncService()Z

    move-result v3

    .line 1041
    .local v3, "scheduleSyncService":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/onesignal/OneSignal;->setLastSessionTime(J)V

    .line 1043
    invoke-static {}, Lcom/onesignal/OneSignal;->GetUnsentActiveTime()J

    move-result-wide v4

    .line 1044
    .local v4, "unSentActiveTime":J
    add-long v6, v4, v1

    .line 1046
    .local v6, "totalTimeActive":J
    invoke-static {v6, v7}, Lcom/onesignal/OneSignal;->SaveUnsentActiveTime(J)V

    .line 1048
    const-wide/16 v8, 0x3c

    cmp-long v10, v6, v8

    if-ltz v10, :cond_7

    invoke-static {}, Lcom/onesignal/OneSignal;->getUserId()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_5

    goto :goto_0

    .line 1052
    :cond_5
    if-nez v3, :cond_6

    .line 1053
    sget-object v8, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/onesignal/OneSignalSyncServiceUtils;->scheduleSyncTask(Landroid/content/Context;)V

    .line 1055
    :cond_6
    invoke-static {}, Lcom/onesignal/OneSignalSyncServiceUtils;->syncOnFocusTime()V

    .line 1057
    return v0

    .line 1049
    :cond_7
    :goto_0
    cmp-long v10, v6, v8

    if-ltz v10, :cond_8

    const/4 v0, 0x1

    nop

    :cond_8
    return v0

    .line 1032
    .end local v3    # "scheduleSyncService":Z
    .end local v4    # "unSentActiveTime":J
    .end local v6    # "totalTimeActive":J
    :cond_9
    :goto_1
    return v0
.end method

.method private static onTaskRan(J)V
    .locals 3
    .param p0, "taskId"    # J

    .line 650
    sget-object v0, Lcom/onesignal/OneSignal;->lastTaskId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    cmp-long v2, v0, p0

    if-nez v2, :cond_0

    .line 651
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "Last Pending Task has ran, shutting down"

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 652
    sget-object v0, Lcom/onesignal/OneSignal;->pendingTaskExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 654
    :cond_0
    return-void
.end method

.method private static openURLFromNotification(Landroid/content/Context;Lorg/json/JSONArray;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dataArray"    # Lorg/json/JSONArray;

    .line 1747
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1748
    return v2

    .line 1750
    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 1752
    .local v1, "jsonArraySize":I
    const/4 v3, 0x0

    .line 1754
    .local v3, "urlOpened":Z
    nop

    .line 1754
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_4

    .line 1756
    :try_start_0
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 1757
    .local v4, "data":Lorg/json/JSONObject;
    const-string v5, "custom"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1758
    goto :goto_1

    .line 1760
    :cond_1
    new-instance v5, Lorg/json/JSONObject;

    const-string v6, "custom"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1762
    .local v5, "customJSON":Lorg/json/JSONObject;
    const-string v6, "u"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1763
    const-string v6, "u"

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1764
    .local v6, "url":Ljava/lang/String;
    const-string v7, "://"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1765
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "http://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 1767
    :cond_2
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1768
    .local v7, "intent":Landroid/content/Intent;
    const/high16 v8, 0x58080000

    invoke-virtual {v7, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1769
    invoke-virtual {p0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1770
    const/4 v3, 0x1

    .line 1774
    .end local v4    # "data":Lorg/json/JSONObject;
    .end local v5    # "customJSON":Lorg/json/JSONObject;
    .end local v6    # "url":Ljava/lang/String;
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_3
    goto :goto_1

    .line 1772
    :catch_0
    move-exception v4

    .line 1773
    .local v4, "t":Ljava/lang/Throwable;
    sget-object v5, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error parsing JSON item "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " for launching a web URL."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1754
    .end local v4    # "t":Ljava/lang/Throwable;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1777
    .end local v2    # "i":I
    :cond_4
    return v3
.end method

.method public static postNotification(Ljava/lang/String;Lcom/onesignal/OneSignal$PostNotificationResponseHandler;)V
    .locals 4
    .param p0, "json"    # Ljava/lang/String;
    .param p1, "handler"    # Lcom/onesignal/OneSignal$PostNotificationResponseHandler;

    .line 1466
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/onesignal/OneSignal;->postNotification(Lorg/json/JSONObject;Lcom/onesignal/OneSignal$PostNotificationResponseHandler;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1469
    goto :goto_0

    .line 1467
    :catch_0
    move-exception v0

    .line 1468
    .local v0, "e":Lorg/json/JSONException;
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid postNotification JSON format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 1470
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method public static postNotification(Lorg/json/JSONObject;Lcom/onesignal/OneSignal$PostNotificationResponseHandler;)V
    .locals 3
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "handler"    # Lcom/onesignal/OneSignal$PostNotificationResponseHandler;

    .line 1487
    const-string v0, "postNotification()"

    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1488
    return-void

    .line 1491
    :cond_0
    :try_start_0
    const-string v0, "app_id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1492
    const-string v0, "app_id"

    invoke-static {}, Lcom/onesignal/OneSignal;->getSavedAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1494
    :cond_1
    const-string v0, "notifications/"

    new-instance v1, Lcom/onesignal/OneSignal$12;

    invoke-direct {v1, p1}, Lcom/onesignal/OneSignal$12;-><init>(Lcom/onesignal/OneSignal$PostNotificationResponseHandler;)V

    invoke-static {v0, p0, v1}, Lcom/onesignal/OneSignalRestClient;->post(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1539
    goto :goto_0

    .line 1530
    :catch_0
    move-exception v0

    .line 1531
    .local v0, "e":Lorg/json/JSONException;
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "HTTP create notification json exception!"

    invoke-static {v1, v2, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1532
    if-eqz p1, :cond_2

    .line 1534
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "{\'error\': \'HTTP create notification json exception!\'}"

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/onesignal/OneSignal$PostNotificationResponseHandler;->onFailure(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1537
    goto :goto_0

    .line 1535
    :catch_1
    move-exception v1

    .line 1536
    .local v1, "e1":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 1540
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "e1":Lorg/json/JSONException;
    :cond_2
    :goto_0
    return-void
.end method

.method public static promptLocation()V
    .locals 3

    .line 2217
    const-string v0, "promptLocation()"

    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2218
    return-void

    .line 2220
    :cond_0
    new-instance v0, Lcom/onesignal/OneSignal$20;

    invoke-direct {v0}, Lcom/onesignal/OneSignal$20;-><init>()V

    .line 2244
    .local v0, "runPromptLocation":Ljava/lang/Runnable;
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/onesignal/OneSignal;->shouldRunTaskThroughQueue()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 2252
    :cond_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2253
    return-void

    .line 2245
    :cond_2
    :goto_0
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "OneSignal.init has not been called. Could not prompt for location at this time - moving this operation to awaiting queue."

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 2248
    new-instance v1, Lcom/onesignal/OneSignal$PendingTaskRunnable;

    invoke-direct {v1, v0}, Lcom/onesignal/OneSignal$PendingTaskRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v1}, Lcom/onesignal/OneSignal;->addTaskToQueue(Lcom/onesignal/OneSignal$PendingTaskRunnable;)V

    .line 2249
    return-void
.end method

.method public static provideUserConsent(Z)V
    .locals 6
    .param p0, "consent"    # Z

    .line 875
    invoke-static {}, Lcom/onesignal/OneSignal;->userProvidedPrivacyConsent()Z

    move-result v0

    .line 877
    .local v0, "previousConsentStatus":Z
    invoke-static {p0}, Lcom/onesignal/OneSignal;->saveUserConsentStatus(Z)V

    .line 879
    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    sget-object v1, Lcom/onesignal/OneSignal;->delayedInitParams:Lcom/onesignal/DelayedConsentInitializationParameters;

    if-eqz v1, :cond_0

    .line 880
    sget-object v1, Lcom/onesignal/OneSignal;->delayedInitParams:Lcom/onesignal/DelayedConsentInitializationParameters;

    iget-object v1, v1, Lcom/onesignal/DelayedConsentInitializationParameters;->context:Landroid/content/Context;

    sget-object v2, Lcom/onesignal/OneSignal;->delayedInitParams:Lcom/onesignal/DelayedConsentInitializationParameters;

    iget-object v2, v2, Lcom/onesignal/DelayedConsentInitializationParameters;->googleProjectNumber:Ljava/lang/String;

    sget-object v3, Lcom/onesignal/OneSignal;->delayedInitParams:Lcom/onesignal/DelayedConsentInitializationParameters;

    iget-object v3, v3, Lcom/onesignal/DelayedConsentInitializationParameters;->appId:Ljava/lang/String;

    sget-object v4, Lcom/onesignal/OneSignal;->delayedInitParams:Lcom/onesignal/DelayedConsentInitializationParameters;

    iget-object v4, v4, Lcom/onesignal/DelayedConsentInitializationParameters;->openedHandler:Lcom/onesignal/OneSignal$NotificationOpenedHandler;

    sget-object v5, Lcom/onesignal/OneSignal;->delayedInitParams:Lcom/onesignal/DelayedConsentInitializationParameters;

    iget-object v5, v5, Lcom/onesignal/DelayedConsentInitializationParameters;->receivedHandler:Lcom/onesignal/OneSignal$NotificationReceivedHandler;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/onesignal/OneSignal;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OneSignal$NotificationOpenedHandler;Lcom/onesignal/OneSignal$NotificationReceivedHandler;)V

    .line 881
    const/4 v1, 0x0

    sput-object v1, Lcom/onesignal/OneSignal;->delayedInitParams:Lcom/onesignal/DelayedConsentInitializationParameters;

    .line 883
    :cond_0
    return-void
.end method

.method private static pushStatusRuntimeError(I)Z
    .locals 1
    .param p0, "subscribableStatus"    # I

    .line 793
    const/4 v0, -0x6

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static registerForPushToken()V
    .locals 4

    .line 768
    invoke-static {}, Lcom/onesignal/OneSignal;->getPushRegistrator()Lcom/onesignal/PushRegistrator;

    move-result-object v0

    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    sget-object v2, Lcom/onesignal/OneSignal;->mGoogleProjectNumber:Ljava/lang/String;

    new-instance v3, Lcom/onesignal/OneSignal$3;

    invoke-direct {v3}, Lcom/onesignal/OneSignal$3;-><init>()V

    invoke-interface {v0, v1, v2, v3}, Lcom/onesignal/PushRegistrator;->registerForPush(Landroid/content/Context;Ljava/lang/String;Lcom/onesignal/PushRegistrator$RegisteredHandler;)V

    .line 790
    return-void
.end method

.method private static registerUser()V
    .locals 3

    .line 1155
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerUser: registerForPushFired:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/onesignal/OneSignal;->registerForPushFired:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", locationFired: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/onesignal/OneSignal;->locationFired:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", awlFired: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/onesignal/OneSignal;->awlFired:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 1157
    sget-boolean v0, Lcom/onesignal/OneSignal;->registerForPushFired:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/onesignal/OneSignal;->locationFired:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/onesignal/OneSignal;->awlFired:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 1160
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/onesignal/OneSignal$7;

    invoke-direct {v1}, Lcom/onesignal/OneSignal$7;-><init>()V

    const-string v2, "OS_REG_USER"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1169
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1170
    return-void

    .line 1158
    :cond_1
    :goto_0
    return-void
.end method

.method private static registerUserTask()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1173
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1174
    .local v0, "packageName":Ljava/lang/String;
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1176
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1178
    .local v2, "deviceInfo":Lorg/json/JSONObject;
    const-string v3, "app_id"

    sget-object v4, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1180
    sget-object v3, Lcom/onesignal/OneSignal;->mainAdIdProvider:Lcom/onesignal/AdvertisingIdentifierProvider;

    sget-object v4, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-interface {v3, v4}, Lcom/onesignal/AdvertisingIdentifierProvider;->getIdentifier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 1181
    .local v3, "adId":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1182
    const-string v4, "ad_id"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1183
    :cond_0
    const-string v4, "device_os"

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1184
    const-string v4, "timezone"

    invoke-static {}, Lcom/onesignal/OneSignal;->getTimeZoneOffset()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1185
    const-string v4, "language"

    invoke-static {}, Lcom/onesignal/OSUtils;->getCorrectedLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1186
    const-string v4, "sdk"

    const-string v5, "030901"

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1187
    const-string v4, "sdk_type"

    sget-object v5, Lcom/onesignal/OneSignal;->sdkType:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1188
    const-string v4, "android_package"

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1189
    const-string v4, "device_model"

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1192
    const/4 v4, 0x0

    :try_start_0
    const-string v5, "game_version"

    invoke-virtual {v1, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1193
    goto :goto_0

    :catch_0
    move-exception v5

    .line 1196
    :goto_0
    :try_start_1
    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v5

    .line 1197
    .local v5, "packList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 1198
    .local v6, "pkgs":Lorg/json/JSONArray;
    const-string v7, "SHA-256"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v7

    .line 1199
    .local v7, "md":Ljava/security/MessageDigest;
    move v8, v4

    .line 1199
    .local v8, "i":I
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_2

    .line 1200
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/PackageInfo;

    iget-object v9, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/security/MessageDigest;->update([B)V

    .line 1201
    invoke-virtual {v7}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v9

    const/4 v10, 0x2

    invoke-static {v9, v10}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v9

    .line 1202
    .local v9, "pck":Ljava/lang/String;
    sget-object v10, Lcom/onesignal/OneSignal;->awl:Lorg/json/JSONObject;

    invoke-virtual {v10, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1203
    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1199
    .end local v9    # "pck":Ljava/lang/String;
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1205
    .end local v8    # "i":I
    :cond_2
    const-string v8, "pkgs"

    invoke-virtual {v2, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1206
    .end local v5    # "packList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v6    # "pkgs":Lorg/json/JSONArray;
    .end local v7    # "md":Ljava/security/MessageDigest;
    goto :goto_2

    :catch_1
    move-exception v5

    .line 1208
    :goto_2
    const-string v5, "net_type"

    sget-object v6, Lcom/onesignal/OneSignal;->osUtils:Lcom/onesignal/OSUtils;

    invoke-virtual {v6}, Lcom/onesignal/OSUtils;->getNetType()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1209
    const-string v5, "carrier"

    sget-object v6, Lcom/onesignal/OneSignal;->osUtils:Lcom/onesignal/OSUtils;

    invoke-virtual {v6}, Lcom/onesignal/OSUtils;->getCarrierName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1210
    const-string v5, "rooted"

    invoke-static {}, Lcom/onesignal/RootToolsInternalMethods;->isRooted()Z

    move-result v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1212
    invoke-static {v2}, Lcom/onesignal/OneSignalStateSynchronizer;->updateDeviceInfo(Lorg/json/JSONObject;)V

    .line 1214
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 1215
    .local v5, "pushState":Lorg/json/JSONObject;
    const-string v6, "identifier"

    sget-object v7, Lcom/onesignal/OneSignal;->lastRegistrationId:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1216
    const-string v6, "subscribableStatus"

    sget v7, Lcom/onesignal/OneSignal;->subscribableStatus:I

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1217
    const-string v6, "androidPermission"

    invoke-static {}, Lcom/onesignal/OneSignal;->areNotificationsEnabledForSubscribedState()Z

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1218
    const-string v6, "device_type"

    sget v7, Lcom/onesignal/OneSignal;->deviceType:I

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1219
    invoke-static {v5}, Lcom/onesignal/OneSignalStateSynchronizer;->updatePushState(Lorg/json/JSONObject;)V

    .line 1221
    sget-boolean v6, Lcom/onesignal/OneSignal;->shareLocation:Z

    if-eqz v6, :cond_3

    sget-object v6, Lcom/onesignal/OneSignal;->lastLocationPoint:Lcom/onesignal/LocationGMS$LocationPoint;

    if-eqz v6, :cond_3

    .line 1222
    sget-object v6, Lcom/onesignal/OneSignal;->lastLocationPoint:Lcom/onesignal/LocationGMS$LocationPoint;

    invoke-static {v6}, Lcom/onesignal/OneSignalStateSynchronizer;->updateLocation(Lcom/onesignal/LocationGMS$LocationPoint;)V

    .line 1224
    :cond_3
    sget-boolean v6, Lcom/onesignal/OneSignal;->sendAsSession:Z

    if-eqz v6, :cond_4

    .line 1225
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->setSyncAsNewSession()V

    .line 1227
    :cond_4
    sput-boolean v4, Lcom/onesignal/OneSignal;->waitingToPostStateSync:Z

    .line 1228
    return-void
.end method

.method public static removeEmailSubscriptionObserver(Lcom/onesignal/OSEmailSubscriptionObserver;)V
    .locals 2
    .param p0, "observer"    # Lcom/onesignal/OSEmailSubscriptionObserver;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 2613
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 2614
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "OneSignal.init has not been called. Could not modify email subscription observer"

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 2615
    return-void

    .line 2618
    :cond_0
    invoke-static {}, Lcom/onesignal/OneSignal;->getEmailSubscriptionStateChangesObserver()Lcom/onesignal/OSObservable;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/OSObservable;->removeObserver(Ljava/lang/Object;)V

    .line 2619
    return-void
.end method

.method public static removeNotificationOpenedHandler()V
    .locals 2

    .line 2494
    invoke-static {}, Lcom/onesignal/OneSignal;->getCurrentOrNewInitBuilder()Lcom/onesignal/OneSignal$Builder;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/onesignal/OneSignal$Builder;->mNotificationOpenedHandler:Lcom/onesignal/OneSignal$NotificationOpenedHandler;

    .line 2495
    return-void
.end method

.method public static removeNotificationReceivedHandler()V
    .locals 2

    .line 2498
    invoke-static {}, Lcom/onesignal/OneSignal;->getCurrentOrNewInitBuilder()Lcom/onesignal/OneSignal$Builder;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/onesignal/OneSignal$Builder;->mNotificationReceivedHandler:Lcom/onesignal/OneSignal$NotificationReceivedHandler;

    .line 2499
    return-void
.end method

.method public static removePermissionObserver(Lcom/onesignal/OSPermissionObserver;)V
    .locals 2
    .param p0, "observer"    # Lcom/onesignal/OSPermissionObserver;

    .line 2534
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 2535
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "OneSignal.init has not been called. Could not modify permission observer"

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 2536
    return-void

    .line 2539
    :cond_0
    invoke-static {}, Lcom/onesignal/OneSignal;->getPermissionStateChangesObserver()Lcom/onesignal/OSObservable;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/OSObservable;->removeObserver(Ljava/lang/Object;)V

    .line 2540
    return-void
.end method

.method public static removeSubscriptionObserver(Lcom/onesignal/OSSubscriptionObserver;)V
    .locals 2
    .param p0, "observer"    # Lcom/onesignal/OSSubscriptionObserver;

    .line 2575
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 2576
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "OneSignal.init has not been called. Could not modify subscription observer"

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 2577
    return-void

    .line 2580
    :cond_0
    invoke-static {}, Lcom/onesignal/OneSignal;->getSubscriptionStateChangesObserver()Lcom/onesignal/OSObservable;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/OSObservable;->removeObserver(Ljava/lang/Object;)V

    .line 2581
    return-void
.end method

.method private static runNotificationOpenedCallback(Lorg/json/JSONArray;ZZ)V
    .locals 1
    .param p0, "dataArray"    # Lorg/json/JSONArray;
    .param p1, "shown"    # Z
    .param p2, "fromAlert"    # Z

    .line 1781
    sget-object v0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    iget-object v0, v0, Lcom/onesignal/OneSignal$Builder;->mNotificationOpenedHandler:Lcom/onesignal/OneSignal$NotificationOpenedHandler;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1786
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/onesignal/OneSignal;->generateOsNotificationOpenResult(Lorg/json/JSONArray;ZZ)Lcom/onesignal/OSNotificationOpenResult;

    move-result-object v0

    invoke-static {v0}, Lcom/onesignal/OneSignal;->fireNotificationOpenedHandler(Lcom/onesignal/OSNotificationOpenResult;)V

    .line 1787
    return-void

    .line 1782
    :cond_1
    :goto_0
    sget-object v0, Lcom/onesignal/OneSignal;->unprocessedOpenedNotifis:Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1783
    return-void
.end method

.method static saveEmailId(Ljava/lang/String;)V
    .locals 4
    .param p0, "id"    # Ljava/lang/String;

    .line 2001
    sput-object p0, Lcom/onesignal/OneSignal;->emailId:Ljava/lang/String;

    .line 2002
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 2003
    return-void

    .line 2005
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v1, "OS_EMAIL_ID"

    const-string v2, ""

    sget-object v3, Lcom/onesignal/OneSignal;->emailId:Ljava/lang/String;

    .line 2006
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/onesignal/OneSignal;->emailId:Ljava/lang/String;

    .line 2005
    :goto_0
    invoke-static {v0, v1, v2}, Lcom/onesignal/OneSignalPrefs;->saveString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2007
    return-void
.end method

.method static saveFilterOtherGCMReceivers(Z)V
    .locals 2
    .param p0, "set"    # Z

    .line 2015
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 2016
    return-void

    .line 2018
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v1, "OS_FILTER_OTHER_GCM_RECEIVERS"

    invoke-static {v0, v1, p0}, Lcom/onesignal/OneSignalPrefs;->saveBool(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2019
    return-void
.end method

.method static saveUserConsentStatus(Z)V
    .locals 2
    .param p0, "consent"    # Z

    .line 1958
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1959
    return-void

    .line 1961
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v1, "ONESIGNAL_USER_PROVIDED_CONSENT"

    invoke-static {v0, v1, p0}, Lcom/onesignal/OneSignalPrefs;->saveBool(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1962
    return-void
.end method

.method static saveUserId(Ljava/lang/String;)V
    .locals 3
    .param p0, "id"    # Ljava/lang/String;

    .line 1981
    sput-object p0, Lcom/onesignal/OneSignal;->userId:Ljava/lang/String;

    .line 1982
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1983
    return-void

    .line 1985
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v1, "GT_PLAYER_ID"

    sget-object v2, Lcom/onesignal/OneSignal;->userId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/onesignal/OneSignalPrefs;->saveString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1987
    return-void
.end method

.method static scheduleSyncService()Z
    .locals 3

    .line 1061
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->persist()Z

    move-result v0

    .line 1062
    .local v0, "unsyncedChanges":Z
    if-eqz v0, :cond_0

    .line 1063
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/onesignal/OneSignalSyncServiceUtils;->scheduleSyncTask(Landroid/content/Context;)V

    .line 1065
    :cond_0
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/onesignal/LocationGMS;->scheduleUpdate(Landroid/content/Context;)Z

    move-result v1

    .line 1066
    .local v1, "locationScheduled":Z
    if-nez v1, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2
.end method

.method static sendOnFocus(JZ)V
    .locals 3
    .param p0, "totalTimeActive"    # J
    .param p2, "synchronous"    # Z

    .line 1071
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "app_id"

    sget-object v2, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    .line 1072
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "type"

    const/4 v2, 0x1

    .line 1073
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "state"

    const-string v2, "ping"

    .line 1074
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "active_time"

    .line 1075
    invoke-virtual {v0, v1, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v0

    .line 1076
    .local v0, "jsonBody":Lorg/json/JSONObject;
    invoke-static {v0}, Lcom/onesignal/OneSignal;->addNetType(Lorg/json/JSONObject;)V

    .line 1078
    invoke-static {}, Lcom/onesignal/OneSignal;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, p2}, Lcom/onesignal/OneSignal;->sendOnFocusToPlayer(Ljava/lang/String;Lorg/json/JSONObject;Z)V

    .line 1079
    invoke-static {}, Lcom/onesignal/OneSignal;->getEmailId()Ljava/lang/String;

    move-result-object v1

    .line 1080
    .local v1, "emailId":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1081
    invoke-static {v1, v0, p2}, Lcom/onesignal/OneSignal;->sendOnFocusToPlayer(Ljava/lang/String;Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1085
    .end local v0    # "jsonBody":Lorg/json/JSONObject;
    .end local v1    # "emailId":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 1083
    :catch_0
    move-exception v0

    .line 1084
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "Generating on_focus:JSON Failed."

    invoke-static {v1, v2, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1086
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method private static sendOnFocusToPlayer(Ljava/lang/String;Lorg/json/JSONObject;Z)V
    .locals 2
    .param p0, "userId"    # Ljava/lang/String;
    .param p1, "jsonBody"    # Lorg/json/JSONObject;
    .param p2, "synchronous"    # Z

    .line 1089
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "players/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/on_focus"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1090
    .local v0, "url":Ljava/lang/String;
    new-instance v1, Lcom/onesignal/OneSignal$6;

    invoke-direct {v1}, Lcom/onesignal/OneSignal$6;-><init>()V

    .line 1102
    .local v1, "responseHandler":Lcom/onesignal/OneSignalRestClient$ResponseHandler;
    if-eqz p2, :cond_0

    .line 1103
    invoke-static {v0, p1, v1}, Lcom/onesignal/OneSignalRestClient;->postSync(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V

    goto :goto_0

    .line 1105
    :cond_0
    invoke-static {v0, p1, v1}, Lcom/onesignal/OneSignalRestClient;->post(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V

    .line 1106
    :goto_0
    return-void
.end method

.method static sendPurchases(Lorg/json/JSONArray;ZLcom/onesignal/OneSignalRestClient$ResponseHandler;)V
    .locals 3
    .param p0, "purchases"    # Lorg/json/JSONArray;
    .param p1, "newAsExisting"    # Z
    .param p2, "responseHandler"    # Lcom/onesignal/OneSignalRestClient$ResponseHandler;

    .line 1718
    const-string v0, "sendPurchases()"

    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1719
    return-void

    .line 1721
    :cond_0
    invoke-static {}, Lcom/onesignal/OneSignal;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1722
    new-instance v0, Lcom/onesignal/OneSignal$IAPUpdateJob;

    invoke-direct {v0, p0}, Lcom/onesignal/OneSignal$IAPUpdateJob;-><init>(Lorg/json/JSONArray;)V

    sput-object v0, Lcom/onesignal/OneSignal;->iapUpdateJob:Lcom/onesignal/OneSignal$IAPUpdateJob;

    .line 1723
    sget-object v0, Lcom/onesignal/OneSignal;->iapUpdateJob:Lcom/onesignal/OneSignal$IAPUpdateJob;

    iput-boolean p1, v0, Lcom/onesignal/OneSignal$IAPUpdateJob;->newAsExisting:Z

    .line 1724
    sget-object v0, Lcom/onesignal/OneSignal;->iapUpdateJob:Lcom/onesignal/OneSignal$IAPUpdateJob;

    iput-object p2, v0, Lcom/onesignal/OneSignal$IAPUpdateJob;->restResponseHandler:Lcom/onesignal/OneSignalRestClient$ResponseHandler;

    .line 1726
    return-void

    .line 1730
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1731
    .local v0, "jsonBody":Lorg/json/JSONObject;
    const-string v1, "app_id"

    sget-object v2, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1732
    if-eqz p1, :cond_2

    .line 1733
    const-string v1, "existing"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1734
    :cond_2
    const-string v1, "purchases"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1736
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "players/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/onesignal/OneSignal;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/on_purchase"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, p2}, Lcom/onesignal/OneSignalRestClient;->post(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V

    .line 1737
    invoke-static {}, Lcom/onesignal/OneSignal;->getEmailId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1738
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "players/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/onesignal/OneSignal;->getEmailId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/on_purchase"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/onesignal/OneSignalRestClient;->post(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1741
    .end local v0    # "jsonBody":Lorg/json/JSONObject;
    :cond_3
    goto :goto_0

    .line 1739
    :catch_0
    move-exception v0

    .line 1740
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "Failed to generate JSON for sendPurchases."

    invoke-static {v1, v2, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1742
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public static sendTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 1386
    const-string v0, "sendTag()"

    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1387
    return-void

    .line 1390
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/onesignal/OneSignal;->sendTags(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1393
    goto :goto_0

    .line 1391
    :catch_0
    move-exception v0

    .line 1392
    .local v0, "t":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1394
    .end local v0    # "t":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method public static sendTags(Ljava/lang/String;)V
    .locals 3
    .param p0, "jsonString"    # Ljava/lang/String;

    .line 1398
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onesignal/OneSignal;->sendTags(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1401
    goto :goto_0

    .line 1399
    :catch_0
    move-exception v0

    .line 1400
    .local v0, "t":Lorg/json/JSONException;
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "Generating JSONObject for sendTags failed!"

    invoke-static {v1, v2, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1402
    .end local v0    # "t":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method public static sendTags(Lorg/json/JSONObject;)V
    .locals 3
    .param p0, "keyValues"    # Lorg/json/JSONObject;

    .line 1416
    const-string v0, "sendTags()"

    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1417
    return-void

    .line 1419
    :cond_0
    new-instance v0, Lcom/onesignal/OneSignal$11;

    invoke-direct {v0, p0}, Lcom/onesignal/OneSignal$11;-><init>(Lorg/json/JSONObject;)V

    .line 1454
    .local v0, "sendTagsRunnable":Ljava/lang/Runnable;
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/onesignal/OneSignal;->shouldRunTaskThroughQueue()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 1461
    :cond_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1462
    return-void

    .line 1455
    :cond_2
    :goto_0
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "You must initialize OneSignal before modifying tags!Moving this operation to a pending task queue."

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 1457
    new-instance v1, Lcom/onesignal/OneSignal$PendingTaskRunnable;

    invoke-direct {v1, v0}, Lcom/onesignal/OneSignal$PendingTaskRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v1}, Lcom/onesignal/OneSignal;->addTaskToQueue(Lcom/onesignal/OneSignal$PendingTaskRunnable;)V

    .line 1458
    return-void
.end method

.method public static setEmail(Ljava/lang/String;)V
    .locals 1
    .param p0, "email"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1267
    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lcom/onesignal/OneSignal;->setEmail(Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OneSignal$EmailUpdateHandler;)V

    .line 1268
    return-void
.end method

.method public static setEmail(Ljava/lang/String;Lcom/onesignal/OneSignal$EmailUpdateHandler;)V
    .locals 1
    .param p0, "email"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "callback"    # Lcom/onesignal/OneSignal$EmailUpdateHandler;

    .line 1263
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/onesignal/OneSignal;->setEmail(Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OneSignal$EmailUpdateHandler;)V

    .line 1264
    return-void
.end method

.method public static setEmail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "email"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "emailAuthHash"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1271
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/onesignal/OneSignal;->setEmail(Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OneSignal$EmailUpdateHandler;)V

    .line 1272
    return-void
.end method

.method public static setEmail(Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OneSignal$EmailUpdateHandler;)V
    .locals 3
    .param p0, "email"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "emailAuthHash"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "callback"    # Lcom/onesignal/OneSignal$EmailUpdateHandler;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1287
    const-string v0, "setEmail()"

    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1288
    return-void

    .line 1290
    :cond_0
    invoke-static {p0}, Lcom/onesignal/OSUtils;->isValidEmail(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1291
    const-string v0, "Email is invalid"

    .line 1292
    .local v0, "errorMessage":Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 1293
    new-instance v1, Lcom/onesignal/OneSignal$EmailUpdateError;

    sget-object v2, Lcom/onesignal/OneSignal$EmailErrorType;->VALIDATION:Lcom/onesignal/OneSignal$EmailErrorType;

    invoke-direct {v1, v2, v0}, Lcom/onesignal/OneSignal$EmailUpdateError;-><init>(Lcom/onesignal/OneSignal$EmailErrorType;Ljava/lang/String;)V

    invoke-interface {p2, v1}, Lcom/onesignal/OneSignal$EmailUpdateHandler;->onFailure(Lcom/onesignal/OneSignal$EmailUpdateError;)V

    .line 1294
    :cond_1
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    invoke-static {v1, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 1295
    return-void

    .line 1298
    .end local v0    # "errorMessage":Ljava/lang/String;
    :cond_2
    sget-boolean v0, Lcom/onesignal/OneSignal;->useEmailAuth:Z

    if-eqz v0, :cond_4

    if-nez p1, :cond_4

    .line 1299
    const-string v0, "Email authentication (auth token) is set to REQUIRED for this application. Please provide an auth token from your backend server or change the setting in the OneSignal dashboard."

    .line 1300
    .restart local v0    # "errorMessage":Ljava/lang/String;
    if-eqz p2, :cond_3

    .line 1301
    new-instance v1, Lcom/onesignal/OneSignal$EmailUpdateError;

    sget-object v2, Lcom/onesignal/OneSignal$EmailErrorType;->REQUIRES_EMAIL_AUTH:Lcom/onesignal/OneSignal$EmailErrorType;

    invoke-direct {v1, v2, v0}, Lcom/onesignal/OneSignal$EmailUpdateError;-><init>(Lcom/onesignal/OneSignal$EmailErrorType;Ljava/lang/String;)V

    invoke-interface {p2, v1}, Lcom/onesignal/OneSignal$EmailUpdateHandler;->onFailure(Lcom/onesignal/OneSignal$EmailUpdateError;)V

    .line 1302
    :cond_3
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    invoke-static {v1, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 1303
    return-void

    .line 1306
    .end local v0    # "errorMessage":Ljava/lang/String;
    :cond_4
    sput-object p2, Lcom/onesignal/OneSignal;->emailUpdateHandler:Lcom/onesignal/OneSignal$EmailUpdateHandler;

    .line 1308
    new-instance v0, Lcom/onesignal/OneSignal$9;

    invoke-direct {v0, p0, p1}, Lcom/onesignal/OneSignal$9;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    .local v0, "runSetEmail":Ljava/lang/Runnable;
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/onesignal/OneSignal;->shouldRunTaskThroughQueue()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_0

    .line 1329
    :cond_5
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1330
    return-void

    .line 1324
    :cond_6
    :goto_0
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "You should initialize OneSignal before calling setEmail! Moving this operation to a pending task queue."

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 1326
    new-instance v1, Lcom/onesignal/OneSignal$PendingTaskRunnable;

    invoke-direct {v1, v0}, Lcom/onesignal/OneSignal$PendingTaskRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v1}, Lcom/onesignal/OneSignal;->addTaskToQueue(Lcom/onesignal/OneSignal$PendingTaskRunnable;)V

    .line 1327
    return-void
.end method

.method public static setInFocusDisplaying(I)V
    .locals 1
    .param p0, "displayOption"    # I

    .line 2127
    invoke-static {p0}, Lcom/onesignal/OneSignal;->getInFocusDisplaying(I)Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    move-result-object v0

    invoke-static {v0}, Lcom/onesignal/OneSignal;->setInFocusDisplaying(Lcom/onesignal/OneSignal$OSInFocusDisplayOption;)V

    .line 2128
    return-void
.end method

.method public static setInFocusDisplaying(Lcom/onesignal/OneSignal$OSInFocusDisplayOption;)V
    .locals 2
    .param p0, "displayOption"    # Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    .line 2123
    invoke-static {}, Lcom/onesignal/OneSignal;->getCurrentOrNewInitBuilder()Lcom/onesignal/OneSignal$Builder;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/onesignal/OneSignal$Builder;->mDisplayOptionCarryOver:Z

    .line 2124
    invoke-static {}, Lcom/onesignal/OneSignal;->getCurrentOrNewInitBuilder()Lcom/onesignal/OneSignal$Builder;

    move-result-object v0

    iput-object p0, v0, Lcom/onesignal/OneSignal$Builder;->mDisplayOption:Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    .line 2125
    return-void
.end method

.method static setLastSessionTime(J)V
    .locals 2
    .param p0, "time"    # J

    .line 2101
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v1, "OS_LAST_SESSION_TIME"

    invoke-static {v0, v1, p0, p1}, Lcom/onesignal/OneSignalPrefs;->saveLong(Ljava/lang/String;Ljava/lang/String;J)V

    .line 2103
    return-void
.end method

.method public static setLocationShared(Z)V
    .locals 3
    .param p0, "enable"    # Z

    .line 2188
    const-string v0, "setLocationShared()"

    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2189
    return-void

    .line 2191
    :cond_0
    sput-boolean p0, Lcom/onesignal/OneSignal;->shareLocation:Z

    .line 2192
    if-nez p0, :cond_1

    .line 2193
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->clearLocation()V

    .line 2194
    :cond_1
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shareLocation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/onesignal/OneSignal;->shareLocation:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 2195
    return-void
.end method

.method public static setLogLevel(II)V
    .locals 2
    .param p0, "inLogCatLevel"    # I
    .param p1, "inVisualLogLevel"    # I

    .line 929
    invoke-static {p0}, Lcom/onesignal/OneSignal;->getLogLevel(I)Lcom/onesignal/OneSignal$LOG_LEVEL;

    move-result-object v0

    invoke-static {p1}, Lcom/onesignal/OneSignal;->getLogLevel(I)Lcom/onesignal/OneSignal$LOG_LEVEL;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->setLogLevel(Lcom/onesignal/OneSignal$LOG_LEVEL;Lcom/onesignal/OneSignal$LOG_LEVEL;)V

    .line 930
    return-void
.end method

.method public static setLogLevel(Lcom/onesignal/OneSignal$LOG_LEVEL;Lcom/onesignal/OneSignal$LOG_LEVEL;)V
    .locals 0
    .param p0, "inLogCatLevel"    # Lcom/onesignal/OneSignal$LOG_LEVEL;
    .param p1, "inVisualLogLevel"    # Lcom/onesignal/OneSignal$LOG_LEVEL;

    .line 905
    sput-object p0, Lcom/onesignal/OneSignal;->logCatLevel:Lcom/onesignal/OneSignal$LOG_LEVEL;

    sput-object p1, Lcom/onesignal/OneSignal;->visualLogLevel:Lcom/onesignal/OneSignal$LOG_LEVEL;

    .line 906
    return-void
.end method

.method public static setRequiresUserPrivacyConsent(Z)V
    .locals 2
    .param p0, "required"    # Z

    .line 886
    sget-boolean v0, Lcom/onesignal/OneSignal;->requiresUserPrivacyConsent:Z

    if-eqz v0, :cond_0

    if-nez p0, :cond_0

    .line 887
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "Cannot change requiresUserPrivacyConsent() from TRUE to FALSE"

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 888
    return-void

    .line 891
    :cond_0
    sput-boolean p0, Lcom/onesignal/OneSignal;->requiresUserPrivacyConsent:Z

    .line 892
    return-void
.end method

.method public static setSubscription(Z)V
    .locals 3
    .param p0, "enable"    # Z

    .line 2164
    const-string v0, "setSubscription()"

    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2165
    return-void

    .line 2167
    :cond_0
    new-instance v0, Lcom/onesignal/OneSignal$19;

    invoke-direct {v0, p0}, Lcom/onesignal/OneSignal$19;-><init>(Z)V

    .line 2175
    .local v0, "runSetSubscription":Ljava/lang/Runnable;
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/onesignal/OneSignal;->shouldRunTaskThroughQueue()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 2182
    :cond_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2183
    return-void

    .line 2176
    :cond_2
    :goto_0
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "OneSignal.init has not been called. Moving subscription action to a waiting task queue."

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 2178
    new-instance v1, Lcom/onesignal/OneSignal$PendingTaskRunnable;

    invoke-direct {v1, v0}, Lcom/onesignal/OneSignal$PendingTaskRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v1}, Lcom/onesignal/OneSignal;->addTaskToQueue(Lcom/onesignal/OneSignal$PendingTaskRunnable;)V

    .line 2179
    return-void
.end method

.method static shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z
    .locals 3
    .param p0, "methodName"    # Ljava/lang/String;

    .line 895
    sget-boolean v0, Lcom/onesignal/OneSignal;->requiresUserPrivacyConsent:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/onesignal/OneSignal;->userProvidedPrivacyConsent()Z

    move-result v0

    if-nez v0, :cond_1

    .line 896
    if-eqz p0, :cond_0

    .line 897
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was called before the user provided privacy consent. Your application is set to require the user\'s privacy consent before the OneSignal SDK can be initialized. Please ensure the user has provided consent before calling this method. You can check the latest OneSignal consent status by calling OneSignal.userProvidedPrivacyConsent()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 898
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 901
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static shouldRunTaskThroughQueue()Z
    .locals 3

    .line 705
    sget-boolean v0, Lcom/onesignal/OneSignal;->initDone:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/onesignal/OneSignal;->pendingTaskExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 706
    return v1

    .line 709
    :cond_0
    sget-boolean v0, Lcom/onesignal/OneSignal;->initDone:Z

    const/4 v2, 0x1

    if-nez v0, :cond_1

    sget-object v0, Lcom/onesignal/OneSignal;->pendingTaskExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    .line 710
    return v2

    .line 713
    :cond_1
    sget-object v0, Lcom/onesignal/OneSignal;->pendingTaskExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/onesignal/OneSignal;->pendingTaskExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_2

    .line 714
    return v2

    .line 716
    :cond_2
    return v1
.end method

.method public static startInit(Landroid/content/Context;)Lcom/onesignal/OneSignal$Builder;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 511
    new-instance v0, Lcom/onesignal/OneSignal$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/onesignal/OneSignal$Builder;-><init>(Landroid/content/Context;Lcom/onesignal/OneSignal$1;)V

    return-object v0
.end method

.method private static startLocationUpdate()V
    .locals 3

    .line 736
    new-instance v0, Lcom/onesignal/OneSignal$2;

    invoke-direct {v0}, Lcom/onesignal/OneSignal$2;-><init>()V

    .line 748
    .local v0, "locationHandler":Lcom/onesignal/LocationGMS$LocationHandler;
    sget-object v1, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    iget-boolean v1, v1, Lcom/onesignal/OneSignal$Builder;->mPromptLocation:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/onesignal/OneSignal;->promptedLocation:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 749
    .local v1, "doPrompt":Z
    :goto_0
    sget-object v2, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v2, v1, v0}, Lcom/onesignal/LocationGMS;->getLocation(Landroid/content/Context;ZLcom/onesignal/LocationGMS$LocationHandler;)V

    .line 750
    return-void
.end method

.method private static startPendingTasks()V
    .locals 2

    .line 672
    sget-object v0, Lcom/onesignal/OneSignal;->taskQueueWaitingForInit:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 673
    new-instance v0, Lcom/onesignal/OneSignal$1;

    invoke-direct {v0}, Lcom/onesignal/OneSignal$1;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/onesignal/OneSignal;->pendingTaskExecutor:Ljava/util/concurrent/ExecutorService;

    .line 682
    :goto_0
    sget-object v0, Lcom/onesignal/OneSignal;->taskQueueWaitingForInit:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 683
    sget-object v0, Lcom/onesignal/OneSignal;->pendingTaskExecutor:Ljava/util/concurrent/ExecutorService;

    sget-object v1, Lcom/onesignal/OneSignal;->taskQueueWaitingForInit:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 686
    :cond_0
    return-void
.end method

.method private static startRegistrationOrOnSession()V
    .locals 3

    .line 720
    sget-boolean v0, Lcom/onesignal/OneSignal;->waitingToPostStateSync:Z

    if-eqz v0, :cond_0

    .line 721
    return-void

    .line 723
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/onesignal/OneSignal;->waitingToPostStateSync:Z

    .line 725
    const/4 v1, 0x0

    sput-boolean v1, Lcom/onesignal/OneSignal;->registerForPushFired:Z

    .line 726
    sget-boolean v2, Lcom/onesignal/OneSignal;->sendAsSession:Z

    if-eqz v2, :cond_1

    .line 727
    sput-boolean v1, Lcom/onesignal/OneSignal;->locationFired:Z

    .line 729
    :cond_1
    invoke-static {}, Lcom/onesignal/OneSignal;->startLocationUpdate()V

    .line 730
    invoke-static {}, Lcom/onesignal/OneSignal;->makeAndroidParamsRequest()V

    .line 732
    sget-boolean v2, Lcom/onesignal/OneSignal;->promptedLocation:Z

    if-nez v2, :cond_3

    sget-object v2, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    iget-boolean v2, v2, Lcom/onesignal/OneSignal$Builder;->mPromptLocation:Z

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    nop

    :cond_3
    :goto_0
    sput-boolean v0, Lcom/onesignal/OneSignal;->promptedLocation:Z

    .line 733
    return-void
.end method

.method public static syncHashedEmail(Ljava/lang/String;)V
    .locals 3
    .param p0, "email"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1237
    const-string v0, "SyncHashedEmail()"

    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1238
    return-void

    .line 1241
    :cond_0
    invoke-static {p0}, Lcom/onesignal/OSUtils;->isValidEmail(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1242
    return-void

    .line 1244
    :cond_1
    new-instance v0, Lcom/onesignal/OneSignal$8;

    invoke-direct {v0, p0}, Lcom/onesignal/OneSignal$8;-><init>(Ljava/lang/String;)V

    .line 1253
    .local v0, "runSyncHashedEmail":Ljava/lang/Runnable;
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/onesignal/OneSignal;->shouldRunTaskThroughQueue()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 1259
    :cond_2
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1260
    return-void

    .line 1254
    :cond_3
    :goto_0
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "You should initialize OneSignal before calling syncHashedEmail! Moving this operation to a pending task queue."

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 1256
    new-instance v1, Lcom/onesignal/OneSignal$PendingTaskRunnable;

    invoke-direct {v1, v0}, Lcom/onesignal/OneSignal$PendingTaskRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v1}, Lcom/onesignal/OneSignal;->addTaskToQueue(Lcom/onesignal/OneSignal$PendingTaskRunnable;)V

    .line 1257
    return-void
.end method

.method static updateEmailIdDependents(Ljava/lang/String;)V
    .locals 2
    .param p0, "emailId"    # Ljava/lang/String;

    .line 2041
    invoke-static {p0}, Lcom/onesignal/OneSignal;->saveEmailId(Ljava/lang/String;)V

    .line 2042
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OneSignal;->getCurrentEmailSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSEmailSubscriptionState;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/OSEmailSubscriptionState;->setEmailUserId(Ljava/lang/String;)V

    .line 2044
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "parent_player_id"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 2045
    .local v0, "updateJson":Lorg/json/JSONObject;
    invoke-static {v0}, Lcom/onesignal/OneSignalStateSynchronizer;->updatePushState(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2048
    .end local v0    # "updateJson":Lorg/json/JSONObject;
    goto :goto_0

    .line 2046
    :catch_0
    move-exception v0

    .line 2047
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 2049
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method static updateOnSessionDependents()V
    .locals 2

    .line 2752
    const/4 v0, 0x0

    sput-boolean v0, Lcom/onesignal/OneSignal;->sendAsSession:Z

    .line 2753
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->setLastSessionTime(J)V

    .line 2754
    return-void
.end method

.method static updateUserIdDependents(Ljava/lang/String;)V
    .locals 3
    .param p0, "userId"    # Ljava/lang/String;

    .line 2024
    invoke-static {p0}, Lcom/onesignal/OneSignal;->saveUserId(Ljava/lang/String;)V

    .line 2025
    invoke-static {}, Lcom/onesignal/OneSignal;->fireIdsAvailableCallback()V

    .line 2026
    sget-object v0, Lcom/onesignal/OneSignal;->pendingGetTagsHandler:Lcom/onesignal/OneSignal$GetTagsHandler;

    invoke-static {v0}, Lcom/onesignal/OneSignal;->internalFireGetTagsCallback(Lcom/onesignal/OneSignal$GetTagsHandler;)V

    .line 2028
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OneSignal;->getCurrentSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSSubscriptionState;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/OSSubscriptionState;->setUserId(Ljava/lang/String;)V

    .line 2030
    sget-object v0, Lcom/onesignal/OneSignal;->iapUpdateJob:Lcom/onesignal/OneSignal$IAPUpdateJob;

    if-eqz v0, :cond_0

    .line 2031
    sget-object v0, Lcom/onesignal/OneSignal;->iapUpdateJob:Lcom/onesignal/OneSignal$IAPUpdateJob;

    iget-object v0, v0, Lcom/onesignal/OneSignal$IAPUpdateJob;->toReport:Lorg/json/JSONArray;

    sget-object v1, Lcom/onesignal/OneSignal;->iapUpdateJob:Lcom/onesignal/OneSignal$IAPUpdateJob;

    iget-boolean v1, v1, Lcom/onesignal/OneSignal$IAPUpdateJob;->newAsExisting:Z

    sget-object v2, Lcom/onesignal/OneSignal;->iapUpdateJob:Lcom/onesignal/OneSignal$IAPUpdateJob;

    iget-object v2, v2, Lcom/onesignal/OneSignal$IAPUpdateJob;->restResponseHandler:Lcom/onesignal/OneSignalRestClient$ResponseHandler;

    invoke-static {v0, v1, v2}, Lcom/onesignal/OneSignal;->sendPurchases(Lorg/json/JSONArray;ZLcom/onesignal/OneSignalRestClient$ResponseHandler;)V

    .line 2032
    const/4 v0, 0x0

    sput-object v0, Lcom/onesignal/OneSignal;->iapUpdateJob:Lcom/onesignal/OneSignal$IAPUpdateJob;

    .line 2035
    :cond_0
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->refreshEmailState()V

    .line 2037
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    sget-object v1, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    invoke-static {}, Lcom/onesignal/AdvertisingIdProviderGPS;->getLastValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/onesignal/OneSignalChromeTab;->setup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2038
    return-void
.end method

.method public static userProvidedPrivacyConsent()Z
    .locals 1

    .line 871
    invoke-static {}, Lcom/onesignal/OneSignal;->getSavedUserConsentStatus()Z

    move-result v0

    return v0
.end method
