.class public Lcom/gsdk/gcloud/dolphin/UpdateInterface;
.super Ljava/lang/Object;
.source "UpdateInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsdk/gcloud/dolphin/UpdateInterface$DataVersion;
    }
.end annotation


# instance fields
.field private updateCallBack:Lcom/gsdk/gcloud/dolphin/UpdateCallBack;

.field private updateHandle:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    const-string v0, "gcloudcore"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 11
    const-string v0, "gcloud"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/gsdk/gcloud/dolphin/UpdateInterface;->updateHandle:I

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/gsdk/gcloud/dolphin/UpdateInterface;->updateCallBack:Lcom/gsdk/gcloud/dolphin/UpdateCallBack;

    return-void
.end method

.method private native cancelUpdateNative(I)V
.end method

.method private native checkAppUpdateNative(I)Z
.end method

.method private native createUpdateHandleNative()I
.end method

.method private native deleteUpdateHandleNative(I)Z
.end method

.method private native getCurrentDownloadSpeedNative(I)J
.end method

.method private native getLastErrorNative(I)J
.end method

.method private native initUpdateHandleNative(ILcom/gsdk/gcloud/dolphin/UpdateCallBack;Ljava/lang/String;)Z
.end method

.method private native pollCallBackNative(I)Z
.end method

.method private native sentMsgToCurrentActionNative(ILjava/lang/String;)Z
.end method

.method private native setNextStageNative(IZ)Z
.end method

.method private native uninitUpdateHandleNative(I)Z
.end method


# virtual methods
.method public cancelUpdate()V
    .locals 1

    .line 113
    iget v0, p0, Lcom/gsdk/gcloud/dolphin/UpdateInterface;->updateHandle:I

    if-nez v0, :cond_0

    return-void

    .line 119
    :cond_0
    invoke-direct {p0, v0}, Lcom/gsdk/gcloud/dolphin/UpdateInterface;->cancelUpdateNative(I)V

    return-void
.end method

.method public checkAppUpdate()Z
    .locals 1

    .line 101
    iget v0, p0, Lcom/gsdk/gcloud/dolphin/UpdateInterface;->updateHandle:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 107
    :cond_0
    invoke-direct {p0, v0}, Lcom/gsdk/gcloud/dolphin/UpdateInterface;->checkAppUpdateNative(I)Z

    move-result v0

    return v0
.end method

.method public createUpdateHandle()Z
    .locals 2

    .line 36
    iget v0, p0, Lcom/gsdk/gcloud/dolphin/UpdateInterface;->updateHandle:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 42
    :cond_0
    invoke-direct {p0}, Lcom/gsdk/gcloud/dolphin/UpdateInterface;->createUpdateHandleNative()I

    move-result v0

    iput v0, p0, Lcom/gsdk/gcloud/dolphin/UpdateInterface;->updateHandle:I

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "create value:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/gsdk/gcloud/dolphin/UpdateInterface;->updateHandle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IIPSUpdateInterface"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public deleteUpdateHandle()Z
    .locals 2

    .line 50
    iget v0, p0, Lcom/gsdk/gcloud/dolphin/UpdateInterface;->updateHandle:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 56
    :cond_0
    invoke-direct {p0, v0}, Lcom/gsdk/gcloud/dolphin/UpdateInterface;->deleteUpdateHandleNative(I)Z

    move-result v0

    .line 57
    iput v1, p0, Lcom/gsdk/gcloud/dolphin/UpdateInterface;->updateHandle:I

    return v0
.end method

.method public getCurrentDownloadSpeed()J
    .locals 2

    .line 175
    iget v0, p0, Lcom/gsdk/gcloud/dolphin/UpdateInterface;->updateHandle:I

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 181
    :cond_0
    invoke-direct {p0, v0}, Lcom/gsdk/gcloud/dolphin/UpdateInterface;->getCurrentDownloadSpeedNative(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastError()J
    .locals 2

    .line 139
    iget v0, p0, Lcom/gsdk/gcloud/dolphin/UpdateInterface;->updateHandle:I

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 145
    :cond_0
    invoke-direct {p0, v0}, Lcom/gsdk/gcloud/dolphin/UpdateInterface;->getLastErrorNative(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public initUpdateHandle(Lcom/gsdk/gcloud/dolphin/UpdateCallBack;Ljava/lang/String;)Z
    .locals 1

    .line 64
    iget v0, p0, Lcom/gsdk/gcloud/dolphin/UpdateInterface;->updateHandle:I

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 70
    :cond_0
    iput-object p1, p0, Lcom/gsdk/gcloud/dolphin/UpdateInterface;->updateCallBack:Lcom/gsdk/gcloud/dolphin/UpdateCallBack;

    .line 71
    invoke-direct {p0, v0, p1, p2}, Lcom/gsdk/gcloud/dolphin/UpdateInterface;->initUpdateHandleNative(ILcom/gsdk/gcloud/dolphin/UpdateCallBack;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public pollCallBack()Z
    .locals 1

    .line 151
    iget v0, p0, Lcom/gsdk/gcloud/dolphin/UpdateInterface;->updateHandle:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 157
    :cond_0
    invoke-direct {p0, v0}, Lcom/gsdk/gcloud/dolphin/UpdateInterface;->pollCallBackNative(I)Z

    move-result v0

    return v0
.end method

.method public sentMsgToCurrentAction(Ljava/lang/String;)Z
    .locals 1

    .line 163
    iget v0, p0, Lcom/gsdk/gcloud/dolphin/UpdateInterface;->updateHandle:I

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 169
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/gsdk/gcloud/dolphin/UpdateInterface;->sentMsgToCurrentActionNative(ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setNextStage(Z)Z
    .locals 1

    .line 89
    iget v0, p0, Lcom/gsdk/gcloud/dolphin/UpdateInterface;->updateHandle:I

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 95
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/gsdk/gcloud/dolphin/UpdateInterface;->setNextStageNative(IZ)Z

    move-result p1

    return p1
.end method

.method public uninitUpdateHandle()Z
    .locals 1

    .line 77
    iget v0, p0, Lcom/gsdk/gcloud/dolphin/UpdateInterface;->updateHandle:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 83
    :cond_0
    invoke-direct {p0, v0}, Lcom/gsdk/gcloud/dolphin/UpdateInterface;->uninitUpdateHandleNative(I)Z

    move-result v0

    return v0
.end method
