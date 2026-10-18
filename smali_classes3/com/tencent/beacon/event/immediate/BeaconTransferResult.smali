.class public Lcom/tencent/beacon/event/immediate/BeaconTransferResult;
.super Ljava/lang/Object;
.source "BeaconTransferResult.java"


# instance fields
.field private a:I

.field private b:I

.field private c:[B

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBizBuffer()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/beacon/event/immediate/BeaconTransferResult;->c:[B

    return-object v0
.end method

.method public getBizCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/beacon/event/immediate/BeaconTransferResult;->b:I

    return v0
.end method

.method public getBizMsg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/beacon/event/immediate/BeaconTransferResult;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/beacon/event/immediate/BeaconTransferResult;->a:I

    return v0
.end method

.method public setBizBuffer([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/beacon/event/immediate/BeaconTransferResult;->c:[B

    return-void
.end method

.method public setBizCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tencent/beacon/event/immediate/BeaconTransferResult;->b:I

    return-void
.end method

.method public setBizMsg(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/beacon/event/immediate/BeaconTransferResult;->d:Ljava/lang/String;

    return-void
.end method

.method public setCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tencent/beacon/event/immediate/BeaconTransferResult;->a:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BeaconTransferResult{returnCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    iget v1, p0, Lcom/tencent/beacon/event/immediate/BeaconTransferResult;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bizReturnCode="

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/beacon/event/immediate/BeaconTransferResult;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bizMsg=\'"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/beacon/event/immediate/BeaconTransferResult;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
