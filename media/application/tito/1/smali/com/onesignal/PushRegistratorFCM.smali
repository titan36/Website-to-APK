.class Lcom/onesignal/PushRegistratorFCM;
.super Lcom/onesignal/PushRegistratorAbstractGoogle;
.source "PushRegistratorFCM.java"


# static fields
.field private static final FCM_APP_NAME:Ljava/lang/String; = "ONESIGNAL_SDK_FCM_APP_NAME"


# instance fields
.field private firebaseApp:Lcom/google/firebase/FirebaseApp;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/onesignal/PushRegistratorAbstractGoogle;-><init>()V

    return-void
.end method

.method private initFirebaseApp(Ljava/lang/String;)V
    .locals 3
    .param p1, "senderId"    # Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lcom/onesignal/PushRegistratorFCM;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    if-eqz v0, :cond_0

    .line 57
    return-void

    .line 59
    :cond_0
    new-instance v0, Lcom/google/firebase/FirebaseOptions$Builder;

    invoke-direct {v0}, Lcom/google/firebase/FirebaseOptions$Builder;-><init>()V

    .line 61
    invoke-virtual {v0, p1}, Lcom/google/firebase/FirebaseOptions$Builder;->setGcmSenderId(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    move-result-object v0

    const-string v1, "OMIT_ID"

    .line 62
    invoke-virtual {v0, v1}, Lcom/google/firebase/FirebaseOptions$Builder;->setApplicationId(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    move-result-object v0

    const-string v1, "OMIT_KEY"

    .line 63
    invoke-virtual {v0, v1}, Lcom/google/firebase/FirebaseOptions$Builder;->setApiKey(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lcom/google/firebase/FirebaseOptions$Builder;->build()Lcom/google/firebase/FirebaseOptions;

    move-result-object v0

    .line 65
    .local v0, "firebaseOptions":Lcom/google/firebase/FirebaseOptions;
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    const-string v2, "ONESIGNAL_SDK_FCM_APP_NAME"

    invoke-static {v1, v0, v2}, Lcom/google/firebase/FirebaseApp;->initializeApp(Landroid/content/Context;Lcom/google/firebase/FirebaseOptions;Ljava/lang/String;)Lcom/google/firebase/FirebaseApp;

    move-result-object v1

    iput-object v1, p0, Lcom/onesignal/PushRegistratorFCM;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 66
    return-void
.end method


# virtual methods
.method getProviderName()Ljava/lang/String;
    .locals 1

    .line 45
    const-string v0, "FCM"

    return-object v0
.end method

.method getToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "senderId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1}, Lcom/onesignal/PushRegistratorFCM;->initFirebaseApp(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/onesignal/PushRegistratorFCM;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    invoke-static {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    .line 52
    .local v0, "instanceId":Lcom/google/firebase/iid/FirebaseInstanceId;
    const-string v1, "FCM"

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->getToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
