.class final Lcom/onesignal/OneSignal$20;
.super Ljava/lang/Object;
.source "OneSignal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignal;->promptLocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2223
    new-instance v0, Lcom/onesignal/OneSignal$20$1;

    invoke-direct {v0, p0}, Lcom/onesignal/OneSignal$20$1;-><init>(Lcom/onesignal/OneSignal$20;)V

    .line 2239
    .local v0, "locationHandler":Lcom/onesignal/LocationGMS$LocationHandler;
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/onesignal/LocationGMS;->getLocation(Landroid/content/Context;ZLcom/onesignal/LocationGMS$LocationHandler;)V

    .line 2240
    invoke-static {v2}, Lcom/onesignal/OneSignal;->access$3002(Z)Z

    .line 2241
    return-void
.end method
