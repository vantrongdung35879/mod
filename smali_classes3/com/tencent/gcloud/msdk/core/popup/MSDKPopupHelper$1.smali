.class Lcom/tencent/gcloud/msdk/core/popup/MSDKPopupHelper$1;
.super Lcom/tencent/gcloud/msdk/core/popup/MSDKPopupCallbackProxy;
.source "MSDKPopupHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/gcloud/msdk/core/popup/MSDKPopupHelper;->createPopupCallback(JJ)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$nativeMethod:J

.field final synthetic val$userData:J


# direct methods
.method constructor <init>(JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$nativeMethod",
            "val$userData"
        }
    .end annotation

    .line 17
    iput-wide p1, p0, Lcom/tencent/gcloud/msdk/core/popup/MSDKPopupHelper$1;->val$nativeMethod:J

    iput-wide p3, p0, Lcom/tencent/gcloud/msdk/core/popup/MSDKPopupHelper$1;->val$userData:J

    invoke-direct {p0}, Lcom/tencent/gcloud/msdk/core/popup/MSDKPopupCallbackProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "action",
            "message"
        }
    .end annotation

    .line 20
    iget-wide v0, p0, Lcom/tencent/gcloud/msdk/core/popup/MSDKPopupHelper$1;->val$nativeMethod:J

    iget-wide v2, p0, Lcom/tencent/gcloud/msdk/core/popup/MSDKPopupHelper$1;->val$userData:J

    move v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/tencent/gcloud/msdk/core/popup/MSDKPopupHelper;->access$000(JJILjava/lang/String;)V

    return-void
.end method
