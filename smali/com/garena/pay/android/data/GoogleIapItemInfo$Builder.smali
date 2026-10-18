.class public Lcom/garena/pay/android/data/GoogleIapItemInfo$Builder;
.super Ljava/lang/Object;
.source "GoogleIapItemInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/garena/pay/android/data/GoogleIapItemInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private appPointAmount:I

.field private isPromotion:Z

.field private itemIconUrl:Ljava/lang/String;

.field private itemName:Ljava/lang/String;

.field private itemSku:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetappPointAmount(Lcom/garena/pay/android/data/GoogleIapItemInfo$Builder;)I
    .locals 0

    iget p0, p0, Lcom/garena/pay/android/data/GoogleIapItemInfo$Builder;->appPointAmount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisPromotion(Lcom/garena/pay/android/data/GoogleIapItemInfo$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/garena/pay/android/data/GoogleIapItemInfo$Builder;->isPromotion:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetitemIconUrl(Lcom/garena/pay/android/data/GoogleIapItemInfo$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/garena/pay/android/data/GoogleIapItemInfo$Builder;->itemIconUrl:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetitemName(Lcom/garena/pay/android/data/GoogleIapItemInfo$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/garena/pay/android/data/GoogleIapItemInfo$Builder;->itemName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetitemSku(Lcom/garena/pay/android/data/GoogleIapItemInfo$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/garena/pay/android/data/GoogleIapItemInfo$Builder;->itemSku:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public appPointAmount(I)Lcom/garena/pay/android/data/GoogleIapItemInfo$Builder;
    .locals 0

    .line 73
    iput p1, p0, Lcom/garena/pay/android/data/GoogleIapItemInfo$Builder;->appPointAmount:I

    return-object p0
.end method

.method public build()Lcom/garena/pay/android/data/GoogleIapItemInfo;
    .locals 2

    .line 83
    new-instance v0, Lcom/garena/pay/android/data/GoogleIapItemInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/garena/pay/android/data/GoogleIapItemInfo;-><init>(Lcom/garena/pay/android/data/GoogleIapItemInfo$Builder;Lcom/garena/pay/android/data/GoogleIapItemInfo-IA;)V

    return-object v0
.end method

.method public isPromotion(Z)Lcom/garena/pay/android/data/GoogleIapItemInfo$Builder;
    .locals 0

    .line 78
    iput-boolean p1, p0, Lcom/garena/pay/android/data/GoogleIapItemInfo$Builder;->isPromotion:Z

    return-object p0
.end method

.method public itemIconUrl(Ljava/lang/String;)Lcom/garena/pay/android/data/GoogleIapItemInfo$Builder;
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/garena/pay/android/data/GoogleIapItemInfo$Builder;->itemIconUrl:Ljava/lang/String;

    return-object p0
.end method

.method public itemName(Ljava/lang/String;)Lcom/garena/pay/android/data/GoogleIapItemInfo$Builder;
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/garena/pay/android/data/GoogleIapItemInfo$Builder;->itemName:Ljava/lang/String;

    return-object p0
.end method

.method public itemSku(Ljava/lang/String;)Lcom/garena/pay/android/data/GoogleIapItemInfo$Builder;
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/garena/pay/android/data/GoogleIapItemInfo$Builder;->itemSku:Ljava/lang/String;

    return-object p0
.end method
