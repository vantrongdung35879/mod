.class public Lcom/tencent/gcloud/msdk/api/extend/MSDKExtend;
.super Ljava/lang/Object;
.source "MSDKExtend.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native invoke(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "channel",
            "extendMethodName",
            "paramsJson"
        }
    .end annotation
.end method

.method public static native setExtendObserver(Lcom/tencent/gcloud/msdk/api/extend/MSDKExtendObserver;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation
.end method
