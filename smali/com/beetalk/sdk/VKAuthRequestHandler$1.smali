.class Lcom/beetalk/sdk/VKAuthRequestHandler$1;
.super Ljava/lang/Object;
.source "VKAuthRequestHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/VKAuthRequestHandler;->onLoggedIn(Lcom/vk/api/sdk/auth/VKAccessToken;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/beetalk/sdk/VKAuthRequestHandler;


# direct methods
.method constructor <init>(Lcom/beetalk/sdk/VKAuthRequestHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lcom/beetalk/sdk/VKAuthRequestHandler$1;->this$0:Lcom/beetalk/sdk/VKAuthRequestHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 74
    iget-object p1, p0, Lcom/beetalk/sdk/VKAuthRequestHandler$1;->this$0:Lcom/beetalk/sdk/VKAuthRequestHandler;

    iget-object p1, p1, Lcom/beetalk/sdk/VKAuthRequestHandler;->client:Lcom/beetalk/sdk/AuthClient;

    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->USER_CANCELLED:Lcom/garena/pay/android/GGErrorCode;

    .line 76
    invoke-virtual {v0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 75
    invoke-static {v0}, Lcom/beetalk/sdk/AuthClient$Result;->createErrorResult(I)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object v0

    .line 74
    invoke-virtual {p1, v0}, Lcom/beetalk/sdk/AuthClient;->notifyListener(Lcom/beetalk/sdk/AuthClient$Result;)V

    return-void
.end method
