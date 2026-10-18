.class public interface abstract Lcom/ihoc/mgpa/vendor/IVendorBridge;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ihoc/mgpa/vendor/IVendorBridge$OSTool;,
        Lcom/ihoc/mgpa/vendor/IVendorBridge$LogTool;
    }
.end annotation


# virtual methods
.method public abstract checkSuccessor()V
.end method

.method public abstract checkVendorServer()V
.end method

.method public abstract getBridgeType()Lcom/ihoc/mgpa/vendor/VendorBridgeType;
.end method

.method public abstract getSSPHardwareData()Ljava/lang/String;
.end method

.method public abstract getSuccessor()Lcom/ihoc/mgpa/vendor/IVendorBridge;
.end method

.method public abstract getSystemData(Lcom/ihoc/mgpa/vendor/VendorKey;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract isAvailable()Lcom/ihoc/mgpa/vendor/VendorErrCode;
.end method

.method public abstract isSSPAvailable()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setSuccessor(Lcom/ihoc/mgpa/vendor/IVendorBridge;)V
.end method

.method public abstract updateGameInfo(ILjava/lang/String;)V
.end method

.method public abstract updateGameInfo(Ljava/lang/String;)V
.end method

.method public abstract updateGameInfo(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateGameInfoToSSP(ILjava/lang/String;)V
.end method

.method public abstract updateGameInfoToSSP(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
