.class Lcom/onesignal/BadgeCountUpdater;
.super Ljava/lang/Object;
.source "BadgeCountUpdater.java"


# static fields
.field private static badgesEnabled:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const/4 v0, -0x1

    sput v0, Lcom/onesignal/BadgeCountUpdater;->badgesEnabled:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static areBadgeSettingsEnabled(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 45
    sget v0, Lcom/onesignal/BadgeCountUpdater;->badgesEnabled:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 46
    sget v0, Lcom/onesignal/BadgeCountUpdater;->badgesEnabled:I

    if-ne v0, v2, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1

    .line 49
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 50
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 51
    .local v3, "bundle":Landroid/os/Bundle;
    if-eqz v3, :cond_2

    .line 52
    const-string v4, "com.onesignal.BadgeCount"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 53
    .local v4, "defaultStr":Ljava/lang/String;
    const-string v5, "DISABLE"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/2addr v5, v2

    sput v5, Lcom/onesignal/BadgeCountUpdater;->badgesEnabled:I

    .line 54
    .end local v4    # "defaultStr":Ljava/lang/String;
    goto :goto_0

    .line 56
    :cond_2
    sput v2, Lcom/onesignal/BadgeCountUpdater;->badgesEnabled:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "bundle":Landroid/os/Bundle;
    :goto_0
    goto :goto_1

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "t":Ljava/lang/Throwable;
    sput v1, Lcom/onesignal/BadgeCountUpdater;->badgesEnabled:I

    .line 59
    sget-object v3, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v4, "Error reading meta-data tag \'com.onesignal.BadgeCount\'. Disabling badge setting."

    invoke-static {v3, v4, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_1
    sget v0, Lcom/onesignal/BadgeCountUpdater;->badgesEnabled:I

    if-ne v0, v2, :cond_3

    move v1, v2

    nop

    :cond_3
    return v1
.end method

.method private static areBadgesEnabled(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 66
    invoke-static {p0}, Lcom/onesignal/BadgeCountUpdater;->areBadgeSettingsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/onesignal/OSUtils;->areNotificationsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V
    .locals 9
    .param p0, "readableDb"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "context"    # Landroid/content/Context;

    .line 70
    invoke-static {p1}, Lcom/onesignal/BadgeCountUpdater;->areBadgesEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    return-void

    .line 73
    :cond_0
    const-string v2, "notification"

    const/4 v3, 0x0

    const-string v4, "dismissed = 0 AND opened = 0 AND is_summary = 0 "

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 85
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-static {v1, p1}, Lcom/onesignal/BadgeCountUpdater;->updateCount(ILandroid/content/Context;)V

    .line 86
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 87
    return-void
.end method

.method static updateCount(ILandroid/content/Context;)V
    .locals 1
    .param p0, "count"    # I
    .param p1, "context"    # Landroid/content/Context;

    .line 90
    invoke-static {p1}, Lcom/onesignal/BadgeCountUpdater;->areBadgeSettingsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    return-void

    .line 96
    :cond_0
    :try_start_0
    invoke-static {p1, p0}, Lcom/onesignal/shortcutbadger/ShortcutBadger;->applyCountOrThrow(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    goto :goto_0

    :catch_0
    move-exception v0

    .line 98
    :goto_0
    return-void
.end method
