.class public Lcom/centauri/oversea/data/CTIPayReceipt;
.super Ljava/lang/Object;
.source "CTIPayReceipt.java"


# instance fields
.field public first_currency_type:Ljava/lang/String;

.field public orderId:Ljava/lang/String;

.field public payChannel:Ljava/lang/String;

.field public productId:Ljava/lang/String;

.field public receipt:Ljava/lang/String;

.field public receipt_sig:Ljava/lang/String;

.field public second_amt:Ljava/lang/String;

.field public second_currency_type:Ljava/lang/String;

.field public sku:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/centauri/oversea/data/CTIPayReceipt;->sku:Ljava/util/List;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/centauri/oversea/data/CTIPayReceipt;->receipt:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/centauri/oversea/data/CTIPayReceipt;->receipt_sig:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/centauri/oversea/data/CTIPayReceipt;->orderId:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/centauri/oversea/data/CTIPayReceipt;->productId:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/centauri/oversea/data/CTIPayReceipt;->first_currency_type:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/centauri/oversea/data/CTIPayReceipt;->second_currency_type:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/centauri/oversea/data/CTIPayReceipt;->second_amt:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/centauri/oversea/data/CTIPayReceipt;->receipt:Ljava/lang/String;

    return-object v0
.end method
