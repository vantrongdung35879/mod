.class public Lcom/centauri/oversea/data/CTIProductItem;
.super Ljava/lang/Object;
.source "CTIProductItem.java"


# instance fields
.field public name:Ljava/lang/String;

.field public num:Ljava/lang/String;

.field public price:Ljava/lang/String;

.field public productId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/centauri/oversea/data/CTIProductItem;->name:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/centauri/oversea/data/CTIProductItem;->productId:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/centauri/oversea/data/CTIProductItem;->price:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/centauri/oversea/data/CTIProductItem;->num:Ljava/lang/String;

    return-void
.end method
