.class Lmurait/the/android/mania/SplashActivity$1;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmurait/the/android/mania/SplashActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmurait/the/android/mania/SplashActivity;


# direct methods
.method constructor <init>(Lmurait/the/android/mania/SplashActivity;)V
    .locals 0
    .param p1, "this$0"    # Lmurait/the/android/mania/SplashActivity;

    .line 19
    iput-object p1, p0, Lmurait/the/android/mania/SplashActivity$1;->this$0:Lmurait/the/android/mania/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 22
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lmurait/the/android/mania/SplashActivity$1;->this$0:Lmurait/the/android/mania/SplashActivity;

    invoke-static {v1}, Lmurait/the/android/mania/SplashActivity;->access$000(Lmurait/the/android/mania/SplashActivity;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lmurait/the/android/mania/HomeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 23
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lmurait/the/android/mania/SplashActivity$1;->this$0:Lmurait/the/android/mania/SplashActivity;

    invoke-virtual {v1, v0}, Lmurait/the/android/mania/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 24
    iget-object v1, p0, Lmurait/the/android/mania/SplashActivity$1;->this$0:Lmurait/the/android/mania/SplashActivity;

    invoke-virtual {v1}, Lmurait/the/android/mania/SplashActivity;->finish()V

    .line 25
    return-void
.end method
