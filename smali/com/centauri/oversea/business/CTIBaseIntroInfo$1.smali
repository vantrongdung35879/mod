.class Lcom/centauri/oversea/business/CTIBaseIntroInfo$1;
.super Ljava/lang/Object;
.source "CTIBaseIntroInfo.java"

# interfaces
.implements Lcom/centauri/http/centaurihttp/ICTIHttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/oversea/business/CTIBaseIntroInfo;->queryServerInfo(Lcom/centauri/oversea/newapi/response/ICTICallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/centauri/oversea/business/CTIBaseIntroInfo;

.field final synthetic val$callback:Lcom/centauri/oversea/newapi/response/ICTICallback;


# direct methods
.method constructor <init>(Lcom/centauri/oversea/business/CTIBaseIntroInfo;Lcom/centauri/oversea/newapi/response/ICTICallback;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/centauri/oversea/business/CTIBaseIntroInfo$1;->this$0:Lcom/centauri/oversea/business/CTIBaseIntroInfo;

    iput-object p2, p0, Lcom/centauri/oversea/business/CTIBaseIntroInfo$1;->val$callback:Lcom/centauri/oversea/newapi/response/ICTICallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/centauri/http/centaurihttp/CTIHttpAns;)V
    .locals 2

    .line 44
    iget-object p1, p0, Lcom/centauri/oversea/business/CTIBaseIntroInfo$1;->val$callback:Lcom/centauri/oversea/newapi/response/ICTICallback;

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    .line 45
    const-string v1, ""

    invoke-interface {p1, v0, v1}, Lcom/centauri/oversea/newapi/response/ICTICallback;->callback(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onStop(Lcom/centauri/http/centaurihttp/CTIHttpAns;)V
    .locals 2

    .line 51
    iget-object p1, p0, Lcom/centauri/oversea/business/CTIBaseIntroInfo$1;->val$callback:Lcom/centauri/oversea/newapi/response/ICTICallback;

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    .line 52
    const-string v1, ""

    invoke-interface {p1, v0, v1}, Lcom/centauri/oversea/newapi/response/ICTICallback;->callback(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/centauri/http/centaurihttp/CTIHttpAns;)V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/centauri/oversea/business/CTIBaseIntroInfo$1;->val$callback:Lcom/centauri/oversea/newapi/response/ICTICallback;

    if-eqz v0, :cond_0

    .line 38
    check-cast p1, Lcom/centauri/oversea/newnetwork/model/CTIIntroPriceAns;

    invoke-virtual {p1}, Lcom/centauri/oversea/newnetwork/model/CTIIntroPriceAns;->getJsIntroInfo()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/centauri/oversea/newapi/response/ICTICallback;->callback(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
