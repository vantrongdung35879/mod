.class public interface abstract Lcom/samsung/android/game/tsdk/ISceneSdkService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/game/tsdk/ISceneSdkService$Stub;
    }
.end annotation


# virtual methods
.method public abstract applyHardwareResource(Ljava/lang/String;)I
.end method

.method public abstract applyThreadGuarantee(Ljava/lang/String;)I
.end method

.method public abstract getVendorSupportStrategy(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getVersion()F
.end method

.method public abstract initLowLatencyIPC(Ljava/lang/String;Lcom/samsung/android/game/compatibility/SharedMemory;)I
.end method

.method public abstract initSceneSdk()Z
.end method

.method public abstract registerToTGPACallback(Lcom/samsung/android/game/tsdk/IToTGPACallback;F)I
.end method

.method public abstract setSceneSdkListener(Lcom/samsung/android/game/tsdk/ISceneSdkListener;)Z
.end method

.method public abstract totgpa()Ljava/lang/String;
.end method

.method public abstract updateGameInfo(Ljava/lang/String;)I
.end method
