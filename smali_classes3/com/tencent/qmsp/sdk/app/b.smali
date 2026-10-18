.class public Lcom/tencent/qmsp/sdk/app/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final d:[B

.field private static final e:[B

.field private static f:Lcom/tencent/qmsp/sdk/app/b;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/HandlerThread;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/os/Handler;

.field private c:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tencent/qmsp/sdk/app/b;->d:[B

    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/tencent/qmsp/sdk/app/b;->e:[B

    return-void

    :array_0
    .array-data 1
        0x14t
        0x60t
        -0x74t
        0x4dt
        0x2ft
        0x32t
        0x79t
    .end array-data

    :array_1
    .array-data 1
        0x14t
        0x60t
        -0x74t
        0x64t
        0x21t
        0x2ct
        0x79t
        -0xft
        0x2at
        0x71t
        -0x49t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qmsp/sdk/app/b;->b:Landroid/os/Handler;

    iput-object v0, p0, Lcom/tencent/qmsp/sdk/app/b;->c:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qmsp/sdk/app/b;->a:Ljava/util/List;

    sget-object v0, Lcom/tencent/qmsp/sdk/app/b;->d:[B

    invoke-static {v0}, Lcom/tencent/qmsp/sdk/f/h;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/qmsp/sdk/app/b;->a(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qmsp/sdk/app/b;->b:Landroid/os/Handler;

    sget-object v0, Lcom/tencent/qmsp/sdk/app/b;->e:[B

    invoke-static {v0}, Lcom/tencent/qmsp/sdk/f/h;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/qmsp/sdk/app/b;->a(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qmsp/sdk/app/b;->c:Landroid/os/Handler;

    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/os/Handler;
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance p1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v1, p0, Lcom/tencent/qmsp/sdk/app/b;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public static e()Lcom/tencent/qmsp/sdk/app/b;
    .locals 2

    sget-object v0, Lcom/tencent/qmsp/sdk/app/b;->f:Lcom/tencent/qmsp/sdk/app/b;

    if-nez v0, :cond_1

    const-class v0, Lcom/tencent/qmsp/sdk/app/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/qmsp/sdk/app/b;->f:Lcom/tencent/qmsp/sdk/app/b;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/qmsp/sdk/app/b;

    invoke-direct {v1}, Lcom/tencent/qmsp/sdk/app/b;-><init>()V

    sput-object v1, Lcom/tencent/qmsp/sdk/app/b;->f:Lcom/tencent/qmsp/sdk/app/b;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/qmsp/sdk/app/b;->f:Lcom/tencent/qmsp/sdk/app/b;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qmsp/sdk/app/b;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a()Z
    .locals 4

    iget-object v0, p0, Lcom/tencent/qmsp/sdk/app/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/tencent/qmsp/sdk/app/b;->d:[B

    invoke-static {v3}, Lcom/tencent/qmsp/sdk/f/h;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public b()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qmsp/sdk/app/b;->c:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public c()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qmsp/sdk/app/b;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qmsp/sdk/app/b;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    iput-object v1, p0, Lcom/tencent/qmsp/sdk/app/b;->b:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/tencent/qmsp/sdk/app/b;->c:Landroid/os/Handler;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    iput-object v1, p0, Lcom/tencent/qmsp/sdk/app/b;->c:Landroid/os/Handler;

    :cond_1
    sget-object v0, Lcom/tencent/qmsp/sdk/app/b;->f:Lcom/tencent/qmsp/sdk/app/b;

    if-eqz v0, :cond_2

    sput-object v1, Lcom/tencent/qmsp/sdk/app/b;->f:Lcom/tencent/qmsp/sdk/app/b;

    :cond_2
    return-void
.end method
