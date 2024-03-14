.class final Lcom/onesignal/GenerateNotification$1;
.super Ljava/lang/Object;
.source "GenerateNotification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/GenerateNotification;->showNotificationAsAlert(Lorg/json/JSONObject;Landroid/app/Activity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$gcmJson:Lorg/json/JSONObject;

.field final synthetic val$notificationId:I


# direct methods
.method constructor <init>(Landroid/app/Activity;Lorg/json/JSONObject;I)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/onesignal/GenerateNotification$1;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/onesignal/GenerateNotification$1;->val$gcmJson:Lorg/json/JSONObject;

    iput p3, p0, Lcom/onesignal/GenerateNotification$1;->val$notificationId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 113
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/onesignal/GenerateNotification$1;->val$activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 114
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/onesignal/GenerateNotification$1;->val$gcmJson:Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/onesignal/GenerateNotification;->access$000(Lorg/json/JSONObject;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 115
    iget-object v1, p0, Lcom/onesignal/GenerateNotification$1;->val$gcmJson:Lorg/json/JSONObject;

    const-string v2, "alert"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 117
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v1, "buttonsLabels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v2, "buttonIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/onesignal/GenerateNotification$1;->val$activity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/onesignal/GenerateNotification$1;->val$gcmJson:Lorg/json/JSONObject;

    invoke-static {v3, v4, v1, v2}, Lcom/onesignal/GenerateNotification;->access$100(Landroid/content/Context;Lorg/json/JSONObject;Ljava/util/List;Ljava/util/List;)V

    .line 122
    move-object v3, v2

    .line 124
    .local v3, "finalButtonIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget v4, p0, Lcom/onesignal/GenerateNotification$1;->val$notificationId:I

    invoke-static {v4}, Lcom/onesignal/GenerateNotification;->access$200(I)Landroid/content/Intent;

    move-result-object v4

    .line 125
    .local v4, "buttonIntent":Landroid/content/Intent;
    const-string v5, "action_button"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 126
    const-string v5, "from_alert"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 127
    const-string v5, "onesignal_data"

    iget-object v7, p0, Lcom/onesignal/GenerateNotification$1;->val$gcmJson:Lorg/json/JSONObject;

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    iget-object v5, p0, Lcom/onesignal/GenerateNotification$1;->val$gcmJson:Lorg/json/JSONObject;

    const-string v7, "grp"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 129
    const-string v5, "grp"

    iget-object v7, p0, Lcom/onesignal/GenerateNotification$1;->val$gcmJson:Lorg/json/JSONObject;

    const-string v8, "grp"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    :cond_0
    move-object v5, v4

    .line 133
    .local v5, "finalButtonIntent":Landroid/content/Intent;
    new-instance v7, Lcom/onesignal/GenerateNotification$1$1;

    invoke-direct {v7, p0, v3, v5}, Lcom/onesignal/GenerateNotification$1$1;-><init>(Lcom/onesignal/GenerateNotification$1;Ljava/util/List;Landroid/content/Intent;)V

    .line 151
    .local v7, "buttonListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v8, Lcom/onesignal/GenerateNotification$1$2;

    invoke-direct {v8, p0, v5}, Lcom/onesignal/GenerateNotification$1$2;-><init>(Lcom/onesignal/GenerateNotification$1;Landroid/content/Intent;)V

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 158
    const/4 v8, 0x0

    move v9, v8

    .line 158
    .local v9, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_4

    .line 159
    if-nez v9, :cond_1

    .line 160
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-virtual {v0, v10, v7}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 161
    :cond_1
    if-ne v9, v6, :cond_2

    .line 162
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-virtual {v0, v10, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 163
    :cond_2
    const/4 v10, 0x2

    if-ne v9, v10, :cond_3

    .line 164
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-virtual {v0, v10, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 158
    :cond_3
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 167
    .end local v9    # "i":I
    :cond_4
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 168
    .local v6, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v6, v8}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 169
    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 170
    return-void
.end method
