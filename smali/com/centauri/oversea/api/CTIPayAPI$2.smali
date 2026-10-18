.class Lcom/centauri/oversea/api/CTIPayAPI$2;
.super Ljava/lang/Object;
.source "CTIPayAPI.java"

# interfaces
.implements Lcom/centauri/oversea/newapi/response/InfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/oversea/api/CTIPayAPI;->getProductInfo(Ljava/lang/String;Ljava/util/HashMap;Lcom/centauri/oversea/api/request/ICTIProductInfoCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/centauri/oversea/api/CTIPayAPI;

.field final synthetic val$callback:Lcom/centauri/oversea/api/request/ICTIProductInfoCallback;


# direct methods
.method constructor <init>(Lcom/centauri/oversea/api/CTIPayAPI;Lcom/centauri/oversea/api/request/ICTIProductInfoCallback;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/centauri/oversea/api/CTIPayAPI$2;->this$0:Lcom/centauri/oversea/api/CTIPayAPI;

    iput-object p2, p0, Lcom/centauri/oversea/api/CTIPayAPI$2;->val$callback:Lcom/centauri/oversea/api/request/ICTIProductInfoCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;)V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/centauri/oversea/api/CTIPayAPI$2;->val$callback:Lcom/centauri/oversea/api/request/ICTIProductInfoCallback;

    invoke-interface {v0, p1}, Lcom/centauri/oversea/api/request/ICTIProductInfoCallback;->onProductInfoResp(Ljava/lang/String;)V

    return-void
.end method
