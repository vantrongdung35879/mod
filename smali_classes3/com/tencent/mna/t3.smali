.class public Lcom/tencent/mna/t3;
.super Ljava/lang/Object;
.source "TransportManager.java"


# static fields
.field private static a:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method static synthetic a()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/tencent/mna/t3;->b()V

    return-void
.end method

.method public static a(ILjava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    const-string p1, ""

    .line 4
    :goto_0
    invoke-static {}, Lcom/tencent/mna/d;->o1()I

    move-result v0

    const-string v1, ", msg:"

    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Lcom/tencent/mna/t3$g;

    invoke-direct {v0, p0, p1}, Lcom/tencent/mna/t3$g;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/mna/a2;->g(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 14
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "transportInfo failed for transport switch close, msgType:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->e(Ljava/lang/String;)V

    .line 17
    :goto_1
    invoke-static {}, Lcom/tencent/mna/d;->L1()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 19
    new-instance v1, Lcom/tencent/mna/t3$h;

    invoke-direct {v1, p0, p1, v0}, Lcom/tencent/mna/t3$h;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/tencent/mna/a2;->e(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 28
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "requestGameStatus failed for switch close, msgType:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/v1;->e(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 29
    invoke-static {}, Lcom/tencent/mna/d;->T()I

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    new-instance v0, Lcom/tencent/mna/t3$i;

    invoke-direct {v0, p0, p1, p2}, Lcom/tencent/mna/t3$i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/mna/a2;->g(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 40
    :cond_0
    const-string/jumbo p0, "transportInfo FpsMoveClick failed for intimefps switch close"

    invoke-static {p0}, Lcom/tencent/mna/v1;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Ljava/lang/String;)[I
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/tencent/mna/t3;->b(Ljava/lang/String;)[I

    move-result-object p0

    return-object p0
.end method

.method private static b()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/mna/d;->o1()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/tencent/mna/t3$d;

    invoke-direct {v0}, Lcom/tencent/mna/t3$d;-><init>()V

    invoke-static {v0}, Lcom/tencent/mna/a2;->g(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 11
    :cond_0
    const-string/jumbo v0, "transportInfo not updateSpeedIp for switch close"

    invoke-static {v0}, Lcom/tencent/mna/v1;->e(Ljava/lang/String;)V

    .line 14
    :goto_0
    invoke-static {}, Lcom/tencent/mna/d;->L1()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15
    new-instance v0, Lcom/tencent/mna/t3$e;

    invoke-direct {v0}, Lcom/tencent/mna/t3$e;-><init>()V

    invoke-static {v0}, Lcom/tencent/mna/a2;->e(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 23
    :cond_1
    const-string v0, "requestGameStatus not update vpnIp for switch close"

    invoke-static {v0}, Lcom/tencent/mna/v1;->e(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private static b(Ljava/lang/String;)[I
    .locals 7

    .line 24
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 26
    new-array p0, v1, [I

    return-object p0

    .line 28
    :cond_0
    const-string v0, "\\D"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 29
    array-length v0, p0

    new-array v0, v0, [I

    .line 31
    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v5, p0, v3

    .line 33
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 34
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    add-int/lit8 v6, v4, 0x1

    .line 35
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v0, v4

    move v4, v6

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-nez v4, :cond_3

    .line 40
    new-array p0, v1, [I

    return-object p0

    .line 43
    :cond_3
    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    return-object p0
.end method

.method public static c()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/tencent/mna/t3;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/tencent/mna/t3;->a:Z

    .line 3
    new-instance v0, Lcom/tencent/mna/t3$c;

    invoke-direct {v0}, Lcom/tencent/mna/t3$c;-><init>()V

    invoke-static {v0}, Lcom/tencent/mna/base/utils/NetworkChangeReceiver;->a(Lcom/tencent/mna/base/utils/NetworkChangeReceiver$c;)V

    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2

    .line 4
    invoke-static {}, Lcom/tencent/mna/d;->o1()I

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Lcom/tencent/mna/t3$a;

    invoke-direct {v0, p0}, Lcom/tencent/mna/t3$a;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/mna/a2;->g(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "transportInfo EndSpeed failed for switch close, msg:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->e(Ljava/lang/String;)V

    .line 17
    :goto_0
    invoke-static {}, Lcom/tencent/mna/d;->L1()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 19
    new-instance v1, Lcom/tencent/mna/t3$b;

    invoke-direct {v1, p0, v0}, Lcom/tencent/mna/t3$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/tencent/mna/a2;->e(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 28
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "requestGameStatus failed for switch close, msgType:102, msg:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/v1;->e(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/tencent/mna/d;->o1()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/tencent/mna/t3$j;

    invoke-direct {v0, p0}, Lcom/tencent/mna/t3$j;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/mna/a2;->g(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "transportInfo StartSpeed failed for switch close, msg:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->e(Ljava/lang/String;)V

    .line 14
    :goto_0
    invoke-static {}, Lcom/tencent/mna/d;->L1()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 16
    new-instance v1, Lcom/tencent/mna/t3$k;

    invoke-direct {v1, p0, v0}, Lcom/tencent/mna/t3$k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/tencent/mna/a2;->e(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 25
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "requestGameStatus failed for switch close, msgType:101, msg:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/v1;->e(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/mna/d;->L1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/tencent/mna/t3$f;

    invoke-direct {v0, p0}, Lcom/tencent/mna/t3$f;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/mna/a2;->e(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 9
    :cond_0
    const-string p0, "requestGameStatus not update assist filter config for switch close"

    invoke-static {p0}, Lcom/tencent/mna/v1;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
