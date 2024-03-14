.class Lcom/onesignal/OneSignalPrefs;
.super Ljava/lang/Object;
.source "OneSignalPrefs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;
    }
.end annotation


# static fields
.field static final PREFS_EXISTING_PURCHASES:Ljava/lang/String; = "ExistingPurchases"

.field static final PREFS_GT_APP_ID:Ljava/lang/String; = "GT_APP_ID"

.field static final PREFS_GT_DO_NOT_SHOW_MISSING_GPS:Ljava/lang/String; = "GT_DO_NOT_SHOW_MISSING_GPS"

.field static final PREFS_GT_FIREBASE_TRACKING_ENABLED:Ljava/lang/String; = "GT_FIREBASE_TRACKING_ENABLED"

.field static final PREFS_GT_PLAYER_ID:Ljava/lang/String; = "GT_PLAYER_ID"

.field static final PREFS_GT_REGISTRATION_ID:Ljava/lang/String; = "GT_REGISTRATION_ID"

.field static final PREFS_GT_SOUND_ENABLED:Ljava/lang/String; = "GT_SOUND_ENABLED"

.field static final PREFS_GT_UNSENT_ACTIVE_TIME:Ljava/lang/String; = "GT_UNSENT_ACTIVE_TIME"

.field static final PREFS_GT_VIBRATE_ENABLED:Ljava/lang/String; = "GT_VIBRATE_ENABLED"

.field static final PREFS_ONESIGNAL:Ljava/lang/String;

.field static final PREFS_ONESIGNAL_ACCEPTED_NOTIFICATION_LAST:Ljava/lang/String; = "ONESIGNAL_ACCEPTED_NOTIFICATION_LAST"

.field static final PREFS_ONESIGNAL_EMAIL_ADDRESS_LAST:Ljava/lang/String; = "PREFS_ONESIGNAL_EMAIL_ADDRESS_LAST"

.field static final PREFS_ONESIGNAL_EMAIL_ID_LAST:Ljava/lang/String; = "PREFS_ONESIGNAL_EMAIL_ID_LAST"

.field static final PREFS_ONESIGNAL_PERMISSION_ACCEPTED_LAST:Ljava/lang/String; = "ONESIGNAL_PERMISSION_ACCEPTED_LAST"

.field static final PREFS_ONESIGNAL_PLAYER_ID_LAST:Ljava/lang/String; = "ONESIGNAL_PLAYER_ID_LAST"

.field static final PREFS_ONESIGNAL_PUSH_TOKEN_LAST:Ljava/lang/String; = "ONESIGNAL_PUSH_TOKEN_LAST"

.field static final PREFS_ONESIGNAL_SUBSCRIPTION:Ljava/lang/String; = "ONESIGNAL_SUBSCRIPTION"

.field static final PREFS_ONESIGNAL_SUBSCRIPTION_LAST:Ljava/lang/String; = "ONESIGNAL_SUBSCRIPTION_LAST"

.field static final PREFS_ONESIGNAL_SYNCED_SUBSCRIPTION:Ljava/lang/String; = "ONESIGNAL_SYNCED_SUBSCRIPTION"

.field static final PREFS_ONESIGNAL_USERSTATE_DEPENDVALYES_:Ljava/lang/String; = "ONESIGNAL_USERSTATE_DEPENDVALYES_"

.field static final PREFS_ONESIGNAL_USERSTATE_SYNCVALYES_:Ljava/lang/String; = "ONESIGNAL_USERSTATE_SYNCVALYES_"

.field static final PREFS_ONESIGNAL_USER_PROVIDED_CONSENT:Ljava/lang/String; = "ONESIGNAL_USER_PROVIDED_CONSENT"

.field static final PREFS_OS_EMAIL_ID:Ljava/lang/String; = "OS_EMAIL_ID"

.field static final PREFS_OS_FILTER_OTHER_GCM_RECEIVERS:Ljava/lang/String; = "OS_FILTER_OTHER_GCM_RECEIVERS"

.field static final PREFS_OS_LAST_LOCATION_TIME:Ljava/lang/String; = "OS_LAST_LOCATION_TIME"

.field static final PREFS_OS_LAST_SESSION_TIME:Ljava/lang/String; = "OS_LAST_SESSION_TIME"

.field static final PREFS_PLAYER_PURCHASES:Ljava/lang/String; = "GTPlayerPurchases"

.field static final PREFS_PURCHASE_TOKENS:Ljava/lang/String; = "purchaseTokens"

.field public static prefsHandler:Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;

.field static prefsToApply:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field static final synchronizer:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-class v0, Lcom/onesignal/OneSignal;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/onesignal/OneSignalPrefs;->synchronizer:Ljava/lang/Object;

    .line 81
    invoke-static {}, Lcom/onesignal/OneSignalPrefs;->initializePool()V

    .line 82
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 38
    invoke-static {p0}, Lcom/onesignal/OneSignalPrefs;->getSharedPrefsByName(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p0, "prefsName"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/Class;
    .param p3, "defValue"    # Ljava/lang/Object;

    .line 197
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->synchronizer:Ljava/lang/Object;

    monitor-enter v0

    .line 198
    :try_start_0
    sget-object v1, Lcom/onesignal/OneSignalPrefs;->prefsToApply:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 200
    .local v1, "pref":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-class v2, Ljava/lang/Object;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 201
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 203
    :cond_0
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 204
    .local v2, "cachedValue":Ljava/lang/Object;
    if-nez v2, :cond_8

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_0

    .line 208
    :cond_1
    invoke-static {p0}, Lcom/onesignal/OneSignalPrefs;->getSharedPrefsByName(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 209
    .local v3, "prefs":Landroid/content/SharedPreferences;
    if-eqz v3, :cond_7

    .line 210
    const-class v4, Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 211
    move-object v4, p3

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3, p1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    monitor-exit v0

    return-object v4

    .line 212
    :cond_2
    const-class v4, Ljava/lang/Boolean;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 213
    move-object v4, p3

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v3, p1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    monitor-exit v0

    return-object v4

    .line 214
    :cond_3
    const-class v4, Ljava/lang/Integer;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 215
    move-object v4, p3

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, p1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    monitor-exit v0

    return-object v4

    .line 216
    :cond_4
    const-class v4, Ljava/lang/Long;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 217
    move-object v4, p3

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v3, p1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    monitor-exit v0

    return-object v4

    .line 218
    :cond_5
    const-class v4, Ljava/lang/Object;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 219
    invoke-interface {v3, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    monitor-exit v0

    return-object v4

    .line 221
    :cond_6
    const/4 v4, 0x0

    monitor-exit v0

    return-object v4

    .line 224
    :cond_7
    monitor-exit v0

    return-object p3

    .line 205
    .end local v3    # "prefs":Landroid/content/SharedPreferences;
    :cond_8
    :goto_0
    monitor-exit v0

    return-object v2

    .line 225
    .end local v1    # "pref":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "cachedValue":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static getBool(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "prefsName"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .line 184
    const-class v0, Ljava/lang/Boolean;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, p1, v0, v1}, Lcom/onesignal/OneSignalPrefs;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method static getInt(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .param p0, "prefsName"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .line 188
    const-class v0, Ljava/lang/Integer;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, p1, v0, v1}, Lcom/onesignal/OneSignalPrefs;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method static getLong(Ljava/lang/String;Ljava/lang/String;J)J
    .locals 2
    .param p0, "prefsName"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # J

    .line 192
    const-class v0, Ljava/lang/Long;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, p1, v0, v1}, Lcom/onesignal/OneSignalPrefs;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private static declared-synchronized getSharedPrefsByName(Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 3
    .param p0, "prefsName"    # Ljava/lang/String;

    const-class v0, Lcom/onesignal/OneSignalPrefs;

    monitor-enter v0

    .line 229
    :try_start_0
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 230
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 232
    :cond_0
    :try_start_1
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    .line 228
    .end local p0    # "prefsName":Ljava/lang/String;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "prefsName"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .line 180
    const-class v0, Ljava/lang/String;

    invoke-static {p0, p1, v0, p2}, Lcom/onesignal/OneSignalPrefs;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static initializePool()V
    .locals 4

    .line 145
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->synchronizer:Ljava/lang/Object;

    monitor-enter v0

    .line 146
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/onesignal/OneSignalPrefs;->prefsToApply:Ljava/util/HashMap;

    .line 147
    sget-object v1, Lcom/onesignal/OneSignalPrefs;->prefsToApply:Ljava/util/HashMap;

    sget-object v2, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v1, Lcom/onesignal/OneSignalPrefs;->prefsToApply:Ljava/util/HashMap;

    const-string v2, "GTPlayerPurchases"

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    new-instance v1, Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;

    invoke-direct {v1}, Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;-><init>()V

    sput-object v1, Lcom/onesignal/OneSignalPrefs;->prefsHandler:Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;

    .line 151
    monitor-exit v0

    .line 152
    return-void

    .line 151
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static save(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p0, "prefsName"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 171
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->synchronizer:Ljava/lang/Object;

    monitor-enter v0

    .line 172
    :try_start_0
    sget-object v1, Lcom/onesignal/OneSignalPrefs;->prefsToApply:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 173
    .local v1, "pref":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v2, Lcom/onesignal/OneSignalPrefs;->prefsHandler:Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;

    invoke-virtual {v2}, Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;->startDelayedWrite()V

    .line 176
    .end local v1    # "pref":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    monitor-exit v0

    .line 177
    return-void

    .line 176
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static saveBool(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "prefsName"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 159
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/onesignal/OneSignalPrefs;->save(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 160
    return-void
.end method

.method static saveInt(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p0, "prefsName"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 163
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/onesignal/OneSignalPrefs;->save(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 164
    return-void
.end method

.method static saveLong(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .param p0, "prefsName"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 167
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/onesignal/OneSignalPrefs;->save(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 168
    return-void
.end method

.method static saveString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "prefsName"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 155
    invoke-static {p0, p1, p2}, Lcom/onesignal/OneSignalPrefs;->save(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 156
    return-void
.end method
