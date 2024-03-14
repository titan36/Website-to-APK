.class public final Landroidx/browser/browseractions/BrowserActionsIntent$Builder;
.super Ljava/lang/Object;
.source "BrowserActionsIntent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/browser/browseractions/BrowserActionsIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mIntent:Landroid/content/Intent;

.field private mMenuItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mOnItemSelectedPendingIntent:Landroid/app/PendingIntent;

.field private mType:I

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    new-instance v0, Landroid/content/Intent;

    const-string v1, "androidx.browser.browseractions.browser_action_open"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/browser/browseractions/BrowserActionsIntent$Builder;->mIntent:Landroid/content/Intent;

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/browser/browseractions/BrowserActionsIntent$Builder;->mMenuItems:Ljava/util/ArrayList;

    .line 174
    iput-object v0, p0, Landroidx/browser/browseractions/BrowserActionsIntent$Builder;->mOnItemSelectedPendingIntent:Landroid/app/PendingIntent;

    .line 183
    iput-object p1, p0, Landroidx/browser/browseractions/BrowserActionsIntent$Builder;->mContext:Landroid/content/Context;

    .line 184
    iput-object p2, p0, Landroidx/browser/browseractions/BrowserActionsIntent$Builder;->mUri:Landroid/net/Uri;

    .line 185
    const/4 v0, 0x0

    iput v0, p0, Landroidx/browser/browseractions/BrowserActionsIntent$Builder;->mType:I

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/browser/browseractions/BrowserActionsIntent$Builder;->mMenuItems:Ljava/util/ArrayList;

    .line 187
    return-void
.end method

.method private getBundleFromItem(Landroidx/browser/browseractions/BrowserActionItem;)Landroid/os/Bundle;
    .locals 3
    .param p1, "item"    # Landroidx/browser/browseractions/BrowserActionItem;

    .line 246
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 247
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "androidx.browser.browseractions.TITLE"

    invoke-virtual {p1}, Landroidx/browser/browseractions/BrowserActionItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string v1, "androidx.browser.browseractions.ACTION"

    invoke-virtual {p1}, Landroidx/browser/browseractions/BrowserActionItem;->getAction()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 249
    invoke-virtual {p1}, Landroidx/browser/browseractions/BrowserActionItem;->getIconId()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "androidx.browser.browseractions.ICON_ID"

    invoke-virtual {p1}, Landroidx/browser/browseractions/BrowserActionItem;->getIconId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 250
    :cond_0
    return-object v0
.end method


# virtual methods
.method public build()Landroidx/browser/browseractions/BrowserActionsIntent;
    .locals 4

    .line 258
    iget-object v0, p0, Landroidx/browser/browseractions/BrowserActionsIntent$Builder;->mIntent:Landroid/content/Intent;

    iget-object v1, p0, Landroidx/browser/browseractions/BrowserActionsIntent$Builder;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 259
    iget-object v0, p0, Landroidx/browser/browseractions/BrowserActionsIntent$Builder;->mIntent:Landroid/content/Intent;

    const-string v1, "androidx.browser.browseractions.extra.TYPE"

    iget v2, p0, Landroidx/browser/browseractions/BrowserActionsIntent$Builder;->mType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 260
    iget-object v0, p0, Landroidx/browser/browseractions/BrowserActionsIntent$Builder;->mIntent:Landroid/content/Intent;

    const-string v1, "androidx.browser.browseractions.extra.MENU_ITEMS"

    iget-object v2, p0, Landroidx/browser/browseractions/BrowserActionsIntent$Builder;->mMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 261
    iget-object v0, p0, Landroidx/browser/browseractions/BrowserActionsIntent$Builder;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 262
    .local v0, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v1, p0, Landroidx/browser/browseractions/BrowserActionsIntent$Builder;->mIntent:Landroid/content/Intent;

    const-string v2, "androidx.browser.browseractions.APP_ID"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 263
    iget-object v1, p0, Landroidx/browser/browseractions/BrowserActionsIntent$Builder;->mOnItemSelectedPendingIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 264
    iget-object v1, p0, Landroidx/browser/browseractions/BrowserActionsIntent$Builder;->mIntent:Landroid/content/Intent;

    const-string v2, "androidx.browser.browseractions.extra.SELECTED_ACTION_PENDING_INTENT"

    iget-object v3, p0, Landroidx/browser/browseractions/BrowserActionsIntent$Builder;->mOnItemSelectedPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 267
    :cond_0
    new-instance v1, Landroidx/browser/browseractions/BrowserActionsIntent;

    iget-object v2, p0, Landroidx/browser/browseractions/BrowserActionsIntent$Builder;->mIntent:Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroidx/browser/browseractions/BrowserActionsIntent;-><init>(Landroid/content/Intent;Landroidx/browser/browseractions/BrowserActionsIntent$1;)V

    return-object v1
.end method

.method public setCustomItems(Ljava/util/ArrayList;)Landroidx/browser/browseractions/BrowserActionsIntent$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/browser/browseractions/BrowserActionItem;",
            ">;)",
            "Landroidx/browser/browseractions/BrowserActionsIntent$Builder;"
        }
    .end annotation

    .line 205
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/browser/browseractions/BrowserActionItem;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    .line 206
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Exceeded maximum toolbar item count of 5"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_0
    const/4 v0, 0x0

    .line 209
    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 210
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/browser/browseractions/BrowserActionItem;

    invoke-virtual {v1}, Landroidx/browser/browseractions/BrowserActionItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 211
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/browser/browseractions/BrowserActionItem;

    invoke-virtual {v1}, Landroidx/browser/browseractions/BrowserActionItem;->getAction()Landroid/app/PendingIntent;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 215
    :cond_1
    iget-object v1, p0, Landroidx/browser/browseractions/BrowserActionsIntent$Builder;->mMenuItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/browser/browseractions/BrowserActionItem;

    invoke-direct {p0, v2}, Landroidx/browser/browseractions/BrowserActionsIntent$Builder;->getBundleFromItem(Landroidx/browser/browseractions/BrowserActionItem;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 212
    :cond_2
    :goto_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Custom item should contain a non-empty title and non-null intent."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 218
    .end local v0    # "i":I
    :cond_3
    return-object p0
.end method

.method public varargs setCustomItems([Landroidx/browser/browseractions/BrowserActionItem;)Landroidx/browser/browseractions/BrowserActionsIntent$Builder;
    .locals 2
    .param p1, "items"    # [Landroidx/browser/browseractions/BrowserActionItem;

    .line 228
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Landroidx/browser/browseractions/BrowserActionsIntent$Builder;->setCustomItems(Ljava/util/ArrayList;)Landroidx/browser/browseractions/BrowserActionsIntent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setOnItemSelectedAction(Landroid/app/PendingIntent;)Landroidx/browser/browseractions/BrowserActionsIntent$Builder;
    .locals 0
    .param p1, "onItemSelectedPendingIntent"    # Landroid/app/PendingIntent;

    .line 236
    iput-object p1, p0, Landroidx/browser/browseractions/BrowserActionsIntent$Builder;->mOnItemSelectedPendingIntent:Landroid/app/PendingIntent;

    .line 237
    return-object p0
.end method

.method public setUrlType(I)Landroidx/browser/browseractions/BrowserActionsIntent$Builder;
    .locals 0
    .param p1, "type"    # I

    .line 194
    iput p1, p0, Landroidx/browser/browseractions/BrowserActionsIntent$Builder;->mType:I

    .line 195
    return-object p0
.end method
