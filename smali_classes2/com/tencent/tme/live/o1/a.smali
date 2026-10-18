.class public Lcom/tencent/tme/live/o1/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/live/o1/a$a;
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

.method public static a(ILjava/lang/String;Lcom/tencent/tme/live/o1/a$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/tencent/tme/live/o1/a$a<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "queryTask, optionId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", question_id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;)V

    :try_start_0
    const-string v1, "option_id"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "question_id"

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "question_type"

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "doGuessOrder"

    new-instance p1, Lcom/tencent/tme/live/o1/a$$ExternalSyntheticLambda0;

    invoke-direct {p1, p2}, Lcom/tencent/tme/live/o1/a$$ExternalSyntheticLambda0;-><init>(Lcom/tencent/tme/live/o1/a$a;)V

    invoke-static {p0, v0, p1}, Lcom/tencent/tme/live/i/i;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/tencent/tme/live/i/i$a;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    invoke-virtual {p0}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/tme/live/t1/e;->b(Ljava/lang/String;)V

    const/4 p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    check-cast p2, Lcom/tencent/tme/live/o1/h;

    const-string p1, ""

    invoke-virtual {p2, p0, p1}, Lcom/tencent/tme/live/o1/h;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static synthetic a(Lcom/tencent/tme/live/o1/a$a;ILjava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    const/16 v0, 0xc8

    const/4 v1, -0x1

    if-ne p1, v0, :cond_0

    if-eqz p3, :cond_0

    const-string p1, "result"

    invoke-virtual {p3, p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const-string p1, "msg"

    invoke-virtual {p3, p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "doGuessOrder failed, code:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", msg:"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/tme/live/t1/e;->b(Ljava/lang/String;)V

    const-string p1, ""

    :goto_0
    if-eqz p0, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2, p1}, Lcom/tencent/tme/live/o1/a$a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tme/live/o1/a$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/tencent/tme/live/o1/a$a<",
            "Lcom/tencent/tme/live/w0/k;",
            ">;)V"
        }
    .end annotation

    const-string v0, "queryTask, roomId:"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", question_id:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;)V

    const-string v0, "roomid"

    invoke-virtual {v1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "question_id"

    invoke-virtual {v1, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "getValidRealtimeQuestion"

    new-instance p1, Lcom/tencent/tme/live/o1/a$$ExternalSyntheticLambda1;

    invoke-direct {p1, p2}, Lcom/tencent/tme/live/o1/a$$ExternalSyntheticLambda1;-><init>(Lcom/tencent/tme/live/o1/a$a;)V

    invoke-static {p0, v1, p1}, Lcom/tencent/tme/live/i/i;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/tencent/tme/live/i/i$a;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    invoke-virtual {p0}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/tme/live/t1/e;->b(Ljava/lang/String;)V

    const/4 p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p2, p1, p0}, Lcom/tencent/tme/live/o1/a$a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static b(Lcom/tencent/tme/live/o1/a$a;ILjava/lang/String;Lorg/json/JSONObject;)V
    .locals 7

    const/16 v0, 0xc8

    const/4 v1, 0x0

    if-ne p1, v0, :cond_7

    if-eqz p3, :cond_7

    const-string p1, "data"

    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "result"

    invoke-virtual {p3, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    if-eqz p1, :cond_6

    .line 1
    new-instance p3, Lcom/tencent/tme/live/w0/k;

    invoke-direct {p3}, Lcom/tencent/tme/live/w0/k;-><init>()V

    const-string v0, "question_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iput-object v0, p3, Lcom/tencent/tme/live/w0/k;->b:Ljava/lang/String;

    .line 3
    const-string v0, "schedule_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    iput-object v0, p3, Lcom/tencent/tme/live/w0/k;->h:Ljava/lang/String;

    .line 5
    const-string v0, "content"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    iput-object v0, p3, Lcom/tencent/tme/live/w0/k;->c:Ljava/lang/String;

    .line 7
    const-string v0, "expire"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 8
    iput v0, p3, Lcom/tencent/tme/live/w0/k;->d:I

    .line 9
    const-string v0, "option_list"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x5

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_2

    .line 10
    :cond_0
    new-instance v5, Lcom/tencent/tme/live/w0/i;

    invoke-direct {v5}, Lcom/tencent/tme/live/w0/i;-><init>()V

    const-string v6, "option_content"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 11
    iput-object v6, v5, Lcom/tencent/tme/live/w0/i;->c:Ljava/lang/String;

    .line 12
    const-string v6, "take_number"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 13
    iput v6, v5, Lcom/tencent/tme/live/w0/i;->d:I

    .line 14
    const-string v6, "option_id"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 15
    iput v4, v5, Lcom/tencent/tme/live/w0/i;->e:I

    .line 16
    iget-object v4, p3, Lcom/tencent/tme/live/w0/k;->b:Ljava/lang/String;

    .line 17
    iput-object v4, v5, Lcom/tencent/tme/live/w0/i;->a:Ljava/lang/String;

    .line 18
    iget-object v4, p3, Lcom/tencent/tme/live/w0/k;->h:Ljava/lang/String;

    .line 19
    iput-object v4, v5, Lcom/tencent/tme/live/w0/i;->b:Ljava/lang/String;

    .line 20
    iget-object v4, p3, Lcom/tencent/tme/live/w0/k;->a:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v1, :cond_1

    goto :goto_1

    .line 21
    :cond_1
    iget v4, v1, Lcom/tencent/tme/live/w0/i;->d:I

    iget v6, v5, Lcom/tencent/tme/live/w0/i;->d:I

    if-ge v4, v6, :cond_2

    :goto_1
    move-object v1, v5

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    const/4 v0, 0x1

    .line 22
    iput-boolean v0, v1, Lcom/tencent/tme/live/w0/i;->f:Z

    .line 23
    :cond_4
    const-string v0, "play_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 24
    iput v0, p3, Lcom/tencent/tme/live/w0/k;->g:I

    .line 25
    const-string v0, "duration"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 26
    iput v0, p3, Lcom/tencent/tme/live/w0/k;->e:I

    .line 27
    const-string v0, "points"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 28
    iput v0, p3, Lcom/tencent/tme/live/w0/k;->f:I

    .line 29
    const-string v0, "update_period"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    if-gtz p1, :cond_5

    const/16 p1, 0x8

    :cond_5
    mul-int/lit16 p1, p1, 0x3e8

    .line 30
    sput p1, Lcom/tencent/tme/live/w0/k;->i:I

    move-object v1, p3

    :cond_6
    move p1, p2

    goto :goto_3

    .line 31
    :cond_7
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "getValidRealtimeQuestion failed, code:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", msg:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/tme/live/t1/e;->b(Ljava/lang/String;)V

    :goto_3
    if-eqz p0, :cond_8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, v1, p1}, Lcom/tencent/tme/live/o1/a$a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8
    return-void
.end method
