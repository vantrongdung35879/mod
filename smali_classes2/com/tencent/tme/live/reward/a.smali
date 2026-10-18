.class public Lcom/tencent/tme/live/reward/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/live/reward/a$b;,
        Lcom/tencent/tme/live/reward/a$a;
    }
.end annotation


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    return-void
.end method

.method public static a(Lcom/tencent/tme/live/reward/a$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tme/live/reward/a$a<",
            "Lcom/tencent/tme/live/w0/l;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lcom/tencent/tme/live/reward/a$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/tencent/tme/live/reward/a$$ExternalSyntheticLambda0;-><init>(Lcom/tencent/tme/live/reward/a$a;)V

    const-string p0, "getTreasureBox"

    invoke-static {p0, v0, v1}, Lcom/tencent/tme/live/i/i;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/tencent/tme/live/i/i$a;)V

    return-void
.end method

.method public static a(Lcom/tencent/tme/live/reward/a$a;ILjava/lang/String;Lorg/json/JSONObject;)V
    .locals 5

    const/16 p2, 0xc8

    if-ne p1, p2, :cond_8

    if-eqz p3, :cond_8

    const-string p1, "data"

    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "result"

    invoke-virtual {p3, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    if-eqz p1, :cond_6

    if-eqz p2, :cond_0

    goto/16 :goto_1

    .line 1
    :cond_0
    new-instance p2, Lcom/tencent/tme/live/w0/l;

    invoke-direct {p2}, Lcom/tencent/tme/live/w0/l;-><init>()V

    const-string p3, "display_bg"

    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcom/tencent/tme/live/w0/l;->b:Ljava/lang/String;

    const-string p3, "box_list"

    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_5

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 2
    new-instance v3, Lcom/tencent/tme/live/w0/l$a;

    invoke-direct {v3}, Lcom/tencent/tme/live/w0/l$a;-><init>()V

    const-string v4, "gift_name"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/tme/live/w0/l$a;->f:Ljava/lang/String;

    const-string v4, "gift_url"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/tme/live/w0/l$a;->b:Ljava/lang/String;

    const-string v4, "gift_tip"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/tme/live/w0/l$a;->e:Ljava/lang/String;

    const-string v4, "recv_state"

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/tencent/tme/live/w0/l$a;->c:I

    const-string v4, "active_interval"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/tencent/tme/live/w0/l$a;->d:I

    const-string v4, "boxid"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/tencent/tme/live/w0/l$a;->a:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 3
    iget v2, v3, Lcom/tencent/tme/live/w0/l$a;->d:I

    iput v2, p2, Lcom/tencent/tme/live/w0/l;->c:I

    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget v4, v3, Lcom/tencent/tme/live/w0/l$a;->d:I

    iput v4, p2, Lcom/tencent/tme/live/w0/l;->d:I

    :cond_2
    const/4 v4, 0x2

    if-ne v1, v4, :cond_3

    iget v4, v3, Lcom/tencent/tme/live/w0/l$a;->d:I

    iput v4, p2, Lcom/tencent/tme/live/w0/l;->e:I

    :cond_3
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    sub-int/2addr v4, v2

    if-ne v1, v4, :cond_4

    iget v2, v3, Lcom/tencent/tme/live/w0/l$a;->d:I

    iput v2, p2, Lcom/tencent/tme/live/w0/l;->f:I

    :cond_4
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    iget-object p1, p2, Lcom/tencent/tme/live/w0/l;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p2, Lcom/tencent/tme/live/w0/l;->a:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_6
    :goto_1
    const/4 p2, 0x0

    :cond_7
    :goto_2
    if-eqz p0, :cond_8

    .line 4
    invoke-interface {p0, p2}, Lcom/tencent/tme/live/reward/a$a;->a(Ljava/lang/Object;)V

    :cond_8
    return-void
.end method

.method public static synthetic a(Lcom/tencent/tme/live/reward/a$b;ILjava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    const-string v0, "result"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    const-string v1, "data"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    if-eqz p3, :cond_1

    const-string v1, "boxid"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "result:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",boxid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",code:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "recvTreasureBoxTAG"

    invoke-static {p2, p1}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p3}, Lcom/tencent/tme/live/reward/a$b;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/tencent/tme/live/reward/a$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/tencent/tme/live/reward/a$b<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "boxid"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "role"

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->c()Lcom/tencent/tme/live/framework/common/b;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/tme/live/framework/common/b;->y:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "recvTreasureBox"

    new-instance v1, Lcom/tencent/tme/live/reward/a$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/tencent/tme/live/reward/a$$ExternalSyntheticLambda1;-><init>(Lcom/tencent/tme/live/reward/a$b;)V

    invoke-static {p0, v0, v1}, Lcom/tencent/tme/live/i/i;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/tencent/tme/live/i/i$a;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method
