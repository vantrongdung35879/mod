.class Lcom/beetalk/sdk/LineAuthRequestHandler$1;
.super Ljava/lang/Object;
.source "LineAuthRequestHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/LineAuthRequestHandler;->onLoggedIn(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/beetalk/sdk/LineAuthRequestHandler;


# direct methods
.method constructor <init>(Lcom/beetalk/sdk/LineAuthRequestHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 105
    iput-object p1, p0, Lcom/beetalk/sdk/LineAuthRequestHandler$1;->this$0:Lcom/beetalk/sdk/LineAuthRequestHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 108
    iget-object p1, p0, Lcom/beetalk/sdk/LineAuthRequestHandler$1;->this$0:Lcom/beetalk/sdk/LineAuthRequestHandler;

    iget-object p1, p1, Lcom/beetalk/sdk/LineAuthRequestHandler;->client:Lcom/beetalk/sdk/AuthClient;

    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->USER_CANCELLED:Lcom/garena/pay/android/GGErrorCode;

    .line 110
    invoke-virtual {v0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 109
    invoke-static {v0}, Lcom/beetalk/sdk/AuthClient$Result;->createErrorResult(I)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object v0

    .line 108
    invoke-virtual {p1, v0}, Lcom/beetalk/sdk/AuthClient;->notifyListener(Lcom/beetalk/sdk/AuthClient$Result;)V

    return-void
.end method
