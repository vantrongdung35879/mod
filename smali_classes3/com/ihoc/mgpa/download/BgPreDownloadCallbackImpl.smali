.class Lcom/ihoc/mgpa/download/BgPreDownloadCallbackImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private isShowingNotfify:Z

.field private tmpBgPreDownloadNotifyKey:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/ihoc/mgpa/download/BgPreDownloadCallbackImpl;->isShowingNotfify:Z

    const/16 v0, -0x4b

    .line 10
    iput v0, p0, Lcom/ihoc/mgpa/download/BgPreDownloadCallbackImpl;->tmpBgPreDownloadNotifyKey:I

    return-void
.end method

.method private hideNotification(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/ihoc/mgpa/download/BgPreDownloadCallbackImpl;->isBgPreDownloadConfigInvalid()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/ihoc/mgpa/gradish/L;->c()Lcom/ihoc/mgpa/gradish/L;

    move-result-object v0

    iget-object v0, v0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iget-object v0, v0, Lcom/ihoc/mgpa/gradish/L$a;->p:Lcom/ihoc/mgpa/gradish/d;

    iget-boolean v0, v0, Lcom/ihoc/mgpa/gradish/d;->c:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/ihoc/mgpa/download/BgPreDownloadCallbackImpl;->isShowingNotfify:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/ihoc/mgpa/download/BgPreDownloadCallbackImpl;->isShowingNotfify:Z

    .line 10
    invoke-static {}, Lcom/ihoc/mgpa/gradish/s1;->b()Lcom/ihoc/mgpa/gradish/s1;

    move-result-object v0

    iget v1, p0, Lcom/ihoc/mgpa/download/BgPreDownloadCallbackImpl;->tmpBgPreDownloadNotifyKey:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/ihoc/mgpa/gradish/s1;->b(ILjava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private isBgPreDownloadConfigInvalid()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/gradish/L;->c()Lcom/ihoc/mgpa/gradish/L;

    move-result-object v0

    iget-object v0, v0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iget-object v0, v0, Lcom/ihoc/mgpa/gradish/L$a;->p:Lcom/ihoc/mgpa/gradish/d;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private showNotification(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/ihoc/mgpa/download/BgPreDownloadCallbackImpl;->isBgPreDownloadConfigInvalid()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/ihoc/mgpa/gradish/L;->c()Lcom/ihoc/mgpa/gradish/L;

    move-result-object v0

    iget-object v0, v0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iget-object v0, v0, Lcom/ihoc/mgpa/gradish/L$a;->p:Lcom/ihoc/mgpa/gradish/d;

    iget-boolean v0, v0, Lcom/ihoc/mgpa/gradish/d;->c:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/ihoc/mgpa/download/BgPreDownloadCallbackImpl;->isShowingNotfify:Z

    .line 6
    invoke-static {}, Lcom/ihoc/mgpa/gradish/s1;->b()Lcom/ihoc/mgpa/gradish/s1;

    move-result-object v0

    iget v1, p0, Lcom/ihoc/mgpa/download/BgPreDownloadCallbackImpl;->tmpBgPreDownloadNotifyKey:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/ihoc/mgpa/gradish/s1;->b(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public notifyCurrentBgDownloadInfo(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isCallbackFucOpen()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/ihoc/mgpa/gradish/s1;->b()Lcom/ihoc/mgpa/gradish/s1;

    move-result-object v0

    new-instance v1, Lcom/ihoc/mgpa/gradish/I;

    sget-object v2, Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;->VACANT_DOWNLOAD:Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;

    invoke-direct {v1, v2, p1}, Lcom/ihoc/mgpa/gradish/I;-><init>(Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ihoc/mgpa/gradish/s1;->a(Lcom/ihoc/mgpa/gradish/I;)V

    return-void
.end method

.method public onFetchTaskSuccess()V
    .locals 0

    return-void
.end method

.method public onTotalProgressChange(I)V
    .locals 1

    if-ltz p1, :cond_1

    const/16 v0, 0x63

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-direct {p0, p1}, Lcom/ihoc/mgpa/download/BgPreDownloadCallbackImpl;->showNotification(I)V

    goto :goto_1

    .line 2
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/ihoc/mgpa/download/BgPreDownloadCallbackImpl;->hideNotification(I)V

    :goto_1
    return-void
.end method

.method public reportInGamePreDownload(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->getCurrentSceneId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "scenesID"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_IN_GAME_PRE_DOWNLOAD:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/gradish/t1;->a(Lcom/ihoc/mgpa/report/entity/BeaconEvent;Ljava/util/HashMap;)V

    return-void
.end method
