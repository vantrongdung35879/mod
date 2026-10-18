.class public Lcom/tencent/gcloud/msdk/api/lbs/MSDKLBS;
.super Ljava/lang/Object;
.source "MSDKLBS.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native ClearLocation()V
.end method

.method public static native GetIPInfo()V
.end method

.method public static native GetLocation()V
.end method

.method public static native GetNearby()V
.end method

.method public static native setLBSObserver(Lcom/tencent/gcloud/msdk/api/lbs/MSDKLBSObserver;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation
.end method
