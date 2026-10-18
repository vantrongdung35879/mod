.class Lcom/itop/gcloud/msdk/popup/policy/MSDKPolicyLayout$2;
.super Ljava/lang/Object;
.source "MSDKPolicyLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itop/gcloud/msdk/popup/policy/MSDKPolicyLayout;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itop/gcloud/msdk/popup/policy/MSDKPolicyLayout;


# direct methods
.method constructor <init>(Lcom/itop/gcloud/msdk/popup/policy/MSDKPolicyLayout;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/itop/gcloud/msdk/popup/policy/MSDKPolicyLayout$2;->this$0:Lcom/itop/gcloud/msdk/popup/policy/MSDKPolicyLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 46
    iget-object p1, p0, Lcom/itop/gcloud/msdk/popup/policy/MSDKPolicyLayout$2;->this$0:Lcom/itop/gcloud/msdk/popup/policy/MSDKPolicyLayout;

    invoke-static {p1}, Lcom/itop/gcloud/msdk/popup/policy/MSDKPolicyLayout;->access$000(Lcom/itop/gcloud/msdk/popup/policy/MSDKPolicyLayout;)Lcom/itop/gcloud/msdk/popup/policy/OnPolicyCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 47
    iget-object p1, p0, Lcom/itop/gcloud/msdk/popup/policy/MSDKPolicyLayout$2;->this$0:Lcom/itop/gcloud/msdk/popup/policy/MSDKPolicyLayout;

    invoke-static {p1}, Lcom/itop/gcloud/msdk/popup/policy/MSDKPolicyLayout;->access$000(Lcom/itop/gcloud/msdk/popup/policy/MSDKPolicyLayout;)Lcom/itop/gcloud/msdk/popup/policy/OnPolicyCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/itop/gcloud/msdk/popup/policy/OnPolicyCallback;->onCancel()V

    :cond_0
    return-void
.end method
