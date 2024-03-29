.class public Lcom/onesignal/shortcutbadger/impl/AdwHomeBadger;
.super Ljava/lang/Object;
.source "AdwHomeBadger.java"

# interfaces
.implements Lcom/onesignal/shortcutbadger/Badger;


# static fields
.field public static final CLASSNAME:Ljava/lang/String; = "CNAME"

.field public static final COUNT:Ljava/lang/String; = "COUNT"

.field public static final INTENT_UPDATE_COUNTER:Ljava/lang/String; = "org.adw.launcher.counter.SEND"

.field public static final PACKAGENAME:Ljava/lang/String; = "PNAME"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeBadge(Landroid/content/Context;Landroid/content/ComponentName;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "badgeCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/onesignal/shortcutbadger/ShortcutBadgeException;
        }
    .end annotation

    .line 28
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.adw.launcher.counter.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 29
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "PNAME"

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    const-string v1, "CNAME"

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    const-string v1, "COUNT"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 32
    invoke-static {p1, v0}, Lcom/onesignal/shortcutbadger/util/BroadcastHelper;->canResolveBroadcast(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 37
    return-void

    .line 35
    :cond_0
    new-instance v1, Lcom/onesignal/shortcutbadger/ShortcutBadgeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to resolve intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/onesignal/shortcutbadger/ShortcutBadgeException;-><init>(Ljava/lang/String;)V

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

    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "org.adw.launcher"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "org.adwfreak.launcher"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
