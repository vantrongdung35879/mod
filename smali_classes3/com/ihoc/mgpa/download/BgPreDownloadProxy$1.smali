.class Lcom/ihoc/mgpa/download/BgPreDownloadProxy$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ihoc/mgpa/bgdownload/IBgPreDownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ihoc/mgpa/download/BgPreDownloadProxy;->setCallbackImpl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final mWrapper:Lcom/ihoc/mgpa/download/BgPreDownloadCallbackImpl;

.field final synthetic this$0:Lcom/ihoc/mgpa/download/BgPreDownloadProxy;


# direct methods
.method constructor <init>(Lcom/ihoc/mgpa/download/BgPreDownloadProxy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ihoc/mgpa/download/BgPreDownloadProxy$1;->this$0:Lcom/ihoc/mgpa/download/BgPreDownloadProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lcom/ihoc/mgpa/download/BgPreDownloadCallbackImpl;

    invoke-direct {p1}, Lcom/ihoc/mgpa/download/BgPreDownloadCallbackImpl;-><init>()V

    iput-object p1, p0, Lcom/ihoc/mgpa/download/BgPreDownloadProxy$1;->mWrapper:Lcom/ihoc/mgpa/download/BgPreDownloadCallbackImpl;

    return-void
.end method


# virtual methods
.method public notifyCurrentBgDownloadInfo(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ihoc/mgpa/download/BgPreDownloadProxy$1;->mWrapper:Lcom/ihoc/mgpa/download/BgPreDownloadCallbackImpl;

    invoke-virtual {v0, p1}, Lcom/ihoc/mgpa/download/BgPreDownloadCallbackImpl;->notifyCurrentBgDownloadInfo(Ljava/lang/String;)V

    return-void
.end method

.method public onTotalProgressChange(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ihoc/mgpa/download/BgPreDownloadProxy$1;->mWrapper:Lcom/ihoc/mgpa/download/BgPreDownloadCallbackImpl;

    invoke-virtual {v0, p1}, Lcom/ihoc/mgpa/download/BgPreDownloadCallbackImpl;->onTotalProgressChange(I)V

    return-void
.end method

.method public reportInGamePreDownload(Ljava/util/HashMap;)V
    .locals 1
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
    iget-object v0, p0, Lcom/ihoc/mgpa/download/BgPreDownloadProxy$1;->mWrapper:Lcom/ihoc/mgpa/download/BgPreDownloadCallbackImpl;

    invoke-virtual {v0, p1}, Lcom/ihoc/mgpa/download/BgPreDownloadCallbackImpl;->reportInGamePreDownload(Ljava/util/HashMap;)V

    return-void
.end method
