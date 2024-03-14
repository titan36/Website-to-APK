.class Lcom/onesignal/OSObservable;
.super Ljava/lang/Object;
.source "OSObservable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ObserverType:",
        "Ljava/lang/Object;",
        "StateType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private fireOnMainThread:Z

.field private methodName:Ljava/lang/String;

.field private observers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "fireOnMainThread"    # Z

    .line 40
    .local p0, "this":Lcom/onesignal/OSObservable;, "Lcom/onesignal/OSObservable<TObserverType;TStateType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/onesignal/OSObservable;->methodName:Ljava/lang/String;

    .line 42
    iput-boolean p2, p0, Lcom/onesignal/OSObservable;->fireOnMainThread:Z

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onesignal/OSObservable;->observers:Ljava/util/List;

    .line 44
    return-void
.end method


# virtual methods
.method addObserver(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TObserverType;)V"
        }
    .end annotation

    .line 47
    .local p0, "this":Lcom/onesignal/OSObservable;, "Lcom/onesignal/OSObservable<TObserverType;TStateType;>;"
    .local p1, "observer":Ljava/lang/Object;, "TObserverType;"
    iget-object v0, p0, Lcom/onesignal/OSObservable;->observers:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    return-void
.end method

.method addObserverStrong(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TObserverType;)V"
        }
    .end annotation

    .line 51
    .local p0, "this":Lcom/onesignal/OSObservable;, "Lcom/onesignal/OSObservable<TObserverType;TStateType;>;"
    .local p1, "observer":Ljava/lang/Object;, "TObserverType;"
    iget-object v0, p0, Lcom/onesignal/OSObservable;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    return-void
.end method

.method notifyChange(Ljava/lang/Object;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TStateType;)Z"
        }
    .end annotation

    .line 65
    .local p0, "this":Lcom/onesignal/OSObservable;, "Lcom/onesignal/OSObservable<TObserverType;TStateType;>;"
    .local p1, "state":Ljava/lang/Object;, "TStateType;"
    const/4 v0, 0x0

    .line 67
    .local v0, "notified":Z
    iget-object v1, p0, Lcom/onesignal/OSObservable;->observers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 69
    .local v2, "observer":Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_0

    .line 70
    move-object v3, v2

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    .line 70
    .local v3, "strongRefObserver":Ljava/lang/Object;
    goto :goto_1

    .line 72
    .end local v3    # "strongRefObserver":Ljava/lang/Object;
    :cond_0
    move-object v3, v2

    .line 74
    .restart local v3    # "strongRefObserver":Ljava/lang/Object;
    :goto_1
    if-eqz v3, :cond_2

    .line 76
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 77
    .local v4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v5, p0, Lcom/onesignal/OSObservable;->methodName:Ljava/lang/String;

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 78
    .local v5, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 79
    iget-boolean v7, p0, Lcom/onesignal/OSObservable;->fireOnMainThread:Z

    if-eqz v7, :cond_1

    .line 80
    new-instance v6, Lcom/onesignal/OSObservable$1;

    invoke-direct {v6, p0, v5, v3, p1}, Lcom/onesignal/OSObservable$1;-><init>(Lcom/onesignal/OSObservable;Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v6}, Lcom/onesignal/OSUtils;->runOnMainUIThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 95
    :cond_1
    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v9

    invoke-virtual {v5, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_2
    const/4 v0, 0x1

    .line 99
    .end local v4    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "method":Ljava/lang/reflect/Method;
    goto :goto_3

    .line 97
    :catch_0
    move-exception v4

    .line 98
    .local v4, "t":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 101
    .end local v2    # "observer":Ljava/lang/Object;
    .end local v3    # "strongRefObserver":Ljava/lang/Object;
    .end local v4    # "t":Ljava/lang/Throwable;
    :cond_2
    :goto_3
    goto :goto_0

    .line 103
    :cond_3
    return v0
.end method

.method removeObserver(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TObserverType;)V"
        }
    .end annotation

    .line 55
    .local p0, "this":Lcom/onesignal/OSObservable;, "Lcom/onesignal/OSObservable<TObserverType;TStateType;>;"
    .local p1, "observer":Ljava/lang/Object;, "TObserverType;"
    const/4 v0, 0x0

    .line 55
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/onesignal/OSObservable;->observers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 56
    iget-object v1, p0, Lcom/onesignal/OSObservable;->observers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    .line 57
    .local v1, "anObserver":Ljava/lang/Object;
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    iget-object v2, p0, Lcom/onesignal/OSObservable;->observers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 59
    goto :goto_1

    .line 55
    .end local v1    # "anObserver":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    .end local v0    # "i":I
    :cond_1
    :goto_1
    return-void
.end method
