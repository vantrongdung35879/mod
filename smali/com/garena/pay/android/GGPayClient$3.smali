.class Lcom/garena/pay/android/GGPayClient$3;
.super Ljava/lang/Object;
.source "GGPayClient.java"

# interfaces
.implements Lcom/garena/pay/android/view/GatewayView$GatewayViewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/garena/pay/android/GGPayClient;->showChannels()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/garena/pay/android/GGPayClient;


# direct methods
.method constructor <init>(Lcom/garena/pay/android/GGPayClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 212
    iput-object p1, p0, Lcom/garena/pay/android/GGPayClient$3;->this$0:Lcom/garena/pay/android/GGPayClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed()V
    .locals 2

    const/4 v0, 0x0

    .line 223
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "User Dismissed the Dialog Box. Therefore invoking failed to pay"

    invoke-static {v1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    iget-object v0, p0, Lcom/garena/pay/android/GGPayClient$3;->this$0:Lcom/garena/pay/android/GGPayClient;

    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->PAYMENT_USER_CANCELLED:Lcom/garena/pay/android/GGErrorCode;

    invoke-static {v0, v1}, Lcom/garena/pay/android/GGPayClient;->-$$Nest$mfailedToPay(Lcom/garena/pay/android/GGPayClient;Lcom/garena/pay/android/GGErrorCode;)V

    return-void
.end method

.method public onGatewayChosen(Lcom/garena/pay/android/GGPayRequestHandler;)V
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/garena/pay/android/GGPayClient$3;->this$0:Lcom/garena/pay/android/GGPayClient;

    sget-object v1, Lcom/garena/pay/android/GGPayClient$PaymentState;->CHOOSE_ITEM:Lcom/garena/pay/android/GGPayClient$PaymentState;

    invoke-static {v0, v1}, Lcom/garena/pay/android/GGPayClient;->-$$Nest$fputmPaymentState(Lcom/garena/pay/android/GGPayClient;Lcom/garena/pay/android/GGPayClient$PaymentState;)V

    .line 216
    iget-object v0, p0, Lcom/garena/pay/android/GGPayClient$3;->this$0:Lcom/garena/pay/android/GGPayClient;

    invoke-static {v0, p1}, Lcom/garena/pay/android/GGPayClient;->-$$Nest$fputcurrentHandler(Lcom/garena/pay/android/GGPayClient;Lcom/garena/pay/android/GGPayRequestHandler;)V

    .line 217
    iget-object p1, p0, Lcom/garena/pay/android/GGPayClient$3;->this$0:Lcom/garena/pay/android/GGPayClient;

    invoke-static {p1}, Lcom/garena/pay/android/GGPayClient;->-$$Nest$fgetpayRequest(Lcom/garena/pay/android/GGPayClient;)Lcom/garena/pay/android/GGPayRequest;

    move-result-object p1

    iget-object v0, p0, Lcom/garena/pay/android/GGPayClient$3;->this$0:Lcom/garena/pay/android/GGPayClient;

    invoke-static {v0}, Lcom/garena/pay/android/GGPayClient;->-$$Nest$fgetcurrentHandler(Lcom/garena/pay/android/GGPayClient;)Lcom/garena/pay/android/GGPayRequestHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/garena/pay/android/GGPayRequestHandler;->getBuyableItems()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/garena/pay/android/GGPayRequest;->setDenominations(Ljava/util/List;)V

    .line 218
    iget-object p1, p0, Lcom/garena/pay/android/GGPayClient$3;->this$0:Lcom/garena/pay/android/GGPayClient;

    invoke-static {p1}, Lcom/garena/pay/android/GGPayClient;->-$$Nest$mresumePayment(Lcom/garena/pay/android/GGPayClient;)V

    return-void
.end method
