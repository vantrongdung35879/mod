.class Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$RSTTSession;
.super Ljava/lang/Object;
.source "SRTTAPIHTTPTaskQueueImp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RSTTSession"
.end annotation


# instance fields
.field public isValid:Z

.field public lastFeedTime:J

.field public lastUrl:Ljava/lang/String;

.field public sessionid:I

.field public taskQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTask;",
            ">;"
        }
    .end annotation
.end field

.field public taskid:I

.field final synthetic this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;

.field public tryUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$UrlPair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$RSTTSession;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ResetTryUrls()V
    .locals 7

    .line 77
    iget-object v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$RSTTSession;->tryUrls:Ljava/util/ArrayList;

    monitor-enter v0

    .line 78
    :try_start_0
    iget-object v1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$RSTTSession;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;

    iget v1, v1, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;->maxHttpTryTimes:I

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    .line 79
    iget-object v1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$RSTTSession;->tryUrls:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 81
    iget-object v1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$RSTTSession;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;

    invoke-static {}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;->access$100(Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 82
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$RSTTSession;->tryUrls:Ljava/util/ArrayList;

    new-instance v4, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$UrlPair;

    iget-object v5, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$RSTTSession;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;

    invoke-direct {v4, v5, v1, v3}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$UrlPair;-><init>(Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;Ljava/lang/String;Z)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_0
    monitor-exit v0

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 86
    :goto_0
    iget-object v2, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$RSTTSession;->tryUrls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 87
    iget-object v2, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$RSTTSession;->tryUrls:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$UrlPair;

    iget-object v2, v2, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$UrlPair;->key:Ljava/lang/String;

    .line 88
    iget-object v4, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$RSTTSession;->tryUrls:Ljava/util/ArrayList;

    new-instance v5, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$UrlPair;

    iget-object v6, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$RSTTSession;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;

    invoke-direct {v5, v6, v2, v3}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$UrlPair;-><init>(Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;Ljava/lang/String;Z)V

    invoke-virtual {v4, v1, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 90
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addTask(IILjava/lang/String;Ljava/lang/String;[B)V
    .locals 2

    .line 123
    iget-boolean v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$RSTTSession;->isValid:Z

    if-nez v0, :cond_0

    .line 124
    const-string p1, "rstt session is invalid,cannot add task"

    invoke-static {p1}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogE(Ljava/lang/String;)V

    return-void

    .line 128
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$RSTTSession;->lastFeedTime:J

    .line 130
    new-instance v0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTask;

    invoke-direct {v0}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTask;-><init>()V

    .line 131
    iput p1, v0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTask;->type:I

    .line 132
    iput-object p5, v0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTask;->body:[B

    .line 133
    iput-object p4, v0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTask;->key:Ljava/lang/String;

    .line 134
    iput p2, v0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTask;->seq:I

    .line 135
    iput-object p3, v0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTask;->micType:Ljava/lang/String;

    .line 138
    :try_start_0
    sget-object p1, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance p2, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$RequestTask;

    iget-object p3, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$RSTTSession;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;

    invoke-direct {p2, p3, p0, v0}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$RequestTask;-><init>(Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$RSTTSession;Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTask;)V

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 139
    const-string p1, "rstt thread feed task"

    invoke-static {p1}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 141
    :catch_0
    const-string p1, "rstt thread queue task"

    invoke-static {p1}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    .line 142
    iget-object p1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$RSTTSession;->taskQueue:Ljava/util/LinkedList;

    monitor-enter p1

    .line 143
    :try_start_1
    iget-object p2, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$RSTTSession;->taskQueue:Ljava/util/LinkedList;

    invoke-virtual {p2, v0}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 144
    monitor-exit p1

    :goto_0
    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method checkTimeout()Z
    .locals 5

    .line 169
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 170
    iget-wide v2, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$RSTTSession;->lastFeedTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected finalize()V
    .locals 2

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rstt session release, id:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$RSTTSession;->sessionid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    return-void
.end method

.method public init(ILjava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 149
    const-string v0, ""

    iput-object v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$RSTTSession;->lastUrl:Ljava/lang/String;

    const/4 v0, 0x0

    .line 150
    iput v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$RSTTSession;->taskid:I

    .line 151
    iput p1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$RSTTSession;->sessionid:I

    const/4 p1, 0x1

    .line 152
    iput-boolean p1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$RSTTSession;->isValid:Z

    const-wide/16 v0, 0x0

    .line 153
    iput-wide v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$RSTTSession;->lastFeedTime:J

    .line 155
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$RSTTSession;->taskQueue:Ljava/util/LinkedList;

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$RSTTSession;->tryUrls:Ljava/util/ArrayList;

    .line 157
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 158
    iget-object v1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$RSTTSession;->tryUrls:Ljava/util/ArrayList;

    new-instance v2, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$UrlPair;

    iget-object v3, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$RSTTSession;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;

    invoke-direct {v2, v3, v0, p1}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$UrlPair;-><init>(Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public nextUrl()Ljava/lang/String;
    .locals 7

    .line 94
    iget-object v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$RSTTSession;->tryUrls:Ljava/util/ArrayList;

    monitor-enter v0

    .line 95
    :try_start_0
    iget-boolean v1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$RSTTSession;->isValid:Z

    if-nez v1, :cond_0

    .line 96
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$RSTTSession;->lastUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$RSTTSession;->lastUrl:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 99
    :cond_1
    iget-object v1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$RSTTSession;->tryUrls:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_2

    const-string v1, ""

    monitor-exit v0

    return-object v1

    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 101
    :goto_0
    iget-object v3, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$RSTTSession;->tryUrls:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 102
    iget-object v3, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$RSTTSession;->tryUrls:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$UrlPair;

    iget-boolean v3, v3, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$UrlPair;->value:Z

    if-eqz v3, :cond_3

    .line 103
    iget-object v3, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$RSTTSession;->tryUrls:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$UrlPair;

    iget-object v3, v3, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$UrlPair;->key:Ljava/lang/String;

    .line 104
    iget-object v4, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$RSTTSession;->tryUrls:Ljava/util/ArrayList;

    new-instance v5, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$UrlPair;

    iget-object v6, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$RSTTSession;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;

    invoke-direct {v5, v6, v3, v1}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$UrlPair;-><init>(Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;Ljava/lang/String;Z)V

    invoke-virtual {v4, v2, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 105
    monitor-exit v0

    return-object v3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 108
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    invoke-virtual {p0}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$RSTTSession;->ResetTryUrls()V

    const-wide/16 v0, 0x7d0

    .line 113
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 116
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 119
    :goto_1
    invoke-virtual {p0}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$RSTTSession;->nextUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v1

    .line 108
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setLastUrl(Ljava/lang/String;)V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$RSTTSession;->tryUrls:Ljava/util/ArrayList;

    monitor-enter v0

    .line 164
    :try_start_0
    iput-object p1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$RSTTSession;->lastUrl:Ljava/lang/String;

    .line 165
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
