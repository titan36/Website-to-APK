.class Lcom/onesignal/TrackAmazonPurchase$OSPurchasingListener;
.super Ljava/lang/Object;
.source "TrackAmazonPurchase.java"

# interfaces
.implements Lcom/amazon/device/iap/PurchasingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/TrackAmazonPurchase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OSPurchasingListener"
.end annotation


# instance fields
.field private currentMarket:Ljava/lang/String;

.field private lastRequestId:Lcom/amazon/device/iap/model/RequestId;

.field orgPurchasingListener:Lcom/amazon/device/iap/PurchasingListener;

.field final synthetic this$0:Lcom/onesignal/TrackAmazonPurchase;


# direct methods
.method private constructor <init>(Lcom/onesignal/TrackAmazonPurchase;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/onesignal/TrackAmazonPurchase$OSPurchasingListener;->this$0:Lcom/onesignal/TrackAmazonPurchase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/onesignal/TrackAmazonPurchase;Lcom/onesignal/TrackAmazonPurchase$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/onesignal/TrackAmazonPurchase;
    .param p2, "x1"    # Lcom/onesignal/TrackAmazonPurchase$1;

    .line 97
    invoke-direct {p0, p1}, Lcom/onesignal/TrackAmazonPurchase$OSPurchasingListener;-><init>(Lcom/onesignal/TrackAmazonPurchase;)V

    return-void
.end method

.method private marketToCurrencyCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "market"    # Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x834

    if-eq v0, v1, :cond_9

    const/16 v1, 0x850

    if-eq v0, v1, :cond_8

    const/16 v1, 0x85e

    if-eq v0, v1, :cond_7

    const/16 v1, 0x881

    if-eq v0, v1, :cond_6

    const/16 v1, 0x8ae

    if-eq v0, v1, :cond_5

    const/16 v1, 0x8cc

    if-eq v0, v1, :cond_4

    const/16 v1, 0x8db

    if-eq v0, v1, :cond_3

    const/16 v1, 0x92b

    if-eq v0, v1, :cond_2

    const/16 v1, 0x946

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa9e

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v0, "US"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v0, "JP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x6

    goto :goto_1

    :cond_2
    const-string v0, "IT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x5

    goto :goto_1

    :cond_3
    const-string v0, "GB"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const-string v0, "FR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x3

    goto :goto_1

    :cond_5
    const-string v0, "ES"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x4

    goto :goto_1

    :cond_6
    const-string v0, "DE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x2

    goto :goto_1

    :cond_7
    const-string v0, "CA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x7

    goto :goto_1

    :cond_8
    const-string v0, "BR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0x8

    goto :goto_1

    :cond_9
    const-string v0, "AU"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0x9

    goto :goto_1

    :cond_a
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 124
    const-string v0, ""

    return-object v0

    .line 121
    :pswitch_0
    const-string v0, "AUD"

    return-object v0

    .line 119
    :pswitch_1
    const-string v0, "BRL"

    return-object v0

    .line 117
    :pswitch_2
    const-string v0, "CDN"

    return-object v0

    .line 115
    :pswitch_3
    const-string v0, "JPY"

    return-object v0

    .line 113
    :pswitch_4
    const-string v0, "EUR"

    return-object v0

    .line 108
    :pswitch_5
    const-string v0, "GBP"

    return-object v0

    .line 106
    :pswitch_6
    const-string v0, "USD"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onProductDataResponse(Lcom/amazon/device/iap/model/ProductDataResponse;)V
    .locals 9
    .param p1, "response"    # Lcom/amazon/device/iap/model/ProductDataResponse;

    .line 129
    iget-object v0, p0, Lcom/onesignal/TrackAmazonPurchase$OSPurchasingListener;->lastRequestId:Lcom/amazon/device/iap/model/RequestId;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/onesignal/TrackAmazonPurchase$OSPurchasingListener;->lastRequestId:Lcom/amazon/device/iap/model/RequestId;

    invoke-virtual {v0}, Lcom/amazon/device/iap/model/RequestId;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/device/iap/model/ProductDataResponse;->getRequestId()Lcom/amazon/device/iap/model/RequestId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/iap/model/RequestId;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 131
    :try_start_0
    sget-object v0, Lcom/onesignal/TrackAmazonPurchase$1;->$SwitchMap$com$amazon$device$iap$model$ProductDataResponse$RequestStatus:[I

    invoke-virtual {p1}, Lcom/amazon/device/iap/model/ProductDataResponse;->getRequestStatus()Lcom/amazon/device/iap/model/ProductDataResponse$RequestStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/iap/model/ProductDataResponse$RequestStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 133
    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 134
    .local v0, "purchasesToReport":Lorg/json/JSONArray;
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/ProductDataResponse;->getProductData()Ljava/util/Map;

    move-result-object v2

    .line 135
    .local v2, "products":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/amazon/device/iap/model/Product;>;"
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 136
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/device/iap/model/Product;

    .line 138
    .local v5, "product":Lcom/amazon/device/iap/model/Product;
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 139
    .local v6, "jsonItem":Lorg/json/JSONObject;
    const-string v7, "sku"

    invoke-virtual {v5}, Lcom/amazon/device/iap/model/Product;->getSku()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    const-string v7, "iso"

    iget-object v8, p0, Lcom/onesignal/TrackAmazonPurchase$OSPurchasingListener;->currentMarket:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/onesignal/TrackAmazonPurchase$OSPurchasingListener;->marketToCurrencyCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 142
    invoke-virtual {v5}, Lcom/amazon/device/iap/model/Product;->getPrice()Ljava/lang/String;

    move-result-object v7

    .line 143
    .local v7, "price":Ljava/lang/String;
    const-string v8, "^[0-9]"

    invoke-virtual {v7, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 144
    invoke-virtual {v7, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 145
    :cond_1
    const-string v8, "amount"

    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 148
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "product":Lcom/amazon/device/iap/model/Product;
    .end local v6    # "jsonItem":Lorg/json/JSONObject;
    .end local v7    # "price":Ljava/lang/String;
    goto :goto_0

    .line 149
    :cond_2
    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Lcom/onesignal/OneSignal;->sendPurchases(Lorg/json/JSONArray;ZLcom/onesignal/OneSignalRestClient$ResponseHandler;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .end local v0    # "purchasesToReport":Lorg/json/JSONArray;
    .end local v2    # "products":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/amazon/device/iap/model/Product;>;"
    goto :goto_1

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 154
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_1
    goto :goto_2

    .line 155
    :cond_3
    iget-object v0, p0, Lcom/onesignal/TrackAmazonPurchase$OSPurchasingListener;->orgPurchasingListener:Lcom/amazon/device/iap/PurchasingListener;

    if-eqz v0, :cond_4

    .line 156
    iget-object v0, p0, Lcom/onesignal/TrackAmazonPurchase$OSPurchasingListener;->orgPurchasingListener:Lcom/amazon/device/iap/PurchasingListener;

    invoke-interface {v0, p1}, Lcom/amazon/device/iap/PurchasingListener;->onProductDataResponse(Lcom/amazon/device/iap/model/ProductDataResponse;)V

    .line 157
    :cond_4
    :goto_2
    return-void
.end method

.method public onPurchaseResponse(Lcom/amazon/device/iap/model/PurchaseResponse;)V
    .locals 3
    .param p1, "response"    # Lcom/amazon/device/iap/model/PurchaseResponse;

    .line 162
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseResponse;->getRequestStatus()Lcom/amazon/device/iap/model/PurchaseResponse$RequestStatus;

    move-result-object v0

    .line 164
    .local v0, "status":Lcom/amazon/device/iap/model/PurchaseResponse$RequestStatus;
    sget-object v1, Lcom/amazon/device/iap/model/PurchaseResponse$RequestStatus;->SUCCESSFUL:Lcom/amazon/device/iap/model/PurchaseResponse$RequestStatus;

    if-ne v0, v1, :cond_0

    .line 165
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseResponse;->getUserData()Lcom/amazon/device/iap/model/UserData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/iap/model/UserData;->getMarketplace()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/onesignal/TrackAmazonPurchase$OSPurchasingListener;->currentMarket:Ljava/lang/String;

    .line 167
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 168
    .local v1, "productSkus":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseResponse;->getReceipt()Lcom/amazon/device/iap/model/Receipt;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/device/iap/model/Receipt;->getSku()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 169
    invoke-static {v1}, Lcom/amazon/device/iap/PurchasingService;->getProductData(Ljava/util/Set;)Lcom/amazon/device/iap/model/RequestId;

    move-result-object v2

    iput-object v2, p0, Lcom/onesignal/TrackAmazonPurchase$OSPurchasingListener;->lastRequestId:Lcom/amazon/device/iap/model/RequestId;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .end local v0    # "status":Lcom/amazon/device/iap/model/PurchaseResponse$RequestStatus;
    .end local v1    # "productSkus":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    goto :goto_0

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 175
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    iget-object v0, p0, Lcom/onesignal/TrackAmazonPurchase$OSPurchasingListener;->orgPurchasingListener:Lcom/amazon/device/iap/PurchasingListener;

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/onesignal/TrackAmazonPurchase$OSPurchasingListener;->orgPurchasingListener:Lcom/amazon/device/iap/PurchasingListener;

    invoke-interface {v0, p1}, Lcom/amazon/device/iap/PurchasingListener;->onPurchaseResponse(Lcom/amazon/device/iap/model/PurchaseResponse;)V

    .line 177
    :cond_1
    return-void
.end method

.method public onPurchaseUpdatesResponse(Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;)V
    .locals 1
    .param p1, "response"    # Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;

    .line 181
    iget-object v0, p0, Lcom/onesignal/TrackAmazonPurchase$OSPurchasingListener;->orgPurchasingListener:Lcom/amazon/device/iap/PurchasingListener;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/onesignal/TrackAmazonPurchase$OSPurchasingListener;->orgPurchasingListener:Lcom/amazon/device/iap/PurchasingListener;

    invoke-interface {v0, p1}, Lcom/amazon/device/iap/PurchasingListener;->onPurchaseUpdatesResponse(Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;)V

    .line 183
    :cond_0
    return-void
.end method

.method public onUserDataResponse(Lcom/amazon/device/iap/model/UserDataResponse;)V
    .locals 1
    .param p1, "response"    # Lcom/amazon/device/iap/model/UserDataResponse;

    .line 187
    iget-object v0, p0, Lcom/onesignal/TrackAmazonPurchase$OSPurchasingListener;->orgPurchasingListener:Lcom/amazon/device/iap/PurchasingListener;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/onesignal/TrackAmazonPurchase$OSPurchasingListener;->orgPurchasingListener:Lcom/amazon/device/iap/PurchasingListener;

    invoke-interface {v0, p1}, Lcom/amazon/device/iap/PurchasingListener;->onUserDataResponse(Lcom/amazon/device/iap/model/UserDataResponse;)V

    .line 189
    :cond_0
    return-void
.end method
