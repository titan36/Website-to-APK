.class Lcom/onesignal/OneSignal$4$1;
.super Ljava/lang/Object;
.source "OneSignal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignal$4;->onFailure(ILjava/lang/String;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onesignal/OneSignal$4;


# direct methods
.method constructor <init>(Lcom/onesignal/OneSignal$4;)V
    .locals 0
    .param p1, "this$0"    # Lcom/onesignal/OneSignal$4;

    .line 809
    iput-object p1, p0, Lcom/onesignal/OneSignal$4$1;->this$0:Lcom/onesignal/OneSignal$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 812
    const/16 v0, 0x7530

    :try_start_0
    invoke-static {}, Lcom/onesignal/OneSignal;->access$1300()I

    move-result v1

    mul-int/lit16 v1, v1, 0x2710

    add-int/2addr v0, v1

    .line 814
    .local v0, "sleepTime":I
    const v1, 0x15f90

    if-le v0, v1, :cond_0

    .line 815
    const v0, 0x15f90

    .line 817
    :cond_0
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get Android parameters, trying again in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit16 v3, v0, 0x3e8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " seconds."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 818
    int-to-long v1, v0

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 819
    .end local v0    # "sleepTime":I
    goto :goto_0

    :catch_0
    move-exception v0

    .line 820
    :goto_0
    invoke-static {}, Lcom/onesignal/OneSignal;->access$1308()I

    .line 821
    invoke-static {}, Lcom/onesignal/OneSignal;->access$1400()V

    .line 822
    return-void
.end method
