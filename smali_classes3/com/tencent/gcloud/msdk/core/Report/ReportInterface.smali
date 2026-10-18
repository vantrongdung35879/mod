.class public interface abstract Lcom/tencent/gcloud/msdk/core/Report/ReportInterface;
.super Ljava/lang/Object;
.source "ReportInterface.java"


# virtual methods
.method public abstract init()V
.end method

.method public abstract reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLjava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "seqID",
            "eventName",
            "params",
            "isRealTime",
            "extraJson"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract setPushToken(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "seqID",
            "token"
        }
    .end annotation
.end method
