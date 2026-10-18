.class Lcom/tencent/gcloud/msdk/tools/NDKHelper$1;
.super Ljava/lang/Object;
.source "NDKHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/gcloud/msdk/tools/NDKHelper;->runOnUIThread(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/gcloud/msdk/tools/NDKHelper;

.field final synthetic val$argsPtr:J

.field final synthetic val$callbackPtr:J


# direct methods
.method constructor <init>(Lcom/tencent/gcloud/msdk/tools/NDKHelper;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$callbackPtr",
            "val$argsPtr"
        }
    .end annotation

    .line 76
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/tools/NDKHelper$1;->this$0:Lcom/tencent/gcloud/msdk/tools/NDKHelper;

    iput-wide p2, p0, Lcom/tencent/gcloud/msdk/tools/NDKHelper$1;->val$callbackPtr:J

    iput-wide p4, p0, Lcom/tencent/gcloud/msdk/tools/NDKHelper$1;->val$argsPtr:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 79
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/tools/NDKHelper$1;->this$0:Lcom/tencent/gcloud/msdk/tools/NDKHelper;

    iget-wide v1, p0, Lcom/tencent/gcloud/msdk/tools/NDKHelper$1;->val$callbackPtr:J

    iget-wide v3, p0, Lcom/tencent/gcloud/msdk/tools/NDKHelper$1;->val$argsPtr:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/gcloud/msdk/tools/NDKHelper;->runOnUiThreadHandler(JJ)V

    return-void
.end method
