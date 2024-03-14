.class public Lcom/onesignal/shortcutbadger/impl/SamsungHomeBadger;
.super Ljava/lang/Object;
.source "SamsungHomeBadger.java"

# interfaces
.implements Lcom/onesignal/shortcutbadger/Badger;


# static fields
.field private static final CONTENT_PROJECTION:[Ljava/lang/String;

.field private static final CONTENT_URI:Ljava/lang/String; = "content://com.sec.badge/apps?notify=true"


# instance fields
.field private defaultBadger:Lcom/onesignal/shortcutbadger/impl/DefaultBadger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 24
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "class"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/onesignal/shortcutbadger/impl/SamsungHomeBadger;->CONTENT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 30
    new-instance v0, Lcom/onesignal/shortcutbadger/impl/DefaultBadger;

    invoke-direct {v0}, Lcom/onesignal/shortcutbadger/impl/DefaultBadger;-><init>()V

    iput-object v0, p0, Lcom/onesignal/shortcutbadger/impl/SamsungHomeBadger;->defaultBadger:Lcom/onesignal/shortcutbadger/impl/DefaultBadger;

    .line 32
    :cond_0
    return-void
.end method

.method private getContentValues(Landroid/content/ComponentName;IZ)Landroid/content/ContentValues;
    .locals 3
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "badgeCount"    # I
    .param p3, "isInsert"    # Z

    .line 68
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 69
    .local v0, "contentValues":Landroid/content/ContentValues;
    if-eqz p3, :cond_0

    .line 70
    const-string v1, "package"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v1, "class"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_0
    const-string v1, "badgecount"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 76
    return-object v0
.end method


# virtual methods
.method public executeBadge(Landroid/content/Context;Landroid/content/ComponentName;I)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "badgeCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/onesignal/shortcutbadger/ShortcutBadgeException;
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/onesignal/shortcutbadger/impl/SamsungHomeBadger;->defaultBadger:Lcom/onesignal/shortcutbadger/impl/DefaultBadger;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onesignal/shortcutbadger/impl/SamsungHomeBadger;->defaultBadger:Lcom/onesignal/shortcutbadger/impl/DefaultBadger;

    invoke-virtual {v0, p1}, Lcom/onesignal/shortcutbadger/impl/DefaultBadger;->isSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/onesignal/shortcutbadger/impl/SamsungHomeBadger;->defaultBadger:Lcom/onesignal/shortcutbadger/impl/DefaultBadger;

    invoke-virtual {v0, p1, p2, p3}, Lcom/onesignal/shortcutbadger/impl/DefaultBadger;->executeBadge(Landroid/content/Context;Landroid/content/ComponentName;I)V

    goto :goto_1

    .line 39
    :cond_0
    const-string v0, "content://com.sec.badge/apps?notify=true"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 40
    .local v0, "mUri":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 41
    .local v7, "contentResolver":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    move-object v8, v1

    .line 43
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v3, Lcom/onesignal/shortcutbadger/impl/SamsungHomeBadger;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v4, "package=?"

    const/4 v9, 0x1

    new-array v5, v9, [Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v10, 0x0

    aput-object v1, v5, v10

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v8, v1

    .line 44
    if-eqz v8, :cond_3

    .line 45
    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "entryActivityName":Ljava/lang/String;
    move v2, v10

    .line 47
    .local v2, "entryActivityExist":Z
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 48
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 49
    .local v3, "id":I
    invoke-direct {p0, p2, p3, v10}, Lcom/onesignal/shortcutbadger/impl/SamsungHomeBadger;->getContentValues(Landroid/content/ComponentName;IZ)Landroid/content/ContentValues;

    move-result-object v4

    .line 50
    .local v4, "contentValues":Landroid/content/ContentValues;
    const-string v5, "_id=?"

    new-array v6, v9, [Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v10

    invoke-virtual {v7, v0, v4, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 51
    const-string v5, "class"

    invoke-interface {v8, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v8, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 52
    const/4 v2, 0x1

    .line 54
    .end local v3    # "id":I
    .end local v4    # "contentValues":Landroid/content/ContentValues;
    :cond_1
    goto :goto_0

    .line 56
    :cond_2
    if-nez v2, :cond_3

    .line 57
    invoke-direct {p0, p2, p3, v9}, Lcom/onesignal/shortcutbadger/impl/SamsungHomeBadger;->getContentValues(Landroid/content/ComponentName;IZ)Landroid/content/ContentValues;

    move-result-object v3

    .line 58
    .local v3, "contentValues":Landroid/content/ContentValues;
    invoke-virtual {v7, v0, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .end local v1    # "entryActivityName":Ljava/lang/String;
    .end local v2    # "entryActivityExist":Z
    .end local v3    # "contentValues":Landroid/content/ContentValues;
    :cond_3
    invoke-static {v8}, Lcom/onesignal/shortcutbadger/util/CloseHelper;->close(Landroid/database/Cursor;)V

    .line 63
    nop

    .line 65
    .end local v0    # "mUri":Landroid/net/Uri;
    .end local v7    # "contentResolver":Landroid/content/ContentResolver;
    .end local v8    # "cursor":Landroid/database/Cursor;
    :goto_1
    return-void

    .line 62
    .restart local v0    # "mUri":Landroid/net/Uri;
    .restart local v7    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    invoke-static {v8}, Lcom/onesignal/shortcutbadger/util/CloseHelper;->close(Landroid/database/Cursor;)V

    throw v1
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

    .line 81
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.sec.android.app.launcher"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "com.sec.android.app.twlauncher"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
