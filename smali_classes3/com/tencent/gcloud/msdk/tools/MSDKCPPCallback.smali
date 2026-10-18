.class public Lcom/tencent/gcloud/msdk/tools/MSDKCPPCallback;
.super Lcom/tencent/gcloud/msdk/core/MSDKInnerCallback;
.source "MSDKCPPCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/gcloud/msdk/core/MSDKInnerCallback<",
        "Lcom/tencent/gcloud/msdk/api/MSDKRet;",
        ">;"
    }
.end annotation


# instance fields
.field private mIsGlobalCallback:Z

.field private mMetaNotifyPtr:J

.field private mMetaResultPtr:J

.field private mResultPtr:J


# direct methods
.method constructor <init>(JJJLjava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "metaPtr",
            "metaNotifyPtr",
            "resultPtr",
            "invokeChainId",
            "isGlobalCallback"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Lcom/tencent/gcloud/msdk/core/MSDKInnerCallback;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ] from cpp, inner callback [ onNotify = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " , onResult = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ], user callback [ onResult  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 37
    iput-object p7, p0, Lcom/tencent/gcloud/msdk/tools/MSDKCPPCallback;->mInvokeSeqId:Ljava/lang/String;

    .line 38
    iput-wide p1, p0, Lcom/tencent/gcloud/msdk/tools/MSDKCPPCallback;->mMetaResultPtr:J

    .line 39
    iput-wide p3, p0, Lcom/tencent/gcloud/msdk/tools/MSDKCPPCallback;->mMetaNotifyPtr:J

    .line 40
    iput-wide p5, p0, Lcom/tencent/gcloud/msdk/tools/MSDKCPPCallback;->mResultPtr:J

    .line 41
    iput-boolean p8, p0, Lcom/tencent/gcloud/msdk/tools/MSDKCPPCallback;->mIsGlobalCallback:Z

    return-void
.end method

.method public static native onCallback(JJLcom/tencent/gcloud/msdk/api/MSDKRet;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mMetaResultPtr",
            "resultPtr",
            "result"
        }
    .end annotation
.end method


# virtual methods
.method public onNotify(Lcom/tencent/gcloud/msdk/api/MSDKRet;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    const-string v0, "[ "

    .line 61
    :try_start_0
    iget-wide v1, p0, Lcom/tencent/gcloud/msdk/tools/MSDKCPPCallback;->mMetaNotifyPtr:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/gcloud/msdk/tools/MSDKCPPCallback;->mInvokeSeqId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ],  onNotify \n : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tencent/gcloud/msdk/api/MSDKRet;->toUnityString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 63
    iget-wide v1, p0, Lcom/tencent/gcloud/msdk/tools/MSDKCPPCallback;->mMetaNotifyPtr:J

    iget-wide v3, p0, Lcom/tencent/gcloud/msdk/tools/MSDKCPPCallback;->mResultPtr:J

    invoke-static {v1, v2, v3, v4, p1}, Lcom/tencent/gcloud/msdk/tools/MSDKCPPCallback;->onCallback(JJLcom/tencent/gcloud/msdk/api/MSDKRet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/gcloud/msdk/tools/MSDKCPPCallback;->mInvokeSeqId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ], onResult catch exception : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public bridge synthetic onNotify(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "result"
        }
    .end annotation

    .line 19
    check-cast p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    invoke-virtual {p0, p1}, Lcom/tencent/gcloud/msdk/tools/MSDKCPPCallback;->onNotify(Lcom/tencent/gcloud/msdk/api/MSDKRet;)V

    return-void
.end method

.method public onResult(Lcom/tencent/gcloud/msdk/api/MSDKRet;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    const-string v0, "[ "

    .line 48
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/gcloud/msdk/tools/MSDKCPPCallback;->mInvokeSeqId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ],  onResult \n : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tencent/gcloud/msdk/api/MSDKRet;->toUnityString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 49
    iget-wide v1, p0, Lcom/tencent/gcloud/msdk/tools/MSDKCPPCallback;->mMetaResultPtr:J

    iget-wide v3, p0, Lcom/tencent/gcloud/msdk/tools/MSDKCPPCallback;->mResultPtr:J

    invoke-static {v1, v2, v3, v4, p1}, Lcom/tencent/gcloud/msdk/tools/MSDKCPPCallback;->onCallback(JJLcom/tencent/gcloud/msdk/api/MSDKRet;)V

    .line 50
    iget-boolean p1, p0, Lcom/tencent/gcloud/msdk/tools/MSDKCPPCallback;->mIsGlobalCallback:Z

    if-nez p1, :cond_0

    const-wide/16 v1, 0x0

    .line 51
    iput-wide v1, p0, Lcom/tencent/gcloud/msdk/tools/MSDKCPPCallback;->mResultPtr:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/gcloud/msdk/tools/MSDKCPPCallback;->mInvokeSeqId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ], onResult catch exception : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
