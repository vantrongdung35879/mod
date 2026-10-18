.class Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver$COSFileData;
.super Ljava/lang/Object;
.source "COSFileUploadObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "COSFileData"
.end annotation


# instance fields
.field public mCallback:Lcom/tdatamaster/tdm/ITDataMasterCallback;

.field public mEventName:Ljava/lang/String;

.field public mFileName:Ljava/lang/String;

.field public mSrcID:I

.field final synthetic this$0:Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver;


# direct methods
.method constructor <init>(Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver;ILjava/lang/String;Ljava/lang/String;Lcom/tdatamaster/tdm/ITDataMasterCallback;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver$COSFileData;->this$0:Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 15
    iput p1, p0, Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver$COSFileData;->mSrcID:I

    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver$COSFileData;->mCallback:Lcom/tdatamaster/tdm/ITDataMasterCallback;

    if-lez p2, :cond_1

    if-eqz p3, :cond_1

    .line 21
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 25
    :cond_0
    iput p2, p0, Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver$COSFileData;->mSrcID:I

    .line 26
    iput-object p3, p0, Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver$COSFileData;->mEventName:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver$COSFileData;->mFileName:Ljava/lang/String;

    .line 28
    iput-object p5, p0, Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver$COSFileData;->mCallback:Lcom/tdatamaster/tdm/ITDataMasterCallback;

    return-void

    .line 22
    :cond_1
    :goto_0
    const-string p1, "TDM"

    const-string p2, "fail, param is empty"

    invoke-static {p1, p2}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public Equals(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-lez p1, :cond_1

    if-eqz p2, :cond_1

    .line 32
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    iget v1, p0, Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver$COSFileData;->mSrcID:I

    if-ne v1, p1, :cond_1

    iget-object p1, p0, Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver$COSFileData;->mEventName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver$COSFileData;->mFileName:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public HasCallBack()Z
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver$COSFileData;->mCallback:Lcom/tdatamaster/tdm/ITDataMasterCallback;

    if-eqz v0, :cond_0

    instance-of v0, v0, Lcom/tdatamaster/tdm/ITDataMasterCallback;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
