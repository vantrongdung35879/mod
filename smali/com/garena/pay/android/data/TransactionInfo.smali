.class public Lcom/garena/pay/android/data/TransactionInfo;
.super Ljava/lang/Object;
.source "TransactionInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x56f6923cbde7fe57L


# instance fields
.field private appPoints:I

.field private final errorCode:I

.field private icon:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private paymentRequest:Lcom/garena/pay/android/data/GGPayment;

.field private quantity:I

.field private rebateId:J

.field private remainingDays:I

.field private resultCode:Lcom/beetalk/sdk/data/Result$ResultCode;

.field private transactionError:Ljava/lang/String;

.field private transactionId:Ljava/lang/String;

.field private transactionStatus:Lcom/garena/pay/android/data/TransactionStatus;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/garena/pay/android/data/TransactionStatus;ILcom/beetalk/sdk/data/Result$ResultCode;Lcom/garena/pay/android/data/GGPayment;)V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 44
    iput-wide v0, p0, Lcom/garena/pay/android/data/TransactionInfo;->rebateId:J

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/garena/pay/android/data/TransactionInfo;->remainingDays:I

    .line 46
    iput v0, p0, Lcom/garena/pay/android/data/TransactionInfo;->quantity:I

    .line 49
    iput-object p1, p0, Lcom/garena/pay/android/data/TransactionInfo;->transactionError:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/garena/pay/android/data/TransactionInfo;->transactionStatus:Lcom/garena/pay/android/data/TransactionStatus;

    .line 51
    iput-object p4, p0, Lcom/garena/pay/android/data/TransactionInfo;->resultCode:Lcom/beetalk/sdk/data/Result$ResultCode;

    .line 52
    iput-object p5, p0, Lcom/garena/pay/android/data/TransactionInfo;->paymentRequest:Lcom/garena/pay/android/data/GGPayment;

    .line 53
    iput p3, p0, Lcom/garena/pay/android/data/TransactionInfo;->errorCode:I

    return-void
.end method


# virtual methods
.method public getAppPoints()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/garena/pay/android/data/TransactionInfo;->appPoints:I

    return v0
.end method

.method public getErrorCode()I
    .locals 1

    .line 136
    iget v0, p0, Lcom/garena/pay/android/data/TransactionInfo;->errorCode:I

    return v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/garena/pay/android/data/TransactionInfo;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/garena/pay/android/data/TransactionInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentRequest()Lcom/garena/pay/android/data/GGPayment;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/garena/pay/android/data/TransactionInfo;->paymentRequest:Lcom/garena/pay/android/data/GGPayment;

    return-object v0
.end method

.method public getQuantity()I
    .locals 1

    .line 162
    iget v0, p0, Lcom/garena/pay/android/data/TransactionInfo;->quantity:I

    return v0
.end method

.method public getRebateId()J
    .locals 2

    .line 143
    iget-wide v0, p0, Lcom/garena/pay/android/data/TransactionInfo;->rebateId:J

    return-wide v0
.end method

.method public getRemainingDays()I
    .locals 1

    .line 154
    iget v0, p0, Lcom/garena/pay/android/data/TransactionInfo;->remainingDays:I

    return v0
.end method

.method public getResultCode()Lcom/beetalk/sdk/data/Result$ResultCode;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/garena/pay/android/data/TransactionInfo;->resultCode:Lcom/beetalk/sdk/data/Result$ResultCode;

    return-object v0
.end method

.method public getTransactionError()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/garena/pay/android/data/TransactionInfo;->transactionError:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionId()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/garena/pay/android/data/TransactionInfo;->transactionId:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionStatus()Lcom/garena/pay/android/data/TransactionStatus;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/garena/pay/android/data/TransactionInfo;->transactionStatus:Lcom/garena/pay/android/data/TransactionStatus;

    return-object v0
.end method

.method public setAppPoints(I)V
    .locals 0

    .line 86
    iput p1, p0, Lcom/garena/pay/android/data/TransactionInfo;->appPoints:I

    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/garena/pay/android/data/TransactionInfo;->icon:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/garena/pay/android/data/TransactionInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public setPaymentRequest(Lcom/garena/pay/android/data/GGPayment;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/garena/pay/android/data/TransactionInfo;->paymentRequest:Lcom/garena/pay/android/data/GGPayment;

    return-void
.end method

.method public setQuantity(I)V
    .locals 0

    .line 166
    iput p1, p0, Lcom/garena/pay/android/data/TransactionInfo;->quantity:I

    return-void
.end method

.method public setRebateId(Ljava/lang/Long;)V
    .locals 2

    .line 147
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/garena/pay/android/data/TransactionInfo;->rebateId:J

    return-void
.end method

.method public setRemainingDays(I)V
    .locals 0

    .line 158
    iput p1, p0, Lcom/garena/pay/android/data/TransactionInfo;->remainingDays:I

    return-void
.end method

.method public setResultCode(Lcom/beetalk/sdk/data/Result$ResultCode;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/garena/pay/android/data/TransactionInfo;->resultCode:Lcom/beetalk/sdk/data/Result$ResultCode;

    return-void
.end method

.method public setTransactionError(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/garena/pay/android/data/TransactionInfo;->transactionError:Ljava/lang/String;

    return-void
.end method

.method public setTransactionId(Ljava/lang/String;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/garena/pay/android/data/TransactionInfo;->transactionId:Ljava/lang/String;

    return-void
.end method

.method public setTransactionStatus(Lcom/garena/pay/android/data/TransactionStatus;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/garena/pay/android/data/TransactionInfo;->transactionStatus:Lcom/garena/pay/android/data/TransactionStatus;

    return-void
.end method
