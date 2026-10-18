.class public Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;
.super Lcom/ihoc/tgpatask/transceivertool/command/TNetCommandTask;
.source "SysLogTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;,
        Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogcatThread;
    }
.end annotation


# static fields
.field private static final logCatDir:Ljava/lang/String; = "/ENQSDK/logcat/"

.field private static final maxFileSize:J = 0x400L


# instance fields
.field private countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private countDownLatchAfterCreateThread:Ljava/util/concurrent/CountDownLatch;

.field private executeThread:Ljava/lang/Thread;

.field private logCatDirPath:Ljava/lang/String;

.field private logCatZipPath:Ljava/lang/String;

.field private resultBuffer:Ljava/lang/StringBuffer;

.field private threadMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogcatThread;",
            ">;"
        }
    .end annotation
.end field

.field private zipFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Lcom/ihoc/tgpatask/transceivertool/command/TNetCommandTask;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 34
    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->countDownLatchAfterCreateThread:Ljava/util/concurrent/CountDownLatch;

    .line 35
    const-string v1, ""

    iput-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->logCatDirPath:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->logCatZipPath:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->executeThread:Ljava/lang/Thread;

    .line 38
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->resultBuffer:Ljava/lang/StringBuffer;

    .line 39
    iput-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->zipFilePath:Ljava/lang/String;

    .line 51
    iput-object p6, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->taskScene:Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->name:Ljava/lang/String;

    .line 53
    iput-wide p2, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->taskID:J

    .line 54
    iput-object p4, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->type:Ljava/lang/String;

    .line 55
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    iput-object p4, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->result:Ljava/util/HashMap;

    .line 56
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    iput-object p4, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->data:Ljava/util/HashMap;

    .line 57
    iget-object p4, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->data:Ljava/util/HashMap;

    invoke-virtual {p4, p5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 59
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    iput-object p4, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->threadMap:Ljava/util/Map;

    .line 61
    iget-object p4, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->result:Ljava/util/HashMap;

    const-string/jumbo p5, "taskid"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object p2, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->result:Ljava/util/HashMap;

    const-string p3, "event_id"

    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/util/CosSigUtil;->getUUID()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object p2, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->result:Ljava/util/HashMap;

    const-string p3, "event_type"

    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->result:Ljava/util/HashMap;

    const-string p2, "network_type"

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->result:Ljava/util/HashMap;

    const-string p2, "client_addr"

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->result:Ljava/util/HashMap;

    const-string/jumbo p2, "type_filter"

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->result:Ljava/util/HashMap;

    const-string p2, "duration"

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->result:Ljava/util/HashMap;

    const-string/jumbo p2, "threads_result"

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->result:Ljava/util/HashMap;

    const-string/jumbo p2, "threads_status"

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->result:Ljava/util/HashMap;

    const-string p2, "exec_time"

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->result:Ljava/util/HashMap;

    const-string p2, "filename"

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->result:Ljava/util/HashMap;

    const-string p2, "filesize"

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->result:Ljava/util/HashMap;

    const-string p2, "client_path"

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->result:Ljava/util/HashMap;

    const-string p2, "server_path"

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->result:Ljava/util/HashMap;

    const-string/jumbo p2, "upload_time"

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->result:Ljava/util/HashMap;

    const-string p2, "event_code"

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->result:Ljava/util/HashMap;

    const-string p2, "event_total_time"

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;)I
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->startLogCatThread()I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;)Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->zipFilePath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;)Ljava/lang/StringBuffer;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->resultBuffer:Ljava/lang/StringBuffer;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;)Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->logCatDirPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->countDownLatchAfterCreateThread:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method private initLogCatThread()I
    .locals 11

    .line 197
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->data:Ljava/util/HashMap;

    const-string/jumbo v1, "type_filter"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 198
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_2

    aget-object v5, v0, v3

    .line 199
    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 200
    aget-object v7, v6, v2

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 202
    array-length v8, v6

    if-le v8, v4, :cond_0

    .line 203
    aget-object v6, v6, v4

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 202
    :cond_0
    const-string v6, ""

    .line 206
    :goto_1
    :try_start_0
    invoke-static {v7}, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;->valueOf(Ljava/lang/String;)Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;

    move-result-object v7

    .line 207
    iget-object v8, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->threadMap:Ljava/util/Map;

    invoke-virtual {v7}, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 208
    iget-object v6, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->tag:Ljava/lang/String;

    const-string/jumbo v7, "type[%s]\u5df2\u5b58\u5728"

    invoke-static {v6, v7}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 211
    :cond_1
    new-instance v8, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogcatThread;

    invoke-direct {v8, p0, v6, v7}, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogcatThread;-><init>(Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;Ljava/lang/String;Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;)V

    .line 212
    invoke-virtual {v8, v4}, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogcatThread;->setDaemon(Z)V

    .line 213
    const-string v6, "enq_log_%s_thread"

    invoke-virtual {v7}, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;->getValue()Ljava/lang/String;

    move-result-object v9

    new-array v10, v4, [Ljava/lang/Object;

    aput-object v9, v10, v2

    invoke-static {v6, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogcatThread;->setName(Ljava/lang/String;)V

    .line 214
    iget-object v6, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->threadMap:Ljava/util/Map;

    invoke-virtual {v7}, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 216
    :catch_0
    iget-object v6, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->tag:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v5, v4, v2

    const-string/jumbo v5, "\u65e5\u5fd7\u7c7b\u578b[%s]\u4e0d\u5b58\u5728"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 219
    :cond_2
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->threadMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-ge v0, v4, :cond_3

    .line 220
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_PARAM_REQ_INVALID:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    return v0

    .line 222
    :cond_3
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    return v0
.end method

.method private startLogCatThread()I
    .locals 9

    .line 226
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 227
    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 229
    :cond_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    iget-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->threadMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 232
    :try_start_0
    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->threadMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogcatThread;

    .line 233
    iget-object v4, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->tag:Ljava/lang/String;

    const-string/jumbo v5, "\u7ebf\u7a0b[%s]\u542f\u52a8"

    invoke-virtual {v3}, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogcatThread;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v6, v7, v8

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-virtual {v3}, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogcatThread;->start()V

    goto :goto_0

    .line 236
    :cond_1
    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->data:Ljava/util/HashMap;

    const-string v3, "duration"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    .line 237
    iget-object v4, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v2, v3, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 238
    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->tag:Ljava/lang/String;

    const-string/jumbo v3, "\u6240\u6709\u5b50\u7ebf\u7a0b\u5df2\u505c\u6b62"

    invoke-static {v2, v3}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 240
    :cond_2
    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->tag:Ljava/lang/String;

    const-string/jumbo v3, "\u8fbe\u5230\u6267\u884c\u8d85\u65f6\u65f6\u95f4\uff0c\u4e3b\u52a8\u505c\u6b62\u5b50\u7ebf\u7a0b"

    invoke-static {v2, v3}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-virtual {p0}, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->stop()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 244
    :catch_0
    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->tag:Ljava/lang/String;

    const-string/jumbo v3, "\u6536\u5230\u4e2d\u65ad\u4fe1\u53f7"

    invoke-static {v2, v3}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-virtual {p0}, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->stop()V

    .line 247
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 248
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->result:Ljava/util/HashMap;

    const-string v1, "exec_time"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    return v0
.end method

.method private zipFiles()Z
    .locals 3

    .line 265
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->logCatDirPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 266
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->logCatZipPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 267
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->data:Ljava/util/HashMap;

    const-string v1, "destName"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->logCatZipPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->zipFilePath:Ljava/lang/String;

    .line 273
    iget-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->logCatDirPath:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/ihoc/tgpatask/transceivertool/util/FileUtil;->compress(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public checkParamValid()Z
    .locals 10

    .line 290
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->data:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->data:Ljava/util/HashMap;

    const-string v2, "authCode"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_1

    goto/16 :goto_0

    .line 296
    :cond_1
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->data:Ljava/util/HashMap;

    const-string/jumbo v3, "url"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v2, :cond_2

    goto/16 :goto_0

    .line 300
    :cond_2
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->data:Ljava/util/HashMap;

    const-string v3, "destName"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v2, :cond_3

    goto/16 :goto_0

    .line 308
    :cond_3
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->data:Ljava/util/HashMap;

    const-string v1, "method"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v2, :cond_5

    .line 309
    :cond_4
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->data:Ljava/util/HashMap;

    const-string/jumbo v3, "tdm-binary"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    :cond_5
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->data:Ljava/util/HashMap;

    const-string/jumbo v1, "type_filter"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->data:Ljava/util/HashMap;

    .line 313
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->data:Ljava/util/HashMap;

    .line 314
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v2, :cond_7

    .line 315
    :cond_6
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->data:Ljava/util/HashMap;

    const-string v3, "base:"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    :cond_7
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->data:Ljava/util/HashMap;

    const-string v1, "duration"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v2, :cond_9

    .line 318
    :cond_8
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->data:Ljava/util/HashMap;

    const-string v3, "3600"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    :cond_9
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->data:Ljava/util/HashMap;

    const-string v3, "max_size"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v4, 0x400

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v2, :cond_b

    .line 321
    :cond_a
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->data:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    :cond_b
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x1

    cmp-long v0, v6, v8

    if-ltz v0, :cond_c

    cmp-long v0, v6, v4

    if-lez v0, :cond_d

    .line 325
    :cond_c
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->data:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    :cond_d
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v3, 0xe10

    if-gt v0, v3, :cond_e

    if-ge v0, v2, :cond_f

    .line 331
    :cond_e
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->data:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    :cond_f
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->data:Ljava/util/HashMap;

    const-string v1, "sensitiveInfo"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_11

    .line 335
    :cond_10
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->data:Ljava/util/HashMap;

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    return v2

    :cond_12
    :goto_0
    return v1
.end method

.method public executeTask()V
    .locals 24

    move-object/from16 v1, p0

    .line 85
    const-string/jumbo v0, "type_filter"

    const-string v2, "duration"

    const-string v3, "created"

    const-string v4, "failed"

    const-string/jumbo v5, "\u6240\u6709\u5b50\u7ebf\u7a0b\u5df2\u521b\u5efa"

    const-string/jumbo v6, "\u8fbe\u5230\u7b49\u5f85\u8d85\u65f6\u65f6\u95f4\uff0c\u53ef\u80fd\u521b\u5efa\u5b50\u7ebf\u7a0b\u5931\u8d25"

    const-string v7, "event_total_time"

    const-string v8, "event_code"

    const-string v9, "TaskId=%d End "

    const-string/jumbo v10, "\u6536\u5230\u4e2d\u65ad\u4fe1\u53f7"

    const-string/jumbo v11, "threads_status"

    .line 0
    const-string/jumbo v12, "\u521b\u5efa\u4efb\u52a1\u65e5\u5fd7\u538b\u7f29\u5305\u6587\u4ef6\u5939\u5931\u8d25: "

    const-string v13, "/ENQSDK/logcat/zipFiles/"

    const-string/jumbo v14, "\u521b\u5efa\u4efb\u52a1\u65e5\u5fd7\u6587\u4ef6\u5939\u5931\u8d25: "

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    move-object/from16 v17, v12

    .line 86
    iget-object v12, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->tag:Ljava/lang/String;

    move-object/from16 v18, v13

    sget-object v13, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    iget-wide v7, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->taskID:J

    .line 88
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-object v8, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->data:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v22, v14

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/16 v23, 0x0

    aput-object v7, v14, v23

    const/4 v7, 0x1

    aput-object v8, v14, v7

    const/4 v8, 0x2

    aput-object v21, v14, v8

    .line 86
    const-string v8, "TaskId=%d Begin: msg=%s,startTimeStamp=%d"

    invoke-static {v13, v8, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v8}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v12, 0x5

    .line 91
    :try_start_0
    iget-object v8, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->result:Ljava/util/HashMap;

    iget-object v14, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->data:Ljava/util/HashMap;

    invoke-virtual {v14, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v8, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->result:Ljava/util/HashMap;

    iget-object v8, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->data:Ljava/util/HashMap;

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v2, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->result:Ljava/util/HashMap;

    const-string v2, "network_type"

    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v8

    iget-object v8, v8, Lcom/ihoc/tgpatask/TransceiverManager;->netaccesstype:Ljava/lang/String;

    invoke-virtual {v0, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->result:Ljava/util/HashMap;

    const-string v2, "client_addr"

    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v8

    iget-object v8, v8, Lcom/ihoc/tgpatask/TransceiverManager;->localIp4:Ljava/lang/String;

    invoke-virtual {v0, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/TransceiverManager;->getControlConfig()Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->getReleaseTaskFuncList()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->type:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 97
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->tag:Ljava/lang/String;

    const-string v2, "forbidden task type %s"

    iget-object v8, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->name:Ljava/lang/String;

    new-array v14, v7, [Ljava/lang/Object;

    aput-object v8, v14, v23

    invoke-static {v2, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_CONFIG_FUNC_CLOSE:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    iput v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->errorCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    :try_start_1
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->countDownLatchAfterCreateThread:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 174
    invoke-virtual {v0, v12, v13, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->tag:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->DONE:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->status:I

    .line 177
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    iput v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->errorCode:I

    .line 178
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->result:Ljava/util/HashMap;

    invoke-virtual {v0, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 180
    :cond_0
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->tag:Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->FAILED:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->status:I

    .line 182
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_PROCESS_EXECUTE_TIMEOUT:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    iput v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->errorCode:I

    .line 183
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->result:Ljava/util/HashMap;

    invoke-virtual {v0, v11, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 186
    :catch_0
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->tag:Ljava/lang/String;

    invoke-static {v0, v10}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-virtual/range {p0 .. p0}, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->stop()V

    .line 189
    :goto_0
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->tag:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-wide v3, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->taskID:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v3, v4, v23

    invoke-static {v2, v9, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->result:Ljava/util/HashMap;

    iget v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->errorCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v8, v20

    invoke-virtual {v0, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 192
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->result:Ljava/util/HashMap;

    sub-long/2addr v2, v15

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v14, v19

    :goto_1
    invoke-virtual {v0, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    move-object/from16 v14, v19

    move-object/from16 v8, v20

    .line 103
    :try_start_2
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/TransceiverManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ihoc/tgpatask/transceivertool/util/FileUtil;->getExFileDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/ENQSDK/logcat/"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->taskID:J

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->logCatDirPath:Ljava/lang/String;

    .line 105
    invoke-static {v2}, Lcom/ihoc/tgpatask/transceivertool/util/FileUtil;->createDirs(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 106
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v7, v22

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->logCatDirPath:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->FAILED:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->status:I

    .line 108
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_SYSTEM_IO:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    iput v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->errorCode:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 173
    :try_start_3
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->countDownLatchAfterCreateThread:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v12, 0x5

    .line 174
    invoke-virtual {v0, v12, v13, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 175
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->tag:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->DONE:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->status:I

    .line 177
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    iput v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->errorCode:I

    .line 178
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->result:Ljava/util/HashMap;

    invoke-virtual {v0, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 180
    :cond_2
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->tag:Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->FAILED:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->status:I

    .line 182
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_PROCESS_EXECUTE_TIMEOUT:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    iput v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->errorCode:I

    .line 183
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->result:Ljava/util/HashMap;

    invoke-virtual {v0, v11, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 186
    :catch_1
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->tag:Ljava/lang/String;

    invoke-static {v0, v10}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-virtual/range {p0 .. p0}, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->stop()V

    .line 189
    :goto_2
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->tag:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-wide v3, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->taskID:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v23

    invoke-static {v2, v9, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-static {v0, v2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->result:Ljava/util/HashMap;

    iget v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->errorCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 192
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->result:Ljava/util/HashMap;

    sub-long/2addr v2, v15

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 112
    :cond_3
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->logCatZipPath:Ljava/lang/String;

    .line 113
    invoke-static {v0}, Lcom/ihoc/tgpatask/transceivertool/util/FileUtil;->createDirs(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 114
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v7, v17

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->logCatZipPath:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->FAILED:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->status:I

    .line 116
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_SYSTEM_IO:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    iput v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->errorCode:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 173
    :try_start_5
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->countDownLatchAfterCreateThread:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_4

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v12, 0x5

    .line 174
    invoke-virtual {v0, v12, v13, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 175
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->tag:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->DONE:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->status:I

    .line 177
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    iput v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->errorCode:I

    .line 178
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->result:Ljava/util/HashMap;

    invoke-virtual {v0, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 180
    :cond_4
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->tag:Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->FAILED:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->status:I

    .line 182
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_PROCESS_EXECUTE_TIMEOUT:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    iput v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->errorCode:I

    .line 183
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->result:Ljava/util/HashMap;

    invoke-virtual {v0, v11, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    .line 186
    :catch_2
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->tag:Ljava/lang/String;

    invoke-static {v0, v10}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-virtual/range {p0 .. p0}, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->stop()V

    .line 189
    :goto_4
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->tag:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-wide v3, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->taskID:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v23

    invoke-static {v2, v9, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    .line 120
    :cond_5
    :try_start_6
    invoke-direct/range {p0 .. p0}, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->initLogCatThread()I

    move-result v0

    iput v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->errorCode:I

    .line 121
    iget v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->errorCode:I

    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v2}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v2

    if-ne v0, v2, :cond_7

    .line 122
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->countDownLatchAfterCreateThread:Ljava/util/concurrent/CountDownLatch;

    if-nez v0, :cond_6

    .line 123
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->threadMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->countDownLatchAfterCreateThread:Ljava/util/concurrent/CountDownLatch;

    .line 126
    :cond_6
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->executeThread:Ljava/lang/Thread;

    if-nez v0, :cond_8

    .line 127
    new-instance v0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$1;

    invoke-direct {v0, v1}, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$1;-><init>(Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;)V

    iput-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->executeThread:Ljava/lang/Thread;

    .line 160
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_5

    .line 163
    :cond_7
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->FAILED:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->status:I

    .line 164
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->tag:Ljava/lang/String;

    const-string/jumbo v2, "\u6267\u884c\u5931\u8d25"

    invoke-static {v0, v2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 173
    :cond_8
    :goto_5
    :try_start_7
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->countDownLatchAfterCreateThread:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_9

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v12, 0x5

    .line 174
    invoke-virtual {v0, v12, v13, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 175
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->tag:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->DONE:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->status:I

    .line 177
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    iput v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->errorCode:I

    .line 178
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->result:Ljava/util/HashMap;

    invoke-virtual {v0, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 180
    :cond_9
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->tag:Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->FAILED:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->status:I

    .line 182
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_PROCESS_EXECUTE_TIMEOUT:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    iput v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->errorCode:I

    .line 183
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->result:Ljava/util/HashMap;

    invoke-virtual {v0, v11, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_6

    .line 186
    :catch_3
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->tag:Ljava/lang/String;

    invoke-static {v0, v10}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-virtual/range {p0 .. p0}, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->stop()V

    .line 189
    :goto_6
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->tag:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-wide v3, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->taskID:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v23

    invoke-static {v2, v9, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->result:Ljava/util/HashMap;

    iget v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->errorCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 192
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->result:Ljava/util/HashMap;

    sub-long/2addr v2, v15

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a

    :catch_4
    move-exception v0

    goto :goto_8

    :catchall_0
    move-exception v0

    move-object/from16 v14, v19

    move-object/from16 v8, v20

    :goto_7
    move-object v7, v14

    goto/16 :goto_b

    :catch_5
    move-exception v0

    move-object/from16 v14, v19

    move-object/from16 v8, v20

    .line 167
    :goto_8
    :try_start_8
    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->FAILED:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    invoke-virtual {v2}, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->getKey()I

    move-result v2

    iput v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->status:I

    .line 168
    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_TASK_FAIL_UNKNOWN:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v2}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v2

    iput v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->errorCode:I

    .line 169
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->tag:Ljava/lang/String;

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v12, "TaskId=%d Fail:%s"
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-object/from16 v17, v14

    :try_start_9
    iget-wide v13, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->taskID:J

    .line 170
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    aput-object v13, v14, v23

    const/4 v13, 0x1

    aput-object v0, v14, v13

    .line 169
    invoke-static {v7, v12, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 173
    :try_start_a
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->countDownLatchAfterCreateThread:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_a

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v12, 0x5

    .line 174
    invoke-virtual {v0, v12, v13, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 175
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->tag:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->DONE:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->status:I

    .line 177
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    iput v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->errorCode:I

    .line 178
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->result:Ljava/util/HashMap;

    invoke-virtual {v0, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 180
    :cond_a
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->tag:Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->FAILED:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->status:I

    .line 182
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_PROCESS_EXECUTE_TIMEOUT:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    iput v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->errorCode:I

    .line 183
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->result:Ljava/util/HashMap;

    invoke-virtual {v0, v11, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_9

    .line 186
    :catch_6
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->tag:Ljava/lang/String;

    invoke-static {v0, v10}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-virtual/range {p0 .. p0}, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->stop()V

    .line 189
    :goto_9
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->tag:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-wide v3, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->taskID:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v23

    invoke-static {v2, v9, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->result:Ljava/util/HashMap;

    iget v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->errorCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 192
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->result:Ljava/util/HashMap;

    sub-long/2addr v2, v15

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v7, v17

    invoke-virtual {v0, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_a
    return-void

    :catchall_1
    move-exception v0

    move-object/from16 v7, v17

    goto :goto_b

    :catchall_2
    move-exception v0

    goto/16 :goto_7

    .line 173
    :goto_b
    :try_start_b
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->countDownLatchAfterCreateThread:Ljava/util/concurrent/CountDownLatch;

    if-eqz v2, :cond_b

    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v13, 0x5

    .line 174
    invoke-virtual {v2, v13, v14, v12}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 175
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->tag:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->DONE:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    invoke-virtual {v2}, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->getKey()I

    move-result v2

    iput v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->status:I

    .line 177
    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v2}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v2

    iput v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->errorCode:I

    .line 178
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->result:Ljava/util/HashMap;

    invoke-virtual {v2, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    .line 180
    :cond_b
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->tag:Ljava/lang/String;

    invoke-static {v2, v6}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->FAILED:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    invoke-virtual {v2}, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->getKey()I

    move-result v2

    iput v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->status:I

    .line 182
    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_PROCESS_EXECUTE_TIMEOUT:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v2}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v2

    iput v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->errorCode:I

    .line 183
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->result:Ljava/util/HashMap;

    invoke-virtual {v2, v11, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_7

    goto :goto_c

    .line 186
    :catch_7
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->tag:Ljava/lang/String;

    invoke-static {v2, v10}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-virtual/range {p0 .. p0}, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->stop()V

    .line 189
    :goto_c
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->tag:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-wide v4, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->taskID:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v23

    invoke-static {v3, v9, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->result:Ljava/util/HashMap;

    iget v3, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->errorCode:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 192
    iget-object v4, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->result:Ljava/util/HashMap;

    sub-long/2addr v2, v15

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    throw v0
.end method

.method public stop()V
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->threadMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->threadMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogcatThread;

    if-eqz v1, :cond_1

    .line 282
    invoke-virtual {v1}, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogcatThread;->interrupt()V

    goto :goto_0

    .line 285
    :cond_2
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->threadMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public uploadFiles()I
    .locals 7

    .line 253
    invoke-direct {p0}, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->zipFiles()Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->tag:Ljava/lang/String;

    const-string/jumbo v1, "\u751f\u6210\u538b\u7f29\u6587\u4ef6\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_SYSTEM_IO:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    return v0

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->data:Ljava/util/HashMap;

    const-string v1, "destName"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 259
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->data:Ljava/util/HashMap;

    const-string v1, "authCode"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    .line 260
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->data:Ljava/util/HashMap;

    const-string v1, "method"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    .line 261
    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/report/ReportBase;->getInstance()Lcom/ihoc/tgpatask/transceivertool/report/ReportBase;

    move-result-object v1

    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->zipFilePath:Ljava/lang/String;

    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->data:Ljava/util/HashMap;

    const-string/jumbo v4, "url"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lcom/ihoc/tgpatask/transceivertool/report/ReportBase;->upload2Cos(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
