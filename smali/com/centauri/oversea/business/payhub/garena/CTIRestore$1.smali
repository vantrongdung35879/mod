.class Lcom/centauri/oversea/business/payhub/garena/CTIRestore$1;
.super Ljava/lang/Object;
.source "CTIRestore.java"

# interfaces
.implements Lcom/garena/pay/android/GoogleIapInventoryScanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/oversea/business/payhub/garena/CTIRestore;->postProvide(Ljava/util/List;Lcom/centauri/oversea/newapi/response/ICTICallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/centauri/oversea/business/payhub/garena/CTIRestore;

.field final synthetic val$callback:Lcom/centauri/oversea/newapi/response/ICTICallback;


# direct methods
.method constructor <init>(Lcom/centauri/oversea/business/payhub/garena/CTIRestore;Lcom/centauri/oversea/newapi/response/ICTICallback;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/centauri/oversea/business/payhub/garena/CTIRestore$1;->this$0:Lcom/centauri/oversea/business/payhub/garena/CTIRestore;

    iput-object p2, p0, Lcom/centauri/oversea/business/payhub/garena/CTIRestore$1;->val$callback:Lcom/centauri/oversea/newapi/response/ICTICallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/garena/pay/android/GoogleIapInventoryScanCallback$Result;",
            ">;)V"
        }
    .end annotation

    .line 91
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, "GrnCtiRestore"

    if-nez v0, :cond_2

    .line 92
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 94
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/garena/pay/android/GoogleIapInventoryScanCallback$Result;

    .line 95
    iget-boolean v3, v2, Lcom/garena/pay/android/GoogleIapInventoryScanCallback$Result;->success:Z

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/garena/pay/android/GoogleIapInventoryScanCallback$Result;->item:Lcom/garena/pay/android/data/GoogleIapItemInfo;

    invoke-virtual {v3}, Lcom/garena/pay/android/data/GoogleIapItemInfo;->isPromotion()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 96
    iget-object v3, v2, Lcom/garena/pay/android/GoogleIapInventoryScanCallback$Result;->item:Lcom/garena/pay/android/data/GoogleIapItemInfo;

    invoke-virtual {v3}, Lcom/garena/pay/android/data/GoogleIapItemInfo;->isPromotion()Z

    .line 97
    iget-object v3, v2, Lcom/garena/pay/android/GoogleIapInventoryScanCallback$Result;->item:Lcom/garena/pay/android/data/GoogleIapItemInfo;

    invoke-virtual {v3}, Lcom/garena/pay/android/data/GoogleIapItemInfo;->getItemName()Ljava/lang/String;

    .line 99
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 100
    const-string/jumbo v4, "sku"

    iget-object v5, v2, Lcom/garena/pay/android/GoogleIapInventoryScanCallback$Result;->item:Lcom/garena/pay/android/data/GoogleIapItemInfo;

    invoke-virtual {v5}, Lcom/garena/pay/android/data/GoogleIapItemInfo;->getItemSku()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    const-string v4, "name"

    iget-object v5, v2, Lcom/garena/pay/android/GoogleIapInventoryScanCallback$Result;->item:Lcom/garena/pay/android/data/GoogleIapItemInfo;

    invoke-virtual {v5}, Lcom/garena/pay/android/data/GoogleIapItemInfo;->getItemName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    const-string v4, "amount"

    iget-object v5, v2, Lcom/garena/pay/android/GoogleIapInventoryScanCallback$Result;->item:Lcom/garena/pay/android/data/GoogleIapItemInfo;

    invoke-virtual {v5}, Lcom/garena/pay/android/data/GoogleIapItemInfo;->getAmount()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 103
    const-string v4, "icon"

    iget-object v2, v2, Lcom/garena/pay/android/GoogleIapInventoryScanCallback$Result;->item:Lcom/garena/pay/android/data/GoogleIapItemInfo;

    invoke-virtual {v2}, Lcom/garena/pay/android/data/GoogleIapItemInfo;->getItemIcon()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 106
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 109
    :cond_0
    const-string p1, "scanGoogleInAppPurchaseInventory error "

    invoke-static {v1, p1}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object p1, p0, Lcom/centauri/oversea/business/payhub/garena/CTIRestore$1;->val$callback:Lcom/centauri/oversea/newapi/response/ICTICallback;

    const/4 v0, -0x1

    iget-object v1, v2, Lcom/garena/pay/android/GoogleIapInventoryScanCallback$Result;->error:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/centauri/oversea/newapi/response/ICTICallback;->callback(ILjava/lang/String;)V

    return-void

    .line 116
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "scanGoogleInAppPurchaseInventory = "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object p1, p0, Lcom/centauri/oversea/business/payhub/garena/CTIRestore$1;->val$callback:Lcom/centauri/oversea/newapi/response/ICTICallback;

    const/4 v1, 0x0

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/centauri/oversea/newapi/response/ICTICallback;->callback(ILjava/lang/String;)V

    goto :goto_1

    .line 120
    :cond_2
    const-string p1, "No GoogleInAppPurchaseInventory"

    invoke-static {v1, p1}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/garena/CTIRestore$1;->val$callback:Lcom/centauri/oversea/newapi/response/ICTICallback;

    const/4 v1, 0x6

    invoke-interface {v0, v1, p1}, Lcom/centauri/oversea/newapi/response/ICTICallback;->callback(ILjava/lang/String;)V

    :goto_1
    return-void
.end method
