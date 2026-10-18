.class public Lcom/ngame/resources/IResourceDecompressEventHandler;
.super Ljava/lang/Object;
.source "IResourceDecompressEventHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public RD_OnAwake()V
    .locals 0

    return-void
.end method

.method public RD_OnError(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "errorCode",
            "errorMsg"
        }
    .end annotation

    return-void
.end method

.method public RD_OnException(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "errorType",
            "exception"
        }
    .end annotation

    return-void
.end method

.method public RD_OnFinish(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isSoExist"
        }
    .end annotation

    return-void
.end method

.method public RD_OnMD5CheckError(Ljava/lang/String;Lcom/ngame/resources/RD_FileIntegrityChecker$MD5CheckResultInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "step",
            "ret"
        }
    .end annotation

    return-void
.end method

.method public RD_OnStart()V
    .locals 0

    return-void
.end method
