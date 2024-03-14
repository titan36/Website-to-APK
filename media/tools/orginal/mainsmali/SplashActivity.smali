.class public Lmurait/the/android/mania/SplashActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SplashActivity.java"


# instance fields
.field private SPLASH_TIME_OUT:I

.field private mContext:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 11
    const/16 v0, 0x7d0

    iput v0, p0, Lmurait/the/android/mania/SplashActivity;->SPLASH_TIME_OUT:I

    .line 12
    iput-object p0, p0, Lmurait/the/android/mania/SplashActivity;->mContext:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$000(Lmurait/the/android/mania/SplashActivity;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lmurait/the/android/mania/SplashActivity;

    .line 9
    iget-object v0, p0, Lmurait/the/android/mania/SplashActivity;->mContext:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 16
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    const v0, 0x7f0a001c

    invoke-virtual {p0, v0}, Lmurait/the/android/mania/SplashActivity;->setContentView(I)V

    .line 19
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lmurait/the/android/mania/SplashActivity$1;

    invoke-direct {v1, p0}, Lmurait/the/android/mania/SplashActivity$1;-><init>(Lmurait/the/android/mania/SplashActivity;)V

    iget v2, p0, Lmurait/the/android/mania/SplashActivity;->SPLASH_TIME_OUT:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 27
    return-void
.end method
