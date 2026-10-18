.class Lcom/tencent/gcloud/msdk/core/lifecycle/PluginMSDKLifecycle$AccountObserver;
.super Ljava/lang/Object;
.source "PluginMSDKLifecycle.java"

# interfaces
.implements Lcom/tencent/gcloud/msdk/api/account/MSDKAccountObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/gcloud/msdk/core/lifecycle/PluginMSDKLifecycle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/gcloud/msdk/core/lifecycle/PluginMSDKLifecycle;


# direct methods
.method private constructor <init>(Lcom/tencent/gcloud/msdk/core/lifecycle/PluginMSDKLifecycle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 127
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/core/lifecycle/PluginMSDKLifecycle$AccountObserver;->this$0:Lcom/tencent/gcloud/msdk/core/lifecycle/PluginMSDKLifecycle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccountNotify(Lcom/tencent/gcloud/msdk/api/account/MSDKAccountRet;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "baseRet"
        }
    .end annotation

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AccountObserver onBaseRetNotify : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PluginMSDK"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
