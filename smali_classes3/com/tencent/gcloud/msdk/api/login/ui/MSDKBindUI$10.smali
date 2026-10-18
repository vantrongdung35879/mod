.class Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI$10;
.super Landroid/os/CountDownTimer;
.source "MSDKBindUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->checkHandleInBindUI(Lcom/tencent/gcloud/msdk/api/login/MSDKLoginRet;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;


# direct methods
.method constructor <init>(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "millisInFuture",
            "countDownInterval"
        }
    .end annotation

    .line 437
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI$10;->this$0:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .line 446
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI$10;->this$0:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->access$1300(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;)V

    return-void
.end method

.method public onTick(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation

    return-void
.end method
