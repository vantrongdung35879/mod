.class Lcom/tencent/gcloud/msdk/api/tools/MSDKTools$2;
.super Lcom/tencent/gcloud/msdk/core/lifecycle/EmptyLifeCycle;
.source "MSDKTools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/gcloud/msdk/api/tools/MSDKTools;->requestDirectoryPermission(Ljava/lang/String;Lcom/tencent/gcloud/msdk/api/tools/MSDKToolsObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$lifeCycleManager:Lcom/tencent/gcloud/msdk/core/lifecycle/LifeCycleManager;

.field final synthetic val$observer:Lcom/tencent/gcloud/msdk/api/tools/MSDKToolsObserver;


# direct methods
.method constructor <init>(Lcom/tencent/gcloud/msdk/core/lifecycle/LifeCycleManager;Lcom/tencent/gcloud/msdk/api/tools/MSDKToolsObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$lifeCycleManager",
            "val$observer"
        }
    .end annotation

    .line 172
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/api/tools/MSDKTools$2;->val$lifeCycleManager:Lcom/tencent/gcloud/msdk/core/lifecycle/LifeCycleManager;

    iput-object p2, p0, Lcom/tencent/gcloud/msdk/api/tools/MSDKTools$2;->val$observer:Lcom/tencent/gcloud/msdk/api/tools/MSDKToolsObserver;

    invoke-direct {p0}, Lcom/tencent/gcloud/msdk/core/lifecycle/EmptyLifeCycle;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "resultCode",
            "data"
        }
    .end annotation

    .line 175
    invoke-super {p0, p1, p2, p3}, Lcom/tencent/gcloud/msdk/core/lifecycle/EmptyLifeCycle;->onActivityResult(IILandroid/content/Intent;)V

    .line 176
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/api/tools/MSDKTools$2;->val$lifeCycleManager:Lcom/tencent/gcloud/msdk/core/lifecycle/LifeCycleManager;

    invoke-virtual {v0, p0}, Lcom/tencent/gcloud/msdk/core/lifecycle/LifeCycleManager;->removeActivityLifeMonitor(Lcom/tencent/gcloud/msdk/core/interfaces/ILifeCycle;)V

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "request finish:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " resultCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    const/16 v0, 0x7e5

    if-ne p1, v0, :cond_1

    .line 179
    new-instance p1, Lcom/tencent/gcloud/msdk/api/tools/MSDKToolsRet;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/tencent/gcloud/msdk/api/tools/MSDKToolsRet;-><init>(I)V

    const/4 v0, -0x1

    const/4 v1, 0x2

    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    .line 180
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 181
    invoke-virtual {p3}, Landroid/content/Intent;->getFlags()I

    move-result p2

    and-int/lit8 p2, p2, 0x1

    or-int/2addr p2, v1

    .line 184
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p3

    .line 186
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 187
    invoke-virtual {v0, p3, p2}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V

    .line 190
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/tencent/gcloud/msdk/api/tools/MSDKToolsRet;->link:Ljava/lang/String;

    goto :goto_0

    .line 192
    :cond_0
    iput v1, p1, Lcom/tencent/gcloud/msdk/api/tools/MSDKToolsRet;->retCode:I

    .line 193
    iget p2, p1, Lcom/tencent/gcloud/msdk/api/tools/MSDKToolsRet;->retCode:I

    invoke-static {p2}, Lcom/tencent/gcloud/msdk/core/MSDKErrorCode;->get(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/tencent/gcloud/msdk/api/tools/MSDKToolsRet;->retMsg:Ljava/lang/String;

    .line 195
    :goto_0
    iget-object p2, p0, Lcom/tencent/gcloud/msdk/api/tools/MSDKTools$2;->val$observer:Lcom/tencent/gcloud/msdk/api/tools/MSDKToolsObserver;

    invoke-interface {p2, p1}, Lcom/tencent/gcloud/msdk/api/tools/MSDKToolsObserver;->onToolsRetNotify(Lcom/tencent/gcloud/msdk/api/tools/MSDKToolsRet;)V

    :cond_1
    return-void
.end method
