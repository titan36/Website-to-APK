.class final Lcom/onesignal/OneSignal$2;
.super Ljava/lang/Object;
.source "OneSignal.java"

# interfaces
.implements Lcom/onesignal/LocationGMS$LocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignal;->startLocationUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 736
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Lcom/onesignal/LocationGMS$LocationPoint;)V
    .locals 1
    .param p1, "point"    # Lcom/onesignal/LocationGMS$LocationPoint;

    .line 743
    invoke-static {p1}, Lcom/onesignal/OneSignal;->access$502(Lcom/onesignal/LocationGMS$LocationPoint;)Lcom/onesignal/LocationGMS$LocationPoint;

    .line 744
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/onesignal/OneSignal;->access$602(Z)Z

    .line 745
    invoke-static {}, Lcom/onesignal/OneSignal;->access$700()V

    .line 746
    return-void
.end method

.method public getType()Lcom/onesignal/LocationGMS$CALLBACK_TYPE;
    .locals 1

    .line 739
    sget-object v0, Lcom/onesignal/LocationGMS$CALLBACK_TYPE;->STARTUP:Lcom/onesignal/LocationGMS$CALLBACK_TYPE;

    return-object v0
.end method
