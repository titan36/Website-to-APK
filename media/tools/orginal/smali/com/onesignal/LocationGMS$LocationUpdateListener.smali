.class Lcom/onesignal/LocationGMS$LocationUpdateListener;
.super Ljava/lang/Object;
.source "LocationGMS.java"

# interfaces
.implements Lcom/google/android/gms/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/LocationGMS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LocationUpdateListener"
.end annotation


# instance fields
.field private mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 7
    .param p1, "googleApiClient"    # Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 342
    iput-object p1, p0, Lcom/onesignal/LocationGMS$LocationUpdateListener;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 344
    const-wide/32 v0, 0x8b290

    .line 345
    .local v0, "updateInterval":J
    invoke-static {}, Lcom/onesignal/OneSignal;->isForeground()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 346
    const-wide/32 v0, 0x41eb0

    .line 348
    :cond_0
    invoke-static {}, Lcom/google/android/gms/location/LocationRequest;->create()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v2

    .line 349
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/location/LocationRequest;->setFastestInterval(J)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v2

    .line 350
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/location/LocationRequest;->setInterval(J)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v2

    long-to-double v3, v0

    const-wide/high16 v5, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v3, v5

    double-to-long v3, v3

    .line 351
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/location/LocationRequest;->setMaxWaitTime(J)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v2

    const/16 v3, 0x66

    .line 352
    invoke-virtual {v2, v3}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v2

    .line 354
    .local v2, "locationRequest":Lcom/google/android/gms/location/LocationRequest;
    iget-object v3, p0, Lcom/onesignal/LocationGMS$LocationUpdateListener;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-static {v3, v2, p0}, Lcom/onesignal/LocationGMS$FusedLocationApiWrapper;->requestLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;)V

    .line 355
    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2
    .param p1, "location"    # Landroid/location/Location;

    .line 359
    invoke-static {p1}, Lcom/onesignal/LocationGMS;->access$302(Landroid/location/Location;)Landroid/location/Location;

    .line 360
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "Location Change Detected"

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 361
    return-void
.end method
