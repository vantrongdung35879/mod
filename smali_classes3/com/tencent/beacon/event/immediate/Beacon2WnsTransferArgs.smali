.class public Lcom/tencent/beacon/event/immediate/Beacon2WnsTransferArgs;
.super Lcom/tencent/beacon/event/immediate/BeaconTransferArgs;
.source "Beacon2WnsTransferArgs.java"


# instance fields
.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/beacon/event/immediate/BeaconTransferArgs;-><init>([B)V

    const-string p1, "bls.longconnection"

    .line 2
    iput-object p1, p0, Lcom/tencent/beacon/event/immediate/Beacon2WnsTransferArgs;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCommand()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/beacon/event/immediate/Beacon2WnsTransferArgs;->d:Ljava/lang/String;

    return-object v0
.end method

.method public setCommand(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/beacon/event/immediate/Beacon2WnsTransferArgs;->d:Ljava/lang/String;

    return-void
.end method
