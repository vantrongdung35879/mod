.class public Lcom/gcloud/nettool/NetworkRunner;
.super Ljava/lang/Object;
.source "NetworkRunner.java"


# static fields
.field public static final Instance:Lcom/gcloud/nettool/NetworkRunner;


# instance fields
.field private mInited:Z

.field private mWorkHandler:Landroid/os/Handler;

.field private mWorkThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lcom/gcloud/nettool/NetworkRunner;

    invoke-direct {v0}, Lcom/gcloud/nettool/NetworkRunner;-><init>()V

    sput-object v0, Lcom/gcloud/nettool/NetworkRunner;->Instance:Lcom/gcloud/nettool/NetworkRunner;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/gcloud/nettool/NetworkRunner;->mInited:Z

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/gcloud/nettool/NetworkRunner;->mWorkThread:Landroid/os/HandlerThread;

    .line 16
    iput-object v0, p0, Lcom/gcloud/nettool/NetworkRunner;->mWorkHandler:Landroid/os/Handler;

    return-void
.end method

.method private native notifyPing(IIIIIIILjava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "ret",
            "send",
            "recv",
            "minUS",
            "maxUS",
            "avgUS",
            "ip"
        }
    .end annotation
.end method

.method private native notifyTracert(IILjava/lang/String;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "ret",
            "ip",
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method


# virtual methods
.method public Ping(ILjava/lang/String;III)I
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "ip",
            "port",
            "timeout",
            "cnt"
        }
    .end annotation

    .line 56
    iget-boolean v0, p0, Lcom/gcloud/nettool/NetworkRunner;->mInited:Z

    if-nez v0, :cond_0

    .line 58
    const-string p1, "NetTool"

    const-string p2, "Ping: Java Runner not start"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1

    .line 62
    :cond_0
    new-instance v6, Lcom/gcloud/nettool/NetworkRunnerPing;

    move-object v0, v6

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/gcloud/nettool/NetworkRunnerPing;-><init>(ILjava/lang/String;III)V

    .line 63
    iget-object p2, p0, Lcom/gcloud/nettool/NetworkRunner;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {p2, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return p1
.end method

.method public Start()V
    .locals 2

    .line 24
    iget-boolean v0, p0, Lcom/gcloud/nettool/NetworkRunner;->mInited:Z

    if-eqz v0, :cond_0

    return-void

    .line 29
    :cond_0
    const-string v0, "NetTool"

    const-string v1, "Start Runner"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NetworkTools"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gcloud/nettool/NetworkRunner;->mWorkThread:Landroid/os/HandlerThread;

    .line 32
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 34
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/gcloud/nettool/NetworkRunner;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/gcloud/nettool/NetworkRunner;->mWorkHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/gcloud/nettool/NetworkRunner;->mInited:Z

    return-void
.end method

.method public Stop()V
    .locals 2

    .line 41
    const-string v0, "NetTool"

    const-string v1, "Stop Runner"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-boolean v0, p0, Lcom/gcloud/nettool/NetworkRunner;->mInited:Z

    if-nez v0, :cond_0

    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/gcloud/nettool/NetworkRunner;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->interrupt()V

    .line 49
    iget-object v0, p0, Lcom/gcloud/nettool/NetworkRunner;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/gcloud/nettool/NetworkRunner;->mInited:Z

    return-void
.end method

.method public Tracert(ILjava/lang/String;IIII)I
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "ip",
            "port",
            "sockTo",
            "maxHops",
            "cnt"
        }
    .end annotation

    .line 70
    iget-boolean v0, p0, Lcom/gcloud/nettool/NetworkRunner;->mInited:Z

    if-nez v0, :cond_0

    .line 72
    const-string p1, "NetTool"

    const-string p2, "Tracert: Java Runner not start"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1

    .line 76
    :cond_0
    new-instance v7, Lcom/gcloud/nettool/NetworkRunnerTracert;

    move-object v0, v7

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/gcloud/nettool/NetworkRunnerTracert;-><init>(ILjava/lang/String;IIII)V

    .line 77
    iget-object p2, p0, Lcom/gcloud/nettool/NetworkRunner;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {p2, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return p1
.end method

.method public onPing(IIIIIIILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "ret",
            "send",
            "recv",
            "minUS",
            "maxUS",
            "avgUS",
            "ip"
        }
    .end annotation

    .line 84
    invoke-direct/range {p0 .. p8}, Lcom/gcloud/nettool/NetworkRunner;->notifyPing(IIIIIIILjava/lang/String;)V

    return-void
.end method

.method public onTracert(IILjava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "ret",
            "ip",
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 89
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/gcloud/nettool/NetworkRunner;->notifyTracert(IILjava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method
