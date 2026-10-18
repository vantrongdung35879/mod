.class Lcom/tencent/gsdk/t0;
.super Lcom/tencent/gsdk/a;
.source "RequestBody.java"


# instance fields
.field public b:Ljava/lang/String;

.field public c:I

.field public d:I

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/tencent/gsdk/a;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/tencent/gsdk/t0;->c:I

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lcom/tencent/gsdk/t0;->d:I

    .line 6
    const-string v0, "1.1.171"

    iput-object v0, p0, Lcom/tencent/gsdk/t0;->e:Ljava/lang/String;

    .line 9
    iput-object p1, p0, Lcom/tencent/gsdk/t0;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-super {p0}, Lcom/tencent/gsdk/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2
    const-string v1, "openid"

    iget-object v2, p0, Lcom/tencent/gsdk/t0;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3
    const-string v1, "os"

    iget v2, p0, Lcom/tencent/gsdk/t0;->c:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4
    const-string v1, "platapi"

    iget v2, p0, Lcom/tencent/gsdk/t0;->d:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 5
    const-string/jumbo v1, "version"

    iget-object v2, p0, Lcom/tencent/gsdk/t0;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    .line 8
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "Convert request body to json failed"

    invoke-static {v0, v1}, Lcom/tencent/gsdk/x;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    const-string v0, ""

    return-object v0
.end method
