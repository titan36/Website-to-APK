.class Lcom/onesignal/GenerateNotification;
.super Ljava/lang/Object;
.source "GenerateNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;
    }
.end annotation


# static fields
.field private static contextResources:Landroid/content/res/Resources;

.field private static currentContext:Landroid/content/Context;

.field private static notificationOpenedClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static openerIsBroadcast:Z

.field private static packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    const/4 v0, 0x0

    sput-object v0, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    .line 72
    sput-object v0, Lcom/onesignal/GenerateNotification;->packageName:Ljava/lang/String;

    .line 73
    sput-object v0, Lcom/onesignal/GenerateNotification;->contextResources:Landroid/content/res/Resources;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/json/JSONObject;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lorg/json/JSONObject;

    .line 70
    invoke-static {p0}, Lcom/onesignal/GenerateNotification;->getTitle(Lorg/json/JSONObject;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Context;Lorg/json/JSONObject;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Ljava/util/List;

    .line 70
    invoke-static {p0, p1, p2, p3}, Lcom/onesignal/GenerateNotification;->addAlertButtons(Landroid/content/Context;Lorg/json/JSONObject;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(I)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # I

    .line 70
    invoke-static {p0}, Lcom/onesignal/GenerateNotification;->getNewBaseIntent(I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private static addAlertButtons(Landroid/content/Context;Lorg/json/JSONObject;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gcmBundle"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/json/JSONObject;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 974
    .local p2, "buttonsLabels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "buttonsIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/onesignal/GenerateNotification;->addCustomAlertButtons(Landroid/content/Context;Lorg/json/JSONObject;Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 977
    goto :goto_0

    .line 975
    :catch_0
    move-exception v0

    .line 976
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "Failed to parse JSON for custom buttons for alert dialog."

    invoke-static {v1, v2, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 979
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 980
    :cond_0
    const-string v0, "onesignal_in_app_alert_ok_button_text"

    const-string v1, "Ok"

    invoke-static {p0, v0, v1}, Lcom/onesignal/OSUtils;->getResourceString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 981
    const-string v0, "__DEFAULT__"

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 983
    :cond_1
    return-void
.end method

.method private static addBackgroundImage(Lorg/json/JSONObject;Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 13
    .param p0, "gcmBundle"    # Lorg/json/JSONObject;
    .param p1, "notifBuilder"    # Landroid/support/v4/app/NotificationCompat$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 697
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 698
    return-void

    .line 700
    :cond_0
    const/4 v0, 0x0

    .line 701
    .local v0, "bg_image":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 702
    .local v1, "jsonBgImage":Lorg/json/JSONObject;
    const-string v2, "bg_img"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 704
    .local v2, "jsonStrBgImage":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 705
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v1, v4

    .line 706
    const-string v4, "img"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/onesignal/GenerateNotification;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 709
    :cond_1
    if-nez v0, :cond_2

    .line 710
    const-string v4, "onesignal_bgimage_default_image"

    invoke-static {v4}, Lcom/onesignal/GenerateNotification;->getBitmapFromAssetsOrResourceName(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 712
    :cond_2
    if-eqz v0, :cond_6

    .line 713
    new-instance v4, Landroid/widget/RemoteViews;

    sget-object v5, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/onesignal/R$layout;->onesignal_bgimage_notif_layout:I

    invoke-direct {v4, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 714
    .local v4, "customView":Landroid/widget/RemoteViews;
    sget v5, Lcom/onesignal/R$id;->os_bgimage_notif_title:I

    invoke-static {p0}, Lcom/onesignal/GenerateNotification;->getTitle(Lorg/json/JSONObject;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 715
    sget v5, Lcom/onesignal/R$id;->os_bgimage_notif_body:I

    const-string v6, "alert"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 716
    sget v5, Lcom/onesignal/R$id;->os_bgimage_notif_title:I

    const-string v6, "tc"

    const-string v7, "onesignal_bgimage_notif_title_color"

    invoke-static {v4, v1, v5, v6, v7}, Lcom/onesignal/GenerateNotification;->setTextColor(Landroid/widget/RemoteViews;Lorg/json/JSONObject;ILjava/lang/String;Ljava/lang/String;)V

    .line 717
    sget v5, Lcom/onesignal/R$id;->os_bgimage_notif_body:I

    const-string v6, "bc"

    const-string v7, "onesignal_bgimage_notif_body_color"

    invoke-static {v4, v1, v5, v6, v7}, Lcom/onesignal/GenerateNotification;->setTextColor(Landroid/widget/RemoteViews;Lorg/json/JSONObject;ILjava/lang/String;Ljava/lang/String;)V

    .line 719
    const/4 v5, 0x0

    .line 720
    .local v5, "alignSetting":Ljava/lang/String;
    if-eqz v1, :cond_3

    const-string v6, "img_align"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 721
    const-string v6, "img_align"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 723
    :cond_3
    sget-object v6, Lcom/onesignal/GenerateNotification;->contextResources:Landroid/content/res/Resources;

    const-string v7, "onesignal_bgimage_notif_image_align"

    const-string v8, "string"

    sget-object v9, Lcom/onesignal/GenerateNotification;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 724
    .local v6, "iAlignSetting":I
    if-eqz v6, :cond_4

    .line 725
    sget-object v7, Lcom/onesignal/GenerateNotification;->contextResources:Landroid/content/res/Resources;

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 728
    .end local v6    # "iAlignSetting":I
    :cond_4
    :goto_0
    const-string v6, "right"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 732
    sget v8, Lcom/onesignal/R$id;->os_bgimage_notif_bgimage_align_layout:I

    const/16 v9, -0x1388

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v4

    invoke-virtual/range {v7 .. v12}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 733
    sget v6, Lcom/onesignal/R$id;->os_bgimage_notif_bgimage_right_aligned:I

    invoke-virtual {v4, v6, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 734
    sget v6, Lcom/onesignal/R$id;->os_bgimage_notif_bgimage_right_aligned:I

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 735
    sget v6, Lcom/onesignal/R$id;->os_bgimage_notif_bgimage:I

    const/4 v7, 0x2

    invoke-virtual {v4, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_1

    .line 738
    :cond_5
    sget v6, Lcom/onesignal/R$id;->os_bgimage_notif_bgimage:I

    invoke-virtual {v4, v6, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 740
    :goto_1
    invoke-virtual {p1, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 744
    invoke-virtual {p1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 746
    .end local v4    # "customView":Landroid/widget/RemoteViews;
    .end local v5    # "alignSetting":Ljava/lang/String;
    :cond_6
    return-void
.end method

.method private static addCustomAlertButtons(Landroid/content/Context;Lorg/json/JSONObject;Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gcmBundle"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/json/JSONObject;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 986
    .local p2, "buttonsLabels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "buttonsIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lorg/json/JSONObject;

    const-string v1, "custom"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 988
    .local v0, "customJson":Lorg/json/JSONObject;
    const-string v1, "a"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 989
    return-void

    .line 991
    :cond_0
    const-string v1, "a"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 992
    .local v1, "additionalDataJSON":Lorg/json/JSONObject;
    const-string v2, "actionButtons"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 993
    return-void

    .line 995
    :cond_1
    const-string v2, "actionButtons"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 997
    .local v2, "buttons":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .line 997
    .local v3, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 998
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 1000
    .local v4, "button":Lorg/json/JSONObject;
    const-string v5, "text"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1001
    const-string v5, "id"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 997
    .end local v4    # "button":Lorg/json/JSONObject;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1003
    .end local v3    # "i":I
    :cond_2
    return-void
.end method

.method private static addNotificationActionButtons(Lorg/json/JSONObject;Landroid/support/v4/app/NotificationCompat$Builder;ILjava/lang/String;)V
    .locals 10
    .param p0, "gcmBundle"    # Lorg/json/JSONObject;
    .param p1, "mBuilder"    # Landroid/support/v4/app/NotificationCompat$Builder;
    .param p2, "notificationId"    # I
    .param p3, "groupSummary"    # Ljava/lang/String;

    .line 934
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    const-string v1, "custom"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 936
    .local v0, "customJson":Lorg/json/JSONObject;
    const-string v1, "a"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 937
    return-void

    .line 939
    :cond_0
    const-string v1, "a"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 940
    .local v1, "additionalDataJSON":Lorg/json/JSONObject;
    const-string v2, "actionButtons"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 941
    return-void

    .line 943
    :cond_1
    const-string v2, "actionButtons"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 945
    .local v2, "buttons":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .line 945
    .local v3, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 946
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 947
    .local v4, "button":Lorg/json/JSONObject;
    new-instance v5, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 949
    .local v5, "bundle":Lorg/json/JSONObject;
    invoke-static {p2}, Lcom/onesignal/GenerateNotification;->getNewBaseIntent(I)Landroid/content/Intent;

    move-result-object v6

    .line 950
    .local v6, "buttonIntent":Landroid/content/Intent;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 951
    const-string v7, "action_button"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 952
    const-string v7, "actionSelected"

    const-string v8, "id"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 953
    const-string v7, "onesignal_data"

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 954
    if-eqz p3, :cond_2

    .line 955
    const-string v7, "summary"

    invoke-virtual {v6, v7, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 956
    :cond_2
    const-string v7, "grp"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 957
    const-string v7, "grp"

    const-string v8, "grp"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 959
    :cond_3
    :goto_1
    invoke-static {p2, v6}, Lcom/onesignal/GenerateNotification;->getNewActionPendingIntent(ILandroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v7

    .line 961
    .local v7, "buttonPIntent":Landroid/app/PendingIntent;
    const/4 v8, 0x0

    .line 962
    .local v8, "buttonIcon":I
    const-string v9, "icon"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 963
    const-string v9, "icon"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/onesignal/GenerateNotification;->getResourceIcon(Ljava/lang/String;)I

    move-result v9

    move v8, v9

    .line 965
    :cond_4
    const-string v9, "text"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v8, v9, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 945
    .end local v4    # "button":Lorg/json/JSONObject;
    .end local v5    # "bundle":Lorg/json/JSONObject;
    .end local v6    # "buttonIntent":Landroid/content/Intent;
    .end local v7    # "buttonPIntent":Landroid/app/PendingIntent;
    .end local v8    # "buttonIcon":I
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 969
    .end local v0    # "customJson":Lorg/json/JSONObject;
    .end local v1    # "additionalDataJSON":Lorg/json/JSONObject;
    .end local v2    # "buttons":Lorg/json/JSONArray;
    .end local v3    # "i":I
    :cond_5
    goto :goto_2

    .line 967
    :catch_0
    move-exception v0

    .line 968
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 970
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_2
    return-void
.end method

.method private static addXiaomiSettings(Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;Landroid/app/Notification;)V
    .locals 5
    .param p0, "oneSignalNotificationBuilder"    # Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;
    .param p1, "notification"    # Landroid/app/Notification;

    .line 440
    iget-boolean v0, p0, Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;->hasLargeIcon:Z

    if-nez v0, :cond_0

    .line 441
    return-void

    .line 444
    :cond_0
    :try_start_0
    const-string v0, "android.app.MiuiNotification"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 445
    .local v0, "miuiNotification":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "customizedIcon"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 446
    .local v1, "customizedIconField":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 447
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 449
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "extraNotification"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 450
    .local v3, "extraNotificationField":Ljava/lang/reflect/Field;
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 451
    invoke-virtual {v3, p1, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 452
    .end local v0    # "miuiNotification":Ljava/lang/Object;
    .end local v1    # "customizedIconField":Ljava/lang/reflect/Field;
    .end local v3    # "extraNotificationField":Ljava/lang/reflect/Field;
    goto :goto_0

    :catch_0
    move-exception v0

    .line 453
    :goto_0
    return-void
.end method

.method private static applyNotificationExtender(Lcom/onesignal/NotificationGenerationJob;Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 7
    .param p0, "notifJob"    # Lcom/onesignal/NotificationGenerationJob;
    .param p1, "notifBuilder"    # Landroid/support/v4/app/NotificationCompat$Builder;

    .line 379
    iget-object v0, p0, Lcom/onesignal/NotificationGenerationJob;->overrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/onesignal/NotificationGenerationJob;->overrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    iget-object v0, v0, Lcom/onesignal/NotificationExtenderService$OverrideSettings;->extender:Landroid/support/v4/app/NotificationCompat$Extender;

    if-nez v0, :cond_0

    goto :goto_1

    .line 383
    :cond_0
    :try_start_0
    const-class v0, Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v1, "mNotification"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 384
    .local v0, "mNotificationField":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 385
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Notification;

    .line 387
    .local v2, "mNotification":Landroid/app/Notification;
    iget v3, v2, Landroid/app/Notification;->flags:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/onesignal/NotificationGenerationJob;->orgFlags:Ljava/lang/Integer;

    .line 388
    iget-object v3, v2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iput-object v3, p0, Lcom/onesignal/NotificationGenerationJob;->orgSound:Landroid/net/Uri;

    .line 389
    iget-object v3, p0, Lcom/onesignal/NotificationGenerationJob;->overrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    iget-object v3, v3, Lcom/onesignal/NotificationExtenderService$OverrideSettings;->extender:Landroid/support/v4/app/NotificationCompat$Extender;

    invoke-virtual {p1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->extend(Landroid/support/v4/app/NotificationCompat$Extender;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 391
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Notification;

    move-object v2, v3

    .line 393
    const-class v3, Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v4, "mContentText"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 394
    .local v3, "mContentTextField":Ljava/lang/reflect/Field;
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 395
    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .line 397
    .local v4, "mContentText":Ljava/lang/CharSequence;
    const-class v5, Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v6, "mContentTitle"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 398
    .local v5, "mContentTitleField":Ljava/lang/reflect/Field;
    invoke-virtual {v5, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 399
    invoke-virtual {v5, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 401
    .local v1, "mContentTitle":Ljava/lang/CharSequence;
    iput-object v4, p0, Lcom/onesignal/NotificationGenerationJob;->overriddenBodyFromExtender:Ljava/lang/CharSequence;

    .line 402
    iput-object v1, p0, Lcom/onesignal/NotificationGenerationJob;->overriddenTitleFromExtender:Ljava/lang/CharSequence;

    .line 403
    iget-boolean v6, p0, Lcom/onesignal/NotificationGenerationJob;->restoring:Z

    if-nez v6, :cond_1

    .line 404
    iget v6, v2, Landroid/app/Notification;->flags:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, p0, Lcom/onesignal/NotificationGenerationJob;->overriddenFlags:Ljava/lang/Integer;

    .line 405
    iget-object v6, v2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iput-object v6, p0, Lcom/onesignal/NotificationGenerationJob;->overriddenSound:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    .end local v0    # "mNotificationField":Ljava/lang/reflect/Field;
    .end local v1    # "mContentTitle":Ljava/lang/CharSequence;
    .end local v2    # "mNotification":Landroid/app/Notification;
    .end local v3    # "mContentTextField":Ljava/lang/reflect/Field;
    .end local v4    # "mContentText":Ljava/lang/CharSequence;
    .end local v5    # "mContentTitleField":Ljava/lang/reflect/Field;
    :cond_1
    goto :goto_0

    .line 407
    :catch_0
    move-exception v0

    .line 408
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 411
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 380
    :cond_2
    :goto_1
    return-void
.end method

.method private static createBaseSummaryIntent(ILorg/json/JSONObject;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "summaryNotificationId"    # I
    .param p1, "gcmBundle"    # Lorg/json/JSONObject;
    .param p2, "group"    # Ljava/lang/String;

    .line 663
    invoke-static {p0}, Lcom/onesignal/GenerateNotification;->getNewBaseIntent(I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "onesignal_data"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "summary"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private static createSingleNotificationBeforeSummaryBuilder(Lcom/onesignal/NotificationGenerationJob;Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/app/Notification;
    .locals 3
    .param p0, "notifJob"    # Lcom/onesignal/NotificationGenerationJob;
    .param p1, "notifBuilder"    # Landroid/support/v4/app/NotificationCompat$Builder;

    .line 418
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-le v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/onesignal/NotificationGenerationJob;->restoring:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 421
    .local v0, "singleNotifWorkArounds":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 422
    iget-object v1, p0, Lcom/onesignal/NotificationGenerationJob;->overriddenSound:Landroid/net/Uri;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/onesignal/NotificationGenerationJob;->overriddenSound:Landroid/net/Uri;

    iget-object v2, p0, Lcom/onesignal/NotificationGenerationJob;->orgSound:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 423
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 426
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 428
    .local v1, "notification":Landroid/app/Notification;
    if-eqz v0, :cond_2

    .line 429
    iget-object v2, p0, Lcom/onesignal/NotificationGenerationJob;->overriddenSound:Landroid/net/Uri;

    invoke-virtual {p1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 431
    :cond_2
    return-object v1
.end method

.method private static createSummaryIdDatabaseEntry(Lcom/onesignal/OneSignalDbHelper;Ljava/lang/String;I)V
    .locals 5
    .param p0, "dbHelper"    # Lcom/onesignal/OneSignalDbHelper;
    .param p1, "group"    # Ljava/lang/String;
    .param p2, "id"    # I

    .line 669
    const/4 v0, 0x0

    move-object v1, v0

    .line 671
    .local v1, "writableDb":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {p0}, Lcom/onesignal/OneSignalDbHelper;->getWritableDbWithRetries()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    move-object v1, v2

    .line 672
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 674
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 675
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "android_notification_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 676
    const-string v3, "group_id"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    const-string v3, "is_summary"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 678
    const-string v3, "notification"

    invoke-virtual {v1, v3, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 679
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 683
    .end local v2    # "values":Landroid/content/ContentValues;
    if-eqz v1, :cond_0

    .line 685
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 688
    :goto_0
    goto :goto_1

    .line 686
    :catch_0
    move-exception v0

    .line 687
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v2, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v3, "Error closing transaction! "

    invoke-static {v2, v3, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 687
    .end local v0    # "t":Ljava/lang/Throwable;
    goto :goto_0

    .line 683
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 680
    :catch_1
    move-exception v0

    .line 681
    .restart local v0    # "t":Ljava/lang/Throwable;
    :try_start_2
    sget-object v2, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v3, "Error adding summary notification record! "

    invoke-static {v2, v3, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 683
    .end local v0    # "t":Ljava/lang/Throwable;
    if-eqz v1, :cond_0

    .line 685
    :try_start_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 691
    :cond_0
    :goto_1
    return-void

    .line 683
    :goto_2
    if-eqz v1, :cond_1

    .line 685
    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    .line 688
    goto :goto_3

    .line 686
    :catch_2
    move-exception v2

    .line 687
    .local v2, "t":Ljava/lang/Throwable;
    sget-object v3, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v4, "Error closing transaction! "

    invoke-static {v3, v4, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 688
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_3
    throw v0
.end method

.method private static createSummaryNotification(Lcom/onesignal/NotificationGenerationJob;Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;)V
    .locals 35
    .param p0, "notifJob"    # Lcom/onesignal/NotificationGenerationJob;
    .param p1, "notifBuilder"    # Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;

    move-object/from16 v1, p0

    .line 462
    move-object/from16 v2, p1

    iget-boolean v3, v1, Lcom/onesignal/NotificationGenerationJob;->restoring:Z

    .line 463
    .local v3, "updateSummary":Z
    iget-object v4, v1, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    .line 465
    .local v4, "gcmBundle":Lorg/json/JSONObject;
    const-string v5, "grp"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 467
    .local v5, "group":Ljava/lang/String;
    new-instance v7, Ljava/util/Random;

    invoke-direct {v7}, Ljava/util/Random;-><init>()V

    .line 468
    .local v7, "random":Ljava/util/Random;
    invoke-virtual {v7}, Ljava/util/Random;->nextInt()I

    move-result v8

    const/4 v9, 0x0

    invoke-static {v9}, Lcom/onesignal/GenerateNotification;->getNewBaseDeleteIntent(I)Landroid/content/Intent;

    move-result-object v10

    const-string v11, "summary"

    invoke-virtual {v10, v11, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/onesignal/GenerateNotification;->getNewActionPendingIntent(ILandroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v8

    .line 471
    .local v8, "summaryDeleteIntent":Landroid/app/PendingIntent;
    const/4 v10, 0x0

    .line 473
    .local v10, "summaryNotificationId":Ljava/lang/Integer;
    const/4 v11, 0x0

    .line 474
    .local v11, "firstFullData":Ljava/lang/String;
    const/4 v12, 0x0

    .line 476
    .local v12, "summaryList":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/text/SpannableString;>;"
    sget-object v13, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/onesignal/OneSignalDbHelper;->getInstance(Landroid/content/Context;)Lcom/onesignal/OneSignalDbHelper;

    move-result-object v13

    .line 477
    .local v13, "dbHelper":Lcom/onesignal/OneSignalDbHelper;
    move-object v14, v6

    .line 480
    .local v14, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {v13}, Lcom/onesignal/OneSignalDbHelper;->getReadableDbWithRetries()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15

    .line 482
    .local v15, "readableDb":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/String;

    const-string v16, "android_notification_id"

    aput-object v16, v6, v9

    const-string v16, "full_data"

    const/4 v9, 0x1

    aput-object v16, v6, v9

    const/16 v16, 0x2

    const-string v17, "is_summary"

    aput-object v17, v6, v16

    const/16 v16, 0x3

    const-string v17, "title"

    aput-object v17, v6, v16

    const/16 v16, 0x4

    const-string v17, "message"

    aput-object v17, v6, v16

    move-object/from16 v17, v6

    .line 488
    .local v17, "retColumn":[Ljava/lang/String;
    const-string v6, "group_id = ? AND dismissed = 0 AND opened = 0"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 491
    .local v6, "whereStr":Ljava/lang/String;
    move-object/from16 v23, v4

    :try_start_1
    new-array v4, v9, [Ljava/lang/String;

    .line 491
    .end local v4    # "gcmBundle":Lorg/json/JSONObject;
    .local v23, "gcmBundle":Lorg/json/JSONObject;
    const/16 v16, 0x0

    aput-object v5, v4, v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move-object/from16 v19, v4

    .line 494
    .local v19, "whereArgs":[Ljava/lang/String;
    if-nez v3, :cond_0

    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/onesignal/NotificationGenerationJob;->getAndroidId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v9, -0x1

    if-eq v4, v9, :cond_0

    .line 495
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " AND android_notification_id <> "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/onesignal/NotificationGenerationJob;->getAndroidId()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 495
    .end local v6    # "whereStr":Ljava/lang/String;
    .local v4, "whereStr":Ljava/lang/String;
    goto :goto_0

    .line 545
    .end local v4    # "whereStr":Ljava/lang/String;
    .end local v15    # "readableDb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v17    # "retColumn":[Ljava/lang/String;
    .end local v19    # "whereArgs":[Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object/from16 v28, v7

    move-object/from16 v30, v13

    goto/16 :goto_10

    .line 497
    .restart local v6    # "whereStr":Ljava/lang/String;
    .restart local v15    # "readableDb":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v17    # "retColumn":[Ljava/lang/String;
    .restart local v19    # "whereArgs":[Ljava/lang/String;
    :cond_0
    move-object v4, v6

    .line 497
    .end local v6    # "whereStr":Ljava/lang/String;
    .restart local v4    # "whereStr":Ljava/lang/String;
    :goto_0
    :try_start_3
    const-string v16, "notification"

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-string v22, "_id DESC"

    move-object/from16 v18, v4

    invoke-virtual/range {v15 .. v22}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move-object v14, v6

    .line 507
    :try_start_4
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v6, :cond_6

    .line 509
    :try_start_5
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v12, v6

    .line 512
    :goto_1
    :try_start_6
    const-string v6, "is_summary"

    invoke-interface {v14, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v14, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    const/4 v9, 0x1

    if-ne v6, v9, :cond_1

    .line 513
    :try_start_7
    const-string v6, "android_notification_id"

    invoke-interface {v14, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v14, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 533
    .end local v10    # "summaryNotificationId":Ljava/lang/Integer;
    .local v6, "summaryNotificationId":Ljava/lang/Integer;
    move-object/from16 v24, v4

    move-object v10, v6

    goto/16 :goto_4

    .line 515
    .end local v6    # "summaryNotificationId":Ljava/lang/Integer;
    .restart local v10    # "summaryNotificationId":Ljava/lang/Integer;
    :cond_1
    :try_start_8
    const-string v6, "title"

    invoke-interface {v14, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v14, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 516
    .local v6, "title":Ljava/lang/String;
    if-nez v6, :cond_2

    .line 517
    :try_start_9
    const-string v9, ""
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-object v6, v9

    .line 523
    move-object/from16 v24, v4

    goto :goto_2

    .line 519
    :cond_2
    :try_start_a
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v24, v4

    const-string v4, " "

    .line 519
    .end local v4    # "whereStr":Ljava/lang/String;
    .local v24, "whereStr":Ljava/lang/String;
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    .line 523
    :goto_2
    const-string v4, "message"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 525
    .local v4, "msg":Ljava/lang/String;
    new-instance v9, Landroid/text/SpannableString;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-object/from16 v25, v10

    :try_start_b
    new-instance v10, Ljava/lang/StringBuilder;

    .line 525
    .end local v10    # "summaryNotificationId":Ljava/lang/Integer;
    .local v25, "summaryNotificationId":Ljava/lang/Integer;
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 526
    .local v9, "spannableString":Landroid/text/SpannableString;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_3

    .line 527
    new-instance v10, Landroid/text/style/StyleSpan;

    move-object/from16 v26, v4

    const/4 v4, 0x1

    invoke-direct {v10, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 527
    .end local v4    # "msg":Ljava/lang/String;
    .local v26, "msg":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v27, v6

    const/4 v6, 0x0

    invoke-virtual {v9, v10, v6, v4, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 527
    .end local v6    # "title":Ljava/lang/String;
    .local v27, "title":Ljava/lang/String;
    goto :goto_3

    .line 528
    .end local v26    # "msg":Ljava/lang/String;
    .end local v27    # "title":Ljava/lang/String;
    .restart local v4    # "msg":Ljava/lang/String;
    .restart local v6    # "title":Ljava/lang/String;
    :cond_3
    move-object/from16 v26, v4

    move-object/from16 v27, v6

    .line 528
    .end local v4    # "msg":Ljava/lang/String;
    .end local v6    # "title":Ljava/lang/String;
    .restart local v26    # "msg":Ljava/lang/String;
    .restart local v27    # "title":Ljava/lang/String;
    :goto_3
    invoke-interface {v12, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 530
    if-nez v11, :cond_4

    .line 531
    const-string v4, "full_data"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 533
    .end local v9    # "spannableString":Landroid/text/SpannableString;
    .end local v11    # "firstFullData":Ljava/lang/String;
    .end local v26    # "msg":Ljava/lang/String;
    .end local v27    # "title":Ljava/lang/String;
    .local v4, "firstFullData":Ljava/lang/String;
    move-object v11, v4

    .line 533
    .end local v4    # "firstFullData":Ljava/lang/String;
    .end local v25    # "summaryNotificationId":Ljava/lang/Integer;
    .restart local v10    # "summaryNotificationId":Ljava/lang/Integer;
    .restart local v11    # "firstFullData":Ljava/lang/String;
    :cond_4
    move-object/from16 v10, v25

    :goto_4
    :try_start_c
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-nez v4, :cond_5

    .line 535
    if-eqz v3, :cond_6

    if-eqz v11, :cond_6

    .line 537
    :try_start_d
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 540
    .end local v23    # "gcmBundle":Lorg/json/JSONObject;
    .local v4, "gcmBundle":Lorg/json/JSONObject;
    goto :goto_6

    .line 538
    .end local v4    # "gcmBundle":Lorg/json/JSONObject;
    .restart local v23    # "gcmBundle":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    move-object v4, v0

    .line 539
    .local v4, "e":Lorg/json/JSONException;
    :try_start_e
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 539
    .end local v4    # "e":Lorg/json/JSONException;
    .end local v15    # "readableDb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v17    # "retColumn":[Ljava/lang/String;
    .end local v19    # "whereArgs":[Ljava/lang/String;
    .end local v24    # "whereStr":Ljava/lang/String;
    goto :goto_5

    .line 512
    .restart local v15    # "readableDb":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v17    # "retColumn":[Ljava/lang/String;
    .restart local v19    # "whereArgs":[Ljava/lang/String;
    .restart local v24    # "whereStr":Ljava/lang/String;
    :cond_5
    move-object/from16 v4, v24

    goto/16 :goto_1

    .line 545
    .end local v10    # "summaryNotificationId":Ljava/lang/Integer;
    .end local v15    # "readableDb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v17    # "retColumn":[Ljava/lang/String;
    .end local v19    # "whereArgs":[Ljava/lang/String;
    .end local v24    # "whereStr":Ljava/lang/String;
    .restart local v25    # "summaryNotificationId":Ljava/lang/Integer;
    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object/from16 v28, v7

    move-object/from16 v30, v13

    move-object/from16 v10, v25

    goto/16 :goto_10

    .line 545
    .end local v25    # "summaryNotificationId":Ljava/lang/Integer;
    .restart local v10    # "summaryNotificationId":Ljava/lang/Integer;
    :catchall_2
    move-exception v0

    move-object/from16 v25, v10

    move-object v1, v0

    move-object/from16 v28, v7

    move-object/from16 v30, v13

    .line 545
    .end local v10    # "summaryNotificationId":Ljava/lang/Integer;
    .restart local v25    # "summaryNotificationId":Ljava/lang/Integer;
    goto/16 :goto_10

    .line 545
    .end local v25    # "summaryNotificationId":Ljava/lang/Integer;
    .restart local v10    # "summaryNotificationId":Ljava/lang/Integer;
    :cond_6
    :goto_5
    move-object/from16 v4, v23

    .line 545
    .end local v23    # "gcmBundle":Lorg/json/JSONObject;
    .local v4, "gcmBundle":Lorg/json/JSONObject;
    :goto_6
    if-eqz v14, :cond_7

    invoke-interface {v14}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_7

    .line 546
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 549
    :cond_7
    if-nez v10, :cond_8

    .line 550
    invoke-virtual {v7}, Ljava/util/Random;->nextInt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 551
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v13, v5, v6}, Lcom/onesignal/GenerateNotification;->createSummaryIdDatabaseEntry(Lcom/onesignal/OneSignalDbHelper;Ljava/lang/String;I)V

    .line 554
    :cond_8
    invoke-virtual {v7}, Ljava/util/Random;->nextInt()I

    move-result v6

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9, v4, v5}, Lcom/onesignal/GenerateNotification;->createBaseSummaryIntent(ILorg/json/JSONObject;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/onesignal/GenerateNotification;->getNewActionPendingIntent(ILandroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v6

    .line 558
    .local v6, "summaryContentIntent":Landroid/app/PendingIntent;
    if-eqz v12, :cond_15

    if-eqz v3, :cond_9

    .line 559
    invoke-interface {v12}, Ljava/util/Collection;->size()I

    move-result v9

    const/4 v15, 0x1

    if-gt v9, v15, :cond_a

    :cond_9
    if-nez v3, :cond_15

    .line 560
    invoke-interface {v12}, Ljava/util/Collection;->size()I

    move-result v9

    if-lez v9, :cond_15

    .line 561
    :cond_a
    invoke-interface {v12}, Ljava/util/Collection;->size()I

    move-result v9

    xor-int/lit8 v15, v3, 0x1

    add-int/2addr v9, v15

    .line 563
    .local v9, "notificationCount":I
    const-string v15, "grp_msg"

    move-object/from16 v28, v7

    const/4 v7, 0x0

    invoke-virtual {v4, v15, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 564
    .local v7, "summaryMessage":Ljava/lang/String;
    .local v28, "random":Ljava/util/Random;
    if-nez v7, :cond_b

    .line 565
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v29, v11

    const-string v11, " new messages"

    .line 565
    .end local v11    # "firstFullData":Ljava/lang/String;
    .local v29, "firstFullData":Ljava/lang/String;
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 569
    move-object/from16 v30, v13

    goto :goto_7

    .line 567
    .end local v29    # "firstFullData":Ljava/lang/String;
    .restart local v11    # "firstFullData":Ljava/lang/String;
    :cond_b
    move-object/from16 v29, v11

    .line 567
    .end local v11    # "firstFullData":Ljava/lang/String;
    .restart local v29    # "firstFullData":Ljava/lang/String;
    const-string v11, "$[notif_count]"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v30, v13

    const-string v13, ""

    .line 567
    .end local v13    # "dbHelper":Lcom/onesignal/OneSignalDbHelper;
    .local v30, "dbHelper":Lcom/onesignal/OneSignalDbHelper;
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v11, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 569
    :goto_7
    invoke-static/range {p0 .. p0}, Lcom/onesignal/GenerateNotification;->getBaseOneSignalNotificationBuilder(Lcom/onesignal/NotificationGenerationJob;)Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;

    move-result-object v11

    iget-object v11, v11, Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;->compatBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 570
    .local v11, "summaryBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    if-eqz v3, :cond_c

    .line 571
    invoke-static {v11}, Lcom/onesignal/GenerateNotification;->removeNotifyOptions(Landroid/support/v4/app/NotificationCompat$Builder;)V

    goto :goto_8

    .line 573
    :cond_c
    iget-object v13, v1, Lcom/onesignal/NotificationGenerationJob;->overriddenSound:Landroid/net/Uri;

    if-eqz v13, :cond_d

    .line 574
    iget-object v13, v1, Lcom/onesignal/NotificationGenerationJob;->overriddenSound:Landroid/net/Uri;

    invoke-virtual {v11, v13}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 576
    :cond_d
    iget-object v13, v1, Lcom/onesignal/NotificationGenerationJob;->overriddenFlags:Ljava/lang/Integer;

    if-eqz v13, :cond_e

    .line 577
    iget-object v13, v1, Lcom/onesignal/NotificationGenerationJob;->overriddenFlags:Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v11, v13}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 582
    :cond_e
    :goto_8
    invoke-virtual {v11, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v13

    .line 583
    invoke-virtual {v13, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v13

    sget-object v15, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    .line 584
    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    move-object/from16 v31, v14

    sget-object v14, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    .line 584
    .end local v14    # "cursor":Landroid/database/Cursor;
    .local v31, "cursor":Landroid/database/Cursor;
    invoke-virtual {v14}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    invoke-virtual {v15, v14}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v13

    .line 585
    invoke-virtual {v13, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v13

    .line 586
    invoke-virtual {v13, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setNumber(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v13

    .line 587
    invoke-static {}, Lcom/onesignal/GenerateNotification;->getDefaultSmallIconId()I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v13

    .line 588
    invoke-static {}, Lcom/onesignal/GenerateNotification;->getDefaultLargeIcon()Landroid/graphics/Bitmap;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v13

    .line 589
    invoke-virtual {v13, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v13

    .line 590
    invoke-virtual {v13, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v13

    .line 591
    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroupSummary(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 594
    :try_start_f
    invoke-virtual {v11, v14}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroupAlertBehavior(I)Landroid/support/v4/app/NotificationCompat$Builder;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_1

    .line 598
    goto :goto_9

    .line 596
    :catch_1
    move-exception v0

    .line 600
    :goto_9
    if-nez v3, :cond_f

    .line 601
    invoke-virtual {v11, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 603
    :cond_f
    new-instance v13, Landroid/support/v4/app/NotificationCompat$InboxStyle;

    invoke-direct {v13}, Landroid/support/v4/app/NotificationCompat$InboxStyle;-><init>()V

    .line 606
    .local v13, "inboxStyle":Landroid/support/v4/app/NotificationCompat$InboxStyle;
    if-nez v3, :cond_13

    .line 607
    const/4 v14, 0x0

    .line 609
    .local v14, "line1Title":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/onesignal/NotificationGenerationJob;->getTitle()Ljava/lang/CharSequence;

    move-result-object v15

    if-eqz v15, :cond_10

    .line 610
    invoke-virtual/range {p0 .. p0}, Lcom/onesignal/NotificationGenerationJob;->getTitle()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    .line 612
    :cond_10
    if-nez v14, :cond_11

    .line 613
    const-string v14, ""

    .line 617
    move/from16 v32, v9

    goto :goto_a

    .line 615
    :cond_11
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v32, v9

    const-string v9, " "

    .line 615
    .end local v9    # "notificationCount":I
    .local v32, "notificationCount":I
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 617
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/onesignal/NotificationGenerationJob;->getBody()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    .line 619
    .local v9, "message":Ljava/lang/String;
    new-instance v15, Landroid/text/SpannableString;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v15, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object v1, v15

    .line 620
    .local v1, "spannableString":Landroid/text/SpannableString;
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_12

    .line 621
    new-instance v15, Landroid/text/style/StyleSpan;

    move-object/from16 v33, v9

    const/4 v9, 0x1

    invoke-direct {v15, v9}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 621
    .end local v9    # "message":Ljava/lang/String;
    .local v33, "message":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v34, v14

    const/4 v14, 0x0

    invoke-virtual {v1, v15, v14, v9, v14}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 621
    .end local v14    # "line1Title":Ljava/lang/String;
    .local v34, "line1Title":Ljava/lang/String;
    goto :goto_b

    .line 622
    .end local v33    # "message":Ljava/lang/String;
    .end local v34    # "line1Title":Ljava/lang/String;
    .restart local v9    # "message":Ljava/lang/String;
    .restart local v14    # "line1Title":Ljava/lang/String;
    :cond_12
    move-object/from16 v33, v9

    move-object/from16 v34, v14

    .line 622
    .end local v9    # "message":Ljava/lang/String;
    .end local v14    # "line1Title":Ljava/lang/String;
    .restart local v33    # "message":Ljava/lang/String;
    .restart local v34    # "line1Title":Ljava/lang/String;
    :goto_b
    invoke-virtual {v13, v1}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    .line 622
    .end local v1    # "spannableString":Landroid/text/SpannableString;
    .end local v33    # "message":Ljava/lang/String;
    .end local v34    # "line1Title":Ljava/lang/String;
    goto :goto_c

    .line 625
    .end local v32    # "notificationCount":I
    .local v9, "notificationCount":I
    :cond_13
    move/from16 v32, v9

    .line 625
    .end local v9    # "notificationCount":I
    .restart local v32    # "notificationCount":I
    :goto_c
    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/text/SpannableString;

    .line 626
    .local v9, "line":Landroid/text/SpannableString;
    invoke-virtual {v13, v9}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    .line 626
    .end local v9    # "line":Landroid/text/SpannableString;
    goto :goto_d

    .line 627
    :cond_14
    invoke-virtual {v13, v7}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    .line 628
    invoke-virtual {v11, v13}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 630
    invoke-virtual {v11}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 631
    .end local v7    # "summaryMessage":Ljava/lang/String;
    .end local v11    # "summaryBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v13    # "inboxStyle":Landroid/support/v4/app/NotificationCompat$InboxStyle;
    .end local v32    # "notificationCount":I
    .local v1, "summaryNotification":Landroid/app/Notification;
    goto :goto_f

    .line 634
    .end local v1    # "summaryNotification":Landroid/app/Notification;
    .end local v28    # "random":Ljava/util/Random;
    .end local v29    # "firstFullData":Ljava/lang/String;
    .end local v30    # "dbHelper":Lcom/onesignal/OneSignalDbHelper;
    .end local v31    # "cursor":Landroid/database/Cursor;
    .local v7, "random":Ljava/util/Random;
    .local v11, "firstFullData":Ljava/lang/String;
    .local v13, "dbHelper":Lcom/onesignal/OneSignalDbHelper;
    .local v14, "cursor":Landroid/database/Cursor;
    :cond_15
    move-object/from16 v28, v7

    move-object/from16 v29, v11

    move-object/from16 v30, v13

    move-object/from16 v31, v14

    .line 634
    .end local v7    # "random":Ljava/util/Random;
    .end local v11    # "firstFullData":Ljava/lang/String;
    .end local v13    # "dbHelper":Lcom/onesignal/OneSignalDbHelper;
    .end local v14    # "cursor":Landroid/database/Cursor;
    .restart local v28    # "random":Ljava/util/Random;
    .restart local v29    # "firstFullData":Ljava/lang/String;
    .restart local v30    # "dbHelper":Lcom/onesignal/OneSignalDbHelper;
    .restart local v31    # "cursor":Landroid/database/Cursor;
    iget-object v1, v2, Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;->compatBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 639
    .local v1, "summaryBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    iget-object v7, v1, Landroid/support/v4/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 640
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v1, v7, v5}, Lcom/onesignal/GenerateNotification;->addNotificationActionButtons(Lorg/json/JSONObject;Landroid/support/v4/app/NotificationCompat$Builder;ILjava/lang/String;)V

    .line 642
    invoke-virtual {v1, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    .line 643
    invoke-virtual {v7, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    .line 644
    invoke-virtual {v7, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    .line 645
    invoke-virtual {v7, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    .line 646
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroupSummary(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 649
    :try_start_10
    invoke-virtual {v1, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroupAlertBehavior(I)Landroid/support/v4/app/NotificationCompat$Builder;
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_2

    .line 653
    goto :goto_e

    .line 651
    :catch_2
    move-exception v0

    .line 655
    :goto_e
    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    .line 656
    .local v7, "summaryNotification":Landroid/app/Notification;
    invoke-static {v2, v7}, Lcom/onesignal/GenerateNotification;->addXiaomiSettings(Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;Landroid/app/Notification;)V

    .line 659
    .end local v1    # "summaryBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    move-object v1, v7

    .line 659
    .end local v7    # "summaryNotification":Landroid/app/Notification;
    .local v1, "summaryNotification":Landroid/app/Notification;
    :goto_f
    sget-object v7, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/support/v4/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v7

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v7, v9, v1}, Landroid/support/v4/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    .line 660
    return-void

    .line 545
    .end local v1    # "summaryNotification":Landroid/app/Notification;
    .end local v4    # "gcmBundle":Lorg/json/JSONObject;
    .end local v6    # "summaryContentIntent":Landroid/app/PendingIntent;
    .end local v28    # "random":Ljava/util/Random;
    .end local v29    # "firstFullData":Ljava/lang/String;
    .end local v30    # "dbHelper":Lcom/onesignal/OneSignalDbHelper;
    .end local v31    # "cursor":Landroid/database/Cursor;
    .local v7, "random":Ljava/util/Random;
    .restart local v11    # "firstFullData":Ljava/lang/String;
    .restart local v13    # "dbHelper":Lcom/onesignal/OneSignalDbHelper;
    .restart local v14    # "cursor":Landroid/database/Cursor;
    .restart local v23    # "gcmBundle":Lorg/json/JSONObject;
    :catchall_3
    move-exception v0

    move-object/from16 v28, v7

    move-object/from16 v30, v13

    move-object/from16 v31, v14

    move-object v1, v0

    .line 545
    .end local v7    # "random":Ljava/util/Random;
    .end local v13    # "dbHelper":Lcom/onesignal/OneSignalDbHelper;
    .end local v14    # "cursor":Landroid/database/Cursor;
    .restart local v28    # "random":Ljava/util/Random;
    .restart local v30    # "dbHelper":Lcom/onesignal/OneSignalDbHelper;
    .restart local v31    # "cursor":Landroid/database/Cursor;
    goto :goto_10

    .line 545
    .end local v28    # "random":Ljava/util/Random;
    .end local v30    # "dbHelper":Lcom/onesignal/OneSignalDbHelper;
    .end local v31    # "cursor":Landroid/database/Cursor;
    .restart local v7    # "random":Ljava/util/Random;
    .restart local v13    # "dbHelper":Lcom/onesignal/OneSignalDbHelper;
    .restart local v14    # "cursor":Landroid/database/Cursor;
    :catchall_4
    move-exception v0

    move-object/from16 v28, v7

    move-object/from16 v30, v13

    move-object v1, v0

    .line 545
    .end local v7    # "random":Ljava/util/Random;
    .end local v13    # "dbHelper":Lcom/onesignal/OneSignalDbHelper;
    .restart local v28    # "random":Ljava/util/Random;
    .restart local v30    # "dbHelper":Lcom/onesignal/OneSignalDbHelper;
    goto :goto_10

    .line 545
    .end local v23    # "gcmBundle":Lorg/json/JSONObject;
    .end local v28    # "random":Ljava/util/Random;
    .end local v30    # "dbHelper":Lcom/onesignal/OneSignalDbHelper;
    .restart local v4    # "gcmBundle":Lorg/json/JSONObject;
    .restart local v7    # "random":Ljava/util/Random;
    .restart local v13    # "dbHelper":Lcom/onesignal/OneSignalDbHelper;
    :catchall_5
    move-exception v0

    move-object/from16 v23, v4

    move-object/from16 v28, v7

    move-object/from16 v30, v13

    move-object v1, v0

    .line 545
    .end local v4    # "gcmBundle":Lorg/json/JSONObject;
    .end local v7    # "random":Ljava/util/Random;
    .end local v13    # "dbHelper":Lcom/onesignal/OneSignalDbHelper;
    .restart local v23    # "gcmBundle":Lorg/json/JSONObject;
    .restart local v28    # "random":Ljava/util/Random;
    .restart local v30    # "dbHelper":Lcom/onesignal/OneSignalDbHelper;
    :goto_10
    if-eqz v14, :cond_16

    invoke-interface {v14}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_16

    .line 546
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_16
    throw v1
.end method

.method static fromJsonPayload(Lcom/onesignal/NotificationGenerationJob;)V
    .locals 3
    .param p0, "notifJob"    # Lcom/onesignal/NotificationGenerationJob;

    .line 99
    iget-object v0, p0, Lcom/onesignal/NotificationGenerationJob;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/GenerateNotification;->setStatics(Landroid/content/Context;)V

    .line 101
    iget-boolean v0, p0, Lcom/onesignal/NotificationGenerationJob;->restoring:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/onesignal/NotificationGenerationJob;->showAsAlert:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    sget-object v1, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/onesignal/NotificationGenerationJob;->getAndroidId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/onesignal/GenerateNotification;->showNotificationAsAlert(Lorg/json/JSONObject;Landroid/app/Activity;I)V

    .line 103
    return-void

    .line 106
    :cond_0
    invoke-static {p0}, Lcom/onesignal/GenerateNotification;->showNotification(Lcom/onesignal/NotificationGenerationJob;)V

    .line 107
    return-void
.end method

.method private static getAccentColor(Lorg/json/JSONObject;)Ljava/math/BigInteger;
    .locals 4
    .param p0, "gcmBundle"    # Lorg/json/JSONObject;

    .line 919
    const/16 v0, 0x10

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "bgac"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 920
    new-instance v2, Ljava/math/BigInteger;

    const-string v3, "bgac"

    invoke-virtual {p0, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 921
    :cond_0
    goto :goto_0

    :catch_0
    move-exception v2

    .line 924
    :goto_0
    :try_start_1
    sget-object v2, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    const-string v3, "com.onesignal.NotificationAccentColor.DEFAULT"

    invoke-static {v2, v3}, Lcom/onesignal/OSUtils;->getManifestMeta(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 925
    .local v2, "defaultColor":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 926
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v2, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    return-object v3

    .line 927
    .end local v2    # "defaultColor":Ljava/lang/String;
    :cond_1
    goto :goto_1

    :catch_1
    move-exception v0

    .line 929
    :goto_1
    return-object v1
.end method

.method private static getBaseOneSignalNotificationBuilder(Lcom/onesignal/NotificationGenerationJob;)Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;
    .locals 11
    .param p0, "notifJob"    # Lcom/onesignal/NotificationGenerationJob;

    .line 209
    iget-object v0, p0, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    .line 210
    .local v0, "gcmBundle":Lorg/json/JSONObject;
    new-instance v1, Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;-><init>(Lcom/onesignal/GenerateNotification$1;)V

    .line 214
    .local v1, "oneSignalNotificationBuilder":Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;
    :try_start_0
    invoke-static {p0}, Lcom/onesignal/NotificationChannelManager;->createNotificationChannel(Lcom/onesignal/NotificationGenerationJob;)Ljava/lang/String;

    move-result-object v3

    .line 216
    .local v3, "channelId":Ljava/lang/String;
    new-instance v4, Landroid/support/v4/app/NotificationCompat$Builder;

    sget-object v5, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    invoke-direct {v4, v5, v3}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    .end local v3    # "channelId":Ljava/lang/String;
    move-object v3, v4

    .line 219
    .local v3, "notifBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    goto :goto_0

    .line 217
    .end local v3    # "notifBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    :catch_0
    move-exception v3

    .line 218
    .local v3, "t":Ljava/lang/Throwable;
    new-instance v4, Landroid/support/v4/app/NotificationCompat$Builder;

    sget-object v5, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 218
    .end local v3    # "t":Ljava/lang/Throwable;
    move-object v3, v4

    .line 221
    .local v3, "notifBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    :goto_0
    const-string v4, "alert"

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 223
    .local v4, "message":Ljava/lang/String;
    nop

    .line 224
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    .line 225
    invoke-static {v0}, Lcom/onesignal/GenerateNotification;->getSmallIconId(Lorg/json/JSONObject;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    new-instance v7, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v7}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 226
    invoke-virtual {v7, v4}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    .line 227
    invoke-virtual {v6, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    .line 228
    invoke-virtual {v6, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 230
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x18

    if-lt v6, v7, :cond_0

    const-string v6, "title"

    .line 231
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 232
    :cond_0
    invoke-static {v0}, Lcom/onesignal/GenerateNotification;->getTitle(Lorg/json/JSONObject;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 234
    :cond_1
    const/4 v6, 0x0

    .line 236
    .local v6, "notificationDefaults":I
    sget-object v7, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/onesignal/OneSignal;->getVibrate(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "vib"

    invoke-virtual {v0, v7, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_4

    .line 237
    const-string v7, "vib_pt"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 238
    invoke-static {v0}, Lcom/onesignal/OSUtils;->parseVibrationPattern(Lorg/json/JSONObject;)[J

    move-result-object v7

    .line 239
    .local v7, "vibrationPattern":[J
    if-eqz v7, :cond_2

    .line 240
    invoke-virtual {v3, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 241
    .end local v7    # "vibrationPattern":[J
    :cond_2
    goto :goto_1

    .line 243
    :cond_3
    const/4 v6, 0x2

    .line 246
    :cond_4
    :goto_1
    const-string v7, "ledc"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "led"

    invoke-virtual {v0, v7, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_5

    .line 248
    :try_start_1
    new-instance v7, Ljava/math/BigInteger;

    const-string v8, "ledc"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x10

    invoke-direct {v7, v8, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 249
    .local v7, "ledColor":Ljava/math/BigInteger;
    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v8

    const/16 v9, 0x7d0

    const/16 v10, 0x1388

    invoke-virtual {v3, v8, v9, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setLights(III)Landroid/support/v4/app/NotificationCompat$Builder;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 249
    .end local v7    # "ledColor":Ljava/math/BigInteger;
    goto :goto_2

    .line 250
    :catch_1
    move-exception v7

    .line 251
    .local v7, "t":Ljava/lang/Throwable;
    or-int/lit8 v6, v6, 0x4

    .line 252
    .end local v7    # "t":Ljava/lang/Throwable;
    :goto_2
    goto :goto_3

    .line 255
    :cond_5
    or-int/lit8 v6, v6, 0x4

    .line 257
    :goto_3
    iget-object v7, p0, Lcom/onesignal/NotificationGenerationJob;->shownTimeStamp:Ljava/lang/Long;

    if-eqz v7, :cond_6

    .line 259
    :try_start_2
    iget-object v7, p0, Lcom/onesignal/NotificationGenerationJob;->shownTimeStamp:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long/2addr v7, v9

    invoke-virtual {v3, v7, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 260
    goto :goto_4

    :catch_2
    move-exception v7

    .line 264
    :cond_6
    :goto_4
    :try_start_3
    invoke-static {v0}, Lcom/onesignal/GenerateNotification;->getAccentColor(Lorg/json/JSONObject;)Ljava/math/BigInteger;

    move-result-object v7

    .line 265
    .local v7, "accentColor":Ljava/math/BigInteger;
    if-eqz v7, :cond_7

    .line 266
    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v8

    invoke-virtual {v3, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 267
    .end local v7    # "accentColor":Ljava/math/BigInteger;
    :cond_7
    goto :goto_5

    :catch_3
    move-exception v7

    .line 270
    :goto_5
    const/4 v7, 0x1

    .line 271
    .local v7, "visibility":I
    :try_start_4
    const-string v8, "vis"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 272
    const-string v8, "vis"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    move v7, v8

    .line 273
    :cond_8
    invoke-virtual {v3, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setVisibility(I)Landroid/support/v4/app/NotificationCompat$Builder;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    .line 274
    .end local v7    # "visibility":I
    goto :goto_6

    :catch_4
    move-exception v7

    .line 276
    :goto_6
    invoke-static {v0}, Lcom/onesignal/GenerateNotification;->getLargeIcon(Lorg/json/JSONObject;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 277
    .local v7, "largeIcon":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_9

    .line 278
    iput-boolean v5, v1, Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;->hasLargeIcon:Z

    .line 279
    invoke-virtual {v3, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 282
    :cond_9
    const-string v5, "bicon"

    invoke-virtual {v0, v5, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/onesignal/GenerateNotification;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 283
    .local v5, "bigPictureIcon":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_a

    .line 284
    new-instance v8, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    invoke-direct {v8}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;-><init>()V

    invoke-virtual {v8, v5}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 286
    :cond_a
    invoke-static {v0}, Lcom/onesignal/GenerateNotification;->isSoundEnabled(Lorg/json/JSONObject;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 287
    sget-object v8, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    const-string v9, "sound"

    invoke-virtual {v0, v9, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/onesignal/OSUtils;->getSoundUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 288
    .local v2, "soundUri":Landroid/net/Uri;
    if-eqz v2, :cond_b

    .line 289
    invoke-virtual {v3, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_7

    .line 291
    :cond_b
    or-int/lit8 v6, v6, 0x1

    .line 294
    .end local v2    # "soundUri":Landroid/net/Uri;
    :cond_c
    :goto_7
    invoke-virtual {v3, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 296
    const-string v2, "pri"

    const/4 v8, 0x6

    invoke-virtual {v0, v2, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 297
    .local v2, "payload_priority":I
    invoke-static {v2}, Lcom/onesignal/GenerateNotification;->osPriorityToAndroidPriority(I)I

    move-result v8

    invoke-virtual {v3, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 299
    iput-object v3, v1, Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;->compatBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 300
    return-object v1
.end method

.method private static getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 851
    if-nez p0, :cond_0

    .line 852
    const/4 v0, 0x0

    return-object v0

    .line 853
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 855
    .local v0, "trimmedName":Ljava/lang/String;
    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 858
    :cond_1
    invoke-static {p0}, Lcom/onesignal/GenerateNotification;->getBitmapFromAssetsOrResourceName(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 856
    :cond_2
    :goto_0
    invoke-static {v0}, Lcom/onesignal/GenerateNotification;->getBitmapFromURL(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method private static getBitmapFromAssetsOrResourceName(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "bitmapStr"    # Ljava/lang/String;

    .line 814
    const/4 v0, 0x0

    move-object v1, v0

    .line 817
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    sget-object v2, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 818
    goto :goto_0

    :catch_0
    move-exception v2

    .line 820
    :goto_0
    if-eqz v1, :cond_0

    .line 821
    return-object v1

    .line 823
    :cond_0
    const/4 v2, 0x5

    :try_start_1
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, ".png"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, ".webp"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, ".jpg"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, ".gif"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, ".bmp"

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 824
    .local v2, "image_extensions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 826
    .local v4, "extension":Ljava/lang/String;
    :try_start_2
    sget-object v5, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-object v1, v5

    .line 827
    goto :goto_2

    :catch_1
    move-exception v5

    .line 828
    :goto_2
    if-eqz v1, :cond_1

    .line 829
    return-object v1

    .line 830
    .end local v4    # "extension":Ljava/lang/String;
    :cond_1
    goto :goto_1

    .line 832
    :cond_2
    :try_start_3
    invoke-static {p0}, Lcom/onesignal/GenerateNotification;->getResourceIcon(Ljava/lang/String;)I

    move-result v3

    .line 833
    .local v3, "bitmapId":I
    if-eqz v3, :cond_3

    .line 834
    sget-object v4, Lcom/onesignal/GenerateNotification;->contextResources:Landroid/content/res/Resources;

    invoke-static {v4, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    return-object v4

    .line 835
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "image_extensions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "bitmapId":I
    :cond_3
    goto :goto_3

    :catch_2
    move-exception v1

    .line 837
    :goto_3
    return-object v0
.end method

.method private static getBitmapFromURL(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "location"    # Ljava/lang/String;

    .line 842
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 843
    :catch_0
    move-exception v0

    .line 844
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "Could not download image!"

    invoke-static {v1, v2, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 847
    .end local v0    # "t":Ljava/lang/Throwable;
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getDefaultLargeIcon()Landroid/graphics/Bitmap;
    .locals 2

    .line 780
    const-string v0, "ic_onesignal_large_icon_default"

    invoke-static {v0}, Lcom/onesignal/GenerateNotification;->getBitmapFromAssetsOrResourceName(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 781
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/onesignal/GenerateNotification;->resizeBitmapForLargeIconArea(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method private static getDefaultSmallIconId()I
    .locals 2

    .line 890
    const-string v0, "ic_stat_onesignal_default"

    invoke-static {v0}, Lcom/onesignal/GenerateNotification;->getDrawableId(Ljava/lang/String;)I

    move-result v0

    .line 891
    .local v0, "notificationIcon":I
    if-eqz v0, :cond_0

    .line 892
    return v0

    .line 894
    :cond_0
    const-string v1, "corona_statusbar_icon_default"

    invoke-static {v1}, Lcom/onesignal/GenerateNotification;->getDrawableId(Ljava/lang/String;)I

    move-result v0

    .line 895
    if-eqz v0, :cond_1

    .line 896
    return v0

    .line 898
    :cond_1
    const-string v1, "ic_os_notification_fallback_white_24dp"

    invoke-static {v1}, Lcom/onesignal/GenerateNotification;->getDrawableId(Ljava/lang/String;)I

    move-result v0

    .line 899
    if-eqz v0, :cond_2

    .line 900
    return v0

    .line 902
    :cond_2
    const v1, 0x108005e

    return v1
.end method

.method private static getDrawableId(Ljava/lang/String;)I
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .line 906
    sget-object v0, Lcom/onesignal/GenerateNotification;->contextResources:Landroid/content/res/Resources;

    const-string v1, "drawable"

    sget-object v2, Lcom/onesignal/GenerateNotification;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static getLargeIcon(Lorg/json/JSONObject;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "gcmBundle"    # Lorg/json/JSONObject;

    .line 769
    const-string v0, "licon"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/onesignal/GenerateNotification;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 770
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 771
    const-string v1, "ic_onesignal_large_icon_default"

    invoke-static {v1}, Lcom/onesignal/GenerateNotification;->getBitmapFromAssetsOrResourceName(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 773
    :cond_0
    if-nez v0, :cond_1

    .line 774
    const/4 v1, 0x0

    return-object v1

    .line 776
    :cond_1
    invoke-static {v0}, Lcom/onesignal/GenerateNotification;->resizeBitmapForLargeIconArea(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method private static getNewActionPendingIntent(ILandroid/content/Intent;)Landroid/app/PendingIntent;
    .locals 2
    .param p0, "requestCode"    # I
    .param p1, "intent"    # Landroid/content/Intent;

    .line 184
    sget-boolean v0, Lcom/onesignal/GenerateNotification;->openerIsBroadcast:Z

    const/high16 v1, 0x8000000

    if-eqz v0, :cond_0

    .line 185
    sget-object v0, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    invoke-static {v0, p0, p1, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0

    .line 186
    :cond_0
    sget-object v0, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    invoke-static {v0, p0, p1, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private static getNewBaseDeleteIntent(I)Landroid/content/Intent;
    .locals 3
    .param p0, "notificationId"    # I

    .line 199
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    sget-object v2, Lcom/onesignal/GenerateNotification;->notificationOpenedClass:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "notificationId"

    .line 200
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "dismissed"

    .line 201
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 203
    .local v0, "intent":Landroid/content/Intent;
    sget-boolean v1, Lcom/onesignal/GenerateNotification;->openerIsBroadcast:Z

    if-eqz v1, :cond_0

    .line 204
    return-object v0

    .line 205
    :cond_0
    const/high16 v1, 0x18010000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method private static getNewBaseIntent(I)Landroid/content/Intent;
    .locals 3
    .param p0, "notificationId"    # I

    .line 190
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    sget-object v2, Lcom/onesignal/GenerateNotification;->notificationOpenedClass:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "notificationId"

    .line 191
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 193
    .local v0, "intent":Landroid/content/Intent;
    sget-boolean v1, Lcom/onesignal/GenerateNotification;->openerIsBroadcast:Z

    if-eqz v1, :cond_0

    .line 194
    return-object v0

    .line 195
    :cond_0
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method private static getResourceIcon(Ljava/lang/String;)I
    .locals 5
    .param p0, "iconName"    # Ljava/lang/String;

    .line 862
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 863
    return v0

    .line 865
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 866
    .local v1, "trimmedIconName":Ljava/lang/String;
    invoke-static {v1}, Lcom/onesignal/OSUtils;->isValidResourceName(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 867
    return v0

    .line 869
    :cond_1
    invoke-static {v1}, Lcom/onesignal/GenerateNotification;->getDrawableId(Ljava/lang/String;)I

    move-result v2

    .line 870
    .local v2, "notificationIcon":I
    if-eqz v2, :cond_2

    .line 871
    return v2

    .line 875
    :cond_2
    :try_start_0
    const-class v3, Landroid/R$drawable;

    invoke-virtual {v3, p0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    .line 876
    :catch_0
    move-exception v3

    .line 878
    return v0
.end method

.method private static getSmallIconId(Lorg/json/JSONObject;)I
    .locals 2
    .param p0, "gcmBundle"    # Lorg/json/JSONObject;

    .line 882
    const-string v0, "sicon"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/onesignal/GenerateNotification;->getResourceIcon(Ljava/lang/String;)I

    move-result v0

    .line 883
    .local v0, "notificationIcon":I
    if-eqz v0, :cond_0

    .line 884
    return v0

    .line 886
    :cond_0
    invoke-static {}, Lcom/onesignal/GenerateNotification;->getDefaultSmallIconId()I

    move-result v1

    return v1
.end method

.method private static getTitle(Lorg/json/JSONObject;)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "gcmBundle"    # Lorg/json/JSONObject;

    .line 175
    const-string v0, "title"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "title":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 178
    return-object v0

    .line 180
    :cond_0
    sget-object v1, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method private static isSoundEnabled(Lorg/json/JSONObject;)Z
    .locals 2
    .param p0, "gcmBundle"    # Lorg/json/JSONObject;

    .line 910
    const-string v0, "sound"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 911
    .local v0, "sound":Ljava/lang/String;
    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "nil"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 913
    :cond_0
    sget-object v1, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/onesignal/OneSignal;->getSoundEnabled(Landroid/content/Context;)Z

    move-result v1

    return v1

    .line 912
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method private static osPriorityToAndroidPriority(I)I
    .locals 1
    .param p0, "priority"    # I

    .line 1006
    const/16 v0, 0x9

    if-le p0, v0, :cond_0

    .line 1007
    const/4 v0, 0x2

    return v0

    .line 1008
    :cond_0
    const/4 v0, 0x7

    if-le p0, v0, :cond_1

    .line 1009
    const/4 v0, 0x1

    return v0

    .line 1010
    :cond_1
    const/4 v0, 0x5

    if-le p0, v0, :cond_2

    .line 1011
    const/4 v0, 0x0

    return v0

    .line 1012
    :cond_2
    const/4 v0, 0x3

    if-le p0, v0, :cond_3

    .line 1013
    const/4 v0, -0x1

    return v0

    .line 1015
    :cond_3
    const/4 v0, -0x2

    return v0
.end method

.method private static removeNotifyOptions(Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 2
    .param p0, "builder"    # Landroid/support/v4/app/NotificationCompat$Builder;

    .line 304
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 305
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 306
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 307
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 308
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 309
    return-void
.end method

.method private static resizeBitmapForLargeIconArea(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 786
    if-nez p0, :cond_0

    .line 787
    const/4 v0, 0x0

    return-object v0

    .line 790
    :cond_0
    :try_start_0
    sget-object v0, Lcom/onesignal/GenerateNotification;->contextResources:Landroid/content/res/Resources;

    const v1, 0x1050006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 791
    .local v0, "systemLargeIconHeight":I
    sget-object v1, Lcom/onesignal/GenerateNotification;->contextResources:Landroid/content/res/Resources;

    const v2, 0x1050005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 792
    .local v1, "systemLargeIconWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 793
    .local v2, "bitmapHeight":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 795
    .local v3, "bitmapWidth":I
    if-gt v3, v1, :cond_2

    if-le v2, v0, :cond_1

    goto :goto_0

    .line 807
    .end local v0    # "systemLargeIconHeight":I
    .end local v1    # "systemLargeIconWidth":I
    .end local v2    # "bitmapHeight":I
    .end local v3    # "bitmapWidth":I
    :cond_1
    goto :goto_2

    .line 796
    .restart local v0    # "systemLargeIconHeight":I
    .restart local v1    # "systemLargeIconWidth":I
    .restart local v2    # "bitmapHeight":I
    .restart local v3    # "bitmapWidth":I
    :cond_2
    :goto_0
    move v4, v1

    .line 796
    .local v4, "newWidth":I
    move v5, v0

    .line 797
    .local v5, "newHeight":I
    if-le v2, v3, :cond_3

    .line 798
    int-to-float v6, v3

    int-to-float v7, v2

    div-float/2addr v6, v7

    .line 799
    .local v6, "ratio":F
    int-to-float v7, v5

    mul-float/2addr v7, v6

    float-to-int v4, v7

    .line 800
    .end local v6    # "ratio":F
    goto :goto_1

    :cond_3
    if-le v3, v2, :cond_4

    .line 801
    int-to-float v6, v2

    int-to-float v7, v3

    div-float/2addr v6, v7

    .line 802
    .restart local v6    # "ratio":F
    int-to-float v7, v4

    mul-float/2addr v7, v6

    float-to-int v5, v7

    .line 805
    .end local v6    # "ratio":F
    :cond_4
    :goto_1
    const/4 v6, 0x1

    invoke-static {p0, v4, v5, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    .line 807
    .end local v0    # "systemLargeIconHeight":I
    .end local v1    # "systemLargeIconWidth":I
    .end local v2    # "bitmapHeight":I
    .end local v3    # "bitmapWidth":I
    .end local v4    # "newWidth":I
    .end local v5    # "newHeight":I
    :catch_0
    move-exception v0

    .line 809
    :goto_2
    return-object p0
.end method

.method private static safeGetColorFromHex(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3
    .param p0, "gcmBundle"    # Lorg/json/JSONObject;
    .param p1, "colorKey"    # Ljava/lang/String;

    .line 761
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 762
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 764
    :catch_0
    move-exception v0

    nop

    .line 765
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static setStatics(Landroid/content/Context;)V
    .locals 4
    .param p0, "inContext"    # Landroid/content/Context;

    .line 83
    sput-object p0, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    .line 84
    sget-object v0, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/onesignal/GenerateNotification;->packageName:Ljava/lang/String;

    .line 85
    sget-object v0, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/onesignal/GenerateNotification;->contextResources:Landroid/content/res/Resources;

    .line 87
    sget-object v0, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 88
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    const-class v3, Lcom/onesignal/NotificationOpenedReceiver;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    .local v1, "intent":Landroid/content/Intent;
    sget-object v2, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 91
    const/4 v2, 0x1

    sput-boolean v2, Lcom/onesignal/GenerateNotification;->openerIsBroadcast:Z

    .line 92
    const-class v2, Lcom/onesignal/NotificationOpenedReceiver;

    sput-object v2, Lcom/onesignal/GenerateNotification;->notificationOpenedClass:Ljava/lang/Class;

    goto :goto_0

    .line 95
    :cond_0
    const-class v2, Lcom/onesignal/NotificationOpenedActivity;

    sput-object v2, Lcom/onesignal/GenerateNotification;->notificationOpenedClass:Ljava/lang/Class;

    .line 96
    :goto_0
    return-void
.end method

.method private static setTextColor(Landroid/widget/RemoteViews;Lorg/json/JSONObject;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "customView"    # Landroid/widget/RemoteViews;
    .param p1, "gcmBundle"    # Lorg/json/JSONObject;
    .param p2, "viewId"    # I
    .param p3, "colorPayloadKey"    # Ljava/lang/String;
    .param p4, "colorDefaultResource"    # Ljava/lang/String;

    .line 749
    invoke-static {p1, p3}, Lcom/onesignal/GenerateNotification;->safeGetColorFromHex(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 750
    .local v0, "color":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 751
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, p2, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    goto :goto_0

    .line 753
    :cond_0
    sget-object v1, Lcom/onesignal/GenerateNotification;->contextResources:Landroid/content/res/Resources;

    const-string v2, "color"

    sget-object v3, Lcom/onesignal/GenerateNotification;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p4, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 754
    .local v1, "colorId":I
    if-eqz v1, :cond_1

    .line 755
    sget-object v2, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/onesignal/AndroidSupportV4Compat$ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p0, p2, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 757
    .end local v1    # "colorId":I
    :cond_1
    :goto_0
    return-void
.end method

.method private static showNotification(Lcom/onesignal/NotificationGenerationJob;)V
    .locals 10
    .param p0, "notifJob"    # Lcom/onesignal/NotificationGenerationJob;

    .line 313
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 315
    .local v0, "random":Ljava/util/Random;
    invoke-virtual {p0}, Lcom/onesignal/NotificationGenerationJob;->getAndroidId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 316
    .local v1, "notificationId":I
    iget-object v2, p0, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    .line 317
    .local v2, "gcmBundle":Lorg/json/JSONObject;
    const-string v3, "grp"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 319
    .local v3, "group":Ljava/lang/String;
    invoke-static {p0}, Lcom/onesignal/GenerateNotification;->getBaseOneSignalNotificationBuilder(Lcom/onesignal/NotificationGenerationJob;)Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;

    move-result-object v5

    .line 320
    .local v5, "oneSignalNotificationBuilder":Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;
    iget-object v6, v5, Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;->compatBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 322
    .local v6, "notifBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-static {v2, v6, v1, v4}, Lcom/onesignal/GenerateNotification;->addNotificationActionButtons(Lorg/json/JSONObject;Landroid/support/v4/app/NotificationCompat$Builder;ILjava/lang/String;)V

    .line 325
    :try_start_0
    invoke-static {v2, v6}, Lcom/onesignal/GenerateNotification;->addBackgroundImage(Lorg/json/JSONObject;Landroid/support/v4/app/NotificationCompat$Builder;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    goto :goto_0

    .line 326
    :catch_0
    move-exception v4

    .line 327
    .local v4, "t":Ljava/lang/Throwable;
    sget-object v7, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v8, "Could not set background notification image!"

    invoke-static {v7, v8, v4}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 330
    .end local v4    # "t":Ljava/lang/Throwable;
    :goto_0
    invoke-static {p0, v6}, Lcom/onesignal/GenerateNotification;->applyNotificationExtender(Lcom/onesignal/NotificationGenerationJob;Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 333
    iget-boolean v4, p0, Lcom/onesignal/NotificationGenerationJob;->restoring:Z

    if-eqz v4, :cond_0

    .line 334
    invoke-static {v6}, Lcom/onesignal/GenerateNotification;->removeNotifyOptions(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 338
    :cond_0
    if-eqz v3, :cond_1

    .line 339
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v4

    invoke-static {v1}, Lcom/onesignal/GenerateNotification;->getNewBaseIntent(I)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "onesignal_data"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "grp"

    invoke-virtual {v7, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/onesignal/GenerateNotification;->getNewActionPendingIntent(ILandroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v4

    .line 340
    .local v4, "contentIntent":Landroid/app/PendingIntent;
    invoke-virtual {v6, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 341
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v7

    invoke-static {v1}, Lcom/onesignal/GenerateNotification;->getNewBaseDeleteIntent(I)Landroid/content/Intent;

    move-result-object v8

    const-string v9, "grp"

    invoke-virtual {v8, v9, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/onesignal/GenerateNotification;->getNewActionPendingIntent(ILandroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v7

    .line 342
    .local v7, "deleteIntent":Landroid/app/PendingIntent;
    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 343
    invoke-virtual {v6, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 346
    const/4 v8, 0x1

    :try_start_1
    invoke-virtual {v6, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroupAlertBehavior(I)Landroid/support/v4/app/NotificationCompat$Builder;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 350
    goto :goto_1

    .line 348
    :catch_1
    move-exception v8

    .line 352
    :goto_1
    invoke-static {p0, v6}, Lcom/onesignal/GenerateNotification;->createSingleNotificationBeforeSummaryBuilder(Lcom/onesignal/NotificationGenerationJob;Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/app/Notification;

    move-result-object v8

    .line 354
    .local v8, "notification":Landroid/app/Notification;
    invoke-static {p0, v5}, Lcom/onesignal/GenerateNotification;->createSummaryNotification(Lcom/onesignal/NotificationGenerationJob;Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;)V

    .line 355
    .end local v4    # "contentIntent":Landroid/app/PendingIntent;
    .end local v7    # "deleteIntent":Landroid/app/PendingIntent;
    goto :goto_2

    .line 357
    .end local v8    # "notification":Landroid/app/Notification;
    :cond_1
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v4

    invoke-static {v1}, Lcom/onesignal/GenerateNotification;->getNewBaseIntent(I)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "onesignal_data"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/onesignal/GenerateNotification;->getNewActionPendingIntent(ILandroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v4

    .line 358
    .restart local v4    # "contentIntent":Landroid/app/PendingIntent;
    invoke-virtual {v6, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 359
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v7

    invoke-static {v1}, Lcom/onesignal/GenerateNotification;->getNewBaseDeleteIntent(I)Landroid/content/Intent;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/onesignal/GenerateNotification;->getNewActionPendingIntent(ILandroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v7

    .line 360
    .restart local v7    # "deleteIntent":Landroid/app/PendingIntent;
    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 361
    invoke-virtual {v6}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    .line 361
    .end local v4    # "contentIntent":Landroid/app/PendingIntent;
    .end local v7    # "deleteIntent":Landroid/app/PendingIntent;
    .restart local v8    # "notification":Landroid/app/Notification;
    :goto_2
    move-object v4, v8

    .line 370
    .end local v8    # "notification":Landroid/app/Notification;
    .local v4, "notification":Landroid/app/Notification;
    if-eqz v3, :cond_2

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x11

    if-le v7, v8, :cond_3

    .line 371
    :cond_2
    invoke-static {v5, v4}, Lcom/onesignal/GenerateNotification;->addXiaomiSettings(Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;Landroid/app/Notification;)V

    .line 372
    sget-object v7, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/support/v4/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v7

    invoke-virtual {v7, v1, v4}, Landroid/support/v4/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    .line 374
    :cond_3
    return-void
.end method

.method private static showNotificationAsAlert(Lorg/json/JSONObject;Landroid/app/Activity;I)V
    .locals 1
    .param p0, "gcmJson"    # Lorg/json/JSONObject;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "notificationId"    # I

    .line 110
    new-instance v0, Lcom/onesignal/GenerateNotification$1;

    invoke-direct {v0, p1, p0, p2}, Lcom/onesignal/GenerateNotification$1;-><init>(Landroid/app/Activity;Lorg/json/JSONObject;I)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 172
    return-void
.end method

.method static updateSummaryNotification(Lcom/onesignal/NotificationGenerationJob;)V
    .locals 1
    .param p0, "notifJob"    # Lcom/onesignal/NotificationGenerationJob;

    .line 456
    iget-object v0, p0, Lcom/onesignal/NotificationGenerationJob;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/GenerateNotification;->setStatics(Landroid/content/Context;)V

    .line 457
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/onesignal/GenerateNotification;->createSummaryNotification(Lcom/onesignal/NotificationGenerationJob;Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;)V

    .line 458
    return-void
.end method
