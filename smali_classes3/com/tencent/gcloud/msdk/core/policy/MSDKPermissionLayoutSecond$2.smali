.class Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond$2;
.super Ljava/lang/Object;
.source "MSDKPermissionLayoutSecond.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond;->initPermissionLayout(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond;


# direct methods
.method constructor <init>(Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 76
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond$2;->this$0:Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 79
    const-string p1, "PermissionLayoutSecond - Setting Button Click"

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->d(Ljava/lang/String;)V

    .line 80
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond$2;->this$0:Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond;->access$000(Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond;)Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond$OnClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 81
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond$2;->this$0:Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond;->access$000(Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond;)Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond$OnClickListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond$OnClickListener;->onSettingBtnClick()V

    :cond_0
    return-void
.end method
