.class public Lcom/tencent/tme/live/y2/c;
.super Ljava/lang/Object;


# instance fields
.field public a:Z


# direct methods
.method public static synthetic $r8$lambda$nyiSaq5J_uwWJtU_7gKUnLZps_8(Lcom/tencent/tme/live/y2/c;Lcom/tencent/tme/live/v0/g;ILjava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/tme/live/y2/c;->a(Lcom/tencent/tme/live/v0/g;ILjava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tme/live/y2/c;->a:Z

    return-void
.end method

.method private a(Lcom/tencent/tme/live/v0/g;ILjava/lang/String;Lorg/json/JSONObject;)V
    .locals 5

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "getValidRedPacket:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "EntryRepository"

    invoke-static {v0, p3}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, 0x0

    if-nez p1, :cond_0

    .line 1
    const-string p1, "getValidRedPacket callback is null"

    invoke-static {v0, p1, p3}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 2
    :cond_0
    iget-boolean v1, p0, Lcom/tencent/tme/live/y2/c;->a:Z

    if-eqz v1, :cond_1

    .line 3
    const-string p1, "getValidRedPacket isReleased"

    invoke-static {v0, p1, p3}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_1
    const/16 v1, 0xc8

    if-eq p2, v1, :cond_2

    .line 4
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v1, "getValidRedPacket failed, code:"

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-static {v0, p2, p3}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    invoke-interface {p1, p3}, Lcom/tencent/tme/live/v0/g;->a(Ljava/lang/Object;)V

    return-void

    :cond_2
    if-nez p4, :cond_3

    .line 7
    const-string p2, "getValidRedPacket responseJson is null"

    invoke-static {v0, p2, p3}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    invoke-interface {p1, p3}, Lcom/tencent/tme/live/v0/g;->a(Ljava/lang/Object;)V

    return-void

    .line 9
    :cond_3
    const-string p2, "result"

    invoke-virtual {p4, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_4

    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_4
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_5

    .line 10
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v1, "getValidRedPacket resultBiz is:"

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 11
    invoke-static {v0, p2, p3}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    invoke-interface {p1, p3}, Lcom/tencent/tme/live/v0/g;->a(Ljava/lang/Object;)V

    return-void

    :cond_5
    const-string p3, "msg"

    const-string v1, ""

    invoke-virtual {p4, p3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "getValidRedPacket, resultBiz:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", msgBiz:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    new-instance p2, Lcom/tencent/tme/live/w0/j;

    invoke-direct {p2}, Lcom/tencent/tme/live/w0/j;-><init>()V

    const-string p3, "packet_id"

    invoke-virtual {p4, p3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p3

    iput p3, p2, Lcom/tencent/tme/live/w0/j;->a:I

    const-string p3, "entry_pic"

    invoke-virtual {p4, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcom/tencent/tme/live/w0/j;->b:Ljava/lang/String;

    const-string p3, "title"

    invoke-virtual {p4, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcom/tencent/tme/live/w0/j;->d:Ljava/lang/String;

    const-string p3, "ready_popup_background"

    invoke-virtual {p4, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcom/tencent/tme/live/w0/j;->e:Ljava/lang/String;

    const-string p3, "taken_popup_background"

    invoke-virtual {p4, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcom/tencent/tme/live/w0/j;->f:Ljava/lang/String;

    const-string p3, "deadline_button"

    invoke-virtual {p4, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcom/tencent/tme/live/w0/j;->g:Ljava/lang/String;

    const-string p3, "start_button"

    invoke-virtual {p4, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcom/tencent/tme/live/w0/j;->h:Ljava/lang/String;

    const-string p3, "timer"

    invoke-virtual {p4, p3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p3

    int-to-long v0, p3

    const-wide/16 v3, 0x3e8

    mul-long v0, v0, v3

    iput-wide v0, p2, Lcom/tencent/tme/live/w0/j;->i:J

    const-string p3, "sub_packet_group"

    invoke-virtual {p4, p3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p3

    if-eqz p3, :cond_9

    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result p4

    if-lez p4, :cond_9

    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result p4

    :goto_1
    if-ge v2, p4, :cond_9

    invoke-virtual {p3, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    invoke-static {v0}, Lcom/tencent/tme/live/w0/j$a;->a(Lorg/json/JSONObject;)Lcom/tencent/tme/live/w0/j$a;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_2

    :cond_7
    iget-object v1, p2, Lcom/tencent/tme/live/w0/j;->c:Ljava/util/List;

    if-nez v1, :cond_8

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p2, Lcom/tencent/tme/live/w0/j;->c:Ljava/util/List;

    :cond_8
    iget-object v1, p2, Lcom/tencent/tme/live/w0/j;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 14
    :cond_9
    invoke-interface {p1, p2}, Lcom/tencent/tme/live/v0/g;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/tme/live/v0/g;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tme/live/v0/g<",
            "Lcom/tencent/tme/live/w0/j;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tme/live/y2/c;->a:Z

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "client_timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    new-instance v1, Lcom/tencent/tme/live/y2/c$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/tencent/tme/live/y2/c$$ExternalSyntheticLambda0;-><init>(Lcom/tencent/tme/live/y2/c;Lcom/tencent/tme/live/v0/g;)V

    const-string p1, "getValidRedPacket"

    invoke-static {p1, v0, v1}, Lcom/tencent/tme/live/i/i;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/tencent/tme/live/i/i$a;)V

    return-void
.end method
