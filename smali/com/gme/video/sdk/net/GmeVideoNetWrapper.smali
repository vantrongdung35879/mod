.class public Lcom/gme/video/sdk/net/GmeVideoNetWrapper;
.super Ljava/lang/Object;
.source "GmeVideoNetWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GmeVideoNetWrapper"

.field private static sNetWrapper:Lcom/gme/video/sdk/net/GmeVideoNetWrapper;


# instance fields
.field private final httpClientCancelMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mShareControlCallback:Lcom/gme/video/sdk/IGmeVideoShareControlCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gme/video/sdk/net/GmeVideoNetWrapper;->httpClientCancelMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/gme/video/sdk/net/GmeVideoNetWrapper;->mShareControlCallback:Lcom/gme/video/sdk/IGmeVideoShareControlCallback;

    return-void
.end method

.method public static GetInstance()Lcom/gme/video/sdk/net/GmeVideoNetWrapper;
    .locals 2

    .line 23
    const-class v0, Lcom/gme/video/sdk/net/GmeVideoNetWrapper;

    monitor-enter v0

    .line 24
    :try_start_0
    sget-object v1, Lcom/gme/video/sdk/net/GmeVideoNetWrapper;->sNetWrapper:Lcom/gme/video/sdk/net/GmeVideoNetWrapper;

    if-nez v1, :cond_0

    .line 25
    new-instance v1, Lcom/gme/video/sdk/net/GmeVideoNetWrapper;

    invoke-direct {v1}, Lcom/gme/video/sdk/net/GmeVideoNetWrapper;-><init>()V

    sput-object v1, Lcom/gme/video/sdk/net/GmeVideoNetWrapper;->sNetWrapper:Lcom/gme/video/sdk/net/GmeVideoNetWrapper;

    .line 27
    :cond_0
    sget-object v1, Lcom/gme/video/sdk/net/GmeVideoNetWrapper;->sNetWrapper:Lcom/gme/video/sdk/net/GmeVideoNetWrapper;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 28
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static GmeVideoNetWrapperOnCompleteCallback(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 7

    .line 57
    invoke-static {}, Lcom/gme/video/sdk/net/GmeVideoNetWrapper;->GetInstance()Lcom/gme/video/sdk/net/GmeVideoNetWrapper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/gme/video/sdk/net/GmeVideoNetWrapper;->getVideoShareCallback()Lcom/gme/video/sdk/IGmeVideoShareControlCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    .line 59
    invoke-interface/range {v0 .. v6}, Lcom/gme/video/sdk/IGmeVideoShareControlCallback;->onComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static GmeVideoNetWrapperOnProcessCallback(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 7

    .line 49
    invoke-static {}, Lcom/gme/video/sdk/net/GmeVideoNetWrapper;->GetInstance()Lcom/gme/video/sdk/net/GmeVideoNetWrapper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/gme/video/sdk/net/GmeVideoNetWrapper;->getVideoShareCallback()Lcom/gme/video/sdk/IGmeVideoShareControlCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p5

    move-wide v5, p7

    .line 51
    invoke-interface/range {v0 .. v6}, Lcom/gme/video/sdk/IGmeVideoShareControlCallback;->onProgress(Ljava/lang/String;Ljava/lang/String;JJ)V

    :cond_0
    return-void
.end method

.method public static GmeVideoNetWrapperOnStartCallback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 41
    invoke-static {}, Lcom/gme/video/sdk/net/GmeVideoNetWrapper;->GetInstance()Lcom/gme/video/sdk/net/GmeVideoNetWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gme/video/sdk/net/GmeVideoNetWrapper;->getVideoShareCallback()Lcom/gme/video/sdk/IGmeVideoShareControlCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    invoke-interface {v0, p0, p1}, Lcom/gme/video/sdk/IGmeVideoShareControlCallback;->onStart(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static cancel(J)V
    .locals 2

    .line 117
    invoke-static {}, Lcom/gme/video/sdk/net/GmeVideoNetWrapper;->GetInstance()Lcom/gme/video/sdk/net/GmeVideoNetWrapper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Lcom/gme/video/sdk/net/GmeVideoNetWrapper;->setCancelMapValue(JZ)V

    return-void
.end method

.method public static downloadFileFromCos(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 10

    .line 146
    sget-object v0, Lcom/gme/video/sdk/net/GmeVideoNetWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "downloadFileFromCos|strURL= "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "strFilePath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    invoke-static {}, Lcom/gme/video/sdk/net/GmeVideoHttpClient;->getInstance()Lcom/gme/video/sdk/net/GmeVideoHttpClient;

    move-result-object v3

    const/4 v7, 0x0

    move-object v4, p1

    move-object v5, p0

    move-object v6, p2

    move-wide v8, p3

    invoke-virtual/range {v3 .. v9}, Lcom/gme/video/sdk/net/GmeVideoHttpClient;->downloadFileFromCos(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    return-void
.end method

.method public static downloadFileFromS3(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;J)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .line 152
    sget-object v0, Lcom/gme/video/sdk/net/GmeVideoNetWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "downloadFileFromS3|strURL= "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "strFilePath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    invoke-static {}, Lcom/gme/video/sdk/net/GmeVideoHttpClient;->getInstance()Lcom/gme/video/sdk/net/GmeVideoHttpClient;

    move-result-object v3

    move-object v4, p1

    move-object v5, p0

    move-object v6, p2

    move-wide v7, p3

    invoke-virtual/range {v3 .. v8}, Lcom/gme/video/sdk/net/GmeVideoHttpClient;->downloadFileFromS3(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;J)V

    return-void
.end method

.method public static generateUUID()Ljava/lang/String;
    .locals 1

    .line 65
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTextFromURL(Ljava/lang/String;J)V
    .locals 3

    .line 128
    sget-object v0, Lcom/gme/video/sdk/net/GmeVideoNetWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getTextFromURL|strURL= "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    invoke-static {}, Lcom/gme/video/sdk/net/GmeVideoHttpClient;->getInstance()Lcom/gme/video/sdk/net/GmeVideoHttpClient;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/gme/video/sdk/net/GmeVideoHttpClient;->httpGetRequest(Ljava/lang/String;JLjava/lang/Object;)V

    return-void
.end method

.method public static pathFileExists(Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 71
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 73
    sget-object v2, Lcom/gme/video/sdk/net/GmeVideoNetWrapper;->TAG:Ljava/lang/String;

    const-string v3, "%s not exists"

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p0, v4, v1

    invoke-static {v2, v3, v4}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 77
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-gtz v7, :cond_1

    .line 78
    sget-object v3, Lcom/gme/video/sdk/net/GmeVideoNetWrapper;->TAG:Ljava/lang/String;

    const-string v4, "%s length is %d"

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v1

    aput-object v2, v5, v0

    invoke-static {v3, v4, v5}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_1
    return v0

    :catch_0
    move-exception v2

    .line 82
    sget-object v3, Lcom/gme/video/sdk/net/GmeVideoNetWrapper;->TAG:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v1

    const-string p0, "get exception when check file exists, path = %s"

    invoke-static {v3, p0, v0}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    const-string p0, "exception = "

    invoke-static {v3, p0, v2}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    return v1
.end method

.method public static postTextToURL(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9

    .line 122
    sget-object v0, Lcom/gme/video/sdk/net/GmeVideoNetWrapper;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string v2, "postTextToURL|strURL= %s PostData: %s"

    invoke-static {v0, v2, v1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    invoke-static {}, Lcom/gme/video/sdk/net/GmeVideoHttpClient;->getInstance()Lcom/gme/video/sdk/net/GmeVideoHttpClient;

    move-result-object v3

    const/4 v8, 0x0

    move-object v4, p0

    move-object v5, p1

    move-wide v6, p2

    invoke-virtual/range {v3 .. v8}, Lcom/gme/video/sdk/net/GmeVideoHttpClient;->httpPostRequest(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    return-void
.end method

.method public static uploadFileToCos(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;J)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .line 134
    sget-object v0, Lcom/gme/video/sdk/net/GmeVideoNetWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "uploadFileToCos|strURL= "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "strFilePath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    invoke-static {}, Lcom/gme/video/sdk/net/GmeVideoHttpClient;->getInstance()Lcom/gme/video/sdk/net/GmeVideoHttpClient;

    move-result-object v3

    move-object v4, p1

    move-object v5, p0

    move-object v6, p2

    move-wide v7, p3

    invoke-virtual/range {v3 .. v8}, Lcom/gme/video/sdk/net/GmeVideoHttpClient;->uploadFileCos(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;J)V

    return-void
.end method

.method public static uploadFileToS3(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;J)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .line 140
    sget-object v0, Lcom/gme/video/sdk/net/GmeVideoNetWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "uploadFileToS3|strURL= "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "strFilePath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    invoke-static {}, Lcom/gme/video/sdk/net/GmeVideoHttpClient;->getInstance()Lcom/gme/video/sdk/net/GmeVideoHttpClient;

    move-result-object v3

    move-object v4, p1

    move-object v5, p0

    move-object v6, p2

    move-wide v7, p3

    invoke-virtual/range {v3 .. v8}, Lcom/gme/video/sdk/net/GmeVideoHttpClient;->uploadFileToS3(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;J)V

    return-void
.end method


# virtual methods
.method public checkNeedCancel(J)Z
    .locals 0

    .line 98
    monitor-enter p0

    .line 99
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 101
    iget-object p2, p0, Lcom/gme/video/sdk/net/GmeVideoNetWrapper;->httpClientCancelMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 102
    iget-object p2, p0, Lcom/gme/video/sdk/net/GmeVideoNetWrapper;->httpClientCancelMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 104
    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 105
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getVideoShareCallback()Lcom/gme/video/sdk/IGmeVideoShareControlCallback;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/gme/video/sdk/net/GmeVideoNetWrapper;->mShareControlCallback:Lcom/gme/video/sdk/IGmeVideoShareControlCallback;

    return-object v0
.end method

.method public removeMapValue(J)V
    .locals 0

    .line 109
    monitor-enter p0

    .line 110
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 111
    iget-object p2, p0, Lcom/gme/video/sdk/net/GmeVideoNetWrapper;->httpClientCancelMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setCancelMapValue(JZ)V
    .locals 0

    .line 91
    monitor-enter p0

    .line 92
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 93
    iget-object p2, p0, Lcom/gme/video/sdk/net/GmeVideoNetWrapper;->httpClientCancelMap:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setVideoShareCallback(Lcom/gme/video/sdk/IGmeVideoShareControlCallback;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/gme/video/sdk/net/GmeVideoNetWrapper;->mShareControlCallback:Lcom/gme/video/sdk/IGmeVideoShareControlCallback;

    return-void
.end method
