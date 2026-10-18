.class Lcom/itop/gcloud/msdk/popup/richtext/MSDKRichTextLayout$1;
.super Ljava/lang/Object;
.source "MSDKRichTextLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itop/gcloud/msdk/popup/richtext/MSDKRichTextLayout;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itop/gcloud/msdk/popup/richtext/MSDKRichTextLayout;


# direct methods
.method constructor <init>(Lcom/itop/gcloud/msdk/popup/richtext/MSDKRichTextLayout;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKRichTextLayout$1;->this$0:Lcom/itop/gcloud/msdk/popup/richtext/MSDKRichTextLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 43
    iget-object p1, p0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKRichTextLayout$1;->this$0:Lcom/itop/gcloud/msdk/popup/richtext/MSDKRichTextLayout;

    invoke-static {p1}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKRichTextLayout;->access$000(Lcom/itop/gcloud/msdk/popup/richtext/MSDKRichTextLayout;)Lcom/itop/gcloud/msdk/popup/richtext/OnRichTextCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 44
    iget-object p1, p0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKRichTextLayout$1;->this$0:Lcom/itop/gcloud/msdk/popup/richtext/MSDKRichTextLayout;

    invoke-static {p1}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKRichTextLayout;->access$000(Lcom/itop/gcloud/msdk/popup/richtext/MSDKRichTextLayout;)Lcom/itop/gcloud/msdk/popup/richtext/OnRichTextCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/itop/gcloud/msdk/popup/richtext/OnRichTextCallback;->onPositive()V

    :cond_0
    return-void
.end method
