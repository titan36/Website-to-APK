.class public final Landroid/support/v4/content/LocalBroadcastManager;
.super Ljava/lang/Object;
.source "LocalBroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;,
        Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final MSG_EXEC_PENDING_BROADCASTS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LocalBroadcastManager"

.field private static mInstance:Landroid/support/v4/content/LocalBroadcastManager;

.field private static final mLock:Ljava/lang/Object;


# instance fields
.field private final mActions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mAppContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mPendingBroadcasts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/BroadcastReceiver;",
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 99
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/content/LocalBroadcastManager;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v4/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v4/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/content/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    .line 113
    iput-object p1, p0, Landroid/support/v4/content/LocalBroadcastManager;->mAppContext:Landroid/content/Context;

    .line 114
    new-instance v0, Landroid/support/v4/content/LocalBroadcastManager$1;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/support/v4/content/LocalBroadcastManager$1;-><init>(Landroid/support/v4/content/LocalBroadcastManager;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/support/v4/content/LocalBroadcastManager;->mHandler:Landroid/os/Handler;

    .line 127
    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/content/LocalBroadcastManager;)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v4/content/LocalBroadcastManager;

    .line 47
    invoke-direct {p0}, Landroid/support/v4/content/LocalBroadcastManager;->executePendingBroadcasts()V

    return-void
.end method

.method private executePendingBroadcasts()V
    .locals 10

    .line 296
    const/4 v0, 0x0

    .line 296
    .local v0, "brs":[Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;
    :goto_0
    iget-object v1, p0, Landroid/support/v4/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    monitor-enter v1

    .line 297
    :try_start_0
    iget-object v2, p0, Landroid/support/v4/content/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 298
    .local v2, "N":I
    if-gtz v2, :cond_0

    .line 299
    monitor-exit v1

    .line 299
    .end local v0    # "brs":[Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;
    return-void

    .line 301
    .restart local v0    # "brs":[Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;
    :cond_0
    new-array v3, v2, [Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;

    .line 301
    .end local v0    # "brs":[Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;
    move-object v0, v3

    .line 302
    .restart local v0    # "brs":[Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;
    iget-object v3, p0, Landroid/support/v4/content/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 303
    iget-object v3, p0, Landroid/support/v4/content/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 304
    .end local v2    # "N":I
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    const/4 v1, 0x0

    move v2, v1

    .line 305
    .local v2, "i":I
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_3

    .line 306
    aget-object v3, v0, v2

    .line 307
    .local v3, "br":Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;
    iget-object v4, v3, Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 308
    .local v4, "nbr":I
    move v5, v1

    .line 308
    .local v5, "j":I
    :goto_2
    if-ge v5, v4, :cond_2

    .line 309
    iget-object v6, v3, Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;

    .line 310
    .local v6, "rec":Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;
    iget-boolean v7, v6, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;->dead:Z

    if-nez v7, :cond_1

    .line 311
    iget-object v7, v6, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;->receiver:Landroid/content/BroadcastReceiver;

    iget-object v8, p0, Landroid/support/v4/content/LocalBroadcastManager;->mAppContext:Landroid/content/Context;

    iget-object v9, v3, Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7, v8, v9}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 308
    .end local v6    # "rec":Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 305
    .end local v3    # "br":Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;
    .end local v4    # "nbr":I
    .end local v5    # "j":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 315
    .end local v2    # "i":I
    :cond_3
    goto :goto_0

    .line 304
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 104
    sget-object v0, Landroid/support/v4/content/LocalBroadcastManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 105
    :try_start_0
    sget-object v1, Landroid/support/v4/content/LocalBroadcastManager;->mInstance:Landroid/support/v4/content/LocalBroadcastManager;

    if-nez v1, :cond_0

    .line 106
    new-instance v1, Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/support/v4/content/LocalBroadcastManager;->mInstance:Landroid/support/v4/content/LocalBroadcastManager;

    .line 108
    :cond_0
    sget-object v1, Landroid/support/v4/content/LocalBroadcastManager;->mInstance:Landroid/support/v4/content/LocalBroadcastManager;

    monitor-exit v0

    return-object v1

    .line 109
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 8
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "filter"    # Landroid/content/IntentFilter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 139
    iget-object v0, p0, Landroid/support/v4/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    monitor-enter v0

    .line 140
    :try_start_0
    new-instance v1, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;

    invoke-direct {v1, p2, p1}, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;-><init>(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    .line 141
    .local v1, "entry":Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;
    iget-object v2, p0, Landroid/support/v4/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 142
    .local v2, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 143
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v4

    .line 144
    iget-object v4, p0, Landroid/support/v4/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    const/4 v4, 0x0

    .line 147
    .local v4, "i":I
    :goto_0
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countActions()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 148
    invoke-virtual {p2, v4}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v5

    .line 149
    .local v5, "action":Ljava/lang/String;
    iget-object v6, p0, Landroid/support/v4/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 150
    .local v6, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    if-nez v6, :cond_1

    .line 151
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v6, v7

    .line 152
    iget-object v7, p0, Landroid/support/v4/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    invoke-virtual {v7, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :cond_1
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    .end local v5    # "action":Ljava/lang/String;
    .end local v6    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 156
    .end local v1    # "entry":Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;
    .end local v2    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    .end local v4    # "i":I
    :cond_2
    monitor-exit v0

    .line 157
    return-void

    .line 156
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendBroadcast(Landroid/content/Intent;)Z
    .locals 19
    .param p1, "intent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v1, p0

    .line 212
    move-object/from16 v2, p1

    iget-object v3, v1, Landroid/support/v4/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    monitor-enter v3

    .line 213
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 214
    .local v5, "action":Ljava/lang/String;
    iget-object v4, v1, Landroid/support/v4/content/LocalBroadcastManager;->mAppContext:Landroid/content/Context;

    .line 215
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 214
    invoke-virtual {v2, v4}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    move-object v11, v4

    .line 216
    .local v11, "type":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    .line 217
    .local v8, "data":Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v4

    move-object v12, v4

    .line 218
    .local v12, "scheme":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v9

    .line 220
    .local v9, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    nop

    .line 221
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v4

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    move v15, v4

    .line 222
    .local v15, "debug":Z
    if-eqz v15, :cond_1

    const-string v4, "LocalBroadcastManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Resolving type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " scheme "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " of intent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_1
    iget-object v4, v1, Landroid/support/v4/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move-object v10, v4

    .line 227
    .local v10, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    if-eqz v10, :cond_d

    .line 228
    if-eqz v15, :cond_2

    const-string v4, "LocalBroadcastManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Action list: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_2
    const/4 v4, 0x0

    .line 231
    .local v4, "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    move-object v7, v4

    const/4 v4, 0x0

    .line 231
    .local v4, "i":I
    .local v7, "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    :goto_1
    move v6, v4

    .line 231
    .end local v4    # "i":I
    .local v6, "i":I
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v6, v4, :cond_a

    .line 232
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;

    .line 233
    .local v4, "receiver":Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;
    if-eqz v15, :cond_3

    const-string v13, "LocalBroadcastManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v6

    const-string v6, "Matching against filter "

    .line 233
    .end local v6    # "i":I
    .local v16, "i":I
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v13, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 235
    .end local v16    # "i":I
    .restart local v6    # "i":I
    :cond_3
    move/from16 v16, v6

    .line 235
    .end local v6    # "i":I
    .restart local v16    # "i":I
    :goto_2
    iget-boolean v6, v4, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;->broadcasting:Z

    if-eqz v6, :cond_5

    .line 236
    if-eqz v15, :cond_4

    .line 237
    const-string v6, "LocalBroadcastManager"

    const-string v13, "  Filter\'s target already added"

    invoke-static {v6, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    .end local v4    # "receiver":Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;
    :cond_4
    move-object/from16 v18, v10

    move-object/from16 v17, v11

    move-object v11, v7

    goto/16 :goto_5

    .line 242
    .restart local v4    # "receiver":Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;
    :cond_5
    iget-object v6, v4, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;->filter:Landroid/content/IntentFilter;

    const-string v13, "LocalBroadcastManager"

    move-object v14, v4

    move-object v4, v6

    .line 242
    .end local v4    # "receiver":Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;
    .local v14, "receiver":Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;
    move-object v6, v11

    move-object/from16 v17, v11

    move-object v11, v7

    move-object v7, v12

    .line 242
    .end local v7    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    .local v11, "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    .local v17, "type":Ljava/lang/String;
    move-object/from16 v18, v10

    move-object v10, v13

    .line 242
    .end local v10    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    .local v18, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    invoke-virtual/range {v4 .. v10}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result v4

    .line 244
    .local v4, "match":I
    if-ltz v4, :cond_8

    .line 245
    if-eqz v15, :cond_6

    const-string v6, "LocalBroadcastManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  Filter matched!  match=0x"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 245
    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_6
    if-nez v11, :cond_7

    .line 248
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v6

    .line 248
    .end local v11    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    .restart local v7    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    goto :goto_3

    .line 250
    .end local v7    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    .restart local v11    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    :cond_7
    move-object v7, v11

    .line 250
    .end local v11    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    .restart local v7    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    :goto_3
    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    const/4 v6, 0x1

    iput-boolean v6, v14, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;->broadcasting:Z

    goto :goto_6

    .line 253
    .end local v7    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    .restart local v11    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    :cond_8
    if-eqz v15, :cond_9

    .line 255
    packed-switch v4, :pswitch_data_0

    .line 260
    const-string v6, "unknown reason"

    goto :goto_4

    .line 259
    :pswitch_0
    const-string v6, "type"

    goto :goto_4

    .line 258
    :pswitch_1
    const-string v6, "data"

    goto :goto_4

    .line 256
    :pswitch_2
    const-string v6, "action"

    goto :goto_4

    .line 257
    :pswitch_3
    const-string v6, "category"

    .line 260
    .local v6, "reason":Ljava/lang/String;
    :goto_4
    nop

    .line 262
    const-string v7, "LocalBroadcastManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  Filter did not match: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    .end local v4    # "match":I
    .end local v6    # "reason":Ljava/lang/String;
    .end local v14    # "receiver":Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;
    .end local v17    # "type":Ljava/lang/String;
    .end local v18    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    .restart local v7    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    .restart local v10    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    .local v11, "type":Ljava/lang/String;
    :cond_9
    :goto_5
    move-object v7, v11

    .line 231
    .end local v10    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    .end local v11    # "type":Ljava/lang/String;
    .restart local v17    # "type":Ljava/lang/String;
    .restart local v18    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    :goto_6
    add-int/lit8 v4, v16, 0x1

    .line 231
    .end local v16    # "i":I
    .local v4, "i":I
    move-object/from16 v11, v17

    move-object/from16 v10, v18

    goto/16 :goto_1

    .line 267
    .end local v4    # "i":I
    .end local v17    # "type":Ljava/lang/String;
    .end local v18    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    .restart local v10    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    .restart local v11    # "type":Ljava/lang/String;
    :cond_a
    move-object/from16 v18, v10

    move-object/from16 v17, v11

    move-object v11, v7

    .line 267
    .end local v7    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    .end local v10    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    .local v11, "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    .restart local v17    # "type":Ljava/lang/String;
    .restart local v18    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    if-eqz v11, :cond_d

    .line 268
    const/4 v4, 0x0

    .line 268
    .restart local v4    # "i":I
    :goto_7
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_b

    .line 269
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;->broadcasting:Z

    .line 268
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 271
    .end local v4    # "i":I
    :cond_b
    iget-object v4, v1, Landroid/support/v4/content/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    new-instance v6, Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;

    invoke-direct {v6, v2, v11}, Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;-><init>(Landroid/content/Intent;Ljava/util/ArrayList;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    iget-object v4, v1, Landroid/support/v4/content/LocalBroadcastManager;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_c

    .line 273
    iget-object v4, v1, Landroid/support/v4/content/LocalBroadcastManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 275
    :cond_c
    monitor-exit v3

    const/4 v3, 0x1

    return v3

    .line 278
    .end local v5    # "action":Ljava/lang/String;
    .end local v8    # "data":Landroid/net/Uri;
    .end local v9    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v11    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    .end local v12    # "scheme":Ljava/lang/String;
    .end local v15    # "debug":Z
    .end local v17    # "type":Ljava/lang/String;
    .end local v18    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    :cond_d
    monitor-exit v3

    .line 279
    const/4 v3, 0x0

    return v3

    .line 278
    :catchall_0
    move-exception v0

    move-object v4, v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public sendBroadcastSync(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 288
    invoke-virtual {p0, p1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    invoke-direct {p0}, Landroid/support/v4/content/LocalBroadcastManager;->executePendingBroadcasts()V

    .line 291
    :cond_0
    return-void
.end method

.method public unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 11
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 169
    iget-object v0, p0, Landroid/support/v4/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    monitor-enter v0

    .line 170
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 171
    .local v1, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    if-nez v1, :cond_0

    .line 172
    monitor-exit v0

    return-void

    .line 174
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 174
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_5

    .line 175
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;

    .line 176
    .local v4, "filter":Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;
    iput-boolean v3, v4, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;->dead:Z

    .line 177
    const/4 v5, 0x0

    .line 177
    .local v5, "j":I
    :goto_1
    iget-object v6, v4, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v6}, Landroid/content/IntentFilter;->countActions()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 178
    iget-object v6, v4, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v6, v5}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v6

    .line 179
    .local v6, "action":Ljava/lang/String;
    iget-object v7, p0, Landroid/support/v4/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 180
    .local v7, "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    if-eqz v7, :cond_3

    .line 181
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v3

    .line 181
    .local v8, "k":I
    :goto_2
    if-ltz v8, :cond_2

    .line 182
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;

    .line 183
    .local v9, "rec":Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;
    iget-object v10, v9, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;->receiver:Landroid/content/BroadcastReceiver;

    if-ne v10, p1, :cond_1

    .line 184
    iput-boolean v3, v9, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;->dead:Z

    .line 185
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 181
    .end local v9    # "rec":Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;
    :cond_1
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    .line 188
    .end local v8    # "k":I
    :cond_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gtz v8, :cond_3

    .line 189
    iget-object v8, p0, Landroid/support/v4/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    .end local v6    # "action":Ljava/lang/String;
    .end local v7    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 174
    .end local v4    # "filter":Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;
    .end local v5    # "j":I
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 194
    .end local v1    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    .end local v2    # "i":I
    :cond_5
    monitor-exit v0

    .line 195
    return-void

    .line 194
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
