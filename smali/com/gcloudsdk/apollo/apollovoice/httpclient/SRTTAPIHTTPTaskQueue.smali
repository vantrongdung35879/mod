.class Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueue;
.super Ljava/lang/Object;
.source "SRTTAPIHTTPTaskQueue.java"


# static fields
.field private static taskQueue:Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5
    new-instance v0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;

    invoke-direct {v0}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;-><init>()V

    sput-object v0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueue;->taskQueue:Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized addTask(ILjava/lang/String;Ljava/lang/String;[BI)V
    .locals 7

    const-class v0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueue;

    monitor-enter v0

    .line 15
    :try_start_0
    sget-object v1, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueue;->taskQueue:Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;

    move v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;->addTask(ILjava/lang/String;Ljava/lang/String;[BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static init()V
    .locals 0

    return-void
.end method

.method public static setAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 11
    sget-object v0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueue;->taskQueue:Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;->setAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
