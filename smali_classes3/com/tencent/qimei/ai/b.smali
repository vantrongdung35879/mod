.class public final Lcom/tencent/qimei/ai/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qimei/ai/b;->b:Ljava/lang/String;

    .line 5
    iput-object p1, p0, Lcom/tencent/qimei/ai/b;->a:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 6
    const-string p1, "2"

    goto :goto_0

    :cond_0
    const-string p1, "1"

    :goto_0
    iput-object p1, p0, Lcom/tencent/qimei/ai/b;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    :try_start_0
    const-string v1, "1"

    const-string v2, "1.0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    const-string v1, "3"

    iget-object v2, p0, Lcom/tencent/qimei/ai/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    .line 11
    const-string v0, ""

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/tencent/qimei/ai/b;->a:Ljava/lang/String;

    sget-object v2, Lcom/tencent/qimei/foundation/net/protocol/CMD;->GET_OID:Lcom/tencent/qimei/foundation/net/protocol/CMD;

    invoke-virtual {v2}, Lcom/tencent/qimei/foundation/net/protocol/CMD;->b()I

    move-result v3

    .line 13
    invoke-virtual {v2}, Lcom/tencent/qimei/foundation/net/protocol/CMD;->a()I

    move-result v2

    .line 14
    invoke-static {v1, v0, v3, v2}, Lcom/tencent/qimei/uin/U;->a(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 16
    new-instance v1, Lcom/tencent/qimei/y/d;

    invoke-direct {v1, v0}, Lcom/tencent/qimei/y/d;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v1}, Lcom/tencent/qimei/y/d;->b()Z

    move-result v0

    const-string v2, "IsolateRequest"

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 18
    iget-object v0, v1, Lcom/tencent/qimei/y/d;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "report oid success"

    invoke-static {v2, v1, v0}, Lcom/tencent/qimei/af/c;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 22
    :cond_1
    invoke-virtual {v1}, Lcom/tencent/qimei/y/d;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v3

    const-string v0, "report oid failed, response err code is %s"

    invoke-static {v2, v0, v1}, Lcom/tencent/qimei/af/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
