.class public Lcom/ihoc/mgpa/gradish/u1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ihoc/mgpa/toolkit/util/LogUtil$WriteLogTaskDispatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ihoc/mgpa/gradish/u1$a;
    }
.end annotation


# static fields
.field private static volatile c:Lcom/ihoc/mgpa/gradish/u1;


# instance fields
.field private a:Lcom/ihoc/mgpa/gradish/u1$a;

.field private b:Landroid/os/HandlerThread;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/ihoc/mgpa/gradish/a1;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/u1;->b:Landroid/os/HandlerThread;

    return-void
.end method

.method public static a()Lcom/ihoc/mgpa/gradish/u1;
    .locals 2

    .line 2
    sget-object v0, Lcom/ihoc/mgpa/gradish/u1;->c:Lcom/ihoc/mgpa/gradish/u1;

    if-nez v0, :cond_1

    .line 3
    const-class v0, Lcom/ihoc/mgpa/gradish/u1;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/ihoc/mgpa/gradish/u1;->c:Lcom/ihoc/mgpa/gradish/u1;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcom/ihoc/mgpa/gradish/u1;

    invoke-direct {v1}, Lcom/ihoc/mgpa/gradish/u1;-><init>()V

    sput-object v1, Lcom/ihoc/mgpa/gradish/u1;->c:Lcom/ihoc/mgpa/gradish/u1;

    .line 7
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 9
    :cond_1
    :goto_0
    sget-object v0, Lcom/ihoc/mgpa/gradish/u1;->c:Lcom/ihoc/mgpa/gradish/u1;

    return-object v0
.end method

.method private a(Landroid/os/Message;)V
    .locals 0

    .line 15
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez p1, :cond_0

    return-void

    .line 18
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->writeLogToFile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/ihoc/mgpa/gradish/u1;Landroid/os/Message;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ihoc/mgpa/gradish/u1;->a(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;J)V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/u1;->a:Lcom/ihoc/mgpa/gradish/u1$a;

    if-eqz v0, :cond_0

    .line 11
    invoke-static {v0, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 12
    iget-object p2, p0, Lcom/ihoc/mgpa/gradish/u1;->a:Lcom/ihoc/mgpa/gradish/u1$a;

    invoke-virtual {p2, p1, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/u1;->a:Lcom/ihoc/mgpa/gradish/u1$a;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 14
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/u1;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "VmpSubHandler: sub handler thread start!"

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/u1;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 4
    new-instance v0, Lcom/ihoc/mgpa/gradish/u1$a;

    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/u1;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ihoc/mgpa/gradish/u1$a;-><init>(Lcom/ihoc/mgpa/gradish/u1;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/u1;->a:Lcom/ihoc/mgpa/gradish/u1$a;

    goto :goto_0

    .line 6
    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "VmpSubHandler: sub handler thread is already alive, do not need create again!"

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    :goto_0
    invoke-static {p0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->setWriteLogTaskDispatcher(Lcom/ihoc/mgpa/toolkit/util/LogUtil$WriteLogTaskDispatcher;)V

    return-void
.end method

.method public dispatch(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/u1;->a:Lcom/ihoc/mgpa/gradish/u1$a;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    .line 2
    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method
