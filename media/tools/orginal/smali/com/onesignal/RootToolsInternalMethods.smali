.class Lcom/onesignal/RootToolsInternalMethods;
.super Ljava/lang/Object;
.source "RootToolsInternalMethods.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isRooted()Z
    .locals 9

    .line 28
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "/sbin/"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "/system/bin/"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "/system/xbin/"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "/data/local/xbin/"

    const/4 v4, 0x3

    aput-object v1, v0, v4

    const-string v1, "/data/local/bin/"

    const/4 v4, 0x4

    aput-object v1, v0, v4

    const-string v1, "/system/sd/xbin/"

    const/4 v4, 0x5

    aput-object v1, v0, v4

    const-string v1, "/system/bin/failsafe/"

    const/4 v4, 0x6

    aput-object v1, v0, v4

    const-string v1, "/data/local/"

    const/4 v4, 0x7

    aput-object v1, v0, v4

    .line 33
    .local v0, "places":[Ljava/lang/String;
    array-length v1, v0

    move v4, v2

    :goto_0
    if-ge v4, v1, :cond_1

    aget-object v5, v0, v4

    .line 34
    .local v5, "where":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "su"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 35
    return v3

    .line 33
    .end local v5    # "where":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 38
    :cond_1
    return v2
.end method
