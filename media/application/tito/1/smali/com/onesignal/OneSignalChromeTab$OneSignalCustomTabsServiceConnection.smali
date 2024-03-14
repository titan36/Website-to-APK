.class Lcom/onesignal/OneSignalChromeTab$OneSignalCustomTabsServiceConnection;
.super Landroid/support/customtabs/CustomTabsServiceConnection;
.source "OneSignalChromeTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/OneSignalChromeTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OneSignalCustomTabsServiceConnection"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mParams:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # Ljava/lang/String;

    .line 75
    invoke-direct {p0}, Landroid/support/customtabs/CustomTabsServiceConnection;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/onesignal/OneSignalChromeTab$OneSignalCustomTabsServiceConnection;->mContext:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Lcom/onesignal/OneSignalChromeTab$OneSignalCustomTabsServiceConnection;->mParams:Ljava/lang/String;

    .line 78
    return-void
.end method


# virtual methods
.method public onCustomTabsServiceConnected(Landroid/content/ComponentName;Landroid/support/customtabs/CustomTabsClient;)V
    .locals 3
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "customTabsClient"    # Landroid/support/customtabs/CustomTabsClient;

    .line 82
    if-nez p2, :cond_0

    .line 83
    return-void

    .line 85
    :cond_0
    const-wide/16 v0, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/support/customtabs/CustomTabsClient;->warmup(J)Z

    .line 87
    new-instance v0, Lcom/onesignal/OneSignalChromeTab$OneSignalCustomTabsServiceConnection$1;

    invoke-direct {v0, p0}, Lcom/onesignal/OneSignalChromeTab$OneSignalCustomTabsServiceConnection$1;-><init>(Lcom/onesignal/OneSignalChromeTab$OneSignalCustomTabsServiceConnection;)V

    invoke-virtual {p2, v0}, Landroid/support/customtabs/CustomTabsClient;->newSession(Landroid/support/customtabs/CustomTabsCallback;)Landroid/support/customtabs/CustomTabsSession;

    move-result-object v0

    .line 97
    .local v0, "session":Landroid/support/customtabs/CustomTabsSession;
    if-nez v0, :cond_1

    .line 98
    return-void

    .line 100
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://onesignal.com/android_frame.html"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onesignal/OneSignalChromeTab$OneSignalCustomTabsServiceConnection;->mParams:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 101
    .local v1, "uri":Landroid/net/Uri;
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/support/customtabs/CustomTabsSession;->mayLaunchUrl(Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z

    .line 111
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 115
    return-void
.end method
