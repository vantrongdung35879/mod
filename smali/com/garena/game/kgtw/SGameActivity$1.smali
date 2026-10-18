.class Lcom/garena/game/kgtw/SGameActivity$1;
.super Lcom/ngame/resources/IResourceDecompressEventHandler;
.source "SGameActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/garena/game/kgtw/SGameActivity;->initForResourceDecompress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/garena/game/kgtw/SGameActivity;

.field final synthetic val$context:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/garena/game/kgtw/SGameActivity;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$context"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lcom/garena/game/kgtw/SGameActivity$1;->this$0:Lcom/garena/game/kgtw/SGameActivity;

    iput-object p2, p0, Lcom/garena/game/kgtw/SGameActivity$1;->val$context:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/ngame/resources/IResourceDecompressEventHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public RD_OnAwake()V
    .locals 2

    .line 46
    const-string v0, "Resources"

    const-string v1, "OnAwake"

    invoke-static {v0, v1}, Lcom/ngame/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/garena/game/kgtw/SGameActivity$1;->val$context:Landroid/app/Activity;

    invoke-static {v0}, Lcom/garena/game/kgtw/util/MSDKEnvPreInit;->init(Landroid/app/Activity;)V

    .line 49
    iget-object v0, p0, Lcom/garena/game/kgtw/SGameActivity$1;->this$0:Lcom/garena/game/kgtw/SGameActivity;

    invoke-virtual {v0}, Lcom/garena/game/kgtw/SGameActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/garena/game/kgtw/util/CrashSDKLauncher;->init(Landroid/content/Context;)V

    .line 50
    invoke-static {}, Lcom/garena/game/kgtw/util/BeaconSDKLauncher;->init()V

    .line 52
    invoke-static {}, Lcom/garena/game/kgtw/util/QuickEventMgr;->reportAppStart()V

    return-void
.end method

.method public RD_OnError(ILjava/lang/String;)V
    .locals 2
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

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OnError errorCode= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errorMsg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Resources"

    invoke-static {v1, v0}, Lcom/ngame/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-static {p1, p2}, Lcom/garena/game/kgtw/util/QuickEventMgr;->reportExtractError(ILjava/lang/String;)V

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

    .line 67
    invoke-static {p1, p2}, Lcom/garena/game/kgtw/util/CrashSDKLauncher;->reportException(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public RD_OnFinish(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isSoExist"
        }
    .end annotation

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OnExtracted: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Resources"

    invoke-static {v1, v0}, Lcom/ngame/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-static {p1}, Lcom/garena/game/kgtw/util/QuickEventMgr;->reportExtractEnd(Z)V

    return-void
.end method

.method public RD_OnMD5CheckError(Ljava/lang/String;Lcom/ngame/resources/RD_FileIntegrityChecker$MD5CheckResultInfo;)V
    .locals 4
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

    .line 71
    iget-boolean v0, p2, Lcom/ngame/resources/RD_FileIntegrityChecker$MD5CheckResultInfo;->result:Z

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p2, Lcom/ngame/resources/RD_FileIntegrityChecker$MD5CheckResultInfo;->fileName:Ljava/lang/String;

    iget-object v1, p2, Lcom/ngame/resources/RD_FileIntegrityChecker$MD5CheckResultInfo;->fileMD5:Ljava/lang/String;

    iget-object v2, p2, Lcom/ngame/resources/RD_FileIntegrityChecker$MD5CheckResultInfo;->errorMD5:Ljava/lang/String;

    iget-object v3, p0, Lcom/garena/game/kgtw/SGameActivity$1;->this$0:Lcom/garena/game/kgtw/SGameActivity;

    invoke-static {v3}, Lcom/garena/game/kgtw/SGameActivity;->access$000(Lcom/garena/game/kgtw/SGameActivity;)I

    move-result v3

    invoke-static {v0, v1, v2, v3, p1}, Lcom/garena/game/kgtw/util/QuickEventMgr;->reportMD5CheckError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "|"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/ngame/resources/RD_FileIntegrityChecker$MD5CheckResultInfo;->exceptionMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/ngame/resources/RD_FileIntegrityChecker$MD5CheckResultInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/ngame/resources/RD_FileIntegrityChecker$MD5CheckResultInfo;->fileMD5:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/ngame/resources/RD_FileIntegrityChecker$MD5CheckResultInfo;->errorMD5:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 75
    new-instance p2, Ljava/lang/Throwable;

    invoke-direct {p2, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const-string p1, "CheckAllExtractorFilesCorrectException"

    invoke-static {p1, p2}, Lcom/garena/game/kgtw/util/CrashSDKLauncher;->reportException(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public RD_OnStart()V
    .locals 2

    .line 55
    const-string v0, "Resources"

    const-string v1, "OnStart"

    invoke-static {v0, v1}, Lcom/ngame/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-static {}, Lcom/garena/game/kgtw/util/QuickEventMgr;->reportExtractStart()V

    return-void
.end method
