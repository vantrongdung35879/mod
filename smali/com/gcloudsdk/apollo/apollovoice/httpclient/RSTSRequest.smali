.class public Lcom/gcloudsdk/apollo/apollovoice/httpclient/RSTSRequest;
.super Ljava/lang/Object;
.source "RSTSRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gcloudsdk/apollo/apollovoice/httpclient/RSTSRequest$RunTask;,
        Lcom/gcloudsdk/apollo/apollovoice/httpclient/RSTSRequest$RSTSHTTPTask;
    }
.end annotation


# instance fields
.field private final AV_HTTP_STATUS_FAIL:I

.field private final AV_HTTP_STATUS_GET_CREATEFILE:I

.field private final AV_HTTP_STATUS_GET_WRITEFILE:I

.field private final AV_HTTP_STATUS_INVALIED_HOST:I

.field private final AV_HTTP_STATUS_INVALIED_URL:I

.field private final AV_HTTP_STATUS_NOHEADERS:I

.field private final AV_HTTP_STATUS_POST_READFILE:I

.field private final AV_HTTP_STATUS_READBODY:I

.field private final AV_HTTP_STATUS_SEND_INCOMPLETE:I

.field private final AV_HTTP_STATUS_SUCC:I

.field private final AV_HTTP_STATUS_TIMEOUT:I

.field private mDelegate:J

.field mFixedThreadPool:Ljava/util/concurrent/ExecutorService;

.field private mHttpCnt:I

.field private mInit:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/RSTSRequest;->AV_HTTP_STATUS_SUCC:I

    const/4 v1, 0x1

    .line 21
    iput v1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/RSTSRequest;->AV_HTTP_STATUS_FAIL:I

    const/4 v1, 0x2

    .line 22
    iput v1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/RSTSRequest;->AV_HTTP_STATUS_TIMEOUT:I

    const/4 v1, 0x3

    .line 23
    iput v1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/RSTSRequest;->AV_HTTP_STATUS_INVALIED_HOST:I

    const/4 v1, 0x4

    .line 24
    iput v1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/RSTSRequest;->AV_HTTP_STATUS_INVALIED_URL:I

    const/4 v1, 0x5

    .line 25
    iput v1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/RSTSRequest;->AV_HTTP_STATUS_NOHEADERS:I

    const/4 v1, 0x6

    .line 26
    iput v1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/RSTSRequest;->AV_HTTP_STATUS_READBODY:I

    const/4 v1, 0x7

    .line 27
    iput v1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/RSTSRequest;->AV_HTTP_STATUS_SEND_INCOMPLETE:I

    const/16 v1, 0x8

    .line 28
    iput v1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/RSTSRequest;->AV_HTTP_STATUS_GET_CREATEFILE:I

    const/16 v1, 0x9

    .line 29
    iput v1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/RSTSRequest;->AV_HTTP_STATUS_GET_WRITEFILE:I

    const/16 v1, 0xa

    .line 30
    iput v1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/RSTSRequest;->AV_HTTP_STATUS_POST_READFILE:I

    .line 52
    iput-boolean v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/RSTSRequest;->mInit:Z

    const-wide/16 v1, 0x0

    .line 53
    iput-wide v1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/RSTSRequest;->mDelegate:J

    .line 54
    iput v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/RSTSRequest;->mHttpCnt:I

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/RSTSRequest;->mFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic access$006(Lcom/gcloudsdk/apollo/apollovoice/httpclient/RSTSRequest;)I
    .locals 1

    .line 19
    iget v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/RSTSRequest;->mHttpCnt:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/RSTSRequest;->mHttpCnt:I

    return v0
.end method

.method static synthetic access$100(Lcom/gcloudsdk/apollo/apollovoice/httpclient/RSTSRequest;)J
    .locals 2

    .line 19
    iget-wide v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/RSTSRequest;->mDelegate:J

    return-wide v0
.end method

.method public static native response(JILjava/lang/String;II[B)V
.end method


# virtual methods
.method public addTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)I
    .locals 11

    move-object v9, p0

    .line 68
    iget-boolean v0, v9, Lcom/gcloudsdk/apollo/apollovoice/httpclient/RSTSRequest;->mInit:Z

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 71
    :cond_0
    iget v0, v9, Lcom/gcloudsdk/apollo/apollovoice/httpclient/RSTSRequest;->mHttpCnt:I

    const/16 v2, 0xc8

    if-le v0, v2, :cond_1

    .line 72
    const-string/jumbo v0, "too many https task waiting..."

    invoke-static {v0}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogE(Ljava/lang/String;)V

    return v1

    .line 75
    :cond_1
    new-instance v10, Lcom/gcloudsdk/apollo/apollovoice/httpclient/RSTSRequest$RSTSHTTPTask;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/RSTSRequest$RSTSHTTPTask;-><init>(Lcom/gcloudsdk/apollo/apollovoice/httpclient/RSTSRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 77
    iget v0, v9, Lcom/gcloudsdk/apollo/apollovoice/httpclient/RSTSRequest;->mHttpCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v9, Lcom/gcloudsdk/apollo/apollovoice/httpclient/RSTSRequest;->mHttpCnt:I

    .line 78
    iget-object v0, v9, Lcom/gcloudsdk/apollo/apollovoice/httpclient/RSTSRequest;->mFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/gcloudsdk/apollo/apollovoice/httpclient/RSTSRequest$RunTask;

    invoke-direct {v1, p0, v10}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/RSTSRequest$RunTask;-><init>(Lcom/gcloudsdk/apollo/apollovoice/httpclient/RSTSRequest;Lcom/gcloudsdk/apollo/apollovoice/httpclient/RSTSRequest$RSTSHTTPTask;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    const/4 v0, 0x0

    return v0
.end method

.method public setDelegate(J)V
    .locals 1

    const/4 v0, 0x0

    .line 60
    iput v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/RSTSRequest;->mHttpCnt:I

    .line 61
    iput-wide p1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/RSTSRequest;->mDelegate:J

    const/4 p1, 0x4

    .line 62
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/RSTSRequest;->mFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    const/4 p1, 0x1

    .line 63
    iput-boolean p1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/RSTSRequest;->mInit:Z

    return-void
.end method
