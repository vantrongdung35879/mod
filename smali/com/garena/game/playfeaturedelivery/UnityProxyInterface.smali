.class public interface abstract Lcom/garena/game/playfeaturedelivery/UnityProxyInterface;
.super Ljava/lang/Object;
.source "UnityProxyInterface.java"


# virtual methods
.method public abstract onCancelInstallFailure(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sessionId",
            "error"
        }
    .end annotation
.end method

.method public abstract onCancelInstallSuccess(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sessionId"
        }
    .end annotation
.end method

.method public abstract onCheckSessionStateComplete(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sessionId",
            "state"
        }
    .end annotation
.end method

.method public abstract onCheckSessionStateFailure(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation
.end method

.method public abstract onCheckSessionStateSuccess()V
.end method

.method public abstract onDeferredInstallComplete(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modules"
        }
    .end annotation
.end method

.method public abstract onDeferredInstallFailure(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "error",
            "modules"
        }
    .end annotation
.end method

.method public abstract onDeferredInstallSuccess(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modules"
        }
    .end annotation
.end method

.method public abstract onFailure(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "exception",
            "modules"
        }
    .end annotation
.end method

.method public abstract onStateUpdate(IIJJI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "sessionId",
            "state",
            "totalBytesToDownload",
            "bytesDownloaded",
            "errorcode"
        }
    .end annotation
.end method

.method public abstract onSuccess(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sessionId",
            "modules"
        }
    .end annotation
.end method
