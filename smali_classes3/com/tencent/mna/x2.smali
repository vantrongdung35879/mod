.class public Lcom/tencent/mna/x2;
.super Ljava/lang/Object;
.source "RemoteGameStatusUploader.java"


# static fields
.field private static j:Lcom/tencent/mna/x2;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/tencent/mna/x2;->a:I

    .line 3
    const-string v1, ""

    iput-object v1, p0, Lcom/tencent/mna/x2;->b:Ljava/lang/String;

    .line 4
    iput v0, p0, Lcom/tencent/mna/x2;->c:I

    const/4 v2, 0x0

    .line 5
    iput-object v2, p0, Lcom/tencent/mna/x2;->d:Ljava/util/List;

    const/16 v2, 0xa

    .line 6
    iput v2, p0, Lcom/tencent/mna/x2;->e:I

    .line 7
    iput v0, p0, Lcom/tencent/mna/x2;->f:I

    .line 9
    iput-object v1, p0, Lcom/tencent/mna/x2;->g:Ljava/lang/String;

    .line 10
    iput-object v1, p0, Lcom/tencent/mna/x2;->h:Ljava/lang/String;

    .line 11
    iput-object v1, p0, Lcom/tencent/mna/x2;->i:Ljava/lang/String;

    .line 15
    invoke-direct {p0}, Lcom/tencent/mna/x2;->c()V

    .line 16
    invoke-virtual {p0}, Lcom/tencent/mna/x2;->d()V

    .line 17
    const-string/jumbo v0, "tools.tmga.qq.com"

    invoke-static {v0}, Lcom/tencent/mna/n1;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mna/x2;->b:Ljava/lang/String;

    const/16 v0, 0x426d

    .line 18
    iput v0, p0, Lcom/tencent/mna/x2;->c:I

    .line 19
    iget v0, p0, Lcom/tencent/mna/x2;->e:I

    invoke-static {v0}, Lcom/tencent/mna/base/jni/e;->b(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mna/x2;->a:I

    .line 20
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mna/d;->M1()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/mna/base/utils/e;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mna/x2;->h:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILjava/lang/String;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    const-string v0, "requestGameStatus GamePlayer failed for switch, oneAssistHex: "

    .line 162
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/d;->o0()J

    move-result-wide v2

    invoke-static {}, Lcom/tencent/mna/d;->q1()J

    move-result-wide v4

    move v1, p5

    move-object v6, p6

    .line 163
    invoke-static/range {v1 .. v6}, Lcom/tencent/mna/base/jni/e;->a(IJJLjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    invoke-static {}, Lcom/tencent/mna/d;->o0()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", twoPlusAssistHex: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-static {}, Lcom/tencent/mna/d;->q1()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", clientType:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", msg:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 168
    invoke-static {p1}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    const/16 p1, -0x190

    return p1

    .line 176
    :cond_0
    invoke-direct {p0}, Lcom/tencent/mna/x2;->c()V

    .line 178
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 179
    const-string/jumbo v1, "userid"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 180
    const-string v1, "inoID"

    iget-object v2, p0, Lcom/tencent/mna/x2;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    const-string/jumbo v1, "vpnip"

    invoke-direct {p0}, Lcom/tencent/mna/x2;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 182
    const-string v1, "pvpid"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 183
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    if-eqz p3, :cond_2

    .line 184
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 188
    :cond_1
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 189
    invoke-virtual {p2, p3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 190
    :cond_2
    :goto_1
    invoke-virtual {p2, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 196
    :cond_3
    const-string/jumbo p1, "useridList"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 197
    const-string/jumbo p1, "tag"

    invoke-virtual {v0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 198
    const-string p1, "clientType"

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 199
    const-string p1, "content"

    invoke-virtual {v0, p1, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 200
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 201
    iget v1, p0, Lcom/tencent/mna/x2;->a:I

    iget-object v2, p0, Lcom/tencent/mna/x2;->b:Ljava/lang/String;

    iget v3, p0, Lcom/tencent/mna/x2;->c:I

    sget-object p2, Lcom/tencent/mna/t0;->s:Ljava/lang/String;

    .line 202
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 203
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object p2

    const/4 p3, 0x1

    invoke-static {p2, p3}, Lcom/tencent/mna/base/utils/e;->b(Landroid/content/Context;Z)J

    move-result-wide p2

    long-to-int v5, p2

    iget v8, p0, Lcom/tencent/mna/x2;->f:I

    const/16 v6, 0x3ea

    move-object v7, p1

    .line 204
    invoke-static/range {v1 .. v8}, Lcom/tencent/mna/base/jni/e;->a(ILjava/lang/String;IIIILjava/lang/String;I)Lcom/tencent/mna/base/jni/entity/CloudRet;

    move-result-object p2

    .line 208
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "requestGameStatus GamePlayer recvTimeout:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p0, Lcom/tencent/mna/x2;->f:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "\n, req: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n, rsp: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    if-eqz p2, :cond_4

    .line 210
    iget p1, p2, Lcom/tencent/mna/base/jni/entity/CloudRet;->errno:I

    invoke-direct {p0, p1}, Lcom/tencent/mna/x2;->a(I)V

    .line 211
    iget p1, p2, Lcom/tencent/mna/base/jni/entity/CloudRet;->errno:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 214
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "requestGameStatus GamePlayer exception:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/mna/v1;->e(Ljava/lang/String;)V

    :cond_4
    const/4 p1, -0x4

    return p1
.end method

.method static a()Lcom/tencent/mna/x2;
    .locals 2

    .line 1
    sget-object v0, Lcom/tencent/mna/x2;->j:Lcom/tencent/mna/x2;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/tencent/mna/x2;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/tencent/mna/x2;->j:Lcom/tencent/mna/x2;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/tencent/mna/x2;

    invoke-direct {v1}, Lcom/tencent/mna/x2;-><init>()V

    sput-object v1, Lcom/tencent/mna/x2;->j:Lcom/tencent/mna/x2;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/mna/x2;->j:Lcom/tencent/mna/x2;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 152
    :try_start_0
    const-string v1, "\\|"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 153
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    .line 154
    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 155
    array-length v5, v4

    const/4 v6, 0x1

    if-lt v5, v6, :cond_0

    .line 156
    aget-object v4, v4, v2

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :catch_0
    move-exception p1

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "requestGameStatus getUseridList exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    return-object v0
.end method

.method private a(I)V
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, -0x3

    if-ne p1, v0, :cond_1

    .line 215
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "requestGameStatus checkIfRebuildReqFd fd broken, errCode:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 216
    iget p1, p0, Lcom/tencent/mna/x2;->a:I

    invoke-static {p1}, Lcom/tencent/mna/base/jni/e;->a(I)V

    .line 217
    iget p1, p0, Lcom/tencent/mna/x2;->e:I

    invoke-static {p1}, Lcom/tencent/mna/base/jni/e;->b(I)I

    move-result p1

    iput p1, p0, Lcom/tencent/mna/x2;->a:I

    :cond_1
    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 1

    .line 3
    invoke-static {}, Lcom/tencent/mna/u1;->d()Lcom/tencent/mna/u1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mna/u1;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcom/tencent/mna/u1;->d()Lcom/tencent/mna/u1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mna/u1;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    const-string v0, "127.0.0.1"

    return-object v0

    .line 9
    :cond_0
    const-string v0, ""

    return-object v0

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/tencent/mna/x2;->i:Ljava/lang/String;

    return-object v0
.end method

.method private c()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/tencent/mna/d;->d1()I

    move-result v0

    if-gtz v0, :cond_0

    const/16 v0, 0x64

    .line 6
    :cond_0
    iget v1, p0, Lcom/tencent/mna/x2;->f:I

    if-eq v0, v1, :cond_1

    .line 7
    iput v0, p0, Lcom/tencent/mna/x2;->f:I

    .line 9
    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/tencent/mna/x2;->e:I

    :cond_1
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;)I
    .locals 12

    const/16 v0, 0x65

    const-string/jumbo v1, "tools.tmga.qq.com"

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eq p1, v0, :cond_7

    const/16 v0, 0x66

    const/4 v5, 0x1

    if-eq p1, v0, :cond_6

    const/16 v0, 0x68

    if-eq p1, v0, :cond_5

    const/16 v0, 0x69

    if-eq p1, v0, :cond_4

    const/16 v0, 0xca

    if-eq p1, v0, :cond_3

    const/16 v0, 0xcc

    if-eq p1, v0, :cond_2

    const/16 v0, 0xce

    if-eq p1, v0, :cond_1

    const/16 v0, 0xdf

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move-object v11, p2

    goto :goto_2

    .line 11
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/tencent/mna/x2;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/tencent/mna/x2;->d:Ljava/util/List;

    goto :goto_1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/tencent/mna/x2;->d:Ljava/util/List;

    .line 10
    sget-object v5, Lcom/tencent/mna/t0;->c:Ljava/lang/String;

    iput-object v5, p0, Lcom/tencent/mna/x2;->g:Ljava/lang/String;

    goto :goto_1

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/tencent/mna/x2;->d:Ljava/util/List;

    goto :goto_1

    .line 46
    :cond_2
    iget-object v0, p0, Lcom/tencent/mna/x2;->d:Ljava/util/List;

    goto :goto_1

    .line 47
    :cond_3
    iget-object v0, p0, Lcom/tencent/mna/x2;->d:Ljava/util/List;

    goto :goto_1

    .line 70
    :cond_4
    invoke-virtual {p0}, Lcom/tencent/mna/x2;->d()V

    :goto_0
    move-object v11, p2

    move-object v8, v3

    goto :goto_3

    .line 71
    :cond_5
    iget-object v0, p0, Lcom/tencent/mna/x2;->d:Ljava/util/List;

    :goto_1
    move-object v11, p2

    move-object v8, v0

    goto :goto_3

    :cond_6
    move-object v11, v2

    :goto_2
    move-object v8, v3

    const/4 v4, 0x1

    goto :goto_3

    .line 89
    :cond_7
    iget-object v0, p0, Lcom/tencent/mna/x2;->d:Ljava/util/List;

    .line 93
    invoke-static {v1}, Lcom/tencent/mna/n1;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/tencent/mna/x2;->b:Ljava/lang/String;

    .line 94
    sget-object p2, Lcom/tencent/mna/t0;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/mna/x2;->g:Ljava/lang/String;

    move-object v8, v0

    move-object v11, v2

    .line 140
    :goto_3
    iget-object p2, p0, Lcom/tencent/mna/x2;->b:Ljava/lang/String;

    invoke-static {p2}, Lcom/tencent/mna/n1;->l(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_8

    .line 141
    invoke-static {v1}, Lcom/tencent/mna/n1;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/tencent/mna/x2;->b:Ljava/lang/String;

    .line 144
    :cond_8
    sget-object v6, Lcom/tencent/mna/t0;->w:Ljava/lang/String;

    iget-object v7, p0, Lcom/tencent/mna/x2;->g:Ljava/lang/String;

    move-object v5, p0

    move-object v9, p3

    move v10, p1

    invoke-direct/range {v5 .. v11}, Lcom/tencent/mna/x2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILjava/lang/String;)I

    move-result p1

    if-eqz v4, :cond_9

    .line 148
    iput-object v3, p0, Lcom/tencent/mna/x2;->d:Ljava/util/List;

    .line 149
    iput-object v2, p0, Lcom/tencent/mna/x2;->g:Ljava/lang/String;

    :cond_9
    return p1

    :pswitch_data_0
    .packed-switch 0xd0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/tencent/mna/base/jni/e;->d(Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "update assistFilterConfig to:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/utils/c;->a(Landroid/content/Context;)Lcom/tencent/mna/base/utils/c$a;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/tencent/mna/base/utils/c$a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mna/x2;->i:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "update vpnip to:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mna/x2;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    return-void
.end method
