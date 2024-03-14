.class Lkidus/mikael/yebahil/hikmna/SplashActivity$1;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkidus/mikael/yebahil/hikmna/SplashActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkidus/mikael/yebahil/hikmna/SplashActivity;


# direct methods
.method constructor <init>(Lkidus/mikael/yebahil/hikmna/SplashActivity;)V
    .locals 0
    .param p1, "this$0"    # Lkidus/mikael/yebahil/hikmna/SplashActivity;

    .line 19
    iput-object p1, p0, Lkidus/mikael/yebahil/hikmna/SplashActivity$1;->this$0:Lkidus/mikael/yebahil/hikmna/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 22
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lkidus/mikael/yebahil/hikmna/SplashActivity$1;->this$0:Lkidus/mikael/yebahil/hikmna/SplashActivity;

    invoke-static {v1}, Lkidus/mikael/yebahil/hikmna/SplashActivity;->access$000(Lkidus/mikael/yebahil/hikmna/SplashActivity;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lkidus/mikael/yebahil/hikmna/HomeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 23
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lkidus/mikael/yebahil/hikmna/SplashActivity$1;->this$0:Lkidus/mikael/yebahil/hikmna/SplashActivity;

    invoke-virtual {v1, v0}, Lkidus/mikael/yebahil/hikmna/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 24
    iget-object v1, p0, Lkidus/mikael/yebahil/hikmna/SplashActivity$1;->this$0:Lkidus/mikael/yebahil/hikmna/SplashActivity;

    invoke-virtual {v1}, Lkidus/mikael/yebahil/hikmna/SplashActivity;->finish()V

    .line 25
    return-void
.end method
