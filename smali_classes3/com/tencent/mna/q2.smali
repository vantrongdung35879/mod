.class public Lcom/tencent/mna/q2;
.super Ljava/lang/Object;
.source "QosProto.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:I

.field public f:I

.field public g:I

.field public h:D

.field public i:D

.field public j:Ljava/lang/String;

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:Ljava/lang/String;

.field public p:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIDDLjava/lang/String;IIIILjava/lang/String;J)V
    .locals 3

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 35
    iput-object v1, v0, Lcom/tencent/mna/q2;->a:Ljava/lang/String;

    move-object v1, p2

    .line 36
    iput-object v1, v0, Lcom/tencent/mna/q2;->b:Ljava/lang/String;

    move v1, p3

    .line 37
    iput v1, v0, Lcom/tencent/mna/q2;->c:I

    move-object v1, p4

    .line 38
    iput-object v1, v0, Lcom/tencent/mna/q2;->d:Ljava/lang/String;

    move v1, p5

    .line 39
    iput v1, v0, Lcom/tencent/mna/q2;->e:I

    move v1, p6

    .line 40
    iput v1, v0, Lcom/tencent/mna/q2;->f:I

    move v1, p7

    .line 41
    iput v1, v0, Lcom/tencent/mna/q2;->g:I

    move-wide v1, p8

    .line 42
    iput-wide v1, v0, Lcom/tencent/mna/q2;->h:D

    move-wide v1, p10

    .line 43
    iput-wide v1, v0, Lcom/tencent/mna/q2;->i:D

    move-object v1, p12

    .line 44
    iput-object v1, v0, Lcom/tencent/mna/q2;->j:Ljava/lang/String;

    move/from16 v1, p13

    .line 45
    iput v1, v0, Lcom/tencent/mna/q2;->k:I

    move/from16 v1, p14

    .line 46
    iput v1, v0, Lcom/tencent/mna/q2;->l:I

    move/from16 v1, p15

    .line 47
    iput v1, v0, Lcom/tencent/mna/q2;->m:I

    move/from16 v1, p16

    .line 48
    iput v1, v0, Lcom/tencent/mna/q2;->n:I

    move-object/from16 v1, p17

    .line 49
    iput-object v1, v0, Lcom/tencent/mna/q2;->o:Ljava/lang/String;

    move-wide/from16 v1, p18

    .line 50
    iput-wide v1, v0, Lcom/tencent/mna/q2;->p:J

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 6

    const-string v0, ""

    .line 2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 4
    :try_start_0
    const-string v2, "appid"

    iget-object v3, p0, Lcom/tencent/mna/q2;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    const-string v2, "sdkver"

    iget-object v3, p0, Lcom/tencent/mna/q2;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    const-string/jumbo v2, "type"

    iget v3, p0, Lcom/tencent/mna/q2;->c:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 7
    const-string v2, "openId"

    iget-object v3, p0, Lcom/tencent/mna/q2;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    const-string v2, "cppvalue"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mna/base/jni/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    const-string v2, "delay"

    iget v3, p0, Lcom/tencent/mna/q2;->e:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 11
    const-string v2, "stage"

    iget v3, p0, Lcom/tencent/mna/q2;->f:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 12
    const-string v2, "signal"

    iget v3, p0, Lcom/tencent/mna/q2;->g:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 14
    const-string v2, "gpslat"

    iget-wide v3, p0, Lcom/tencent/mna/q2;->h:D

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 15
    const-string v2, "gpslon"

    iget-wide v3, p0, Lcom/tencent/mna/q2;->i:D

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 16
    const-string v2, "pcellid"

    iget-object v3, p0, Lcom/tencent/mna/q2;->j:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    const-string v2, "rssi"

    iget v3, p0, Lcom/tencent/mna/q2;->k:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 18
    const-string v2, "sinr"

    iget v3, p0, Lcom/tencent/mna/q2;->l:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 19
    const-string v2, "rsrp"

    iget v3, p0, Lcom/tencent/mna/q2;->m:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 20
    const-string v2, "rsrq"

    iget v3, p0, Lcom/tencent/mna/q2;->n:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 21
    const-string v2, "delays"

    iget-object v3, p0, Lcom/tencent/mna/q2;->o:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    const-string/jumbo v2, "timestamp"

    iget-wide v3, p0, Lcom/tencent/mna/q2;->p:J

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 24
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method
