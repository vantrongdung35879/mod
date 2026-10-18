.class public Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;
.super Ljava/lang/Object;
.source "SRTTAPIHTTPTaskQueueImp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$RequestTask;,
        Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$RSTTSession;,
        Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$UrlPair;
    }
.end annotation


# static fields
.field public static final RSTT_HTTP_ERR_FAIL:I = 0x1

.field public static final RSTT_HTTP_ERR_SUCC:I = 0x0

.field public static final RSTT_HTTP_ERR_getInputStream_IOException:I = 0xd

.field public static final RSTT_HTTP_ERR_getInputStream_UnknownServiceException:I = 0xc

.field public static final RSTT_HTTP_ERR_getOutputStream_IOException:I = 0x10

.field public static final RSTT_HTTP_ERR_getResponseCode_IOException:I = 0x11

.field public static final RSTT_HTTP_ERR_new_URL:I = 0xa

.field public static final RSTT_HTTP_ERR_openConnection:I = 0xb

.field public static final RSTT_HTTP_ERR_read_IOException:I = 0xe

.field public static final RSTT_HTTP_ERR_write_IOException:I = 0xf

.field private static apiAddr:Ljava/lang/String; = ""

.field private static apiKey:Ljava/lang/String; = ""

.field public static threadPool:Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field maxHttpTryTimes:I

.field private sessionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$RSTTSession;",
            ">;"
        }
    .end annotation
.end field

.field public tryUrlsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;->sessionMap:Ljava/util/HashMap;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;->tryUrlsList:Ljava/util/ArrayList;

    const/16 v0, 0x14

    .line 51
    iput v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;->maxHttpTryTimes:I

    return-void
.end method

.method public static ExceptionToString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3

    .line 265
    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 269
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 270
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 271
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    .line 272
    invoke-static {p0}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogE(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 275
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 32
    sget-object v0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;->apiAddr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;->formatURL(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 32
    sget-object v0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;->apiKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;)Ljava/util/HashMap;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;->sessionMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public static native callback(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;[BI)V
.end method

.method private formatURL(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_5

    .line 183
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 188
    :cond_0
    const-string v0, "https:"

    if-eqz p2, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object p1

    .line 189
    :cond_1
    const-string v2, "http:"

    if-nez p2, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object p1

    :cond_2
    if-nez p2, :cond_3

    .line 191
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 192
    const-string p2, "http"

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    if-eqz p2, :cond_4

    .line 193
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 p2, 0x4

    .line 194
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "https"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_4
    return-object p1

    .line 184
    :cond_5
    :goto_0
    const-string/jumbo p1, "url is null"

    invoke-static {p1}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    .line 185
    const-string p1, ""

    return-object p1
.end method

.method private initTryUrls(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 201
    iget-object v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;->tryUrlsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_4

    .line 203
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 204
    const-string v2, "\\|"

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 205
    array-length v2, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p2, v3

    if-eqz v4, :cond_1

    .line 206
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 208
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "https://"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/cgi-bin/wxvoicereco"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 209
    iget-object v7, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;->tryUrlsList:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "http://"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 213
    iget-object v5, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;->tryUrlsList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 216
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;->formatURL(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 217
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;->tryUrlsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    :cond_3
    invoke-direct {p0, p1, v1}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;->formatURL(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 221
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_7

    iget-object p2, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;->tryUrlsList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 224
    :cond_4
    invoke-direct {p0, p1, v1}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;->formatURL(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 225
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;->tryUrlsList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    :cond_5
    invoke-direct {p0, p1, v0}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;->formatURL(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 229
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;->tryUrlsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    if-eqz p2, :cond_7

    .line 232
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_7

    iget-object p1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;->tryUrlsList:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_2
    return-void
.end method


# virtual methods
.method public addTask(ILjava/lang/String;Ljava/lang/String;[BI)V
    .locals 14

    move-object v1, p0

    move/from16 v0, p5

    const-string v2, "rstt session count:"

    .line 238
    iget-object v3, v1, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;->sessionMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 239
    :try_start_0
    iget-object v4, v1, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;->sessionMap:Ljava/util/HashMap;

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$RSTTSession;

    .line 240
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x1

    if-eqz v5, :cond_0

    .line 243
    iget v0, v5, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$RSTTSession;->taskid:I

    add-int/lit8 v7, v0, 0x1

    iput v7, v5, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$RSTTSession;->taskid:I

    move v6, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-virtual/range {v5 .. v10}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$RSTTSession;->addTask(IILjava/lang/String;Ljava/lang/String;[B)V

    goto :goto_0

    :cond_0
    move v4, p1

    if-eq v4, v3, :cond_1

    .line 246
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "addTask failed,sessionid:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogE(Ljava/lang/String;)V

    return-void

    .line 250
    :cond_1
    sget-object v5, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v5, :cond_2

    .line 251
    new-instance v5, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v11, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v12, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v12}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const/4 v7, 0x0

    const/4 v8, 0x5

    const-wide/16 v9, 0x1

    move-object v6, v5

    invoke-direct/range {v6 .. v12}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v5, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 254
    :cond_2
    new-instance v5, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$RSTTSession;

    invoke-direct {v5, p0}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$RSTTSession;-><init>(Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;)V

    .line 255
    iget-object v6, v1, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;->tryUrlsList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0, v6}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$RSTTSession;->init(ILjava/util/ArrayList;)V

    .line 256
    iget v6, v5, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$RSTTSession;->taskid:I

    add-int/lit8 v10, v6, 0x1

    iput v10, v5, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$RSTTSession;->taskid:I

    move-object v8, v5

    move v9, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    invoke-virtual/range {v8 .. v13}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$RSTTSession;->addTask(IILjava/lang/String;Ljava/lang/String;[B)V

    .line 257
    iget-object v4, v1, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;->sessionMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 258
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;->sessionMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogE(Ljava/lang/String;)V

    .line 259
    iget-object v2, v1, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;->sessionMap:Ljava/util/HashMap;

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    monitor-exit v4

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 240
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public setAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 175
    sput-object p1, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;->apiKey:Ljava/lang/String;

    .line 176
    sput-object p2, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;->apiAddr:Ljava/lang/String;

    .line 178
    iput p4, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;->maxHttpTryTimes:I

    .line 179
    invoke-direct {p0, p2, p3}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;->initTryUrls(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
