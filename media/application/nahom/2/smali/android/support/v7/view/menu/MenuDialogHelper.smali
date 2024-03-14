.class Landroid/support/v7/view/menu/MenuDialogHelper;
.super Ljava/lang/Object;
.source "MenuDialogHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/support/v7/view/menu/MenuPresenter$Callback;


# instance fields
.field private mDialog:Landroid/support/v7/app/AlertDialog;

.field private mMenu:Landroid/support/v7/view/menu/MenuBuilder;

.field mPresenter:Landroid/support/v7/view/menu/ListMenuPresenter;

.field private mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;


# direct methods
.method public constructor <init>(Landroid/support/v7/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuDialogHelper;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 43
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 138
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuDialogHelper;->mDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuDialogHelper;->mDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 141
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 168
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuDialogHelper;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    iget-object v1, p0, Landroid/support/v7/view/menu/MenuDialogHelper;->mPresenter:Landroid/support/v7/view/menu/ListMenuPresenter;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/ListMenuPresenter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/view/menu/MenuItemImpl;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    .line 169
    return-void
.end method

.method public onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V
    .locals 1
    .param p1, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .line 150
    if-nez p2, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/MenuDialogHelper;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    if-ne p1, v0, :cond_1

    .line 151
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuDialogHelper;->dismiss()V

    .line 153
    :cond_1
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuDialogHelper;->mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_2

    .line 154
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuDialogHelper;->mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/view/menu/MenuPresenter$Callback;->onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V

    .line 156
    :cond_2
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 145
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuDialogHelper;->mPresenter:Landroid/support/v7/view/menu/ListMenuPresenter;

    iget-object v1, p0, Landroid/support/v7/view/menu/MenuDialogHelper;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/view/menu/ListMenuPresenter;->onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V

    .line 146
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 93
    const/16 v0, 0x52

    if-eq p2, v0, :cond_0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_3

    .line 94
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 95
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 96
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuDialogHelper;->mDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 97
    .local v0, "win":Landroid/view/Window;
    if-eqz v0, :cond_1

    .line 98
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 99
    .local v2, "decor":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 100
    invoke-virtual {v2}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v3

    .line 101
    .local v3, "ds":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v3, :cond_1

    .line 102
    invoke-virtual {v3, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 103
    return v1

    .line 107
    .end local v0    # "win":Landroid/view/Window;
    .end local v2    # "decor":Landroid/view/View;
    .end local v3    # "ds":Landroid/view/KeyEvent$DispatcherState;
    :cond_1
    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 108
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuDialogHelper;->mDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 109
    .restart local v0    # "win":Landroid/view/Window;
    if-eqz v0, :cond_3

    .line 110
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 111
    .restart local v2    # "decor":Landroid/view/View;
    if-eqz v2, :cond_3

    .line 112
    invoke-virtual {v2}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v3

    .line 113
    .restart local v3    # "ds":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v3, :cond_3

    invoke-virtual {v3, p3}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 114
    iget-object v4, p0, Landroid/support/v7/view/menu/MenuDialogHelper;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v4, v1}, Landroid/support/v7/view/menu/MenuBuilder;->close(Z)V

    .line 115
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 116
    return v1

    .line 124
    .end local v0    # "win":Landroid/view/Window;
    .end local v2    # "decor":Landroid/view/View;
    .end local v3    # "ds":Landroid/view/KeyEvent$DispatcherState;
    :cond_3
    :goto_0
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuDialogHelper;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1}, Landroid/support/v7/view/menu/MenuBuilder;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v0

    return v0
.end method

.method public onOpenSubMenu(Landroid/support/v7/view/menu/MenuBuilder;)Z
    .locals 1
    .param p1, "subMenu"    # Landroid/support/v7/view/menu/MenuBuilder;

    .line 160
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuDialogHelper;->mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuDialogHelper;->mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1}, Landroid/support/v7/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Landroid/support/v7/view/menu/MenuBuilder;)Z

    move-result v0

    return v0

    .line 163
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setPresenterCallback(Landroid/support/v7/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Landroid/support/v7/view/menu/MenuPresenter$Callback;

    .line 129
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuDialogHelper;->mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    .line 130
    return-void
.end method

.method public show(Landroid/os/IBinder;)V
    .locals 6
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .line 52
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuDialogHelper;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 55
    .local v0, "menu":Landroid/support/v7/view/menu/MenuBuilder;
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 57
    .local v1, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    new-instance v2, Landroid/support/v7/view/menu/ListMenuPresenter;

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Landroid/support/v7/appcompat/R$layout;->abc_list_menu_item_layout:I

    invoke-direct {v2, v3, v4}, Landroid/support/v7/view/menu/ListMenuPresenter;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Landroid/support/v7/view/menu/MenuDialogHelper;->mPresenter:Landroid/support/v7/view/menu/ListMenuPresenter;

    .line 60
    iget-object v2, p0, Landroid/support/v7/view/menu/MenuDialogHelper;->mPresenter:Landroid/support/v7/view/menu/ListMenuPresenter;

    invoke-virtual {v2, p0}, Landroid/support/v7/view/menu/ListMenuPresenter;->setCallback(Landroid/support/v7/view/menu/MenuPresenter$Callback;)V

    .line 61
    iget-object v2, p0, Landroid/support/v7/view/menu/MenuDialogHelper;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    iget-object v3, p0, Landroid/support/v7/view/menu/MenuDialogHelper;->mPresenter:Landroid/support/v7/view/menu/ListMenuPresenter;

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;)V

    .line 62
    iget-object v2, p0, Landroid/support/v7/view/menu/MenuDialogHelper;->mPresenter:Landroid/support/v7/view/menu/ListMenuPresenter;

    invoke-virtual {v2}, Landroid/support/v7/view/menu/ListMenuPresenter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Landroid/support/v7/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 65
    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->getHeaderView()Landroid/view/View;

    move-result-object v2

    .line 66
    .local v2, "headerView":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 68
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->getHeaderIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 75
    :goto_0
    invoke-virtual {v1, p0}, Landroid/support/v7/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 78
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v7/view/menu/MenuDialogHelper;->mDialog:Landroid/support/v7/app/AlertDialog;

    .line 79
    iget-object v3, p0, Landroid/support/v7/view/menu/MenuDialogHelper;->mDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v3, p0}, Landroid/support/v7/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 81
    iget-object v3, p0, Landroid/support/v7/view/menu/MenuDialogHelper;->mDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 82
    .local v3, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x3eb

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 83
    if-eqz p1, :cond_1

    .line 84
    iput-object p1, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 86
    :cond_1
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x20000

    or-int/2addr v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 88
    iget-object v4, p0, Landroid/support/v7/view/menu/MenuDialogHelper;->mDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v4}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 89
    return-void
.end method
