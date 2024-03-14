.class Lkidus/mikael/yebahil/hikmna/HomeActivity$2;
.super Landroid/webkit/WebViewClient;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkidus/mikael/yebahil/hikmna/HomeActivity;->startWebView(Ljava/lang/String;)V
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

    .line 203
    iput-object p1, p0, Lkidus/mikael/yebahil/hikmna/HomeActivity$2;->this$0:Lkidus/mikael/yebahil/hikmna/HomeActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 214
    iget-object v0, p0, Lkidus/mikael/yebahil/hikmna/HomeActivity$2;->this$0:Lkidus/mikael/yebahil/hikmna/HomeActivity;

    iget-object v0, v0, Lkidus/mikael/yebahil/hikmna/HomeActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 216
    iget-object v0, p0, Lkidus/mikael/yebahil/hikmna/HomeActivity$2;->this$0:Lkidus/mikael/yebahil/hikmna/HomeActivity;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lkidus/mikael/yebahil/hikmna/HomeActivity$2;->this$0:Lkidus/mikael/yebahil/hikmna/HomeActivity;

    invoke-static {v2}, Lkidus/mikael/yebahil/hikmna/HomeActivity;->access$000(Lkidus/mikael/yebahil/hikmna/HomeActivity;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lkidus/mikael/yebahil/hikmna/HomeActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 217
    iget-object v0, p0, Lkidus/mikael/yebahil/hikmna/HomeActivity$2;->this$0:Lkidus/mikael/yebahil/hikmna/HomeActivity;

    iget-object v0, v0, Lkidus/mikael/yebahil/hikmna/HomeActivity;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Loading..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v0, p0, Lkidus/mikael/yebahil/hikmna/HomeActivity$2;->this$0:Lkidus/mikael/yebahil/hikmna/HomeActivity;

    iget-object v0, v0, Lkidus/mikael/yebahil/hikmna/HomeActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 220
    :cond_0
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 225
    :try_start_0
    iget-object v0, p0, Lkidus/mikael/yebahil/hikmna/HomeActivity$2;->this$0:Lkidus/mikael/yebahil/hikmna/HomeActivity;

    iget-object v0, v0, Lkidus/mikael/yebahil/hikmna/HomeActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lkidus/mikael/yebahil/hikmna/HomeActivity$2;->this$0:Lkidus/mikael/yebahil/hikmna/HomeActivity;

    iget-object v0, v0, Lkidus/mikael/yebahil/hikmna/HomeActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 227
    iget-object v0, p0, Lkidus/mikael/yebahil/hikmna/HomeActivity$2;->this$0:Lkidus/mikael/yebahil/hikmna/HomeActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lkidus/mikael/yebahil/hikmna/HomeActivity;->progressDialog:Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :cond_0
    goto :goto_0

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 232
    .end local v0    # "exception":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;
    .param p3, "errorResponse"    # Landroid/webkit/WebResourceResponse;

    .line 237
    iget-object v0, p0, Lkidus/mikael/yebahil/hikmna/HomeActivity$2;->this$0:Lkidus/mikael/yebahil/hikmna/HomeActivity;

    invoke-virtual {v0}, Lkidus/mikael/yebahil/hikmna/HomeActivity;->isOnline()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lkidus/mikael/yebahil/hikmna/HomeActivity$2;->this$0:Lkidus/mikael/yebahil/hikmna/HomeActivity;

    invoke-static {v0}, Lkidus/mikael/yebahil/hikmna/HomeActivity;->access$200(Lkidus/mikael/yebahil/hikmna/HomeActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 239
    iget-object v0, p0, Lkidus/mikael/yebahil/hikmna/HomeActivity$2;->this$0:Lkidus/mikael/yebahil/hikmna/HomeActivity;

    invoke-static {v0}, Lkidus/mikael/yebahil/hikmna/HomeActivity;->access$300(Lkidus/mikael/yebahil/hikmna/HomeActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    goto :goto_0

    .line 241
    :cond_0
    iget-object v0, p0, Lkidus/mikael/yebahil/hikmna/HomeActivity$2;->this$0:Lkidus/mikael/yebahil/hikmna/HomeActivity;

    invoke-static {v0}, Lkidus/mikael/yebahil/hikmna/HomeActivity;->access$200(Lkidus/mikael/yebahil/hikmna/HomeActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lkidus/mikael/yebahil/hikmna/HomeActivity$2;->this$0:Lkidus/mikael/yebahil/hikmna/HomeActivity;

    invoke-static {v0}, Lkidus/mikael/yebahil/hikmna/HomeActivity;->access$300(Lkidus/mikael/yebahil/hikmna/HomeActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lkidus/mikael/yebahil/hikmna/HomeActivity$2;->this$0:Lkidus/mikael/yebahil/hikmna/HomeActivity;

    iget-object v0, v0, Lkidus/mikael/yebahil/hikmna/HomeActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lkidus/mikael/yebahil/hikmna/HomeActivity$2;->this$0:Lkidus/mikael/yebahil/hikmna/HomeActivity;

    iget-object v0, v0, Lkidus/mikael/yebahil/hikmna/HomeActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lkidus/mikael/yebahil/hikmna/HomeActivity$2;->this$0:Lkidus/mikael/yebahil/hikmna/HomeActivity;

    iget-object v0, v0, Lkidus/mikael/yebahil/hikmna/HomeActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 246
    :cond_1
    :goto_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 207
    iget-object v0, p0, Lkidus/mikael/yebahil/hikmna/HomeActivity$2;->this$0:Lkidus/mikael/yebahil/hikmna/HomeActivity;

    invoke-static {v0, p2}, Lkidus/mikael/yebahil/hikmna/HomeActivity;->access$102(Lkidus/mikael/yebahil/hikmna/HomeActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 208
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 209
    const/4 v0, 0x1

    return v0
.end method
