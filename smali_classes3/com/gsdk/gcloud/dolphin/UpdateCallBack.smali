.class public interface abstract Lcom/gsdk/gcloud/dolphin/UpdateCallBack;
.super Ljava/lang/Object;
.source "UpdateCallBack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsdk/gcloud/dolphin/UpdateCallBack$VersionInfo;,
        Lcom/gsdk/gcloud/dolphin/UpdateCallBack$AppVersion;
    }
.end annotation


# virtual methods
.method public abstract onActionMsgArrive(Ljava/lang/String;)Z
.end method

.method public abstract onError(II)V
.end method

.method public abstract onGetNewVersionInfo(Lcom/gsdk/gcloud/dolphin/UpdateCallBack$VersionInfo;)Z
.end method

.method public abstract onNoticeInstallAPK(Ljava/lang/String;)Z
.end method

.method public abstract onProgress(IJJ)V
.end method

.method public abstract onSuccess()V
.end method
