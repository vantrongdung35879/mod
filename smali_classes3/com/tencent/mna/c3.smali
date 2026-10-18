.class public Lcom/tencent/mna/c3;
.super Ljava/lang/Object;
.source "RouterProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mna/c3$a;
    }
.end annotation


# static fields
.field public static A:Z = false

.field private static B:Landroid/content/Context; = null

.field public static C:Ljava/lang/String; = ""

.field public static D:Z = false

.field private static E:Lcom/tencent/mna/z2; = null

.field public static a:I = 0x0

.field public static b:Ljava/lang/String; = ""

.field public static c:I = 0x0

.field public static d:I = 0x0

.field public static e:I = 0xa

.field public static f:I = 0x0

.field public static g:I = 0x0

.field public static h:I = 0x0

.field public static i:I = 0x0

.field public static j:I = 0x0

.field public static k:I = 0x0

.field public static l:I = 0x0

.field public static m:I = 0x0

.field public static n:I = 0x0

.field public static o:I = 0x0

.field public static p:I = 0x0

.field public static q:I = 0x0

.field public static r:I = 0x0

.field public static s:I = 0x7d0

.field public static t:I = 0x1388

.field public static u:I = 0x1f4

.field public static v:I = 0x0

.field public static w:Ljava/lang/String; = ""

.field public static x:Ljava/lang/String; = ""

.field public static y:I = -0x1

.field public static z:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()Lcom/tencent/mna/b3;
    .locals 8

    .line 13
    const-string v0, "Step.2 Start auth"

    invoke-static {v0}, Lcom/tencent/mna/c3;->b(Ljava/lang/String;)V

    .line 14
    new-instance v0, Lcom/tencent/mna/b3;

    invoke-direct {v0}, Lcom/tencent/mna/b3;-><init>()V

    .line 16
    sget-boolean v1, Lcom/tencent/mna/c3;->D:Z

    if-eqz v1, :cond_5

    sget v1, Lcom/tencent/mna/c3;->a:I

    if-gtz v1, :cond_0

    goto/16 :goto_2

    .line 22
    :cond_0
    sget-object v1, Lcom/tencent/mna/c3;->C:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_4

    sget-object v1, Lcom/tencent/mna/c3;->C:Ljava/lang/String;

    sget-object v2, Lcom/tencent/mna/c3;->B:Landroid/content/Context;

    .line 23
    invoke-static {v2}, Lcom/tencent/mna/base/utils/WifiUtil;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 29
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/16 v2, -0xa

    .line 32
    :try_start_0
    const-string v3, "phonemac"

    sget-object v4, Lcom/tencent/mna/c3;->w:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    const-string v3, "checksum"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 34
    const-string/jumbo v3, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const/16 v3, 0x3eb

    const/16 v4, 0x3ec

    .line 35
    invoke-static {v3, v4, v1}, Lcom/tencent/mna/c3;->b(SSLorg/json/JSONObject;)Lcom/tencent/mna/b3;

    move-result-object v0

    .line 36
    iget v1, v0, Lcom/tencent/mna/b3;->a:I

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/tencent/mna/b3;->c:Lcom/tencent/mna/a3;

    if-eqz v1, :cond_3

    .line 37
    new-instance v1, Lorg/json/JSONObject;

    iget-object v3, v0, Lcom/tencent/mna/b3;->c:Lcom/tencent/mna/a3;

    iget-object v3, v3, Lcom/tencent/mna/a3;->e:Ljava/lang/String;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 38
    const-string v3, "errno"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_2

    .line 40
    const-string/jumbo v3, "token"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    sput-wide v3, Lcom/tencent/mna/c3;->z:J

    .line 41
    const-string v3, "expiredtime"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 42
    const-string v1, "Step.2 auth success"

    invoke-static {v1}, Lcom/tencent/mna/c3;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :cond_2
    iput v3, v0, Lcom/tencent/mna/b3;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Step.2 auth failed, exception:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 49
    iput v2, v0, Lcom/tencent/mna/b3;->a:I

    .line 52
    :cond_3
    :goto_0
    invoke-static {v0}, Lcom/tencent/mna/c3;->a(Lcom/tencent/mna/b3;)V

    return-object v0

    .line 53
    :cond_4
    :goto_1
    const-string v1, "Step.2 auth failed\uff0crouter bssid not equal"

    invoke-static {v1}, Lcom/tencent/mna/c3;->b(Ljava/lang/String;)V

    const/16 v1, -0x62

    .line 54
    iput v1, v0, Lcom/tencent/mna/b3;->a:I

    return-object v0

    .line 55
    :cond_5
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Step.2 auth failed\uff0cinit:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/tencent/mna/c3;->D:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",rport:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/tencent/mna/c3;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/c3;->b(Ljava/lang/String;)V

    const/16 v1, -0x63

    .line 56
    iput v1, v0, Lcom/tencent/mna/b3;->a:I

    return-object v0
.end method

.method private static a(Lorg/json/JSONArray;)Lcom/tencent/mna/b3;
    .locals 13

    .line 57
    const-string v0, "Step.4 start double send"

    invoke-static {v0}, Lcom/tencent/mna/c3;->b(Ljava/lang/String;)V

    .line 59
    new-instance v0, Lcom/tencent/mna/b3;

    invoke-direct {v0}, Lcom/tencent/mna/b3;-><init>()V

    .line 61
    sget-boolean v1, Lcom/tencent/mna/c3;->D:Z

    if-eqz v1, :cond_6

    sget v1, Lcom/tencent/mna/c3;->a:I

    if-lez v1, :cond_6

    sget v1, Lcom/tencent/mna/c3;->d:I

    if-lez v1, :cond_6

    sget v1, Lcom/tencent/mna/c3;->f:I

    if-gtz v1, :cond_0

    sget v1, Lcom/tencent/mna/c3;->j:I

    if-gtz v1, :cond_0

    goto/16 :goto_2

    .line 69
    :cond_0
    sget-object v1, Lcom/tencent/mna/c3;->C:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_5

    sget-object v1, Lcom/tencent/mna/c3;->C:Ljava/lang/String;

    sget-object v3, Lcom/tencent/mna/c3;->B:Landroid/content/Context;

    .line 70
    invoke-static {v3}, Lcom/tencent/mna/base/utils/WifiUtil;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_1

    .line 76
    :cond_1
    sget v1, Lcom/tencent/mna/c3;->f:I

    .line 77
    sget v3, Lcom/tencent/mna/c3;->g:I

    .line 78
    sget v4, Lcom/tencent/mna/c3;->h:I

    .line 79
    sget v5, Lcom/tencent/mna/c3;->e:I

    .line 80
    sget v6, Lcom/tencent/mna/c3;->j:I

    .line 81
    sget v7, Lcom/tencent/mna/c3;->k:I

    .line 82
    sget v8, Lcom/tencent/mna/c3;->l:I

    if-lez v6, :cond_2

    .line 90
    sget-boolean v9, Lcom/tencent/mna/c3;->A:Z

    if-nez v9, :cond_2

    .line 91
    invoke-static {v2, v5}, Lcom/tencent/mna/base/jni/e;->a(ZI)V

    .line 94
    :cond_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const/16 v9, -0xa

    .line 97
    :try_start_0
    const-string/jumbo v10, "token"

    sget-wide v11, Lcom/tencent/mna/c3;->z:J

    invoke-virtual {v2, v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 98
    const-string v10, "phonemac"

    sget-object v11, Lcom/tencent/mna/c3;->w:Ljava/lang/String;

    invoke-virtual {v2, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    const-string/jumbo v10, "viparray"

    invoke-virtual {v2, v10, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    const-string p0, "doublegap"

    invoke-virtual {v2, p0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 101
    const-string/jumbo p0, "thirdgap"

    invoke-virtual {v2, p0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 102
    const-string p0, "fourgap"

    invoke-virtual {v2, p0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 103
    const-string p0, "dupgap"

    invoke-virtual {v2, p0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/16 p0, 0x3ef

    const/16 v6, 0x3f0

    .line 104
    invoke-static {p0, v6, v2}, Lcom/tencent/mna/c3;->b(SSLorg/json/JSONObject;)Lcom/tencent/mna/b3;

    move-result-object v0

    .line 105
    iget p0, v0, Lcom/tencent/mna/b3;->a:I

    if-nez p0, :cond_4

    iget-object p0, v0, Lcom/tencent/mna/b3;->c:Lcom/tencent/mna/a3;

    if-eqz p0, :cond_4

    .line 106
    new-instance p0, Lorg/json/JSONObject;

    iget-object v2, v0, Lcom/tencent/mna/b3;->c:Lcom/tencent/mna/a3;

    iget-object v2, v2, Lcom/tencent/mna/a3;->e:Ljava/lang/String;

    invoke-direct {p0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 107
    const-string v2, "errno"

    invoke-virtual {p0, v2, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_3

    .line 109
    const-string p0, "Step.4 double send success"

    invoke-static {p0}, Lcom/tencent/mna/c3;->b(Ljava/lang/String;)V

    .line 110
    sget p0, Lcom/tencent/mna/c3;->i:I

    invoke-static {v1, v3, v4, p0}, Lcom/tencent/mna/base/jni/e;->a(IIII)V

    goto :goto_0

    .line 112
    :cond_3
    iput p0, v0, Lcom/tencent/mna/b3;->a:I

    .line 116
    :cond_4
    :goto_0
    invoke-static {v0}, Lcom/tencent/mna/c3;->a(Lcom/tencent/mna/b3;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Step.4 double send failed, exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 120
    iput v9, v0, Lcom/tencent/mna/b3;->a:I

    const/4 p0, 0x0

    .line 123
    invoke-static {p0, v5}, Lcom/tencent/mna/base/jni/e;->a(ZI)V

    .line 125
    invoke-static {v0}, Lcom/tencent/mna/c3;->a(Lcom/tencent/mna/b3;)V

    return-object v0

    .line 126
    :cond_5
    :goto_1
    const-string p0, "Step.4 double send failed, for bssid not equal"

    invoke-static {p0}, Lcom/tencent/mna/c3;->b(Ljava/lang/String;)V

    const/16 p0, -0x62

    .line 127
    iput p0, v0, Lcom/tencent/mna/b3;->a:I

    return-object v0

    .line 128
    :cond_6
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Step.4 double send failed, for switch, init:"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/tencent/mna/c3;->D:Z

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",doublegap:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/tencent/mna/c3;->f:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",rport:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/tencent/mna/c3;->a:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",rds:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/tencent/mna/c3;->d:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",rdoublegap:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/tencent/mna/c3;->j:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/c3;->b(Ljava/lang/String;)V

    const/16 p0, -0x63

    .line 130
    iput p0, v0, Lcom/tencent/mna/b3;->a:I

    return-object v0
.end method

.method private static a(SSLorg/json/JSONObject;)Lcom/tencent/mna/b3;
    .locals 11

    .line 131
    new-instance v0, Lcom/tencent/mna/b3;

    invoke-direct {v0}, Lcom/tencent/mna/b3;-><init>()V

    .line 136
    sget v1, Lcom/tencent/mna/c3;->s:I

    const/16 v2, 0x3f1

    if-ne p0, v2, :cond_0

    .line 138
    sget v1, Lcom/tencent/mna/c3;->u:I

    goto :goto_0

    :cond_0
    const/16 v2, 0x3ef

    if-eq p0, v2, :cond_1

    const/16 v2, 0x3ed

    if-ne p0, v2, :cond_2

    .line 140
    :cond_1
    sget v1, Lcom/tencent/mna/c3;->t:I

    .line 144
    :cond_2
    :goto_0
    invoke-static {v1}, Lcom/tencent/mna/u3;->a(I)Ljava/net/DatagramSocket;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 p0, -0x1

    .line 146
    iput p0, v0, Lcom/tencent/mna/b3;->a:I

    return-object v0

    :cond_3
    const/4 v3, -0x3

    .line 152
    :try_start_0
    sget v4, Lcom/tencent/mna/c3;->v:I

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v5, 0x1

    invoke-static {v4, v5, p0, p2}, Lcom/tencent/mna/a3;->a(ISSLjava/lang/String;)Lcom/tencent/mna/a3;

    move-result-object p2

    .line 153
    invoke-static {p2}, Lcom/tencent/mna/c3;->a(Lcom/tencent/mna/a3;)V

    .line 155
    sget v4, Lcom/tencent/mna/c3;->a:I

    const/16 v5, 0x3e9

    if-ne p0, v5, :cond_4

    const/16 v4, 0x4571

    :cond_4
    if-nez p2, :cond_5

    .line 161
    iput v3, v0, Lcom/tencent/mna/b3;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    :try_start_1
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object v0

    .line 194
    :cond_5
    :try_start_2
    invoke-static {}, Lcom/tencent/mna/c3;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/tencent/mna/a3;->b()[B

    move-result-object p2

    invoke-static {p0, v4, p2}, Lcom/tencent/mna/u3;->a(Ljava/lang/String;I[B)Ljava/net/DatagramPacket;

    move-result-object p0

    if-nez p0, :cond_6

    const/16 p0, -0x9

    .line 197
    iput p0, v0, Lcom/tencent/mna/b3;->a:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 222
    :try_start_3
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    return-object v0

    .line 223
    :cond_6
    :try_start_4
    invoke-virtual {v2, p0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    const/16 p0, 0x1000

    .line 226
    new-array p2, p0, [B

    .line 227
    new-instance v4, Ljava/net/DatagramPacket;

    invoke-direct {v4, p2, p0}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 229
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 230
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    int-to-long v9, v1

    cmp-long p0, v7, v9

    if-gez p0, :cond_8

    .line 231
    invoke-virtual {v2, v4}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 232
    invoke-virtual {v4}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/a3;->a([B)Lcom/tencent/mna/a3;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 233
    iget-short p2, p0, Lcom/tencent/mna/a3;->c:S

    if-ne p1, p2, :cond_7

    .line 234
    iput-object p0, v0, Lcom/tencent/mna/b3;->c:Lcom/tencent/mna/a3;

    const/4 p0, 0x0

    .line 235
    iput p0, v0, Lcom/tencent/mna/b3;->a:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 245
    :cond_8
    :try_start_5
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    return-object v0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 246
    :catch_3
    :try_start_6
    iput v3, v0, Lcom/tencent/mna/b3;->a:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 250
    :try_start_7
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    :catch_4
    return-object v0

    :goto_1
    :try_start_8
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 254
    :catch_5
    throw p0
.end method

.method public static a(Ljava/util/List;)Lcom/tencent/mna/c3$a;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/tencent/mna/c3$a;"
        }
    .end annotation

    .line 282
    invoke-static {}, Lcom/tencent/mna/c3;->d()Lcom/tencent/mna/b3;

    move-result-object v0

    .line 284
    new-instance v1, Lcom/tencent/mna/c3$a;

    invoke-direct {v1}, Lcom/tencent/mna/c3$a;-><init>()V

    .line 285
    sget v2, Lcom/tencent/mna/c3;->a:I

    iput v2, v1, Lcom/tencent/mna/c3$a;->f:I

    .line 287
    iget v0, v0, Lcom/tencent/mna/b3;->a:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 288
    iput v2, v1, Lcom/tencent/mna/c3$a;->d:I

    .line 289
    sget-object v0, Lcom/tencent/mna/c3;->x:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/mna/c3$a;->e:Ljava/lang/String;

    goto :goto_0

    .line 291
    :cond_0
    iput v3, v1, Lcom/tencent/mna/c3$a;->d:I

    .line 294
    :goto_0
    invoke-static {}, Lcom/tencent/mna/c3;->a()Lcom/tencent/mna/b3;

    move-result-object v0

    .line 295
    iget v0, v0, Lcom/tencent/mna/b3;->a:I

    iput v0, v1, Lcom/tencent/mna/c3$a;->a:I

    if-nez v0, :cond_4

    if-eqz p0, :cond_3

    .line 297
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_2

    .line 302
    :cond_1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 303
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_2

    .line 305
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 308
    :cond_2
    invoke-static {v0}, Lcom/tencent/mna/c3;->b(Lorg/json/JSONArray;)Lcom/tencent/mna/b3;

    move-result-object p0

    .line 309
    iget p0, p0, Lcom/tencent/mna/b3;->a:I

    iput p0, v1, Lcom/tencent/mna/c3$a;->b:I

    .line 311
    invoke-static {v0}, Lcom/tencent/mna/c3;->a(Lorg/json/JSONArray;)Lcom/tencent/mna/b3;

    move-result-object p0

    .line 312
    iget p0, p0, Lcom/tencent/mna/b3;->a:I

    iput p0, v1, Lcom/tencent/mna/c3$a;->c:I

    goto :goto_3

    .line 313
    :cond_3
    :goto_2
    const-string p0, "Step.2.5 input guarantee ip is null"

    invoke-static {p0}, Lcom/tencent/mna/v1;->b(Ljava/lang/String;)V

    const/16 p0, -0x65

    .line 314
    iput p0, v1, Lcom/tencent/mna/c3$a;->b:I

    .line 315
    iput p0, v1, Lcom/tencent/mna/c3$a;->c:I

    goto :goto_3

    :cond_4
    const/16 p0, -0x66

    .line 330
    iput p0, v1, Lcom/tencent/mna/c3$a;->b:I

    .line 331
    iput p0, v1, Lcom/tencent/mna/c3$a;->c:I

    .line 333
    :goto_3
    sget-object p0, Lcom/tencent/mna/w;->a:Ljava/util/Locale;

    iget v0, v1, Lcom/tencent/mna/c3$a;->a:I

    .line 334
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v4, v1, Lcom/tencent/mna/c3$a;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v1, Lcom/tencent/mna/c3$a;->c:I

    .line 335
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v3

    aput-object v4, v6, v2

    const/4 v0, 0x2

    aput-object v5, v6, v0

    .line 336
    const-string v0, "ROUTER_QOS errCode: %d_%d_%d"

    invoke-static {p0, v0, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 337
    invoke-static {p0}, Lcom/tencent/mna/c3;->b(Ljava/lang/String;)V

    return-object v1
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 5
    const-string v0, ""

    :try_start_0
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v1

    const-string v2, "gsdkrouterinfo"

    const/4 v3, 0x0

    .line 6
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 7
    invoke-interface {v1, p0, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public static a(ILandroid/content/Context;)V
    .locals 0

    .line 1
    sput p0, Lcom/tencent/mna/c3;->v:I

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/tencent/mna/c3;->B:Landroid/content/Context;

    .line 3
    const-string p0, ""

    sput-object p0, Lcom/tencent/mna/c3;->w:Ljava/lang/String;

    const/4 p0, 0x1

    .line 4
    sput-boolean p0, Lcom/tencent/mna/c3;->D:Z

    return-void
.end method

.method public static a(ILjava/lang/String;IIIIIIIIIIIIIIIIIII)V
    .locals 0

    .line 261
    sput p0, Lcom/tencent/mna/c3;->a:I

    .line 262
    sput-object p1, Lcom/tencent/mna/c3;->b:Ljava/lang/String;

    .line 263
    sput p2, Lcom/tencent/mna/c3;->c:I

    .line 264
    sput p3, Lcom/tencent/mna/c3;->f:I

    .line 265
    sput p4, Lcom/tencent/mna/c3;->g:I

    .line 266
    sput p5, Lcom/tencent/mna/c3;->h:I

    .line 267
    sput p6, Lcom/tencent/mna/c3;->j:I

    .line 268
    sput p7, Lcom/tencent/mna/c3;->k:I

    .line 269
    sput p8, Lcom/tencent/mna/c3;->l:I

    .line 270
    sput p9, Lcom/tencent/mna/c3;->d:I

    .line 271
    sput p10, Lcom/tencent/mna/c3;->e:I

    .line 272
    sput p11, Lcom/tencent/mna/c3;->i:I

    .line 273
    sput p12, Lcom/tencent/mna/c3;->m:I

    .line 274
    sput p13, Lcom/tencent/mna/c3;->o:I

    .line 275
    sput p14, Lcom/tencent/mna/c3;->p:I

    .line 276
    sput p15, Lcom/tencent/mna/c3;->q:I

    .line 277
    sput p16, Lcom/tencent/mna/c3;->n:I

    .line 278
    sput p17, Lcom/tencent/mna/c3;->r:I

    .line 279
    sput p18, Lcom/tencent/mna/c3;->s:I

    .line 280
    sput p19, Lcom/tencent/mna/c3;->t:I

    .line 281
    sput p20, Lcom/tencent/mna/c3;->u:I

    return-void
.end method

.method private static a(Lcom/tencent/mna/a3;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[N]ROUTER_QOS "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/mna/a3;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 256
    sget-object v0, Lcom/tencent/mna/c3;->E:Lcom/tencent/mna/z2;

    if-eqz v0, :cond_0

    .line 257
    invoke-interface {v0, p0}, Lcom/tencent/mna/z2;->a(Lcom/tencent/mna/a3;)V

    :cond_0
    return-void
.end method

.method private static a(Lcom/tencent/mna/b3;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[N]ROUTER_QOS "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/mna/b3;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 259
    sget-object v0, Lcom/tencent/mna/c3;->E:Lcom/tencent/mna/z2;

    if-eqz v0, :cond_0

    .line 260
    invoke-interface {v0, p0}, Lcom/tencent/mna/z2;->a(Lcom/tencent/mna/b3;)V

    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 10
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v0

    .line 11
    const-string v1, "gsdkrouterinfo"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 12
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static b(Lorg/json/JSONArray;)Lcom/tencent/mna/b3;
    .locals 8

    .line 8
    const-string v0, "Step.3 Start bandwidth qos"

    invoke-static {v0}, Lcom/tencent/mna/c3;->b(Ljava/lang/String;)V

    .line 9
    new-instance v0, Lcom/tencent/mna/b3;

    invoke-direct {v0}, Lcom/tencent/mna/b3;-><init>()V

    .line 11
    sget-boolean v1, Lcom/tencent/mna/c3;->D:Z

    const/16 v2, -0x63

    if-eqz v1, :cond_8

    sget v1, Lcom/tencent/mna/c3;->a:I

    if-gtz v1, :cond_0

    goto/16 :goto_3

    .line 17
    :cond_0
    sget v1, Lcom/tencent/mna/c3;->c:I

    const/4 v3, 0x1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    .line 18
    sget v4, Lcom/tencent/mna/c3;->o:I

    if-nez v4, :cond_2

    sget v4, Lcom/tencent/mna/c3;->p:I

    if-nez v4, :cond_2

    sget v4, Lcom/tencent/mna/c3;->q:I

    if-nez v4, :cond_2

    sget v4, Lcom/tencent/mna/c3;->r:I

    if-nez v4, :cond_2

    .line 20
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v3, "Step.3 bandwidth qos failed\uff0cfor switch close:"

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",glmode:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/tencent/mna/c3;->o:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",lowloadmode:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/tencent/mna/c3;->p:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",signalmode:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/tencent/mna/c3;->q:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",promode:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/tencent/mna/c3;->r:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/c3;->b(Ljava/lang/String;)V

    .line 23
    iput v2, v0, Lcom/tencent/mna/b3;->a:I

    return-object v0

    .line 27
    :cond_2
    sget-object v2, Lcom/tencent/mna/c3;->C:Ljava/lang/String;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_7

    sget-object v2, Lcom/tencent/mna/c3;->C:Ljava/lang/String;

    sget-object v3, Lcom/tencent/mna/c3;->B:Landroid/content/Context;

    .line 28
    invoke-static {v3}, Lcom/tencent/mna/base/utils/WifiUtil;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_2

    .line 34
    :cond_3
    sget v2, Lcom/tencent/mna/c3;->c:I

    .line 35
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    if-nez p0, :cond_4

    .line 38
    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    :cond_4
    const/16 v4, -0xa

    .line 42
    :try_start_0
    const-string v5, "phonemac"

    sget-object v6, Lcom/tencent/mna/c3;->w:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    const-string/jumbo v5, "token"

    sget-wide v6, Lcom/tencent/mna/c3;->z:J

    invoke-virtual {v3, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 44
    const-string/jumbo v5, "validtime"

    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 45
    const-string v2, "brandqos"

    invoke-virtual {v3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 46
    const-string v1, "brandlimit"

    sget v2, Lcom/tencent/mna/c3;->m:I

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 47
    const-string v1, "glmode"

    sget v2, Lcom/tencent/mna/c3;->o:I

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 48
    const-string v1, "lowloadmode"

    sget v2, Lcom/tencent/mna/c3;->p:I

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 49
    const-string v1, "signalmode"

    sget v2, Lcom/tencent/mna/c3;->q:I

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 50
    const-string v1, "signallimit"

    sget v2, Lcom/tencent/mna/c3;->n:I

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 51
    const-string v1, "promode"

    sget v2, Lcom/tencent/mna/c3;->r:I

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 52
    const-string/jumbo v1, "viparray"

    invoke-virtual {v3, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/16 p0, 0x3ed

    const/16 v1, 0x3ee

    .line 53
    invoke-static {p0, v1, v3}, Lcom/tencent/mna/c3;->b(SSLorg/json/JSONObject;)Lcom/tencent/mna/b3;

    move-result-object v0

    .line 54
    iget p0, v0, Lcom/tencent/mna/b3;->a:I

    if-nez p0, :cond_6

    iget-object p0, v0, Lcom/tencent/mna/b3;->c:Lcom/tencent/mna/a3;

    if-eqz p0, :cond_6

    .line 55
    new-instance p0, Lorg/json/JSONObject;

    iget-object v1, v0, Lcom/tencent/mna/b3;->c:Lcom/tencent/mna/a3;

    iget-object v1, v1, Lcom/tencent/mna/a3;->e:Ljava/lang/String;

    invoke-direct {p0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 56
    const-string v1, "errno"

    invoke-virtual {p0, v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_5

    .line 58
    const-string p0, "Step.3 bandwidth qos success"

    invoke-static {p0}, Lcom/tencent/mna/c3;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 60
    :cond_5
    iput p0, v0, Lcom/tencent/mna/b3;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Step.3 bandwidth qos failed, exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 65
    iput v4, v0, Lcom/tencent/mna/b3;->a:I

    .line 68
    :cond_6
    :goto_1
    invoke-static {v0}, Lcom/tencent/mna/c3;->a(Lcom/tencent/mna/b3;)V

    return-object v0

    .line 69
    :cond_7
    :goto_2
    const-string p0, "Step.3 bandwidth qos failed, for bssid not equal"

    invoke-static {p0}, Lcom/tencent/mna/c3;->b(Ljava/lang/String;)V

    const/16 p0, -0x62

    .line 70
    iput p0, v0, Lcom/tencent/mna/b3;->a:I

    return-object v0

    .line 71
    :cond_8
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Step.3 bandwidth qos failed\uff0cinit:"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/tencent/mna/c3;->D:Z

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",rport:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/tencent/mna/c3;->a:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/c3;->b(Ljava/lang/String;)V

    .line 72
    iput v2, v0, Lcom/tencent/mna/b3;->a:I

    return-object v0
.end method

.method private static b(SSLorg/json/JSONObject;)Lcom/tencent/mna/b3;
    .locals 2

    .line 73
    invoke-static {p0, p1, p2}, Lcom/tencent/mna/c3;->a(SSLorg/json/JSONObject;)Lcom/tencent/mna/b3;

    move-result-object v0

    .line 74
    iget v1, v0, Lcom/tencent/mna/b3;->a:I

    if-eqz v1, :cond_0

    .line 75
    invoke-static {p0, p1, p2}, Lcom/tencent/mna/c3;->a(SSLorg/json/JSONObject;)Lcom/tencent/mna/b3;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public static b()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    sput v0, Lcom/tencent/mna/c3;->a:I

    .line 2
    sput v0, Lcom/tencent/mna/c3;->f:I

    .line 3
    sput v0, Lcom/tencent/mna/c3;->g:I

    .line 4
    sput v0, Lcom/tencent/mna/c3;->h:I

    .line 5
    sput v0, Lcom/tencent/mna/c3;->i:I

    .line 6
    sput v0, Lcom/tencent/mna/c3;->c:I

    .line 7
    sput v0, Lcom/tencent/mna/c3;->d:I

    return-void
.end method

.method private static b(Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[N]ROUTER_QOS "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 77
    sget-object v0, Lcom/tencent/mna/c3;->E:Lcom/tencent/mna/z2;

    if-eqz v0, :cond_0

    .line 78
    invoke-interface {v0, p0}, Lcom/tencent/mna/z2;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static c()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/tencent/mna/c3;->B:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/mna/base/utils/c;->c(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Lcom/tencent/mna/c3;->B:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    .line 6
    iget v0, v0, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {v0}, Lcom/tencent/mna/n1;->c(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 9
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static d()Lcom/tencent/mna/b3;
    .locals 6

    .line 1
    const-string v0, "Step.1 Start, get version info"

    invoke-static {v0}, Lcom/tencent/mna/c3;->b(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/tencent/mna/b3;

    invoke-direct {v0}, Lcom/tencent/mna/b3;-><init>()V

    .line 4
    sget-boolean v1, Lcom/tencent/mna/c3;->D:Z

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Step.1 getVersion failed\uff0cinit:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/tencent/mna/c3;->D:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",rport:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/tencent/mna/c3;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/c3;->b(Ljava/lang/String;)V

    return-object v0

    .line 9
    :cond_0
    sget-object v1, Lcom/tencent/mna/c3;->B:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/mna/base/utils/WifiUtil;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 10
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 12
    :try_start_0
    const-string v3, "phonemac"

    sget-object v4, Lcom/tencent/mna/c3;->w:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v3, 0x1

    :goto_0
    add-int/lit8 v4, v3, -0x1

    if-lez v3, :cond_2

    const/16 v3, 0x3e9

    const/16 v5, 0x3ea

    .line 15
    invoke-static {v3, v5, v2}, Lcom/tencent/mna/c3;->b(SSLorg/json/JSONObject;)Lcom/tencent/mna/b3;

    move-result-object v0

    .line 16
    iget v3, v0, Lcom/tencent/mna/b3;->a:I

    if-nez v3, :cond_1

    iget-object v3, v0, Lcom/tencent/mna/b3;->c:Lcom/tencent/mna/a3;

    if-eqz v3, :cond_1

    .line 17
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, v0, Lcom/tencent/mna/b3;->c:Lcom/tencent/mna/a3;

    iget-object v3, v3, Lcom/tencent/mna/a3;->e:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 18
    const-string v3, "routername"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/tencent/mna/c3;->x:Ljava/lang/String;

    .line 19
    const-string v3, "allowgamemode"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/tencent/mna/c3;->y:I

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Step.1 getVersion success, name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/tencent/mna/c3;->x:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mna/c3;->b(Ljava/lang/String;)V

    .line 21
    sget-object v2, Lcom/tencent/mna/c3;->x:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/tencent/mna/c3;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    move v3, v4

    goto :goto_0

    :catch_0
    move-exception v1

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Step.1 getVersion failed, exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    const/16 v1, -0xa

    .line 27
    iput v1, v0, Lcom/tencent/mna/b3;->a:I

    .line 30
    :cond_2
    :goto_1
    invoke-static {v0}, Lcom/tencent/mna/c3;->a(Lcom/tencent/mna/b3;)V

    return-object v0
.end method

.method public static e()Lcom/tencent/mna/b3;
    .locals 7

    .line 1
    const-string v0, "Step.5 end double send"

    invoke-static {v0}, Lcom/tencent/mna/c3;->b(Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/tencent/mna/b3;

    invoke-direct {v0}, Lcom/tencent/mna/b3;-><init>()V

    .line 5
    sget-boolean v1, Lcom/tencent/mna/c3;->D:Z

    if-eqz v1, :cond_5

    sget v1, Lcom/tencent/mna/c3;->a:I

    if-gtz v1, :cond_0

    goto/16 :goto_2

    .line 11
    :cond_0
    sget-object v1, Lcom/tencent/mna/c3;->C:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_4

    sget-object v1, Lcom/tencent/mna/c3;->C:Ljava/lang/String;

    sget-object v2, Lcom/tencent/mna/c3;->B:Landroid/content/Context;

    .line 12
    invoke-static {v2}, Lcom/tencent/mna/base/utils/WifiUtil;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 22
    invoke-static {v1, v1, v1, v1}, Lcom/tencent/mna/base/jni/e;->a(IIII)V

    .line 24
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const/16 v3, -0xa

    .line 27
    :try_start_0
    const-string v4, "phonemac"

    sget-object v5, Lcom/tencent/mna/c3;->w:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    const-string/jumbo v4, "token"

    sget-wide v5, Lcom/tencent/mna/c3;->z:J

    invoke-virtual {v2, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const/16 v4, 0x3f1

    const/16 v5, 0x3f2

    .line 30
    invoke-static {v4, v5, v2}, Lcom/tencent/mna/c3;->b(SSLorg/json/JSONObject;)Lcom/tencent/mna/b3;

    move-result-object v0

    .line 31
    iget v2, v0, Lcom/tencent/mna/b3;->a:I

    if-nez v2, :cond_3

    iget-object v2, v0, Lcom/tencent/mna/b3;->c:Lcom/tencent/mna/a3;

    if-eqz v2, :cond_3

    .line 32
    new-instance v2, Lorg/json/JSONObject;

    iget-object v4, v0, Lcom/tencent/mna/b3;->c:Lcom/tencent/mna/a3;

    iget-object v4, v4, Lcom/tencent/mna/a3;->e:Ljava/lang/String;

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 33
    const-string v4, "errno"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_2

    .line 35
    const-string v2, "Step.5 end double send success"

    invoke-static {v2}, Lcom/tencent/mna/c3;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 37
    :cond_2
    iput v2, v0, Lcom/tencent/mna/b3;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 41
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Step.5 end double send failed, exception:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 42
    iput v3, v0, Lcom/tencent/mna/b3;->a:I

    .line 45
    :cond_3
    :goto_0
    sget v2, Lcom/tencent/mna/c3;->e:I

    invoke-static {v1, v2}, Lcom/tencent/mna/base/jni/e;->a(ZI)V

    .line 47
    invoke-static {}, Lcom/tencent/mna/c3;->b()V

    .line 49
    invoke-static {v0}, Lcom/tencent/mna/c3;->a(Lcom/tencent/mna/b3;)V

    return-object v0

    .line 50
    :cond_4
    :goto_1
    const-string v1, "Step.5 end double send failed, for bssid not equal"

    invoke-static {v1}, Lcom/tencent/mna/c3;->b(Ljava/lang/String;)V

    const/16 v1, -0x62

    .line 51
    iput v1, v0, Lcom/tencent/mna/b3;->a:I

    return-object v0

    .line 52
    :cond_5
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Step.5 end double send failed, for init:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/tencent/mna/c3;->D:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",rport:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/tencent/mna/c3;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/c3;->b(Ljava/lang/String;)V

    const/16 v1, -0x63

    .line 53
    iput v1, v0, Lcom/tencent/mna/b3;->a:I

    return-object v0
.end method
