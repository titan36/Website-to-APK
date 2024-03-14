.class final Lcom/onesignal/OneSignal$3;
.super Ljava/lang/Object;
.source "OneSignal.java"

# interfaces
.implements Lcom/onesignal/PushRegistrator$RegisteredHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignal;->registerForPushToken()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 768
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Ljava/lang/String;I)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "status"    # I

    .line 771
    const/4 v0, 0x1

    if-ge p2, v0, :cond_1

    .line 776
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getRegistrationId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 777
    invoke-static {}, Lcom/onesignal/OneSignal;->access$800()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 778
    invoke-static {}, Lcom/onesignal/OneSignal;->access$800()I

    move-result v1

    invoke-static {v1}, Lcom/onesignal/OneSignal;->access$900(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 779
    :cond_0
    invoke-static {p2}, Lcom/onesignal/OneSignal;->access$802(I)I

    goto :goto_0

    .line 781
    :cond_1
    invoke-static {}, Lcom/onesignal/OneSignal;->access$800()I

    move-result v1

    invoke-static {v1}, Lcom/onesignal/OneSignal;->access$900(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 782
    invoke-static {p2}, Lcom/onesignal/OneSignal;->access$802(I)I

    .line 784
    :cond_2
    :goto_0
    invoke-static {p1}, Lcom/onesignal/OneSignal;->access$1002(Ljava/lang/String;)Ljava/lang/String;

    .line 785
    invoke-static {v0}, Lcom/onesignal/OneSignal;->access$1102(Z)Z

    .line 786
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OneSignal;->access$1200(Landroid/content/Context;)Lcom/onesignal/OSSubscriptionState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onesignal/OSSubscriptionState;->setPushToken(Ljava/lang/String;)V

    .line 787
    invoke-static {}, Lcom/onesignal/OneSignal;->access$700()V

    .line 788
    return-void
.end method
