.class Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$2;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;->notifyChildrenChanged(Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;

.field final synthetic val$options:Landroid/os/Bundle;

.field final synthetic val$parentId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$1"    # Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;

    .line 210
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$2;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;

    iput-object p2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$2;->val$parentId:Ljava/lang/String;

    iput-object p3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$2;->val$options:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 213
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$2;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserServiceCompat;->mConnections:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    .line 214
    .local v1, "binder":Landroid/os/IBinder;
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$2;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserServiceCompat;->mConnections:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;

    .line 215
    .local v2, "connection":Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;
    iget-object v3, v2, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->subscriptions:Ljava/util/HashMap;

    iget-object v4, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$2;->val$parentId:Ljava/lang/String;

    .line 216
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 217
    .local v3, "callbackList":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/util/Pair<Landroid/os/IBinder;Landroid/os/Bundle;>;>;"
    if-eqz v3, :cond_1

    .line 218
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/util/Pair;

    .line 219
    .local v5, "callback":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Landroid/os/IBinder;Landroid/os/Bundle;>;"
    iget-object v6, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$2;->val$options:Landroid/os/Bundle;

    iget-object v7, v5, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Landroid/os/Bundle;

    invoke-static {v6, v7}, Landroid/support/v4/media/MediaBrowserCompatUtils;->hasDuplicatedItems(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 221
    iget-object v6, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$2;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;

    iget-object v6, v6, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v7, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$2;->val$parentId:Ljava/lang/String;

    iget-object v8, v5, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    invoke-virtual {v6, v7, v2, v8}, Landroid/support/v4/media/MediaBrowserServiceCompat;->performLoadChildren(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;Landroid/os/Bundle;)V

    .line 223
    .end local v5    # "callback":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Landroid/os/IBinder;Landroid/os/Bundle;>;"
    :cond_0
    goto :goto_1

    .line 225
    .end local v1    # "binder":Landroid/os/IBinder;
    .end local v2    # "connection":Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;
    .end local v3    # "callbackList":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/util/Pair<Landroid/os/IBinder;Landroid/os/Bundle;>;>;"
    :cond_1
    goto :goto_0

    .line 226
    :cond_2
    return-void
.end method