.class Lcom/centauri/oversea/business/payhub/garena/CTIPay$1;
.super Ljava/lang/Object;
.source "CTIPay.java"

# interfaces
.implements Lcom/garena/pay/android/GGPayResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/centauri/oversea/business/payhub/garena/CTIPay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/centauri/oversea/business/payhub/garena/CTIPay;


# direct methods
.method constructor <init>(Lcom/centauri/oversea/business/payhub/garena/CTIPay;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/centauri/oversea/business/payhub/garena/CTIPay$1;->this$0:Lcom/centauri/oversea/business/payhub/garena/CTIPay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPaymentProcessed(Lcom/garena/pay/android/data/TransactionStatus;Ljava/lang/Exception;Lcom/garena/pay/android/data/TransactionInfo;)V
    .locals 3

    .line 48
    invoke-virtual {p1}, Lcom/garena/pay/android/data/TransactionStatus;->getValue()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object v0, Lcom/garena/pay/android/data/TransactionStatus;->CLOSED_WITH_ERROR:Lcom/garena/pay/android/data/TransactionStatus;

    invoke-virtual {v0}, Lcom/garena/pay/android/data/TransactionStatus;->getValue()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, ""

    if-lt p1, v0, :cond_0

    .line 49
    invoke-static {}, Lcom/centauri/oversea/business/payhub/garena/CTIPay;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "ErrorCode: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/garena/pay/android/data/TransactionInfo;->getErrorCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-static {}, Lcom/centauri/oversea/business/payhub/garena/CTIPay;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "ErrorMessage: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object p1, p0, Lcom/centauri/oversea/business/payhub/garena/CTIPay$1;->this$0:Lcom/centauri/oversea/business/payhub/garena/CTIPay;

    const/16 p2, 0xbd7

    invoke-virtual {p3}, Lcom/garena/pay/android/data/TransactionInfo;->getErrorCode()I

    move-result p3

    invoke-static {p1, p2, p3, v1}, Lcom/centauri/oversea/business/payhub/garena/CTIPay;->access$100(Lcom/centauri/oversea/business/payhub/garena/CTIPay;IILjava/lang/Object;)V

    goto :goto_0

    .line 53
    :cond_0
    iget-object p1, p0, Lcom/centauri/oversea/business/payhub/garena/CTIPay$1;->this$0:Lcom/centauri/oversea/business/payhub/garena/CTIPay;

    const/16 p2, 0xbd6

    const/4 p3, 0x0

    invoke-static {p1, p2, p3, v1}, Lcom/centauri/oversea/business/payhub/garena/CTIPay;->access$100(Lcom/centauri/oversea/business/payhub/garena/CTIPay;IILjava/lang/Object;)V

    :goto_0
    return-void
.end method
