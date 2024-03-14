.class Lcom/onesignal/TrackAmazonPurchase;
.super Ljava/lang/Object;
.source "TrackAmazonPurchase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/TrackAmazonPurchase$OSPurchasingListener;
    }
.end annotation


# instance fields
.field private canTrack:Z

.field private context:Landroid/content/Context;

.field private listenerHandlerField:Ljava/lang/reflect/Field;

.field private listenerHandlerObject:Ljava/lang/Object;

.field private osPurchasingListener:Lcom/onesignal/TrackAmazonPurchase$OSPurchasingListener;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onesignal/TrackAmazonPurchase;->canTrack:Z

    .line 61
    iput-object p1, p0, Lcom/onesignal/TrackAmazonPurchase;->context:Landroid/content/Context;

    .line 65
    :try_start_0
    const-string v1, "com.amazon.device.iap.internal.d"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 66
    .local v1, "listenerHandlerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "d"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/TrackAmazonPurchase;->listenerHandlerObject:Ljava/lang/Object;

    .line 67
    const-string v0, "f"

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/TrackAmazonPurchase;->listenerHandlerField:Ljava/lang/reflect/Field;

    .line 68
    iget-object v0, p0, Lcom/onesignal/TrackAmazonPurchase;->listenerHandlerField:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 70
    new-instance v0, Lcom/onesignal/TrackAmazonPurchase$OSPurchasingListener;

    invoke-direct {v0, p0, v3}, Lcom/onesignal/TrackAmazonPurchase$OSPurchasingListener;-><init>(Lcom/onesignal/TrackAmazonPurchase;Lcom/onesignal/TrackAmazonPurchase$1;)V

    iput-object v0, p0, Lcom/onesignal/TrackAmazonPurchase;->osPurchasingListener:Lcom/onesignal/TrackAmazonPurchase$OSPurchasingListener;

    .line 71
    iget-object v0, p0, Lcom/onesignal/TrackAmazonPurchase;->osPurchasingListener:Lcom/onesignal/TrackAmazonPurchase$OSPurchasingListener;

    iget-object v3, p0, Lcom/onesignal/TrackAmazonPurchase;->listenerHandlerField:Ljava/lang/reflect/Field;

    iget-object v4, p0, Lcom/onesignal/TrackAmazonPurchase;->listenerHandlerObject:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/device/iap/PurchasingListener;

    iput-object v3, v0, Lcom/onesignal/TrackAmazonPurchase$OSPurchasingListener;->orgPurchasingListener:Lcom/amazon/device/iap/PurchasingListener;

    .line 73
    iput-boolean v2, p0, Lcom/onesignal/TrackAmazonPurchase;->canTrack:Z

    .line 74
    invoke-direct {p0}, Lcom/onesignal/TrackAmazonPurchase;->setListener()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .end local v1    # "listenerHandlerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "Error adding Amazon IAP listener."

    invoke-static {v1, v2, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method private setListener()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/onesignal/TrackAmazonPurchase;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/onesignal/TrackAmazonPurchase;->osPurchasingListener:Lcom/onesignal/TrackAmazonPurchase$OSPurchasingListener;

    invoke-static {v0, v1}, Lcom/amazon/device/iap/PurchasingService;->registerListener(Landroid/content/Context;Lcom/amazon/device/iap/PurchasingListener;)V

    .line 82
    return-void
.end method


# virtual methods
.method checkListener()V
    .locals 2

    .line 85
    iget-boolean v0, p0, Lcom/onesignal/TrackAmazonPurchase;->canTrack:Z

    if-nez v0, :cond_0

    .line 86
    return-void

    .line 88
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/onesignal/TrackAmazonPurchase;->listenerHandlerField:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/onesignal/TrackAmazonPurchase;->listenerHandlerObject:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/iap/PurchasingListener;

    .line 89
    .local v0, "curPurchasingListener":Lcom/amazon/device/iap/PurchasingListener;
    iget-object v1, p0, Lcom/onesignal/TrackAmazonPurchase;->osPurchasingListener:Lcom/onesignal/TrackAmazonPurchase$OSPurchasingListener;

    if-eq v0, v1, :cond_1

    .line 90
    iget-object v1, p0, Lcom/onesignal/TrackAmazonPurchase;->osPurchasingListener:Lcom/onesignal/TrackAmazonPurchase$OSPurchasingListener;

    iput-object v0, v1, Lcom/onesignal/TrackAmazonPurchase$OSPurchasingListener;->orgPurchasingListener:Lcom/amazon/device/iap/PurchasingListener;

    .line 91
    invoke-direct {p0}, Lcom/onesignal/TrackAmazonPurchase;->setListener()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .end local v0    # "curPurchasingListener":Lcom/amazon/device/iap/PurchasingListener;
    :cond_1
    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 95
    :goto_0
    return-void
.end method
