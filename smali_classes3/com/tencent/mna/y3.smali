.class public Lcom/tencent/mna/y3;
.super Ljava/lang/Object;
.source "VivoAccManager.java"


# static fields
.field private static volatile a:Lcom/tencent/mna/z3; = null

.field private static volatile b:Z = false

.field private static c:Lcom/tencent/mna/base/report/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(II)V
    .locals 2

    .line 18
    sget-boolean v0, Lcom/tencent/mna/y3;->b:Z

    if-eqz v0, :cond_3

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Vivo sendMsgWhenNetworkSwitch bindNetRet:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    const-string v1, "6"

    if-ne p0, v0, :cond_0

    .line 21
    const-string p0, "1"

    invoke-static {v1, p0}, Lcom/tencent/mna/y3;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    .line 23
    const-string p0, "3"

    invoke-static {v1, p0}, Lcom/tencent/mna/y3;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-ne p1, v0, :cond_2

    .line 26
    const-string p0, "2"

    invoke-static {v1, p0}, Lcom/tencent/mna/y3;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 28
    :cond_2
    const-string p0, "0"

    invoke-static {v1, p0}, Lcom/tencent/mna/y3;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static declared-synchronized a(Lcom/tencent/mna/base/report/a;)V
    .locals 3

    const-string v0, "Vivo init:"

    const-class v1, Lcom/tencent/mna/y3;

    monitor-enter v1

    .line 2
    :try_start_0
    sget-object v2, Lcom/tencent/mna/y3;->a:Lcom/tencent/mna/z3;

    if-nez v2, :cond_0

    .line 3
    new-instance v2, Lcom/tencent/mna/z3;

    invoke-direct {v2}, Lcom/tencent/mna/z3;-><init>()V

    sput-object v2, Lcom/tencent/mna/y3;->a:Lcom/tencent/mna/z3;

    .line 4
    sput-object p0, Lcom/tencent/mna/y3;->c:Lcom/tencent/mna/base/report/a;

    .line 6
    sget-object p0, Lcom/tencent/mna/y3;->a:Lcom/tencent/mna/z3;

    new-instance v2, Lcom/tencent/mna/y3$a;

    invoke-direct {v2}, Lcom/tencent/mna/y3$a;-><init>()V

    invoke-virtual {p0, v2}, Lcom/tencent/mna/z3;->a(Lcom/tencent/mna/y;)Z

    move-result p0

    sput-boolean p0, Lcom/tencent/mna/y3;->b:Z

    .line 16
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v0, Lcom/tencent/mna/y3;->b:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/tencent/mna/y3;->b(Ljava/lang/String;)V

    return-void
.end method

.method private static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "Vivo sendMsg res:"

    const-string v1, "send jsonMsg = ["

    const-class v2, Lcom/tencent/mna/y3;

    monitor-enter v2

    .line 29
    :try_start_0
    sget-object v3, Lcom/tencent/mna/y3;->a:Lcom/tencent/mna/z3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_0

    .line 31
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    :try_start_2
    invoke-virtual {v3, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 35
    :try_start_3
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 37
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 38
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 39
    sget-object p0, Lcom/tencent/mna/y3;->a:Lcom/tencent/mna/z3;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/mna/z3;->a(Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    :cond_0
    monitor-exit v2

    return-void

    :catchall_1
    move-exception p0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public static a()Z
    .locals 1

    .line 17
    sget-boolean v0, Lcom/tencent/mna/y3;->b:Z

    return v0
.end method

.method public static declared-synchronized b()V
    .locals 3

    const-class v0, Lcom/tencent/mna/y3;

    monitor-enter v0

    .line 99
    :try_start_0
    sget-object v1, Lcom/tencent/mna/y3;->a:Lcom/tencent/mna/z3;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 100
    const-string v1, "Vivo close"

    invoke-static {v1}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 101
    sget-object v1, Lcom/tencent/mna/y3;->a:Lcom/tencent/mna/z3;

    invoke-virtual {v1}, Lcom/tencent/mna/z3;->a()Z

    .line 102
    sput-object v2, Lcom/tencent/mna/y3;->a:Lcom/tencent/mna/z3;

    :cond_0
    const/4 v1, 0x0

    .line 104
    sput-boolean v1, Lcom/tencent/mna/y3;->b:Z

    .line 105
    sput-object v2, Lcom/tencent/mna/y3;->c:Lcom/tencent/mna/base/report/a;
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

.method private static b(Ljava/lang/String;)V
    .locals 8

    const-string/jumbo v0, "vivodiagnose cellInfo LacCid:"

    const-string/jumbo v1, "vivodiagnose cellInfo last LacCid:"

    .line 1
    sget-boolean v2, Lcom/tencent/mna/y3;->b:Z

    if-nez v2, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/tencent/mna/y3;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_2

    :cond_1
    const/16 v2, 0x3a

    .line 8
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_d

    .line 10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_2

    goto/16 :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 13
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    add-int/2addr v2, v5

    .line 14
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "Vivo handleRecvMsg key:"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " value:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 16
    const-string v2, "\"0\""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x2

    if-eqz v6, :cond_7

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Vivo handleRecvMsg VivoW2mSwitch:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mna/d;->z1()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 18
    invoke-static {}, Lcom/tencent/mna/d;->z1()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 20
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p0, 0x1

    goto :goto_0

    .line 22
    :cond_3
    const-string v0, "\"1\""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    .line 26
    :goto_0
    invoke-static {}, Lcom/tencent/mna/h;->q()I

    move-result v0

    if-ne v0, v5, :cond_4

    const/4 v3, 0x1

    :cond_4
    if-eq p0, v3, :cond_5

    const p0, 0x7fffffff

    .line 30
    invoke-static {p0, v5}, Lcom/tencent/mna/h;->b(IZ)V

    goto/16 :goto_2

    :cond_5
    const-string v1, "6"

    if-eqz p0, :cond_6

    if-ne v0, v5, :cond_6

    .line 34
    const-string v2, "1"

    invoke-static {v1, v2}, Lcom/tencent/mna/y3;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    if-nez p0, :cond_d

    if-ne v0, v7, :cond_d

    .line 38
    const-string p0, "3"

    invoke-static {v1, p0}, Lcom/tencent/mna/y3;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 42
    :cond_7
    const-string v2, "\"2\""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 43
    sget-object v2, Lcom/tencent/mna/y3;->c:Lcom/tencent/mna/base/report/a;

    if-eqz v2, :cond_d

    .line 44
    const-string v2, ""

    const-string v3, "_"

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 45
    const-string v2, ";"

    const-string v4, ","

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 46
    const-string v2, "\"{"

    const-string/jumbo v4, "{"

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 47
    const-string/jumbo v2, "}\""

    const-string/jumbo v4, "}"

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 48
    const-string v2, "\\\""

    const-string v4, "\""

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 49
    sget-object v2, Lcom/tencent/mna/y3;->c:Lcom/tencent/mna/base/report/a;

    sget-object v4, Lcom/tencent/mna/base/report/a$a;->VIVODIAGNOSE:Lcom/tencent/mna/base/report/a$a;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/tencent/mna/base/report/a;->a(Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)Lcom/tencent/mna/base/report/a;

    .line 52
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/utils/b;->c()Lcom/tencent/mna/base/utils/b$b;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 53
    iget v3, v2, Lcom/tencent/mna/base/utils/b$b;->b:I

    if-gez v3, :cond_8

    goto :goto_1

    .line 64
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 65
    :cond_9
    :goto_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 66
    const-string v2, "TAC"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 67
    const-string v4, "cellId"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 68
    new-instance v3, Lcom/tencent/mna/base/utils/b$b;

    invoke-direct {v3}, Lcom/tencent/mna/base/utils/b$b;-><init>()V

    .line 69
    iput v2, v3, Lcom/tencent/mna/base/utils/b$b;->a:I

    .line 70
    iput v1, v3, Lcom/tencent/mna/base/utils/b$b;->b:I

    .line 71
    invoke-static {v3}, Lcom/tencent/mna/base/utils/b;->a(Lcom/tencent/mna/base/utils/b$b;)V

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "vivodiagnose failed, value:["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "], exception:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 80
    :cond_a
    const-string p0, "\"4\""

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 81
    invoke-static {}, Lcom/tencent/mna/h;->q()I

    move-result p0

    const-string v0, "8"

    if-ne p0, v7, :cond_b

    .line 82
    const-string/jumbo p0, "wifi"

    invoke-static {v0, p0}, Lcom/tencent/mna/y3;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 83
    :cond_b
    invoke-static {}, Lcom/tencent/mna/h;->q()I

    move-result p0

    if-ne p0, v5, :cond_c

    .line 84
    const-string p0, "4g"

    invoke-static {v0, p0}, Lcom/tencent/mna/y3;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 86
    :cond_c
    const-string p0, "idle"

    invoke-static {v0, p0}, Lcom/tencent/mna/y3;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    :goto_2
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 87
    sget-boolean v0, Lcom/tencent/mna/y3;->b:Z

    if-eqz v0, :cond_0

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Vivo sendMsgWhenGameStart ip:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",port:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 89
    const-string v0, "7"

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/tencent/mna/y3;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 92
    :try_start_0
    const-string v1, "IP"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    const-string p0, "port"

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    const-string p0, "protocol"

    const-string p1, "UDP"

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 96
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 98
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "4"

    invoke-static {p1, p0}, Lcom/tencent/mna/y3;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_0

    .line 5
    const-string/jumbo v0, "{"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x7b

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/16 v1, 0x7d

    .line 7
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-ltz v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    if-ge v0, v1, :cond_0

    .line 8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 9
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static c()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/tencent/mna/y3;->b:Z

    if-eqz v0, :cond_0

    .line 2
    const-string v0, "Vivo sendMsgWhenGameEnd"

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 3
    const-string v0, "7"

    const-string v1, "2"

    invoke-static {v0, v1}, Lcom/tencent/mna/y3;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/tencent/mna/y3;->b:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Vivo sendMsgWhenJumpDiagnose jumpDelay:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 3
    const-string v0, "2"

    invoke-static {v0, p0}, Lcom/tencent/mna/y3;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    const-string p0, "3"

    const-string v0, "1"

    invoke-static {p0, v0}, Lcom/tencent/mna/y3;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
