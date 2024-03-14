.class public Lcom/onesignal/shortcutbadger/impl/XiaomiHomeBadger;
.super Ljava/lang/Object;
.source "XiaomiHomeBadger.java"

# interfaces
.implements Lcom/onesignal/shortcutbadger/Badger;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final EXTRA_UPDATE_APP_COMPONENT_NAME:Ljava/lang/String; = "android.intent.extra.update_application_component_name"

.field public static final EXTRA_UPDATE_APP_MSG_TEXT:Ljava/lang/String; = "android.intent.extra.update_application_message_text"

.field public static final INTENT_ACTION:Ljava/lang/String; = "android.intent.action.APPLICATION_MESSAGE_UPDATE"


# instance fields
.field private resolveInfo:Landroid/content/pm/ResolveInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private tryNewMiuiBadge(Landroid/content/Context;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "badgeCount"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/onesignal/shortcutbadger/ShortcutBadgeException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/onesignal/shortcutbadger/impl/XiaomiHomeBadger;->resolveInfo:Landroid/content/pm/ResolveInfo;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 65
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/onesignal/shortcutbadger/impl/XiaomiHomeBadger;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 69
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v0, p0, Lcom/onesignal/shortcutbadger/impl/XiaomiHomeBadger;->resolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_1

    .line 70
    const-string v0, "notification"

    .line 71
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 72
    .local v0, "mNotificationManager":Landroid/app/NotificationManager;
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, ""

    .line 73
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const-string v2, ""

    .line 74
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/onesignal/shortcutbadger/impl/XiaomiHomeBadger;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 75
    invoke-virtual {v2}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 76
    .local v1, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 78
    .local v2, "notification":Landroid/app/Notification;
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "extraNotification"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 79
    .local v3, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 80
    .local v4, "extraNotification":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "setMessageCount"

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-virtual {v5, v6, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 81
    .local v5, "method":Ljava/lang/reflect/Method;
    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-virtual {v0, v10, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .end local v4    # "extraNotification":Ljava/lang/Object;
    .end local v5    # "method":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 83
    :catch_0
    move-exception v3

    .line 84
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/onesignal/shortcutbadger/ShortcutBadgeException;

    const-string v5, "not able to set badge"

    invoke-direct {v4, v5, v3}, Lcom/onesignal/shortcutbadger/ShortcutBadgeException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 87
    .end local v0    # "mNotificationManager":Landroid/app/NotificationManager;
    .end local v1    # "builder":Landroid/app/Notification$Builder;
    .end local v2    # "notification":Landroid/app/Notification;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public executeBadge(Landroid/content/Context;Landroid/content/ComponentName;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "badgeCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/onesignal/shortcutbadger/ShortcutBadgeException;
        }
    .end annotation

    .line 38
    :try_start_0
    const-string v0, "android.app.MiuiNotification"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 39
    .local v0, "miuiNotificationClass":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 40
    .local v1, "miuiNotification":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "messageCount"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 41
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 43
    if-nez p3, :cond_0

    :try_start_1
    const-string v3, ""

    goto :goto_0

    .line 44
    :catch_0
    move-exception v3

    goto :goto_1

    .line 43
    :cond_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 46
    goto :goto_2

    .line 44
    :goto_1
    nop

    .line 45
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 55
    .end local v0    # "miuiNotificationClass":Ljava/lang/Class;
    .end local v1    # "miuiNotification":Ljava/lang/Object;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_2
    goto :goto_4

    .line 47
    :catch_1
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.APPLICATION_MESSAGE_UPDATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 50
    .local v1, "localIntent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.update_application_component_name"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    const-string v2, "android.intent.extra.update_application_message_text"

    if-nez p3, :cond_1

    const-string v3, ""

    goto :goto_3

    :cond_1
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_3
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    invoke-static {p1, v1}, Lcom/onesignal/shortcutbadger/util/BroadcastHelper;->canResolveBroadcast(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 53
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 56
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "localIntent":Landroid/content/Intent;
    :cond_2
    :goto_4
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Xiaomi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 57
    invoke-direct {p0, p1, p3}, Lcom/onesignal/shortcutbadger/impl/XiaomiHomeBadger;->tryNewMiuiBadge(Landroid/content/Context;I)V

    .line 59
    :cond_3
    return-void
.end method

.method public getSupportLaunchers()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 91
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.miui.miuilite"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "com.miui.home"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "com.miui.miuihome"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "com.miui.miuihome2"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "com.miui.mihome"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "com.miui.mihome2"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "com.i.miui.launcher"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
