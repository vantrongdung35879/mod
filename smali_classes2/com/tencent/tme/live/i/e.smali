.class public Lcom/tencent/tme/live/i/e;
.super Lcom/tencent/tme/live/v/c;


# instance fields
.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lcom/tencent/tme/live/i/f$a;

.field public final synthetic f:Lcom/tencent/tme/live/i/f;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/i/f;Ljava/lang/Object;Lcom/tencent/tme/live/i/f$a;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/i/e;->f:Lcom/tencent/tme/live/i/f;

    iput-object p2, p0, Lcom/tencent/tme/live/i/e;->d:Ljava/lang/Object;

    iput-object p3, p0, Lcom/tencent/tme/live/i/e;->e:Lcom/tencent/tme/live/i/f$a;

    invoke-direct {p0}, Lcom/tencent/tme/live/v/c;-><init>()V

    return-void
.end method

.method public static a(Lcom/tencent/tme/live/i/f$a;I)V
    .locals 2

    check-cast p0, Lcom/tencent/tme/live/i/h;

    .line 2
    iget-object v0, p0, Lcom/tencent/tme/live/i/h;->a:Lcom/tencent/tme/live/i/i$a;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/tencent/tme/live/i/h;->b:Lcom/tencent/tme/live/i/i;

    iget-object p0, p0, Lcom/tencent/tme/live/i/i;->g:Lorg/json/JSONObject;

    const-string v1, ""

    invoke-interface {v0, p1, v1, p0}, Lcom/tencent/tme/live/i/i$a;->a(ILjava/lang/String;Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method public static a(Lcom/tencent/tme/live/i/f$a;Ljava/lang/Throwable;I)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    check-cast p0, Lcom/tencent/tme/live/i/h;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tme/live/i/h;->b:Lcom/tencent/tme/live/i/i;

    iget-object v0, v0, Lcom/tencent/tme/live/i/i;->g:Lorg/json/JSONObject;

    const-string v1, "result"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/tencent/tme/live/i/h;->a:Lcom/tencent/tme/live/i/i$a;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/tencent/tme/live/i/h;->b:Lcom/tencent/tme/live/i/i;

    iget-object p0, p0, Lcom/tencent/tme/live/i/i;->g:Lorg/json/JSONObject;

    invoke-interface {v0, p2, p1, p0}, Lcom/tencent/tme/live/i/i$a;->a(ILjava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public a(I[Lorg/apache/http/Header;[B)V
    .locals 4

    const-string p2, "utf-8"

    const-string v0, "BaseUrlWithParamProxy"

    const-string v1, "statusCode : "

    const-string v2, "\u8bf7\u6c42\u6210\u529f"

    :try_start_0
    sget-boolean v3, Lcom/tencent/tme/live/e/a;->c:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p3, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tencent/tme/live/i/e;->f:Lcom/tencent/tme/live/i/f;

    invoke-static {v0, p1}, Lcom/tencent/tme/live/i/f;->a(Lcom/tencent/tme/live/i/f;I)V

    iget-object v0, p0, Lcom/tencent/tme/live/i/e;->f:Lcom/tencent/tme/live/i/f;

    iget-object v1, p0, Lcom/tencent/tme/live/i/e;->d:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/tme/live/i/i;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    check-cast v1, Lcom/tencent/tme/live/i/i$b;

    if-eqz p3, :cond_1

    .line 4
    array-length v1, p3

    if-lez v1, :cond_1

    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p3, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/tencent/tme/live/i/i;->g:Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 5
    :cond_1
    :goto_1
    invoke-static {}, Lcom/tencent/tme/live/r2/a;->b()Lcom/tencent/tme/live/r2/a;

    move-result-object p2

    iget-object p3, p0, Lcom/tencent/tme/live/i/e;->e:Lcom/tencent/tme/live/i/f$a;

    new-instance v0, Lcom/tencent/tme/live/i/e$$ExternalSyntheticLambda0;

    invoke-direct {v0, p3, p1}, Lcom/tencent/tme/live/i/e$$ExternalSyntheticLambda0;-><init>(Lcom/tencent/tme/live/i/f$a;I)V

    invoke-virtual {p2, v0}, Lcom/tencent/tme/live/r2/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 1

    iget-object p2, p0, Lcom/tencent/tme/live/i/e;->f:Lcom/tencent/tme/live/i/f;

    invoke-static {p2, p1}, Lcom/tencent/tme/live/i/f;->a(Lcom/tencent/tme/live/i/f;I)V

    invoke-static {}, Lcom/tencent/tme/live/r2/a;->b()Lcom/tencent/tme/live/r2/a;

    move-result-object p2

    iget-object p3, p0, Lcom/tencent/tme/live/i/e;->e:Lcom/tencent/tme/live/i/f$a;

    new-instance v0, Lcom/tencent/tme/live/i/e$$ExternalSyntheticLambda1;

    invoke-direct {v0, p3, p4, p1}, Lcom/tencent/tme/live/i/e$$ExternalSyntheticLambda1;-><init>(Lcom/tencent/tme/live/i/f$a;Ljava/lang/Throwable;I)V

    invoke-virtual {p2, v0}, Lcom/tencent/tme/live/r2/a;->a(Ljava/lang/Runnable;)V

    sget-boolean p2, Lcom/tencent/tme/live/e/a;->c:Z

    if-eqz p2, :cond_0

    const-string p2, "\u8bf7\u6c42\u5931\u8d25"

    invoke-static {p2}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    .line 1
    const-string p4, "BaseUrlWithParamProxy"

    invoke-static {p4, p2, p3}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "failedCode : "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
