.class Lcom/beetalk/sdk/EmailAuthActivity$1;
.super Landroid/webkit/WebViewClient;
.source "EmailAuthActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/EmailAuthActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/beetalk/sdk/EmailAuthActivity;


# direct methods
.method constructor <init>(Lcom/beetalk/sdk/EmailAuthActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lcom/beetalk/sdk/EmailAuthActivity$1;->this$0:Lcom/beetalk/sdk/EmailAuthActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$shouldOverrideUrlLoading$0$com-beetalk-sdk-EmailAuthActivity$1(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/beetalk/sdk/EmailAuthActivity$1;->this$0:Lcom/beetalk/sdk/EmailAuthActivity;

    invoke-static {v0, p1}, Lcom/beetalk/sdk/EmailAuthActivity;->-$$Nest$monAuthSuccess(Lcom/beetalk/sdk/EmailAuthActivity;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method synthetic lambda$shouldOverrideUrlLoading$1$com-beetalk-sdk-EmailAuthActivity$1()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/beetalk/sdk/EmailAuthActivity$1;->this$0:Lcom/beetalk/sdk/EmailAuthActivity;

    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->UNKNOWN_ERROR:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/beetalk/sdk/EmailAuthActivity;->-$$Nest$monAuthFailed(Lcom/beetalk/sdk/EmailAuthActivity;I)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 70
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 71
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->ACCESS_TOKEN_EXCHANGE_FAILED:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/beetalk/sdk/AuthClient$Result;->createErrorResult(I)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object p1

    .line 72
    iget-object p2, p0, Lcom/beetalk/sdk/EmailAuthActivity$1;->this$0:Lcom/beetalk/sdk/EmailAuthActivity;

    invoke-static {p2, p1}, Lcom/beetalk/sdk/EmailAuthActivity;->-$$Nest$monResult(Lcom/beetalk/sdk/EmailAuthActivity;Lcom/beetalk/sdk/AuthClient$Result;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/beetalk/sdk/EmailAuthActivity$1;->this$0:Lcom/beetalk/sdk/EmailAuthActivity;

    invoke-static {v0}, Lcom/beetalk/sdk/EmailAuthActivity;->-$$Nest$fgetredirectUrl(Lcom/beetalk/sdk/EmailAuthActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 79
    const-string p1, "code="

    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    add-int/lit8 p1, p1, 0x5

    .line 81
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    .line 82
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    aput-object p1, v1, v0

    const-string/jumbo p2, "web code %s %s"

    invoke-static {p2, v1}, Lcom/beetalk/sdk/helper/BBLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    new-instance p2, Lcom/beetalk/sdk/EmailAuthActivity$1$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1}, Lcom/beetalk/sdk/EmailAuthActivity$1$$ExternalSyntheticLambda0;-><init>(Lcom/beetalk/sdk/EmailAuthActivity$1;Ljava/lang/String;)V

    invoke-static {p2}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;

    goto :goto_0

    .line 88
    :cond_0
    const-string p1, "error="

    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v1, :cond_1

    .line 91
    new-instance p1, Lcom/beetalk/sdk/EmailAuthActivity$1$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/beetalk/sdk/EmailAuthActivity$1$$ExternalSyntheticLambda1;-><init>(Lcom/beetalk/sdk/EmailAuthActivity$1;)V

    invoke-static {p1}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;

    goto :goto_0

    :cond_1
    add-int/lit8 p1, p1, 0x6

    .line 96
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 97
    const-string p2, "access_denied"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 98
    iget-object p1, p0, Lcom/beetalk/sdk/EmailAuthActivity$1;->this$0:Lcom/beetalk/sdk/EmailAuthActivity;

    invoke-static {p1}, Lcom/beetalk/sdk/EmailAuthActivity;->-$$Nest$monAuthCancelled(Lcom/beetalk/sdk/EmailAuthActivity;)V

    :cond_2
    :goto_0
    return v0

    .line 104
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
