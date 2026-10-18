.class Lcom/ihoc/mgpa/report/impl/mgpa/MGPAReporter$ReportTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ihoc/mgpa/report/impl/mgpa/MGPAReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReportTask"
.end annotation


# static fields
.field public static final RETRY_GAP:I = 0x1388

.field public static final TAG:Ljava/lang/String; = "[MGPA_Report]|[MGPAReporter]: "


# instance fields
.field private final mEventData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mEventName:Ljava/lang/String;

.field private volatile mIsReportSuccess:Z

.field private final mTryTimes:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/ihoc/mgpa/report/impl/mgpa/MGPAReporter$ReportTask;->mIsReportSuccess:Z

    .line 3
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/ihoc/mgpa/report/impl/mgpa/MGPAReporter$ReportTask;->mTryTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    iput-object p1, p0, Lcom/ihoc/mgpa/report/impl/mgpa/MGPAReporter$ReportTask;->mEventName:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/ihoc/mgpa/report/impl/mgpa/MGPAReporter$ReportTask;->mEventData:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public encryptData(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/ihoc/mgpa/report/impl/mgpa/MGPAReporter$ReportTask;->mEventName:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p1, v1, v0

    const-string v0, "[MGPA_Report]|[MGPAReporter]:  event_name: [%s], event_data: %s"

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Lcom/ihoc/mgpa/report/impl/mgpa/MGPAReporter;->access$200()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ihoc/mgpa/toolkit/util/AESUtil;->encryptToBase64(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public run()V
    .locals 14

    const-string v0, "ret"

    const-string v1, "application/json"

    const-string v2, "[MGPA_Report]|[MGPAReporter]:  EventName: [%s], report fail, msg: %s"

    const-string v3, "[MGPA_Report]|[MGPAReporter]: [ReportTask|run]: retry times: %d"

    const/4 v4, 0x2

    const-wide/16 v5, 0x1388

    const/4 v7, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1
    :try_start_0
    iget-object v10, p0, Lcom/ihoc/mgpa/report/impl/mgpa/MGPAReporter$ReportTask;->mEventName:Ljava/lang/String;

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/ihoc/mgpa/report/impl/mgpa/MGPAReporter$ReportTask;->mEventData:Ljava/util/HashMap;

    if-nez v10, :cond_0

    goto/16 :goto_1

    .line 5
    :cond_0
    iget-boolean v10, p0, Lcom/ihoc/mgpa/report/impl/mgpa/MGPAReporter$ReportTask;->mIsReportSuccess:Z

    if-eqz v10, :cond_2

    .line 6
    const-string v0, "[MGPA_Report]|[MGPAReporter]: %s already report success, skip it."

    iget-object v1, p0, Lcom/ihoc/mgpa/report/impl/mgpa/MGPAReporter$ReportTask;->mEventName:Ljava/lang/String;

    new-array v10, v8, [Ljava/lang/Object;

    aput-object v1, v10, v9

    invoke-static {v0, v10}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    iget-boolean v0, p0, Lcom/ihoc/mgpa/report/impl/mgpa/MGPAReporter$ReportTask;->mIsReportSuccess:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ihoc/mgpa/report/impl/mgpa/MGPAReporter$ReportTask;->mTryTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    if-ge v0, v7, :cond_1

    .line 41
    iget-object v0, p0, Lcom/ihoc/mgpa/report/impl/mgpa/MGPAReporter$ReportTask;->mTryTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Object;

    aput-object v0, v1, v9

    invoke-static {v3, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    invoke-static {}, Lcom/ihoc/mgpa/report/impl/mgpa/ReporterHandlerThread;->getDefault()Lcom/ihoc/mgpa/report/impl/mgpa/ReporterHandlerThread;

    move-result-object v0

    invoke-virtual {v0, p0, v5, v6}, Lcom/ihoc/mgpa/report/impl/mgpa/ReporterHandlerThread;->runInSchedulerDelay(Ljava/lang/Runnable;J)V

    :cond_1
    return-void

    .line 43
    :cond_2
    :try_start_1
    iget-object v10, p0, Lcom/ihoc/mgpa/report/impl/mgpa/MGPAReporter$ReportTask;->mTryTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v10

    if-lt v10, v7, :cond_4

    .line 44
    const-string v0, "[MGPA_Report]|[MGPAReporter]: %s already try report 3 times, skip it."

    iget-object v1, p0, Lcom/ihoc/mgpa/report/impl/mgpa/MGPAReporter$ReportTask;->mEventName:Ljava/lang/String;

    new-array v10, v8, [Ljava/lang/Object;

    aput-object v1, v10, v9

    invoke-static {v0, v10}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    iget-boolean v0, p0, Lcom/ihoc/mgpa/report/impl/mgpa/MGPAReporter$ReportTask;->mIsReportSuccess:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/ihoc/mgpa/report/impl/mgpa/MGPAReporter$ReportTask;->mTryTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    if-ge v0, v7, :cond_3

    .line 75
    iget-object v0, p0, Lcom/ihoc/mgpa/report/impl/mgpa/MGPAReporter$ReportTask;->mTryTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Object;

    aput-object v0, v1, v9

    invoke-static {v3, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    invoke-static {}, Lcom/ihoc/mgpa/report/impl/mgpa/ReporterHandlerThread;->getDefault()Lcom/ihoc/mgpa/report/impl/mgpa/ReporterHandlerThread;

    move-result-object v0

    invoke-virtual {v0, p0, v5, v6}, Lcom/ihoc/mgpa/report/impl/mgpa/ReporterHandlerThread;->runInSchedulerDelay(Ljava/lang/Runnable;J)V

    :cond_3
    return-void

    .line 77
    :cond_4
    :try_start_2
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 78
    const-string v11, "Content-Type"

    invoke-virtual {v10, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v11, "accept"

    invoke-virtual {v10, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v1, p0, Lcom/ihoc/mgpa/report/impl/mgpa/MGPAReporter$ReportTask;->mEventData:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Lcom/ihoc/mgpa/report/impl/mgpa/MGPAReporter$ReportTask;->encryptData(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    .line 82
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 83
    const-string v12, "event_name"

    iget-object v13, p0, Lcom/ihoc/mgpa/report/impl/mgpa/MGPAReporter$ReportTask;->mEventName:Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    const-string v12, "encrypted_key"

    invoke-static {}, Lcom/ihoc/mgpa/report/impl/mgpa/MGPAReporter;->access$000()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    const-string v12, "encrypted_data"

    invoke-virtual {v11, v12, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-static {}, Lcom/ihoc/mgpa/report/impl/mgpa/MGPAReporter;->access$100()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v1, v10}, Lcom/ihoc/mgpa/toolkit/util/HttpsUtil;->post(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 89
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    .line 93
    iput-boolean v8, p0, Lcom/ihoc/mgpa/report/impl/mgpa/MGPAReporter$ReportTask;->mIsReportSuccess:Z

    .line 94
    const-string v0, "[MGPA_Report]|[MGPAReporter]:  EventName: [%s], report success."

    iget-object v1, p0, Lcom/ihoc/mgpa/report/impl/mgpa/MGPAReporter$ReportTask;->mEventName:Ljava/lang/String;

    new-array v10, v8, [Ljava/lang/Object;

    aput-object v1, v10, v9

    invoke-static {v0, v10}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 97
    :cond_5
    iget-object v0, p0, Lcom/ihoc/mgpa/report/impl/mgpa/MGPAReporter$ReportTask;->mEventName:Ljava/lang/String;

    new-array v10, v4, [Ljava/lang/Object;

    aput-object v0, v10, v9

    aput-object v1, v10, v8

    invoke-static {v2, v10}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 102
    :goto_0
    iget-boolean v0, p0, Lcom/ihoc/mgpa/report/impl/mgpa/MGPAReporter$ReportTask;->mIsReportSuccess:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/ihoc/mgpa/report/impl/mgpa/MGPAReporter$ReportTask;->mTryTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    if-ge v0, v7, :cond_8

    .line 104
    iget-object v0, p0, Lcom/ihoc/mgpa/report/impl/mgpa/MGPAReporter$ReportTask;->mTryTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Object;

    aput-object v0, v1, v9

    invoke-static {v3, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    invoke-static {}, Lcom/ihoc/mgpa/report/impl/mgpa/ReporterHandlerThread;->getDefault()Lcom/ihoc/mgpa/report/impl/mgpa/ReporterHandlerThread;

    move-result-object v0

    invoke-virtual {v0, p0, v5, v6}, Lcom/ihoc/mgpa/report/impl/mgpa/ReporterHandlerThread;->runInSchedulerDelay(Ljava/lang/Runnable;J)V

    goto :goto_2

    .line 106
    :cond_6
    :goto_1
    :try_start_3
    const-string v0, "[MGPA_Report]|[MGPAReporter]:  report failed! ple check event_name/event_data!"

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 143
    iget-boolean v0, p0, Lcom/ihoc/mgpa/report/impl/mgpa/MGPAReporter$ReportTask;->mIsReportSuccess:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/ihoc/mgpa/report/impl/mgpa/MGPAReporter$ReportTask;->mTryTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    if-ge v0, v7, :cond_7

    .line 145
    iget-object v0, p0, Lcom/ihoc/mgpa/report/impl/mgpa/MGPAReporter$ReportTask;->mTryTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Object;

    aput-object v0, v1, v9

    invoke-static {v3, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    invoke-static {}, Lcom/ihoc/mgpa/report/impl/mgpa/ReporterHandlerThread;->getDefault()Lcom/ihoc/mgpa/report/impl/mgpa/ReporterHandlerThread;

    move-result-object v0

    invoke-virtual {v0, p0, v5, v6}, Lcom/ihoc/mgpa/report/impl/mgpa/ReporterHandlerThread;->runInSchedulerDelay(Ljava/lang/Runnable;J)V

    :cond_7
    return-void

    :catchall_0
    move-exception v0

    .line 147
    :try_start_4
    iget-object v1, p0, Lcom/ihoc/mgpa/report/impl/mgpa/MGPAReporter$ReportTask;->mEventName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v9

    aput-object v0, v4, v8

    invoke-static {v2, v4}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 149
    iget-boolean v0, p0, Lcom/ihoc/mgpa/report/impl/mgpa/MGPAReporter$ReportTask;->mIsReportSuccess:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/ihoc/mgpa/report/impl/mgpa/MGPAReporter$ReportTask;->mTryTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    if-ge v0, v7, :cond_8

    .line 151
    iget-object v0, p0, Lcom/ihoc/mgpa/report/impl/mgpa/MGPAReporter$ReportTask;->mTryTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Object;

    aput-object v0, v1, v9

    invoke-static {v3, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    invoke-static {}, Lcom/ihoc/mgpa/report/impl/mgpa/ReporterHandlerThread;->getDefault()Lcom/ihoc/mgpa/report/impl/mgpa/ReporterHandlerThread;

    move-result-object v0

    invoke-virtual {v0, p0, v5, v6}, Lcom/ihoc/mgpa/report/impl/mgpa/ReporterHandlerThread;->runInSchedulerDelay(Ljava/lang/Runnable;J)V

    :cond_8
    :goto_2
    return-void

    :catchall_1
    move-exception v0

    .line 153
    iget-boolean v1, p0, Lcom/ihoc/mgpa/report/impl/mgpa/MGPAReporter$ReportTask;->mIsReportSuccess:Z

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/ihoc/mgpa/report/impl/mgpa/MGPAReporter$ReportTask;->mTryTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    if-ge v1, v7, :cond_9

    .line 155
    iget-object v1, p0, Lcom/ihoc/mgpa/report/impl/mgpa/MGPAReporter$ReportTask;->mTryTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v1, v2, v9

    invoke-static {v3, v2}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    invoke-static {}, Lcom/ihoc/mgpa/report/impl/mgpa/ReporterHandlerThread;->getDefault()Lcom/ihoc/mgpa/report/impl/mgpa/ReporterHandlerThread;

    move-result-object v1

    invoke-virtual {v1, p0, v5, v6}, Lcom/ihoc/mgpa/report/impl/mgpa/ReporterHandlerThread;->runInSchedulerDelay(Ljava/lang/Runnable;J)V

    .line 158
    :cond_9
    throw v0
.end method
