.class public Lcom/tencent/tmes/live/redpacket/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tmes/live/redpacket/d$a;
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$Su8z6-vaxNWrEGMha74MFF_L4NA(Lcom/tencent/tmes/live/redpacket/d;IILcom/tencent/tme/live/v0/g;ILjava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/tencent/tmes/live/redpacket/d;->a(IILcom/tencent/tme/live/v0/g;ILjava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(IILcom/tencent/tme/live/v0/g;ILjava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    new-instance p5, Ljava/lang/StringBuilder;

    const-string v0, "grabRedPacket:"

    invoke-direct {p5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\uff0c packetId\uff1a"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\uff0c subPacketId\uff1a"

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GrabRepository"

    invoke-static {p2, p1}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    if-nez p3, :cond_0

    .line 1
    const-string p3, "grabPacket callback is null"

    invoke-static {p2, p3, p1}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/16 p5, 0xc8

    if-eq p4, p5, :cond_1

    .line 2
    new-instance p5, Ljava/lang/StringBuilder;

    const-string p6, "grabPacket failed, code:"

    invoke-direct {p5, p6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 3
    invoke-static {p2, p4, p1}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    invoke-interface {p3, p1}, Lcom/tencent/tme/live/v0/g;->a(Ljava/lang/Object;)V

    return-void

    :cond_1
    if-nez p6, :cond_2

    .line 5
    const-string p4, "grabPacket responseJson is null"

    invoke-static {p2, p4, p1}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    invoke-interface {p3, p1}, Lcom/tencent/tme/live/v0/g;->a(Ljava/lang/Object;)V

    return-void

    .line 7
    :cond_2
    const-string p4, "result"

    invoke-virtual {p6, p4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    const/4 v0, 0x0

    if-nez p5, :cond_3

    :try_start_0
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_3
    const/4 p4, 0x0

    :goto_0
    if-eqz p4, :cond_4

    .line 8
    new-instance p5, Ljava/lang/StringBuilder;

    const-string p6, "grabPacket resultBiz is:"

    invoke-direct {p5, p6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 9
    invoke-static {p2, p5, p1}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    new-instance p2, Lcom/tencent/tmes/live/redpacket/d$a;

    invoke-direct {p2, p0, p1, p4}, Lcom/tencent/tmes/live/redpacket/d$a;-><init>(Lcom/tencent/tmes/live/redpacket/d;Ljava/util/List;I)V

    invoke-interface {p3, p2}, Lcom/tencent/tme/live/v0/g;->a(Ljava/lang/Object;)V

    return-void

    :cond_4
    const-string p1, "msg"

    const-string p5, ""

    invoke-virtual {p6, p1, p5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p5, Ljava/lang/StringBuilder;

    const-string v1, "grabPacket, resultBiz:"

    invoke-direct {p5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", msgBiz:"

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "sub_packet_group"

    invoke-virtual {p6, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p5

    if-lez p5, :cond_6

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p5

    :goto_1
    if-ge v0, p5, :cond_6

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p6

    if-nez p6, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {p6}, Lcom/tencent/tme/live/w0/j$a;->a(Lorg/json/JSONObject;)Lcom/tencent/tme/live/w0/j$a;

    move-result-object p6

    invoke-virtual {p2, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    new-instance p1, Lcom/tencent/tmes/live/redpacket/d$a;

    invoke-direct {p1, p0, p2, p4}, Lcom/tencent/tmes/live/redpacket/d$a;-><init>(Lcom/tencent/tmes/live/redpacket/d;Ljava/util/List;I)V

    invoke-interface {p3, p1}, Lcom/tencent/tme/live/v0/g;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(IILcom/tencent/tme/live/v0/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/tencent/tme/live/v0/g<",
            "Lcom/tencent/tmes/live/redpacket/d$a;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "packet_id"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "sub_packet_id"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    new-instance v1, Lcom/tencent/tmes/live/redpacket/d$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/tencent/tmes/live/redpacket/d$$ExternalSyntheticLambda0;-><init>(Lcom/tencent/tmes/live/redpacket/d;IILcom/tencent/tme/live/v0/g;)V

    const-string p1, "grabRedPacket"

    invoke-static {p1, v0, v1}, Lcom/tencent/tme/live/i/i;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/tencent/tme/live/i/i$a;)V

    return-void
.end method
