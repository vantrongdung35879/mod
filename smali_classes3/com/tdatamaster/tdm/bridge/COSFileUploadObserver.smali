.class public Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver;
.super Ljava/lang/Object;
.source "COSFileUploadObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver$COSFileData;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver;


# instance fields
.field private volatile mIsRunning:Z

.field private mObserverSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver$COSFileData;",
            ">;"
        }
    .end annotation
.end field

.field private mThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver;->mThread:Ljava/lang/Thread;

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver;->mIsRunning:Z

    .line 60
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver;->mObserverSet:Ljava/util/HashSet;

    return-void
.end method

.method private DoRun()V
    .locals 9

    const/4 v0, 0x0

    const/16 v1, 0x3c

    const/16 v2, 0x3c

    :goto_0
    const/4 v3, 0x0

    .line 96
    :goto_1
    iget-object v4, p0, Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver;->mObserverSet:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-gtz v4, :cond_1

    if-lez v2, :cond_0

    goto :goto_2

    .line 118
    :cond_0
    const-class v4, Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver;

    monitor-enter v4

    .line 119
    :try_start_0
    iput-boolean v0, p0, Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver;->mIsRunning:Z

    .line 120
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 97
    :cond_1
    :goto_2
    invoke-direct {p0}, Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver;->TDMGetUploadFileByCOSResult()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    if-eqz v4, :cond_3

    .line 99
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 100
    invoke-direct {p0, v4}, Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver;->NotifyUploadJsonResult(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v3, v3, 0x1

    .line 105
    :try_start_2
    rem-int/lit16 v2, v3, 0x3e8

    if-nez v2, :cond_2

    .line 106
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    const/16 v2, 0x3c

    goto :goto_1

    :catch_0
    move-exception v2

    move v4, v3

    const/16 v3, 0x3c

    goto :goto_3

    :catch_1
    move-exception v4

    move v8, v3

    move v3, v2

    move-object v2, v4

    move v4, v8

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v2, -0x1

    .line 111
    :try_start_3
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v3

    const/4 v4, 0x0

    move-object v8, v3

    move v3, v2

    move-object v2, v8

    .line 114
    :goto_3
    const-string v5, "TDM"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "dorun error -> "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    move v3, v4

    goto :goto_1
.end method

.method private NotifyUploadJsonResult(Ljava/lang/String;)I
    .locals 4

    .line 125
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 126
    const-string/jumbo p1, "tdm_srcID"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 127
    const-string/jumbo v1, "tdm_result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 128
    const-string/jumbo v2, "tdm_eventName"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 129
    const-string/jumbo v3, "tdm_fileName"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver;->NotifyUploadResult(ILjava/lang/String;Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "read json error, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TDM"

    invoke-static {v0, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1
.end method

.method private PopCOSFileData(ILjava/lang/String;Ljava/lang/String;)Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver$COSFileData;
    .locals 4

    .line 159
    const-class v0, Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver;

    monitor-enter v0

    .line 160
    :try_start_0
    iget-object v1, p0, Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver;->mObserverSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver$COSFileData;

    .line 161
    invoke-virtual {v2, p1, p2, p3}, Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver$COSFileData;->Equals(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 162
    iget-object p1, p0, Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver;->mObserverSet:Ljava/util/HashSet;

    invoke-virtual {p1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 163
    monitor-exit v0

    return-object v2

    .line 166
    :cond_1
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private native TDMGetUploadFileByCOSResult()Ljava/lang/String;
.end method

.method static synthetic access$000(Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver;->DoRun()V

    return-void
.end method

.method public static getInstance()Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver;
    .locals 2

    .line 49
    sget-object v0, Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver;->mInstance:Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver;

    if-nez v0, :cond_1

    .line 50
    const-class v0, Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver;

    monitor-enter v0

    .line 51
    :try_start_0
    sget-object v1, Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver;->mInstance:Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver;

    if-nez v1, :cond_0

    .line 52
    new-instance v1, Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver;

    invoke-direct {v1}, Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver;-><init>()V

    sput-object v1, Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver;->mInstance:Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver;

    .line 54
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 56
    :cond_1
    :goto_0
    sget-object v0, Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver;->mInstance:Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver;

    return-object v0
.end method


# virtual methods
.method public Add(ILjava/lang/String;Ljava/lang/String;Lcom/tdatamaster/tdm/ITDataMasterCallback;)V
    .locals 7

    .line 64
    const-class v0, Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver;

    monitor-enter v0

    .line 65
    :try_start_0
    iget-object v1, p0, Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver;->mObserverSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    const/16 v2, 0x3e8

    if-le v1, v2, :cond_0

    .line 66
    const-string p1, "TDM"

    const-string p2, "file list more than 1000 times"

    invoke-static {p1, p2}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    monitor-exit v0

    return-void

    .line 69
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 70
    new-instance v0, Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver$COSFileData;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver$COSFileData;-><init>(Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver;ILjava/lang/String;Ljava/lang/String;Lcom/tdatamaster/tdm/ITDataMasterCallback;)V

    .line 72
    const-class p1, Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver;

    monitor-enter p1

    .line 73
    :try_start_1
    iget-object p2, p0, Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver;->mObserverSet:Ljava/util/HashSet;

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 74
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 75
    iget-boolean p1, p0, Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver;->mIsRunning:Z

    if-nez p1, :cond_2

    .line 76
    const-class p1, Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver;

    monitor-enter p1

    .line 77
    :try_start_2
    iget-boolean p2, p0, Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver;->mIsRunning:Z

    if-nez p2, :cond_1

    const/4 p2, 0x1

    .line 78
    iput-boolean p2, p0, Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver;->mIsRunning:Z

    .line 79
    new-instance p2, Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver$1;

    invoke-direct {p2, p0}, Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver$1;-><init>(Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver;)V

    iput-object p2, p0, Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver;->mThread:Ljava/lang/Thread;

    .line 85
    const-string p3, "TDM_File_Observer"

    invoke-virtual {p2, p3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 86
    iget-object p2, p0, Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver;->mThread:Ljava/lang/Thread;

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 88
    :cond_1
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2

    :cond_2
    :goto_0
    return-void

    :catchall_1
    move-exception p2

    .line 74
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p2

    :catchall_2
    move-exception p1

    .line 69
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1
.end method

.method public NotifyUploadResult(ILjava/lang/String;Ljava/lang/String;I)I
    .locals 4

    .line 139
    const-string v0, "TDM"

    const/4 v1, -0x1

    if-lez p1, :cond_3

    if-eqz p2, :cond_3

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver;->PopCOSFileData(ILjava/lang/String;Ljava/lang/String;)Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver$COSFileData;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 146
    invoke-virtual {v2}, Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver$COSFileData;->HasCallBack()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 147
    iget-object v2, v2, Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver$COSFileData;->mCallback:Lcom/tdatamaster/tdm/ITDataMasterCallback;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/tdatamaster/tdm/ITDataMasterCallback;->OnFileNotify(ILjava/lang/String;Ljava/lang/String;I)V

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    return v1

    .line 140
    :cond_3
    :goto_0
    const-string p1, "callback param is empty"

    invoke-static {v0, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->Warning(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 153
    :catch_0
    const-string p1, "callback error"

    invoke-static {v0, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method
