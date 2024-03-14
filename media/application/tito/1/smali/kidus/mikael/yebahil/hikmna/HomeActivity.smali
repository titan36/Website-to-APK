.class public Lkidus/mikael/yebahil/hikmna/HomeActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "HomeActivity.java"

# interfaces
.implements Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;


# instance fields
.field private currentUrl:Ljava/lang/String;

.field private llError:Landroid/view/View;

.field private mContext:Landroid/app/Activity;

.field progressDialog:Landroid/app/ProgressDialog;

.field private url:Ljava/lang/String;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 33
    iput-object p0, p0, Lkidus/mikael/yebahil/hikmna/HomeActivity;->mContext:Landroid/app/Activity;

    .line 35
    const-string v0, "https://hakimselemon.com"

    iput-object v0, p0, Lkidus/mikael/yebahil/hikmna/HomeActivity;->url:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lkidus/mikael/yebahil/hikmna/HomeActivity;->currentUrl:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lkidus/mikael/yebahil/hikmna/HomeActivity;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lkidus/mikael/yebahil/hikmna/HomeActivity;

    .line 29
    iget-object v0, p0, Lkidus/mikael/yebahil/hikmna/HomeActivity;->mContext:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$102(Lkidus/mikael/yebahil/hikmna/HomeActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lkidus/mikael/yebahil/hikmna/HomeActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lkidus/mikael/yebahil/hikmna/HomeActivity;->currentUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lkidus/mikael/yebahil/hikmna/HomeActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lkidus/mikael/yebahil/hikmna/HomeActivity;

    .line 29
    iget-object v0, p0, Lkidus/mikael/yebahil/hikmna/HomeActivity;->llError:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lkidus/mikael/yebahil/hikmna/HomeActivity;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lkidus/mikael/yebahil/hikmna/HomeActivity;

    .line 29
    iget-object v0, p0, Lkidus/mikael/yebahil/hikmna/HomeActivity;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method private startWebView(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .line 203
    iget-object v0, p0, Lkidus/mikael/yebahil/hikmna/HomeActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lkidus/mikael/yebahil/hikmna/HomeActivity$2;

    invoke-direct {v1, p0}, Lkidus/mikael/yebahil/hikmna/HomeActivity$2;-><init>(Lkidus/mikael/yebahil/hikmna/HomeActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 250
    iget-object v0, p0, Lkidus/mikael/yebahil/hikmna/HomeActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 253
    iget-object v0, p0, Lkidus/mikael/yebahil/hikmna/HomeActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 254
    iget-object v0, p0, Lkidus/mikael/yebahil/hikmna/HomeActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 255
    iget-object v0, p0, Lkidus/mikael/yebahil/hikmna/HomeActivity;->webView:Landroid/webkit/WebView;

    const/high16 v2, 0x2000000

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 256
    iget-object v0, p0, Lkidus/mikael/yebahil/hikmna/HomeActivity;->webView:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setScrollbarFadingEnabled(Z)V

    .line 257
    iget-object v0, p0, Lkidus/mikael/yebahil/hikmna/HomeActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 259
    iput-object p1, p0, Lkidus/mikael/yebahil/hikmna/HomeActivity;->currentUrl:Ljava/lang/String;

    .line 261
    iget-object v0, p0, Lkidus/mikael/yebahil/hikmna/HomeActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 264
    return-void
.end method


# virtual methods
.method protected isOnline()Z
    .locals 3

    .line 267
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lkidus/mikael/yebahil/hikmna/HomeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 268
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 269
    .local v1, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 270
    const/4 v2, 0x1

    return v2

    .line 272
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public onBackPressed()V
    .locals 4

    .line 85
    const v0, 0x7f080049

    invoke-virtual {p0, v0}, Lkidus/mikael/yebahil/hikmna/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    .line 86
    .local v0, "drawer":Landroid/support/v4/widget/DrawerLayout;
    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    goto :goto_0

    .line 88
    :cond_0
    iget-object v1, p0, Lkidus/mikael/yebahil/hikmna/HomeActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 89
    invoke-virtual {p0}, Lkidus/mikael/yebahil/hikmna/HomeActivity;->isOnline()Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_1

    .line 90
    iget-object v1, p0, Lkidus/mikael/yebahil/hikmna/HomeActivity;->llError:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 91
    iget-object v1, p0, Lkidus/mikael/yebahil/hikmna/HomeActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 92
    iget-object v1, p0, Lkidus/mikael/yebahil/hikmna/HomeActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 94
    :cond_1
    iget-object v1, p0, Lkidus/mikael/yebahil/hikmna/HomeActivity;->llError:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 95
    iget-object v1, p0, Lkidus/mikael/yebahil/hikmna/HomeActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 96
    iget-object v1, p0, Lkidus/mikael/yebahil/hikmna/HomeActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lkidus/mikael/yebahil/hikmna/HomeActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 97
    iget-object v1, p0, Lkidus/mikael/yebahil/hikmna/HomeActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    .line 100
    :cond_2
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    .line 102
    :cond_3
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 41
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v0, 0x7f0a001b

    invoke-virtual {p0, v0}, Lkidus/mikael/yebahil/hikmna/HomeActivity;->setContentView(I)V

    .line 43
    const v0, 0x7f0800c6

    invoke-virtual {p0, v0}, Lkidus/mikael/yebahil/hikmna/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 44
    .local v0, "toolbar":Landroid/support/v7/widget/Toolbar;
    invoke-virtual {p0, v0}, Lkidus/mikael/yebahil/hikmna/HomeActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 46
    const v1, 0x7f08006d

    invoke-virtual {p0, v1}, Lkidus/mikael/yebahil/hikmna/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lkidus/mikael/yebahil/hikmna/HomeActivity;->llError:Landroid/view/View;

    .line 48
    const v1, 0x7f080052

    invoke-virtual {p0, v1}, Lkidus/mikael/yebahil/hikmna/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/support/design/widget/FloatingActionButton;

    .line 49
    .local v7, "fab":Landroid/support/design/widget/FloatingActionButton;
    new-instance v1, Lkidus/mikael/yebahil/hikmna/HomeActivity$1;

    invoke-direct {v1, p0}, Lkidus/mikael/yebahil/hikmna/HomeActivity$1;-><init>(Lkidus/mikael/yebahil/hikmna/HomeActivity;)V

    invoke-virtual {v7, v1}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    const v1, 0x7f080049

    invoke-virtual {p0, v1}, Lkidus/mikael/yebahil/hikmna/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/support/v4/widget/DrawerLayout;

    .line 59
    .local v8, "drawer":Landroid/support/v4/widget/DrawerLayout;
    new-instance v9, Landroid/support/v7/app/ActionBarDrawerToggle;

    const v5, 0x7f0e0041

    const v6, 0x7f0e0040

    move-object v1, v9

    move-object v2, p0

    move-object v3, v8

    move-object v4, v0

    invoke-direct/range {v1 .. v6}, Landroid/support/v7/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;Landroid/support/v7/widget/Toolbar;II)V

    .line 61
    .local v1, "toggle":Landroid/support/v7/app/ActionBarDrawerToggle;
    invoke-virtual {v8, v1}, Landroid/support/v4/widget/DrawerLayout;->addDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 62
    invoke-virtual {v1}, Landroid/support/v7/app/ActionBarDrawerToggle;->syncState()V

    .line 64
    const v2, 0x7f080077

    invoke-virtual {p0, v2}, Lkidus/mikael/yebahil/hikmna/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/NavigationView;

    .line 65
    .local v2, "navigationView":Landroid/support/design/widget/NavigationView;
    invoke-virtual {v2, p0}, Landroid/support/design/widget/NavigationView;->setNavigationItemSelectedListener(Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;)V

    .line 67
    const v3, 0x7f0800d4

    invoke-virtual {p0, v3}, Lkidus/mikael/yebahil/hikmna/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/webkit/WebView;

    iput-object v3, p0, Lkidus/mikael/yebahil/hikmna/HomeActivity;->webView:Landroid/webkit/WebView;

    .line 69
    invoke-virtual {p0}, Lkidus/mikael/yebahil/hikmna/HomeActivity;->isOnline()Z

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-eqz v3, :cond_0

    .line 70
    iget-object v3, p0, Lkidus/mikael/yebahil/hikmna/HomeActivity;->llError:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 71
    iget-object v3, p0, Lkidus/mikael/yebahil/hikmna/HomeActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 72
    iget-object v3, p0, Lkidus/mikael/yebahil/hikmna/HomeActivity;->url:Ljava/lang/String;

    invoke-direct {p0, v3}, Lkidus/mikael/yebahil/hikmna/HomeActivity;->startWebView(Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_0
    iget-object v3, p0, Lkidus/mikael/yebahil/hikmna/HomeActivity;->llError:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 75
    iget-object v3, p0, Lkidus/mikael/yebahil/hikmna/HomeActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v3, v5}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 76
    iget-object v3, p0, Lkidus/mikael/yebahil/hikmna/HomeActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lkidus/mikael/yebahil/hikmna/HomeActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 77
    iget-object v3, p0, Lkidus/mikael/yebahil/hikmna/HomeActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 81
    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .line 107
    invoke-virtual {p0}, Lkidus/mikael/yebahil/hikmna/HomeActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0b0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 148
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 151
    .local v0, "id":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    const v3, 0x7f080074

    if-ne v0, v3, :cond_1

    .line 152
    invoke-virtual {p0}, Lkidus/mikael/yebahil/hikmna/HomeActivity;->isOnline()Z

    move-result v3

    const/16 v4, 0x8

    if-eqz v3, :cond_0

    .line 153
    iget-object v3, p0, Lkidus/mikael/yebahil/hikmna/HomeActivity;->llError:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 154
    iget-object v3, p0, Lkidus/mikael/yebahil/hikmna/HomeActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v3, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 155
    iget-object v2, p0, Lkidus/mikael/yebahil/hikmna/HomeActivity;->url:Ljava/lang/String;

    invoke-direct {p0, v2}, Lkidus/mikael/yebahil/hikmna/HomeActivity;->startWebView(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 157
    :cond_0
    iget-object v3, p0, Lkidus/mikael/yebahil/hikmna/HomeActivity;->llError:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 158
    iget-object v2, p0, Lkidus/mikael/yebahil/hikmna/HomeActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2, v4}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 159
    iget-object v2, p0, Lkidus/mikael/yebahil/hikmna/HomeActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lkidus/mikael/yebahil/hikmna/HomeActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 160
    iget-object v2, p0, Lkidus/mikael/yebahil/hikmna/HomeActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    goto/16 :goto_0

    .line 162
    :cond_1
    const v3, 0x7f080076

    const v4, 0x7f0e001e

    if-ne v0, v3, :cond_2

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://play.google.com/store/apps/details?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lkidus/mikael/yebahil/hikmna/HomeActivity;->mContext:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 165
    .local v2, "shareBody":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.SEND"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 166
    .local v3, "sharingIntent":Landroid/content/Intent;
    const-string v5, "text/plain"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    const-string v5, "android.intent.extra.SUBJECT"

    invoke-virtual {p0}, Lkidus/mikael/yebahil/hikmna/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    const-string v4, "android.intent.extra.TEXT"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    const-string v4, "Share using"

    invoke-static {v3, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v4}, Lkidus/mikael/yebahil/hikmna/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 171
    .end local v2    # "shareBody":Ljava/lang/String;
    .end local v3    # "sharingIntent":Landroid/content/Intent;
    goto/16 :goto_0

    :cond_2
    const v3, 0x7f080075

    if-ne v0, v3, :cond_3

    .line 173
    new-array v3, v1, [Ljava/lang/String;

    invoke-virtual {p0}, Lkidus/mikael/yebahil/hikmna/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e0035

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    .line 174
    .local v3, "TO":[Ljava/lang/String;
    new-array v5, v1, [Ljava/lang/String;

    const-string v7, ""

    aput-object v7, v5, v2

    .line 176
    .local v5, "CC":[Ljava/lang/String;
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.SEND"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 178
    .local v7, "emailIntent":Landroid/content/Intent;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mailto:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkidus/mikael/yebahil/hikmna/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 179
    const-string v6, "text/plain"

    invoke-virtual {v7, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    const-string v6, "android.intent.extra.EMAIL"

    invoke-virtual {v7, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    const-string v6, "android.intent.extra.CC"

    invoke-virtual {v7, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    const-string v6, "android.intent.extra.SUBJECT"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lkidus/mikael/yebahil/hikmna/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " - Inquiry from mobile"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    const-string v6, "android.intent.extra.TEXT"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Hi, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkidus/mikael/yebahil/hikmna/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\nURL: "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lkidus/mikael/yebahil/hikmna/HomeActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n\n"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    :try_start_0
    const-string v4, "Send mail..."

    invoke-static {v7, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v4}, Lkidus/mikael/yebahil/hikmna/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 187
    invoke-virtual {p0}, Lkidus/mikael/yebahil/hikmna/HomeActivity;->finish()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    goto :goto_0

    .line 188
    :catch_0
    move-exception v4

    .line 189
    .local v4, "ex":Landroid/content/ActivityNotFoundException;
    iget-object v6, p0, Lkidus/mikael/yebahil/hikmna/HomeActivity;->mContext:Landroid/app/Activity;

    const-string v8, "There is no email client installed."

    invoke-static {v6, v8, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 193
    .end local v3    # "TO":[Ljava/lang/String;
    .end local v4    # "ex":Landroid/content/ActivityNotFoundException;
    .end local v5    # "CC":[Ljava/lang/String;
    .end local v7    # "emailIntent":Landroid/content/Intent;
    :cond_3
    :goto_0
    const v2, 0x7f080049

    invoke-virtual {p0, v2}, Lkidus/mikael/yebahil/hikmna/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/DrawerLayout;

    .line 194
    .local v2, "drawer":Landroid/support/v4/widget/DrawerLayout;
    const v3, 0x800003

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    .line 195
    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 116
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 119
    .local v0, "id":I
    const/4 v1, 0x1

    const v2, 0x7f080018

    if-ne v0, v2, :cond_0

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lkidus/mikael/yebahil/hikmna/HomeActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkidus/mikael/yebahil/hikmna/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e001e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lkidus/mikael/yebahil/hikmna/HomeActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, "shareBody":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.SEND"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 124
    .local v3, "sharingIntent":Landroid/content/Intent;
    const-string v5, "text/plain"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    const-string v5, "android.intent.extra.SUBJECT"

    invoke-virtual {p0}, Lkidus/mikael/yebahil/hikmna/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    const-string v4, "android.intent.extra.TEXT"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    const-string v4, "Share using"

    invoke-static {v3, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v4}, Lkidus/mikael/yebahil/hikmna/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 129
    return v1

    .line 130
    .end local v2    # "shareBody":Ljava/lang/String;
    .end local v3    # "sharingIntent":Landroid/content/Intent;
    :cond_0
    const v2, 0x7f080017

    if-ne v0, v2, :cond_1

    .line 132
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://play.google.com/store/apps/details?id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lkidus/mikael/yebahil/hikmna/HomeActivity;->mContext:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 133
    .local v2, "myIntent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lkidus/mikael/yebahil/hikmna/HomeActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .end local v2    # "myIntent":Landroid/content/Intent;
    goto :goto_0

    .line 134
    :catch_0
    move-exception v2

    .line 135
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "No application can handle this request. Please install a webbrowser"

    invoke-static {p0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 136
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 137
    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 141
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method
