.class public Lcom/centauri/http/core/Response;
.super Ljava/lang/Object;
.source "Response.java"


# instance fields
.field public exception:Ljava/lang/Exception;

.field public isStopped:Z

.field public needBreakOtherInterceptors:Z

.field private request:Lcom/centauri/http/core/Request;

.field public responseBody:Ljava/lang/String;

.field public resultCode:I

.field private tag:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lcom/centauri/http/core/Response;->resultCode:I

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/centauri/http/core/Response;->exception:Ljava/lang/Exception;

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/centauri/http/core/Response;->needBreakOtherInterceptors:Z

    .line 33
    iput-boolean v0, p0, Lcom/centauri/http/core/Response;->isStopped:Z

    return-void
.end method


# virtual methods
.method public final getTag()Ljava/lang/Object;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/centauri/http/core/Response;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method public final hasException()Z
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/centauri/http/core/Response;->exception:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final hasNotEmptyBody()Z
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/centauri/http/core/Response;->responseBody:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final isHttpsResponse()Z
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/centauri/http/core/Response;->request:Lcom/centauri/http/core/Request;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/centauri/http/core/Request;->isHttpsRequest()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isResultCodeOK()Z
    .locals 2

    .line 68
    iget v0, p0, Lcom/centauri/http/core/Response;->resultCode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isSuccess()Z
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/centauri/http/core/Response;->isResultCodeOK()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/centauri/http/core/Response;->responseBody:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/centauri/http/core/Response;->exception:Ljava/lang/Exception;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final request()Lcom/centauri/http/core/Request;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/centauri/http/core/Response;->request:Lcom/centauri/http/core/Request;

    return-object v0
.end method

.method public final resetNeedBreakOtherInterceptors()V
    .locals 1

    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Lcom/centauri/http/core/Response;->needBreakOtherInterceptors:Z

    return-void
.end method

.method public final setRequest(Lcom/centauri/http/core/Request;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/centauri/http/core/Response;->request:Lcom/centauri/http/core/Request;

    return-void
.end method

.method public final setTag(Ljava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 52
    iput-object p1, p0, Lcom/centauri/http/core/Response;->tag:Ljava/lang/Object;

    :cond_0
    return-void
.end method
