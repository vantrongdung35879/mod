.class public Lcom/tencent/gcloud/msdk/api/notice/MSDKNotice;
.super Ljava/lang/Object;
.source "MSDKNotice.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native loadNoticeData(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "noticeGroupID",
            "language",
            "region",
            "partition",
            "extraJson"
        }
    .end annotation
.end method

.method public static native setNoticeObserver(Lcom/tencent/gcloud/msdk/api/notice/MSDKNoticeObserver;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation
.end method
