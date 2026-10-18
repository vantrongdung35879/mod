.class public Lcom/tencent/mna/m2;
.super Ljava/lang/Object;
.source "QosHelper.java"


# static fields
.field private static a:Ljava/lang/String; = null

.field private static b:Ljava/lang/String; = null

.field private static c:Ljava/lang/String; = "http://qos.game.qq.com:8080/qos/register/?version=100"

.field private static d:Ljava/lang/String; = null

.field private static e:Lcom/tencent/mna/s2; = null

.field private static f:Lcom/tencent/mna/t2; = null

.field private static g:Lcom/tencent/mna/u2; = null

.field private static volatile h:Z = false

.field private static volatile i:Z = false

.field private static j:Z = true

.field private static k:Lcom/tencent/mna/o2; = null

.field public static l:I = 0x0

.field public static m:I = 0x2

.field public static n:Ljava/lang/String; = "-2"

.field public static o:I = -0x1

.field public static p:Ljava/lang/String; = "-1"

.field public static q:Ljava/lang/String; = "0"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method static synthetic a(Lcom/tencent/mna/u2;)Lcom/tencent/mna/u2;
    .locals 0

    .line 6
    sput-object p0, Lcom/tencent/mna/m2;->g:Lcom/tencent/mna/u2;

    return-object p0
.end method

.method public static declared-synchronized a(Lcom/tencent/mna/o1;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/mna/o1;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "req failed, for curDelay["

    const-string v1, "req failed, for remote QosModel judge is not 1\uff0cres:"

    const-class v2, Lcom/tencent/mna/m2;

    monitor-enter v2

    .line 9
    :try_start_0
    sget-boolean v3, Lcom/tencent/mna/m2;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    monitor-exit v2

    return-void

    .line 12
    :cond_0
    :try_start_1
    sget-boolean v3, Lcom/tencent/mna/m2;->j:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_1

    monitor-exit v2

    return-void

    .line 16
    :cond_1
    :try_start_2
    sget-object v3, Lcom/tencent/mna/m2;->g:Lcom/tencent/mna/u2;

    if-eqz v3, :cond_2

    iget v3, v3, Lcom/tencent/mna/u2;->e:I

    int-to-long v3, v3

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget-object v7, Lcom/tencent/mna/m2;->g:Lcom/tencent/mna/u2;

    iget-wide v7, v7, Lcom/tencent/mna/u2;->f:J

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    cmp-long v7, v3, v5

    if-lez v7, :cond_2

    .line 19
    const-string p0, "session already exist and not timeout, not req again"

    invoke-static {p0}, Lcom/tencent/mna/m2;->b(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    return-void

    .line 24
    :cond_2
    :try_start_3
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mna/base/utils/c;->d(Landroid/content/Context;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_3

    .line 25
    const-string p0, "req failed, for not 4G or 5G network"

    invoke-static {p0}, Lcom/tencent/mna/m2;->b(Ljava/lang/String;)V

    const/4 p0, -0x1

    .line 26
    sput p0, Lcom/tencent/mna/m2;->l:I

    .line 28
    sput-boolean v4, Lcom/tencent/mna/m2;->j:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v2

    return-void

    :cond_3
    if-nez p0, :cond_4

    .line 33
    :try_start_4
    const-string p0, "req failed, for input jumpValues is null"

    invoke-static {p0}, Lcom/tencent/mna/m2;->b(Ljava/lang/String;)V

    const/16 p0, -0x64

    .line 34
    sput p0, Lcom/tencent/mna/m2;->l:I

    .line 36
    sput-boolean v4, Lcom/tencent/mna/m2;->j:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v2

    return-void

    .line 42
    :cond_4
    :try_start_5
    sget-object v3, Lcom/tencent/mna/m2;->e:Lcom/tencent/mna/s2;

    if-eqz v3, :cond_9

    .line 43
    iget v5, v3, Lcom/tencent/mna/s2;->c:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_5

    const/4 p0, -0x3

    .line 44
    sput p0, Lcom/tencent/mna/m2;->l:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v2

    return-void

    .line 48
    :cond_5
    :try_start_6
    iget v5, v3, Lcom/tencent/mna/s2;->m:I

    if-gez v5, :cond_6

    .line 50
    iget v1, p0, Lcom/tencent/mna/o1;->k:I

    iget v5, p0, Lcom/tencent/mna/o1;->m:I

    invoke-static {v3, v1, v5}, Lcom/tencent/mna/m2;->b(Lcom/tencent/mna/s2;II)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 p1, -0x2

    .line 51
    sput p1, Lcom/tencent/mna/m2;->l:I

    .line 52
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/tencent/mna/o1;->k:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] less than ensureAdj1["

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/tencent/mna/m2;->e:Lcom/tencent/mna/s2;

    iget p0, p0, Lcom/tencent/mna/s2;->i:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "], or larger than ensureAdj2["

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/tencent/mna/m2;->e:Lcom/tencent/mna/s2;

    iget p0, p0, Lcom/tencent/mna/s2;->j:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/m2;->b(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit v2

    return-void

    :cond_6
    if-eq v5, v6, :cond_7

    const/16 p0, -0x9

    .line 59
    :try_start_7
    sput p0, Lcom/tencent/mna/m2;->l:I

    .line 60
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/tencent/mna/m2;->e:Lcom/tencent/mna/s2;

    iget p1, p1, Lcom/tencent/mna/s2;->m:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/m2;->b(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit v2

    return-void

    .line 65
    :cond_7
    :try_start_8
    sget-object v0, Lcom/tencent/mna/m2;->e:Lcom/tencent/mna/s2;

    iget v1, v0, Lcom/tencent/mna/s2;->l:I

    if-lez v1, :cond_8

    sub-int/2addr v1, v6

    .line 66
    iput v1, v0, Lcom/tencent/mna/s2;->l:I

    goto :goto_0

    .line 68
    :cond_8
    const-string p0, "req failed, for larger than max req times"

    invoke-static {p0}, Lcom/tencent/mna/m2;->b(Ljava/lang/String;)V

    .line 69
    sput-boolean v4, Lcom/tencent/mna/m2;->j:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit v2

    return-void

    .line 75
    :cond_9
    :goto_0
    :try_start_9
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tencent/mna/m2$a;

    invoke-direct {v1, p0, p1}, Lcom/tencent/mna/m2$a;-><init>(Lcom/tencent/mna/o1;Ljava/util/List;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 129
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    throw p0
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-static {p0}, Lcom/tencent/mna/m2;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 7
    sput-object p0, Lcom/tencent/mna/m2;->a:Ljava/lang/String;

    .line 8
    sput-object p1, Lcom/tencent/mna/m2;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic a()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/tencent/mna/m2;->h:Z

    return v0
.end method

.method static synthetic a(Lcom/tencent/mna/o1;)Z
    .locals 0

    .line 3
    invoke-static {p0}, Lcom/tencent/mna/m2;->b(Lcom/tencent/mna/o1;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/tencent/mna/s2;II)Z
    .locals 0

    .line 4
    invoke-static {p0, p1, p2}, Lcom/tencent/mna/m2;->b(Lcom/tencent/mna/s2;II)Z

    move-result p0

    return p0
.end method

.method static a(Ljava/util/List;Z)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    .line 130
    const-string v0, "Step.3 start qos..."

    invoke-static {v0}, Lcom/tencent/mna/m2;->b(Ljava/lang/String;)V

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    .line 133
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 134
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 135
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    const/16 v4, 0x2c

    .line 136
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 138
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 142
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "[N]Step.3 start qos vip: "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/m2;->b(Ljava/lang/String;)V

    .line 143
    sget-object p0, Lcom/tencent/mna/m2;->f:Lcom/tencent/mna/t2;

    if-nez p0, :cond_2

    const-string v2, ""

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/tencent/mna/t2;->c:Ljava/lang/String;

    :goto_2
    move-object v10, v2

    if-eqz p0, :cond_3

    .line 146
    iget-object p0, p0, Lcom/tencent/mna/t2;->d:Ljava/lang/String;

    if-eqz p0, :cond_3

    .line 147
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_3

    sget-object p0, Lcom/tencent/mna/m2;->f:Lcom/tencent/mna/t2;

    iget-object p0, p0, Lcom/tencent/mna/t2;->d:Ljava/lang/String;

    .line 148
    invoke-static {p0}, Lcom/tencent/mna/n2;->b(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 149
    sget-object p0, Lcom/tencent/mna/m2;->f:Lcom/tencent/mna/t2;

    iget-object p0, p0, Lcom/tencent/mna/t2;->d:Ljava/lang/String;

    goto :goto_3

    .line 151
    :cond_3
    invoke-static {}, Lcom/tencent/mna/n2;->a()Ljava/lang/String;

    move-result-object p0

    :goto_3
    move-object v8, p0

    .line 154
    invoke-static {v8}, Lcom/tencent/mna/n1;->q(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 155
    const-string p0, "Step.3 start qos failed, for get local ip failed"

    invoke-static {p0}, Lcom/tencent/mna/m2;->b(Ljava/lang/String;)V

    const/4 p0, -0x6

    .line 156
    sput p0, Lcom/tencent/mna/m2;->l:I

    return v1

    .line 160
    :cond_4
    sput-object v8, Lcom/tencent/mna/m2;->q:Ljava/lang/String;

    .line 162
    new-instance p0, Lcom/tencent/mna/r2;

    sget-object v5, Lcom/tencent/mna/m2;->a:Ljava/lang/String;

    sget-object v6, Lcom/tencent/mna/m2;->b:Ljava/lang/String;

    sget-object v9, Lcom/tencent/mna/m2;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v7, 0x2

    move-object v4, p0

    invoke-direct/range {v4 .. v11}, Lcom/tencent/mna/r2;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    sget-object v0, Lcom/tencent/mna/m2;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/tencent/mna/r2;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tencent/mna/n2;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Step.3 start qos res:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/m2;->b(Ljava/lang/String;)V

    .line 167
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/mna/u2;->a(Lorg/json/JSONObject;)Lcom/tencent/mna/u2;

    move-result-object v0

    sput-object v0, Lcom/tencent/mna/m2;->g:Lcom/tencent/mna/u2;

    .line 168
    iget v2, v0, Lcom/tencent/mna/u2;->a:I

    if-nez v2, :cond_6

    if-eqz p1, :cond_5

    goto :goto_4

    :cond_5
    const/4 v3, 0x2

    .line 171
    :goto_4
    sput v3, Lcom/tencent/mna/m2;->l:I

    .line 172
    iget-object p1, v0, Lcom/tencent/mna/u2;->d:Ljava/lang/String;

    sput-object p1, Lcom/tencent/mna/m2;->p:Ljava/lang/String;

    .line 173
    const-string p1, "Step.3 start qos success"

    invoke-static {p1}, Lcom/tencent/mna/m2;->b(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 176
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Step.3 start qos failed errno:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/tencent/mna/m2;->g:Lcom/tencent/mna/u2;

    iget v0, v0, Lcom/tencent/mna/u2;->a:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", errmsg"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/tencent/mna/m2;->g:Lcom/tencent/mna/u2;

    iget-object v0, v0, Lcom/tencent/mna/u2;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/mna/m2;->b(Ljava/lang/String;)V

    const/4 p1, -0x7

    .line 177
    sput p1, Lcom/tencent/mna/m2;->l:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    const/4 p1, -0x8

    .line 181
    sput p1, Lcom/tencent/mna/m2;->l:I

    .line 182
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Step.3 start qos failed, for json parse failed, res:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/m2;->b(Ljava/lang/String;)V

    :goto_5
    return v1
.end method

.method static synthetic a(Z)Z
    .locals 0

    .line 2
    sput-boolean p0, Lcom/tencent/mna/m2;->h:Z

    return p0
.end method

.method static synthetic b()Lcom/tencent/mna/s2;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/m2;->e:Lcom/tencent/mna/s2;

    return-object v0
.end method

.method private static b(Ljava/lang/String;)V
    .locals 2

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "4G_QOS:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 65
    sget-object v0, Lcom/tencent/mna/m2;->k:Lcom/tencent/mna/o2;

    if-eqz v0, :cond_0

    .line 66
    invoke-interface {v0, p0}, Lcom/tencent/mna/o2;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static b(Lcom/tencent/mna/o1;)Z
    .locals 26

    move-object/from16 v0, p0

    const-string v1, "Step.1 req getPhoneNum url failed\uff0cfor remote switch isQos:"

    const-string v2, "Step.1 req getPhoneNum url failed\uff0cerrno: "

    .line 11
    const-string v3, "Step.1 start req getPhoneNum url"

    invoke-static {v3}, Lcom/tencent/mna/m2;->b(Ljava/lang/String;)V

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 14
    const-string v0, "Step.1 req getPhoneNum url failed, for input jumpValues is null"

    invoke-static {v0}, Lcom/tencent/mna/m2;->b(Ljava/lang/String;)V

    const/16 v0, -0x64

    .line 15
    sput v0, Lcom/tencent/mna/m2;->l:I

    return v3

    .line 20
    :cond_0
    new-instance v24, Lcom/tencent/mna/q2;

    move-object/from16 v4, v24

    sget-object v5, Lcom/tencent/mna/m2;->a:Ljava/lang/String;

    sget-object v6, Lcom/tencent/mna/m2;->b:Ljava/lang/String;

    sget-object v8, Lcom/tencent/mna/m2;->d:Ljava/lang/String;

    iget v9, v0, Lcom/tencent/mna/o1;->k:I

    iget v10, v0, Lcom/tencent/mna/o1;->e:I

    iget v11, v0, Lcom/tencent/mna/o1;->m:I

    iget-wide v12, v0, Lcom/tencent/mna/o1;->v:D

    iget-wide v14, v0, Lcom/tencent/mna/o1;->u:D

    iget-object v7, v0, Lcom/tencent/mna/o1;->z:Ljava/lang/String;

    move-object/from16 v16, v7

    iget v7, v0, Lcom/tencent/mna/o1;->w:I

    move/from16 v17, v7

    iget v7, v0, Lcom/tencent/mna/o1;->y:I

    move/from16 v18, v7

    iget v7, v0, Lcom/tencent/mna/o1;->A:I

    move/from16 v19, v7

    iget v7, v0, Lcom/tencent/mna/o1;->B:I

    move/from16 v20, v7

    iget-object v7, v0, Lcom/tencent/mna/o1;->b:Ljava/lang/String;

    move-object/from16 v21, v7

    move-object/from16 v25, v4

    iget-wide v3, v0, Lcom/tencent/mna/o1;->c:J

    move-wide/from16 v22, v3

    const/4 v7, 0x1

    move-object/from16 v4, v25

    invoke-direct/range {v4 .. v23}, Lcom/tencent/mna/q2;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIDDLjava/lang/String;IIIILjava/lang/String;J)V

    .line 38
    invoke-virtual/range {v24 .. v24}, Lcom/tencent/mna/q2;->a()Ljava/lang/String;

    move-result-object v0

    .line 40
    sget-object v3, Lcom/tencent/mna/m2;->c:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/tencent/mna/n2;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Step.1 req getPhoneNum url res:::"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mna/m2;->b(Ljava/lang/String;)V

    .line 44
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/tencent/mna/s2;->a(Lorg/json/JSONObject;)Lcom/tencent/mna/s2;

    move-result-object v3

    sput-object v3, Lcom/tencent/mna/m2;->e:Lcom/tencent/mna/s2;

    .line 46
    iget v4, v3, Lcom/tencent/mna/s2;->a:I

    if-eqz v4, :cond_1

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/tencent/mna/m2;->e:Lcom/tencent/mna/s2;

    iget v2, v2, Lcom/tencent/mna/s2;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", errmsg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/tencent/mna/m2;->e:Lcom/tencent/mna/s2;

    iget-object v2, v2, Lcom/tencent/mna/s2;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/m2;->b(Ljava/lang/String;)V

    const/4 v1, -0x4

    .line 49
    sput v1, Lcom/tencent/mna/m2;->l:I

    const/4 v0, 0x0

    return v0

    .line 52
    :cond_1
    iget v2, v3, Lcom/tencent/mna/s2;->c:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/tencent/mna/m2;->e:Lcom/tencent/mna/s2;

    iget v1, v1, Lcom/tencent/mna/s2;->c:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/m2;->b(Ljava/lang/String;)V

    const/4 v1, -0x3

    .line 54
    sput v1, Lcom/tencent/mna/m2;->l:I

    .line 56
    const-string v1, "-1"

    sput-object v1, Lcom/tencent/mna/m2;->n:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    :cond_2
    return v3

    .line 62
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Step.1 req getPhoneNum url failed\uff0cfor json parse error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/m2;->b(Ljava/lang/String;)V

    const/4 v0, -0x5

    .line 63
    sput v0, Lcom/tencent/mna/m2;->l:I

    const/4 v0, 0x0

    return v0
.end method

.method private static b(Lcom/tencent/mna/s2;II)Z
    .locals 3

    .line 3
    iget v0, p0, Lcom/tencent/mna/s2;->h:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    const/4 v0, 0x4

    if-ge p2, v0, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    iget p2, p0, Lcom/tencent/mna/s2;->j:I

    if-lez p2, :cond_4

    iget v0, p0, Lcom/tencent/mna/s2;->i:I

    if-gt p2, v0, :cond_1

    goto :goto_0

    :cond_1
    if-lt p1, v0, :cond_2

    if-le p1, p2, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1

    .line 10
    :cond_4
    :goto_0
    iget p0, p0, Lcom/tencent/mna/s2;->i:I

    if-ge p1, p0, :cond_5

    const/4 v1, 0x1

    :cond_5
    :goto_1
    return v1
.end method

.method static synthetic b(Z)Z
    .locals 0

    .line 2
    sput-boolean p0, Lcom/tencent/mna/m2;->i:Z

    return p0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/m2;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 0

    .line 2
    sput-object p0, Lcom/tencent/mna/m2;->d:Ljava/lang/String;

    return-void
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/m2;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/mna/m2;->k()Z

    move-result v0

    return v0
.end method

.method static synthetic f()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/tencent/mna/m2;->i:Z

    return v0
.end method

.method static synthetic g()Lcom/tencent/mna/u2;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/m2;->g:Lcom/tencent/mna/u2;

    return-object v0
.end method

.method static synthetic h()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/m2;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/m2;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized j()V
    .locals 2

    const-class v0, Lcom/tencent/mna/m2;

    monitor-enter v0

    .line 1
    :try_start_0
    const-string v1, "-2"

    sput-object v1, Lcom/tencent/mna/m2;->n:Ljava/lang/String;

    .line 2
    const-string v1, "-1"

    sput-object v1, Lcom/tencent/mna/m2;->p:Ljava/lang/String;

    .line 3
    const-string v1, "0"

    sput-object v1, Lcom/tencent/mna/m2;->q:Ljava/lang/String;

    const/4 v1, 0x0

    .line 4
    sput v1, Lcom/tencent/mna/m2;->l:I

    const/4 v1, -0x1

    .line 5
    sput v1, Lcom/tencent/mna/m2;->o:I

    const/4 v1, 0x0

    .line 6
    sput-object v1, Lcom/tencent/mna/m2;->e:Lcom/tencent/mna/s2;

    .line 7
    sput-object v1, Lcom/tencent/mna/m2;->f:Lcom/tencent/mna/t2;

    .line 8
    sput-object v1, Lcom/tencent/mna/m2;->g:Lcom/tencent/mna/u2;

    const/4 v1, 0x1

    .line 9
    sput-boolean v1, Lcom/tencent/mna/m2;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static k()Z
    .locals 5

    .line 1
    const-string v0, "Step.2 req phoneNum success, result:"

    const-string v1, "Step.2 req phoneNum failed, error: "

    const-string v2, "Step.2 req phoneNum..."

    invoke-static {v2}, Lcom/tencent/mna/m2;->b(Ljava/lang/String;)V

    .line 2
    sget-object v2, Lcom/tencent/mna/m2;->e:Lcom/tencent/mna/s2;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 3
    const-string v0, "Step.2 req phoneNum failed, rsp is null"

    invoke-static {v0}, Lcom/tencent/mna/m2;->b(Ljava/lang/String;)V

    return v3

    .line 7
    :cond_0
    iget-object v2, v2, Lcom/tencent/mna/s2;->e:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 8
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 12
    :cond_1
    invoke-static {v2}, Lcom/tencent/mna/n2;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Step.2 req phoneNum res:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mna/m2;->b(Ljava/lang/String;)V

    .line 16
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/tencent/mna/t2;->a(Lorg/json/JSONObject;)Lcom/tencent/mna/t2;

    move-result-object v3

    sput-object v3, Lcom/tencent/mna/m2;->f:Lcom/tencent/mna/t2;

    .line 17
    iget-object v3, v3, Lcom/tencent/mna/t2;->c:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/mna/m2;->f:Lcom/tencent/mna/t2;

    iget-object v0, v0, Lcom/tencent/mna/t2;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/m2;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 20
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/tencent/mna/m2;->f:Lcom/tencent/mna/t2;

    iget v1, v1, Lcom/tencent/mna/t2;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errmsg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/tencent/mna/m2;->f:Lcom/tencent/mna/t2;

    iget-object v1, v1, Lcom/tencent/mna/t2;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/m2;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 23
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Step.2 req phoneNum failed, for json parse error:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/m2;->b(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x1

    return v0

    .line 24
    :cond_3
    :goto_1
    const-string v0, "Step.2 req phoneNum failed, the getPhoneNum url is null"

    invoke-static {v0}, Lcom/tencent/mna/m2;->b(Ljava/lang/String;)V

    return v3
.end method

.method public static l()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tencent/mna/m2$b;

    invoke-direct {v1}, Lcom/tencent/mna/m2$b;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 34
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
