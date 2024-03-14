.class final Lcom/onesignal/OneSignal$14;
.super Ljava/lang/Object;
.source "OneSignal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignal;->internalFireGetTagsCallback(Lcom/onesignal/OneSignal$GetTagsHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$getTagsHandler:Lcom/onesignal/OneSignal$GetTagsHandler;


# direct methods
.method constructor <init>(Lcom/onesignal/OneSignal$GetTagsHandler;)V
    .locals 0

    .line 1584
    iput-object p1, p0, Lcom/onesignal/OneSignal$14;->val$getTagsHandler:Lcom/onesignal/OneSignal$GetTagsHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1587
    invoke-static {}, Lcom/onesignal/OneSignal;->access$2800()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/onesignal/OneSignalStateSynchronizer;->getTags(Z)Lcom/onesignal/UserStateSynchronizer$GetTagsResult;

    move-result-object v0

    .line 1588
    .local v0, "tags":Lcom/onesignal/UserStateSynchronizer$GetTagsResult;
    iget-boolean v2, v0, Lcom/onesignal/UserStateSynchronizer$GetTagsResult;->serverSuccess:Z

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/onesignal/OneSignal;->access$2802(Z)Z

    .line 1589
    :cond_0
    iget-object v1, v0, Lcom/onesignal/UserStateSynchronizer$GetTagsResult;->result:Lorg/json/JSONObject;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "{}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 1592
    :cond_1
    iget-object v1, p0, Lcom/onesignal/OneSignal$14;->val$getTagsHandler:Lcom/onesignal/OneSignal$GetTagsHandler;

    iget-object v2, v0, Lcom/onesignal/UserStateSynchronizer$GetTagsResult;->result:Lorg/json/JSONObject;

    invoke-interface {v1, v2}, Lcom/onesignal/OneSignal$GetTagsHandler;->tagsAvailable(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 1590
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/onesignal/OneSignal$14;->val$getTagsHandler:Lcom/onesignal/OneSignal$GetTagsHandler;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/onesignal/OneSignal$GetTagsHandler;->tagsAvailable(Lorg/json/JSONObject;)V

    .line 1593
    :goto_1
    return-void
.end method
