.class public final Lcom/tencent/mna/base/utils/NetworkChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkChangeReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mna/base/utils/NetworkChangeReceiver$c;,
        Lcom/tencent/mna/base/utils/NetworkChangeReceiver$b;
    }
.end annotation


# instance fields
.field private a:I

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/mna/base/utils/NetworkChangeReceiver$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/tencent/mna/base/utils/NetworkChangeReceiver;->a:I

    .line 4
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mna/base/utils/NetworkChangeReceiver;->b:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mna/base/utils/NetworkChangeReceiver;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/tencent/mna/base/utils/NetworkChangeReceiver;->a:I

    return p0
.end method

.method static synthetic a(Lcom/tencent/mna/base/utils/NetworkChangeReceiver;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/tencent/mna/base/utils/NetworkChangeReceiver;->a:I

    return p1
.end method

.method private a(ILcom/tencent/mna/base/utils/c$a;)V
    .locals 3

    .line 13
    const-class v0, Lcom/tencent/mna/base/utils/NetworkChangeReceiver;

    monitor-enter v0

    .line 14
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/utils/NetworkChangeReceiver$b;->a()Lcom/tencent/mna/base/utils/NetworkChangeReceiver;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/mna/base/utils/NetworkChangeReceiver;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/mna/base/utils/NetworkChangeReceiver$c;

    .line 15
    invoke-interface {v2, p1, p2}, Lcom/tencent/mna/base/utils/NetworkChangeReceiver$c;->a(ILcom/tencent/mna/base/utils/c$a;)V

    goto :goto_0

    .line 17
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    if-nez p0, :cond_0

    .line 4
    const-string p0, "register NetworkChangeReceiver failed, context is null"

    invoke-static {p0}, Lcom/tencent/mna/v1;->b(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/tencent/mna/base/utils/NetworkChangeReceiver$b;->a()Lcom/tencent/mna/base/utils/NetworkChangeReceiver;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 9
    const-string p0, "register NetworkChangeReceiver succeed"

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lcom/tencent/mna/base/utils/NetworkChangeReceiver$c;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 10
    :cond_0
    const-class v0, Lcom/tencent/mna/base/utils/NetworkChangeReceiver;

    monitor-enter v0

    .line 11
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/utils/NetworkChangeReceiver$b;->a()Lcom/tencent/mna/base/utils/NetworkChangeReceiver;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/mna/base/utils/NetworkChangeReceiver;->b:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic a(Lcom/tencent/mna/base/utils/NetworkChangeReceiver;ILcom/tencent/mna/base/utils/c$a;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/tencent/mna/base/utils/NetworkChangeReceiver;->a(ILcom/tencent/mna/base/utils/c$a;)V

    return-void
.end method

.method public static b(Lcom/tencent/mna/base/utils/NetworkChangeReceiver$c;)V
    .locals 2

    .line 1
    const-class v0, Lcom/tencent/mna/base/utils/NetworkChangeReceiver;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/utils/NetworkChangeReceiver$b;->a()Lcom/tencent/mna/base/utils/NetworkChangeReceiver;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/mna/base/utils/NetworkChangeReceiver;->b:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    :try_start_0
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    new-instance p2, Lcom/tencent/mna/base/utils/NetworkChangeReceiver$a;

    invoke-direct {p2, p0, p1}, Lcom/tencent/mna/base/utils/NetworkChangeReceiver$a;-><init>(Lcom/tencent/mna/base/utils/NetworkChangeReceiver;Landroid/content/Context;)V

    invoke-static {p2}, Lcom/tencent/mna/a2;->d(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method
