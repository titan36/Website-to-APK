.class Lcom/onesignal/OneSignalRestClient;
.super Ljava/lang/Object;
.source "OneSignalRestClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/OneSignalRestClient$ResponseHandler;
    }
.end annotation


# static fields
.field private static final BASE_URL:Ljava/lang/String; = "https://onesignal.com/api/v1/"

.field private static final GET_TIMEOUT:I = 0xea60

.field private static final TIMEOUT:I = 0x1d4c0


# direct methods
.method constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;I)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lorg/json/JSONObject;
    .param p3, "x3"    # Lcom/onesignal/OneSignalRestClient$ResponseHandler;
    .param p4, "x4"    # I

    .line 38
    invoke-static {p0, p1, p2, p3, p4}, Lcom/onesignal/OneSignalRestClient;->makeRequest(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;I)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;I)Ljava/lang/Thread;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lorg/json/JSONObject;
    .param p3, "x3"    # Lcom/onesignal/OneSignalRestClient$ResponseHandler;
    .param p4, "x4"    # I

    .line 38
    invoke-static {p0, p1, p2, p3, p4}, Lcom/onesignal/OneSignalRestClient;->startHTTPConnection(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;I)Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method

.method private static callResponseHandlerOnFailure(Lcom/onesignal/OneSignalRestClient$ResponseHandler;ILjava/lang/String;Ljava/lang/Throwable;)Ljava/lang/Thread;
    .locals 2
    .param p0, "handler"    # Lcom/onesignal/OneSignalRestClient$ResponseHandler;
    .param p1, "statusCode"    # I
    .param p2, "response"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .line 217
    if-nez p0, :cond_0

    .line 218
    const/4 v0, 0x0

    return-object v0

    .line 220
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/onesignal/OneSignalRestClient$6;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/onesignal/OneSignalRestClient$6;-><init>(Lcom/onesignal/OneSignalRestClient$ResponseHandler;ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 225
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 227
    return-object v0
.end method

.method private static callResponseHandlerOnSuccess(Lcom/onesignal/OneSignalRestClient$ResponseHandler;Ljava/lang/String;)Ljava/lang/Thread;
    .locals 2
    .param p0, "handler"    # Lcom/onesignal/OneSignalRestClient$ResponseHandler;
    .param p1, "response"    # Ljava/lang/String;

    .line 203
    if-nez p0, :cond_0

    .line 204
    const/4 v0, 0x0

    return-object v0

    .line 206
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/onesignal/OneSignalRestClient$5;

    invoke-direct {v1, p0, p1}, Lcom/onesignal/OneSignalRestClient$5;-><init>(Lcom/onesignal/OneSignalRestClient$ResponseHandler;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 211
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 213
    return-object v0
.end method

.method static get(Ljava/lang/String;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "responseHandler"    # Lcom/onesignal/OneSignalRestClient$ResponseHandler;

    .line 70
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/onesignal/OneSignalRestClient$3;

    invoke-direct {v1, p0, p1}, Lcom/onesignal/OneSignalRestClient$3;-><init>(Ljava/lang/String;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 74
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 75
    return-void
.end method

.method static getSync(Ljava/lang/String;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "responseHandler"    # Lcom/onesignal/OneSignalRestClient$ResponseHandler;

    .line 78
    const/4 v0, 0x0

    const v1, 0xea60

    invoke-static {p0, v0, v0, p1, v1}, Lcom/onesignal/OneSignalRestClient;->makeRequest(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;I)V

    .line 79
    return-void
.end method

.method private static getThreadTimeout(I)I
    .locals 1
    .param p0, "timeout"    # I

    .line 49
    add-int/lit16 v0, p0, 0x1388

    return v0
.end method

.method private static makeRequest(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;I)V
    .locals 10
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "jsonBody"    # Lorg/json/JSONObject;
    .param p3, "responseHandler"    # Lcom/onesignal/OneSignalRestClient$ResponseHandler;
    .param p4, "timeout"    # I

    .line 92
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    return-void

    .line 95
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Thread;

    .line 96
    .local v0, "callbackThread":[Ljava/lang/Thread;
    new-instance v8, Ljava/lang/Thread;

    new-instance v9, Lcom/onesignal/OneSignalRestClient$4;

    move-object v1, v9

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/onesignal/OneSignalRestClient$4;-><init>([Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;I)V

    const-string v1, "OS_HTTPConnection"

    invoke-direct {v8, v9, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    move-object v1, v8

    .line 102
    .local v1, "connectionThread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 106
    :try_start_0
    invoke-static {p4}, Lcom/onesignal/OneSignalRestClient;->getThreadTimeout(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/Thread;->join(J)V

    .line 107
    invoke-virtual {v1}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v2

    sget-object v3, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-eq v2, v3, :cond_1

    .line 108
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 109
    :cond_1
    const/4 v2, 0x0

    aget-object v3, v0, v2

    if-eqz v3, :cond_2

    .line 110
    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :cond_2
    goto :goto_0

    .line 111
    :catch_0
    move-exception v2

    .line 112
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 114
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_0
    return-void
.end method

.method static post(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "jsonBody"    # Lorg/json/JSONObject;
    .param p2, "responseHandler"    # Lcom/onesignal/OneSignalRestClient$ResponseHandler;

    .line 62
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/onesignal/OneSignalRestClient$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/onesignal/OneSignalRestClient$2;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 66
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 67
    return-void
.end method

.method static postSync(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "jsonBody"    # Lorg/json/JSONObject;
    .param p2, "responseHandler"    # Lcom/onesignal/OneSignalRestClient$ResponseHandler;

    .line 86
    const-string v0, "POST"

    const v1, 0x1d4c0

    invoke-static {p0, v0, p1, p2, v1}, Lcom/onesignal/OneSignalRestClient;->makeRequest(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;I)V

    .line 87
    return-void
.end method

.method static put(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "jsonBody"    # Lorg/json/JSONObject;
    .param p2, "responseHandler"    # Lcom/onesignal/OneSignalRestClient$ResponseHandler;

    .line 54
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/onesignal/OneSignalRestClient$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/onesignal/OneSignalRestClient$1;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 58
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 59
    return-void
.end method

.method static putSync(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "jsonBody"    # Lorg/json/JSONObject;
    .param p2, "responseHandler"    # Lcom/onesignal/OneSignalRestClient$ResponseHandler;

    .line 82
    const-string v0, "PUT"

    const v1, 0x1d4c0

    invoke-static {p0, v0, p1, p2, v1}, Lcom/onesignal/OneSignalRestClient;->makeRequest(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;I)V

    .line 83
    return-void
.end method

.method private static startHTTPConnection(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;I)Ljava/lang/Thread;
    .locals 10
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "jsonBody"    # Lorg/json/JSONObject;
    .param p3, "responseHandler"    # Lcom/onesignal/OneSignalRestClient$ResponseHandler;
    .param p4, "timeout"    # I

    .line 117
    const/4 v0, 0x0

    .line 118
    .local v0, "con":Ljava/net/HttpURLConnection;
    const/4 v1, -0x1

    .line 119
    .local v1, "httpResponse":I
    const/4 v2, 0x0

    .line 120
    .local v2, "json":Ljava/lang/String;
    const/4 v3, 0x0

    move-object v4, v3

    .line 123
    .local v4, "callbackThread":Ljava/lang/Thread;
    :try_start_0
    sget-object v5, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OneSignalRestClient: Making request to: https://onesignal.com/api/v1/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 124
    new-instance v5, Ljava/net/URL;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "https://onesignal.com/api/v1/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    move-object v0, v5

    .line 126
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 127
    invoke-virtual {v0, p4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 128
    invoke-virtual {v0, p4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 130
    const/4 v5, 0x1

    if-eqz p2, :cond_0

    .line 131
    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 133
    :cond_0
    if-eqz p1, :cond_1

    .line 134
    const-string v6, "Content-Type"

    const-string v7, "application/json; charset=UTF-8"

    invoke-virtual {v0, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 139
    :cond_1
    if-eqz p2, :cond_2

    .line 140
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    .line 141
    .local v5, "strJsonBody":Ljava/lang/String;
    sget-object v6, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OneSignalRestClient: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " SEND JSON: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 143
    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 144
    .local v6, "sendBytes":[B
    array-length v7, v6

    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 146
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    .line 147
    .local v7, "outputStream":Ljava/io/OutputStream;
    invoke-virtual {v7, v6}, Ljava/io/OutputStream;->write([B)V

    .line 150
    .end local v5    # "strJsonBody":Ljava/lang/String;
    .end local v6    # "sendBytes":[B
    .end local v7    # "outputStream":Ljava/io/OutputStream;
    :cond_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    move v1, v5

    .line 151
    sget-object v5, Lcom/onesignal/OneSignal$LOG_LEVEL;->VERBOSE:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OneSignalRestClient: After con.getResponseCode  to: https://onesignal.com/api/v1/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 155
    const/16 v5, 0xc8

    if-ne v1, v5, :cond_4

    .line 156
    sget-object v5, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OneSignalRestClient: Successfully finished request to: https://onesignal.com/api/v1/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 158
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 159
    .local v5, "inputStream":Ljava/io/InputStream;
    new-instance v6, Ljava/util/Scanner;

    const-string v7, "UTF-8"

    invoke-direct {v6, v5, v7}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 160
    .local v6, "scanner":Ljava/util/Scanner;
    const-string v7, "\\A"

    invoke-virtual {v6, v7}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Scanner;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v6}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_3
    const-string v7, ""

    :goto_0
    move-object v2, v7

    .line 161
    invoke-virtual {v6}, Ljava/util/Scanner;->close()V

    .line 162
    sget-object v7, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " RECEIVED JSON: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 164
    invoke-static {p3, v2}, Lcom/onesignal/OneSignalRestClient;->callResponseHandlerOnSuccess(Lcom/onesignal/OneSignalRestClient$ResponseHandler;Ljava/lang/String;)Ljava/lang/Thread;

    move-result-object v7

    move-object v3, v7

    .line 164
    .end local v4    # "callbackThread":Ljava/lang/Thread;
    .local v3, "callbackThread":Ljava/lang/Thread;
    goto/16 :goto_3

    .line 167
    .end local v3    # "callbackThread":Ljava/lang/Thread;
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "scanner":Ljava/util/Scanner;
    .restart local v4    # "callbackThread":Ljava/lang/Thread;
    :cond_4
    sget-object v5, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OneSignalRestClient: Failed request to: https://onesignal.com/api/v1/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 168
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v5

    .line 169
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    if-nez v5, :cond_5

    .line 170
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    move-object v5, v6

    .line 172
    :cond_5
    if-eqz v5, :cond_7

    .line 173
    new-instance v6, Ljava/util/Scanner;

    const-string v7, "UTF-8"

    invoke-direct {v6, v5, v7}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 174
    .restart local v6    # "scanner":Ljava/util/Scanner;
    const-string v7, "\\A"

    invoke-virtual {v6, v7}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Scanner;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v6}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_6
    const-string v7, ""

    :goto_1
    move-object v2, v7

    .line 175
    invoke-virtual {v6}, Ljava/util/Scanner;->close()V

    .line 176
    sget-object v7, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OneSignalRestClient: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " RECEIVED JSON: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    goto :goto_2

    .line 179
    .end local v6    # "scanner":Ljava/util/Scanner;
    :cond_7
    sget-object v6, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OneSignalRestClient: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " HTTP Code: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " No response body!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 181
    :goto_2
    invoke-static {p3, v1, v2, v3}, Lcom/onesignal/OneSignalRestClient;->callResponseHandlerOnFailure(Lcom/onesignal/OneSignalRestClient$ResponseHandler;ILjava/lang/String;Ljava/lang/Throwable;)Ljava/lang/Thread;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v6

    .line 192
    .end local v4    # "callbackThread":Ljava/lang/Thread;
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "callbackThread":Ljava/lang/Thread;
    :goto_3
    if-eqz v0, :cond_a

    .line 193
    :goto_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_7

    .line 192
    .end local v3    # "callbackThread":Ljava/lang/Thread;
    .restart local v4    # "callbackThread":Ljava/lang/Thread;
    :catchall_0
    move-exception v3

    goto :goto_8

    .line 183
    :catch_0
    move-exception v5

    .line 184
    .local v5, "t":Ljava/lang/Throwable;
    :try_start_1
    instance-of v6, v5, Ljava/net/ConnectException;

    if-nez v6, :cond_9

    instance-of v6, v5, Ljava/net/UnknownHostException;

    if-eqz v6, :cond_8

    goto :goto_5

    .line 187
    :cond_8
    sget-object v6, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OneSignalRestClient: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " Error thrown from network stack. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 185
    :cond_9
    :goto_5
    sget-object v6, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OneSignalRestClient: Could not send last request, device is offline. Throwable: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 189
    :goto_6
    invoke-static {p3, v1, v3, v5}, Lcom/onesignal/OneSignalRestClient;->callResponseHandlerOnFailure(Lcom/onesignal/OneSignalRestClient$ResponseHandler;ILjava/lang/String;Ljava/lang/Throwable;)Ljava/lang/Thread;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    .end local v4    # "callbackThread":Ljava/lang/Thread;
    .end local v5    # "t":Ljava/lang/Throwable;
    .restart local v3    # "callbackThread":Ljava/lang/Thread;
    if-eqz v0, :cond_a

    goto :goto_4

    .line 196
    :cond_a
    :goto_7
    return-object v3

    .line 192
    .end local v3    # "callbackThread":Ljava/lang/Thread;
    .restart local v4    # "callbackThread":Ljava/lang/Thread;
    :goto_8
    if-eqz v0, :cond_b

    .line 193
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_b
    throw v3
.end method
