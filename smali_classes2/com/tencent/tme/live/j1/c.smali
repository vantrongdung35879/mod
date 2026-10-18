.class public Lcom/tencent/tme/live/j1/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/live/j1/a;


# direct methods
.method public static synthetic $r8$lambda$ghog_9sjwm-PUDm-NVI5cx9cQK4(Lcom/tencent/tme/live/j1/c;Lcom/tencent/tme/live/v0/h;Lcom/tencent/tme/live/framework/model/PopTVCfgBean;ILjava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/tencent/tme/live/j1/c;->a(Lcom/tencent/tme/live/v0/h;Lcom/tencent/tme/live/framework/model/PopTVCfgBean;ILjava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/tencent/tme/live/v0/h;Lcom/tencent/tme/live/framework/model/PopTVCfgBean;ILjava/lang/String;Lorg/json/JSONObject;)V
    .locals 5

    const-string v0, "PopTVCfgRepository"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string p1, "getStreamInfo callback is null"

    .line 1
    invoke-static {v0, p1, v1}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/16 v2, 0xc8

    const-string v3, ", msg:"

    const-string v4, "getStreamInfo failed, code:"

    if-eq p3, v2, :cond_1

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-static {v0, p2, v1}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    check-cast p1, Lcom/tencent/tme/live/i1/e$b;

    invoke-virtual {p1, v1, p2}, Lcom/tencent/tme/live/i1/e$b;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_1
    if-nez p5, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-static {v0, p2, v1}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    check-cast p1, Lcom/tencent/tme/live/i1/e$b;

    invoke-virtual {p1, v1, v1}, Lcom/tencent/tme/live/i1/e$b;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_2
    const-string v2, "data"

    invoke-virtual {p5, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p5

    if-nez p5, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 7
    invoke-static {v0, p2, v1}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    check-cast p1, Lcom/tencent/tme/live/i1/e$b;

    invoke-virtual {p1, v1, v1}, Lcom/tencent/tme/live/i1/e$b;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_3
    new-instance p3, Lcom/tencent/tme/live/w0/o$a;

    invoke-direct {p3}, Lcom/tencent/tme/live/w0/o$a;-><init>()V

    .line 9
    iget-object p4, p2, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->a:Ljava/lang/String;

    .line 10
    iput-object p4, p3, Lcom/tencent/tme/live/w0/o$a;->c:Ljava/lang/String;

    .line 11
    iget p4, p2, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->n:I

    .line 12
    iput p4, p3, Lcom/tencent/tme/live/w0/o$a;->b:I

    invoke-static {p3, p5}, Lcom/tencent/tme/live/w0/o$b;->a(Lcom/tencent/tme/live/w0/o$a;Lorg/json/JSONObject;)[Ljava/lang/Object;

    move-result-object p3

    array-length p4, p3

    if-gtz p4, :cond_4

    check-cast p1, Lcom/tencent/tme/live/i1/e$b;

    invoke-virtual {p1, v1, v1}, Lcom/tencent/tme/live/i1/e$b;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_4
    const/4 p4, 0x0

    aget-object p3, p3, p4

    check-cast p3, Ljava/util/List;

    if-nez p3, :cond_5

    goto :goto_0

    .line 13
    :cond_5
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p5

    if-nez p5, :cond_6

    :goto_0
    move-object v0, v1

    goto :goto_2

    :cond_6
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :cond_7
    :goto_1
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/w0/o$b;

    if-nez v0, :cond_8

    goto :goto_1

    :cond_8
    iget-boolean v2, v0, Lcom/tencent/tme/live/w0/o$b;->c:Z

    if-eqz v2, :cond_7

    goto :goto_2

    :cond_9
    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Lcom/tencent/tme/live/w0/o$b;

    :goto_2
    if-eqz v0, :cond_a

    .line 14
    iget-object p2, p2, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->f:Ljava/lang/String;

    .line 15
    iput-object p2, v0, Lcom/tencent/tme/live/w0/o$b;->g:Ljava/lang/String;

    :cond_a
    check-cast p1, Lcom/tencent/tme/live/i1/e$b;

    invoke-virtual {p1, v0, v1}, Lcom/tencent/tme/live/i1/e$b;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/tme/live/framework/model/PopTVCfgBean;Lcom/tencent/tme/live/v0/h;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tme/live/framework/model/PopTVCfgBean;",
            "Lcom/tencent/tme/live/v0/h<",
            "Lcom/tencent/tme/live/w0/o$b;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "vid"

    .line 16
    iget-object v2, p1, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->a:Ljava/lang/String;

    .line 17
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "getStreamInfo"

    new-instance v2, Lcom/tencent/tme/live/j1/c$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p2, p1}, Lcom/tencent/tme/live/j1/c$$ExternalSyntheticLambda0;-><init>(Lcom/tencent/tme/live/j1/c;Lcom/tencent/tme/live/v0/h;Lcom/tencent/tme/live/framework/model/PopTVCfgBean;)V

    invoke-static {v1, v0, v2}, Lcom/tencent/tme/live/i/i;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/tencent/tme/live/i/i$a;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    .line 18
    const-string v0, "PopTVCfgRepository"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    check-cast p2, Lcom/tencent/tme/live/i1/e$b;

    invoke-virtual {p2, v1, v1}, Lcom/tencent/tme/live/i1/e$b;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
