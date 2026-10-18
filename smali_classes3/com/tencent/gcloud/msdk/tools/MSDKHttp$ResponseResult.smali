.class public Lcom/tencent/gcloud/msdk/tools/MSDKHttp$ResponseResult;
.super Ljava/lang/Object;
.source "MSDKHttp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/gcloud/msdk/tools/MSDKHttp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResponseResult"
.end annotation


# instance fields
.field public data:[B

.field public httpCode:I

.field public libCode:I


# direct methods
.method public constructor <init>(II[B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "libCode",
            "httpCode",
            "data"
        }
    .end annotation

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    iput p1, p0, Lcom/tencent/gcloud/msdk/tools/MSDKHttp$ResponseResult;->libCode:I

    .line 252
    iput p2, p0, Lcom/tencent/gcloud/msdk/tools/MSDKHttp$ResponseResult;->httpCode:I

    .line 253
    iput-object p3, p0, Lcom/tencent/gcloud/msdk/tools/MSDKHttp$ResponseResult;->data:[B

    return-void
.end method
