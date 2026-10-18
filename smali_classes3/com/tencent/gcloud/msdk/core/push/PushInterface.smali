.class public interface abstract Lcom/tencent/gcloud/msdk/core/push/PushInterface;
.super Ljava/lang/Object;
.source "PushInterface.java"


# virtual methods
.method public abstract addLocalNotification(Lcom/tencent/gcloud/msdk/api/push/MSDKLocalNotification;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "localNotification",
            "seqID"
        }
    .end annotation
.end method

.method public abstract clearLocalNotifications(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seqID"
        }
    .end annotation
.end method

.method public abstract deleteAccount(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "account",
            "seqID"
        }
    .end annotation
.end method

.method public abstract deleteTag(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "seqID"
        }
    .end annotation
.end method

.method public abstract registerPush(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "account",
            "seqID"
        }
    .end annotation
.end method

.method public abstract setAccount(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "account",
            "seqID"
        }
    .end annotation
.end method

.method public abstract setTag(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "seqID"
        }
    .end annotation
.end method

.method public abstract unregisterPush(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seqID"
        }
    .end annotation
.end method
