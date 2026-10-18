.class Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayout$1;
.super Ljava/lang/Object;
.source "MSDKPermissionLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayout;->initPermissionLayout(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayout;


# direct methods
.method constructor <init>(Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayout$1;->this$0:Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayout;

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

    .line 59
    const-string p1, "PermissionLayout - Confirm Button Click"

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->d(Ljava/lang/String;)V

    .line 60
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayout$1;->this$0:Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayout;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayout;->access$000(Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayout;)Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayout$OnClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 61
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayout$1;->this$0:Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayout;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayout;->access$000(Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayout;)Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayout$OnClickListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayout$OnClickListener;->onConfirmBtnClick()V

    :cond_0
    return-void
.end method
