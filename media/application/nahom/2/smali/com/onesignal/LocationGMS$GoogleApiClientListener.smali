.class Lcom/onesignal/LocationGMS$GoogleApiClientListener;
.super Ljava/lang/Object;
.source "LocationGMS.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/LocationGMS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GoogleApiClientListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/onesignal/LocationGMS$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/onesignal/LocationGMS$1;

    .line 308
    invoke-direct {p0}, Lcom/onesignal/LocationGMS$GoogleApiClientListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 311
    sget-object v0, Lcom/onesignal/LocationGMS;->syncLock:Ljava/lang/Object;

    monitor-enter v0

    .line 312
    const/4 v1, 0x0

    :try_start_0
    sput-boolean v1, Lcom/onesignal/PermissionsActivity;->answered:Z

    .line 314
    invoke-static {}, Lcom/onesignal/LocationGMS;->access$300()Landroid/location/Location;

    move-result-object v1

    if-nez v1, :cond_0

    .line 315
    invoke-static {}, Lcom/onesignal/LocationGMS;->access$400()Lcom/onesignal/GoogleApiClientCompatProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onesignal/GoogleApiClientCompatProxy;->realInstance()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-static {v1}, Lcom/onesignal/LocationGMS$FusedLocationApiWrapper;->getLastLocation(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/location/Location;

    move-result-object v1

    invoke-static {v1}, Lcom/onesignal/LocationGMS;->access$302(Landroid/location/Location;)Landroid/location/Location;

    .line 316
    invoke-static {}, Lcom/onesignal/LocationGMS;->access$300()Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 317
    invoke-static {}, Lcom/onesignal/LocationGMS;->access$300()Landroid/location/Location;

    move-result-object v1

    invoke-static {v1}, Lcom/onesignal/LocationGMS;->access$500(Landroid/location/Location;)V

    .line 320
    :cond_0
    new-instance v1, Lcom/onesignal/LocationGMS$LocationUpdateListener;

    invoke-static {}, Lcom/onesignal/LocationGMS;->access$400()Lcom/onesignal/GoogleApiClientCompatProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onesignal/GoogleApiClientCompatProxy;->realInstance()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/onesignal/LocationGMS$LocationUpdateListener;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    sput-object v1, Lcom/onesignal/LocationGMS;->locationUpdateListener:Lcom/onesignal/LocationGMS$LocationUpdateListener;

    .line 321
    monitor-exit v0

    .line 322
    return-void

    .line 321
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0
    .param p1, "connectionResult"    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 331
    invoke-static {}, Lcom/onesignal/LocationGMS;->fireFailedComplete()V

    .line 332
    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 0
    .param p1, "i"    # I

    .line 326
    invoke-static {}, Lcom/onesignal/LocationGMS;->fireFailedComplete()V

    .line 327
    return-void
.end method
