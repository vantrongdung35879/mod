.class public Lcom/centauri/oversea/newnetwork/model/CTIIntroPriceAns;
.super Lcom/centauri/http/centaurihttp/CTIHttpAns;
.source "CTIIntroPriceAns.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "APIntroPriceAns"


# instance fields
.field private jIntroInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/centauri/http/centaurihttp/ICTIHttpCallback;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/centauri/http/centaurihttp/CTIHttpAns;-><init>(Lcom/centauri/http/centaurihttp/ICTIHttpCallback;)V

    .line 10
    const-string p1, ""

    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/model/CTIIntroPriceAns;->jIntroInfo:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getJsIntroInfo()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIIntroPriceAns;->jIntroInfo:Ljava/lang/String;

    return-object v0
.end method

.method protected handleFailure(Lcom/centauri/http/core/Response;)Z
    .locals 1

    .line 35
    const-string p1, "APIntroPriceAns"

    const-string v0, "handleFailure(..): request failed."

    invoke-static {p1, v0}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected handleStop(Lcom/centauri/http/core/Response;)Z
    .locals 1

    .line 29
    const-string p1, "APIntroPriceAns"

    const-string v0, "handleFailure(..): request stop."

    invoke-static {p1, v0}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected handleSuccess(Lcom/centauri/http/core/Response;)Z
    .locals 2

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "response data: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/centauri/http/core/Response;->responseBody:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "APIntroPriceAns"

    invoke-static {v1, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object p1, p1, Lcom/centauri/http/core/Response;->responseBody:Ljava/lang/String;

    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/model/CTIIntroPriceAns;->jIntroInfo:Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method
