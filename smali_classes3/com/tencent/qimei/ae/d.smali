.class public final Lcom/tencent/qimei/ae/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/qimei/sdk/IAsyncQimeiListener;


# instance fields
.field public final synthetic a:Lcom/tencent/qimei/ae/f;


# direct methods
.method public constructor <init>(Lcom/tencent/qimei/ae/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/qimei/ae/d;->a:Lcom/tencent/qimei/ae/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onQimeiDispatch(Lcom/tencent/qimei/sdk/Qimei;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/tencent/qimei/sdk/Qimei;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 5
    const-string v1, "q16"

    invoke-virtual {p1}, Lcom/tencent/qimei/sdk/Qimei;->getQimei16()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    const-string v1, "q36"

    invoke-virtual {p1}, Lcom/tencent/qimei/sdk/Qimei;->getQimei36()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 9
    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "a"

    const-string v1, "jsbridge build JsInputParams Error"

    invoke-static {v0, v1, p1}, Lcom/tencent/qimei/af/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo p1, "{}"

    .line 10
    :goto_0
    iget-object v0, p0, Lcom/tencent/qimei/ae/d;->a:Lcom/tencent/qimei/ae/f;

    .line 11
    invoke-virtual {v0, p1}, Lcom/tencent/qimei/ae/f;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
