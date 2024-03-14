.class Lkidus/mikael/yebahil/hikmna/HomeActivity$1;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkidus/mikael/yebahil/hikmna/HomeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkidus/mikael/yebahil/hikmna/HomeActivity;


# direct methods
.method constructor <init>(Lkidus/mikael/yebahil/hikmna/HomeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lkidus/mikael/yebahil/hikmna/HomeActivity;

    .line 49
    iput-object p1, p0, Lkidus/mikael/yebahil/hikmna/HomeActivity$1;->this$0:Lkidus/mikael/yebahil/hikmna/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkidus/mikael/yebahil/hikmna/HomeActivity$1;->this$0:Lkidus/mikael/yebahil/hikmna/HomeActivity;

    invoke-virtual {v1}, Lkidus/mikael/yebahil/hikmna/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0048

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "phno":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 54
    .local v1, "i":Landroid/content/Intent;
    iget-object v2, p0, Lkidus/mikael/yebahil/hikmna/HomeActivity$1;->this$0:Lkidus/mikael/yebahil/hikmna/HomeActivity;

    invoke-static {v2}, Lkidus/mikael/yebahil/hikmna/HomeActivity;->access$000(Lkidus/mikael/yebahil/hikmna/HomeActivity;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 55
    return-void
.end method
