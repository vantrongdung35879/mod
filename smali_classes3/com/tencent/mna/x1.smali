.class public Lcom/tencent/mna/x1;
.super Ljava/lang/Object;
.source "McAccelerator.java"

# interfaces
.implements Lcom/tencent/mna/a1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mna/x1$b;
    }
.end annotation


# instance fields
.field private a:Lcom/tencent/mna/f1;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Lcom/tencent/mna/f;

.field private h:I

.field private i:I

.field private j:Z

.field private final k:Lcom/tencent/mna/base/utils/NetworkChangeReceiver$c;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/tencent/mna/x1;->a:Lcom/tencent/mna/f1;

    .line 4
    const-string v0, "0.0.0.0"

    iput-object v0, p0, Lcom/tencent/mna/x1;->b:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/tencent/mna/x1;->c:Ljava/lang/String;

    const/4 v1, 0x0

    .line 6
    iput v1, p0, Lcom/tencent/mna/x1;->d:I

    .line 7
    iput v1, p0, Lcom/tencent/mna/x1;->e:I

    .line 9
    iput-object v0, p0, Lcom/tencent/mna/x1;->f:Ljava/lang/String;

    .line 11
    new-instance v0, Lcom/tencent/mna/f;

    const/4 v2, 0x4

    invoke-direct {v0, v2}, Lcom/tencent/mna/f;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/mna/x1;->g:Lcom/tencent/mna/f;

    .line 12
    iput v1, p0, Lcom/tencent/mna/x1;->h:I

    .line 13
    iput v1, p0, Lcom/tencent/mna/x1;->i:I

    .line 14
    iput-boolean v1, p0, Lcom/tencent/mna/x1;->j:Z

    .line 16
    new-instance v0, Lcom/tencent/mna/x1$a;

    invoke-direct {v0, p0}, Lcom/tencent/mna/x1$a;-><init>(Lcom/tencent/mna/x1;)V

    iput-object v0, p0, Lcom/tencent/mna/x1;->k:Lcom/tencent/mna/base/utils/NetworkChangeReceiver$c;

    return-void
.end method

.method private a(II)I
    .locals 11

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/mna/x1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/mna/x1;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tencent/mna/x1;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/mna/x1;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 31
    new-instance v0, Lcom/tencent/mna/f;

    iget-object v8, p0, Lcom/tencent/mna/x1;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v5, "0.0.0.0"

    const-string v6, "0.0.0.0"

    const/4 v4, 0x4

    move-object v3, v0

    move v9, p1

    invoke-direct/range {v3 .. v10}, Lcom/tencent/mna/f;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/mna/x1;->g:Lcom/tencent/mna/f;

    .line 39
    iget p2, p0, Lcom/tencent/mna/x1;->h:I

    invoke-static {p2}, Lcom/tencent/mna/v;->b(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/tencent/mna/f;->i:Ljava/lang/String;

    .line 41
    sget-object p2, Lcom/tencent/mna/w;->a:Ljava/util/Locale;

    iget-object v0, p0, Lcom/tencent/mna/x1;->g:Lcom/tencent/mna/f;

    iget v0, v0, Lcom/tencent/mna/f;->g:I

    .line 45
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v1, Lcom/tencent/mna/t0;->h:I

    .line 46
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mna/x1;->b:Ljava/lang/String;

    iget v3, p0, Lcom/tencent/mna/x1;->d:I

    .line 47
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mna/x1;->c:Ljava/lang/String;

    iget v5, p0, Lcom/tencent/mna/x1;->e:I

    .line 48
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Lcom/tencent/mna/x1;->h:I

    .line 49
    invoke-static {v6}, Lcom/tencent/mna/v;->b(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget v7, p0, Lcom/tencent/mna/x1;->i:I

    .line 50
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v8, 0x8

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    const/4 v0, 0x1

    aput-object v1, v8, v0

    const/4 v0, 0x2

    aput-object v2, v8, v0

    const/4 v0, 0x3

    aput-object v3, v8, v0

    const/4 v0, 0x4

    aput-object v4, v8, v0

    const/4 v0, 0x5

    aput-object v5, v8, v0

    const/4 v0, 0x6

    aput-object v6, v8, v0

    const/4 v0, 0x7

    aput-object v7, v8, v0

    .line 51
    const-string v0, "[N]START_SPEED [McAcc] errCode:%d, bindNetType:[%d], Proxy1IpMain:[%s:%d], Proxy1IpMobile:[%s:%d], devkey:%d, setId:%d"

    invoke-static {p2, v0, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    return p1
.end method

.method static synthetic a(Lcom/tencent/mna/x1;)Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/tencent/mna/x1;->f:Ljava/lang/String;

    return-object p0
.end method

.method private a(ILcom/tencent/mna/base/utils/c$a;)V
    .locals 3

    .line 112
    iget-object v0, p0, Lcom/tencent/mna/x1;->a:Lcom/tencent/mna/f1;

    if-eqz v0, :cond_0

    .line 114
    invoke-interface {v0, p1}, Lcom/tencent/mna/f1;->c(I)Z

    move-result v0

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onNetworkChange:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/mna/base/utils/c;->b(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", mainTunnelEnable:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", vpnIp:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/tencent/mna/base/utils/c$a;->b:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 117
    invoke-static {v0}, Lcom/tencent/mna/base/jni/d;->a(Z)V

    .line 118
    iget-object p1, p2, Lcom/tencent/mna/base/utils/c$a;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/tencent/mna/base/jni/d;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/tencent/mna/x1;ILcom/tencent/mna/base/utils/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/tencent/mna/x1;->a(ILcom/tencent/mna/base/utils/c$a;)V

    return-void
.end method

.method private a(I)Z
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private a(Ljava/lang/String;I)Z
    .locals 0

    if-ltz p2, :cond_0

    .line 119
    invoke-static {p1}, Lcom/tencent/mna/n1;->q(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private j()I
    .locals 9

    .line 1
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/e;->a(Landroid/content/Context;)Lcom/tencent/mna/e;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/tencent/mna/t0;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/tencent/mna/d;->a(Ljava/lang/String;Lcom/tencent/mna/e;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-static {}, Lcom/tencent/mna/t0;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/tencent/mna/d;->a(Ljava/lang/String;Lcom/tencent/mna/e;)I

    move-result v1

    :cond_0
    if-eqz v1, :cond_1

    const v0, 0x14050

    sub-int/2addr v0, v1

    return v0

    .line 12
    :cond_1
    invoke-static {}, Lcom/tencent/mna/d;->i0()Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-static {}, Lcom/tencent/mna/d;->j0()I

    move-result v1

    .line 14
    invoke-direct {p0, v0, v1}, Lcom/tencent/mna/x1;->a(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_2

    const v0, 0x13c69

    return v0

    .line 18
    :cond_2
    invoke-static {}, Lcom/tencent/mna/d;->f()Ljava/lang/String;

    move-result-object v2

    .line 19
    invoke-static {}, Lcom/tencent/mna/d;->g()I

    move-result v3

    .line 20
    invoke-direct {p0, v2, v3}, Lcom/tencent/mna/x1;->a(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_3

    const v0, 0x13c6e

    return v0

    .line 24
    :cond_3
    invoke-static {}, Lcom/tencent/mna/d;->k0()I

    move-result v4

    .line 25
    invoke-direct {p0, v4}, Lcom/tencent/mna/x1;->a(I)Z

    move-result v5

    if-nez v5, :cond_4

    const v0, 0x13c6f

    return v0

    .line 30
    :cond_4
    iput-object v0, p0, Lcom/tencent/mna/x1;->b:Ljava/lang/String;

    .line 31
    iput v1, p0, Lcom/tencent/mna/x1;->d:I

    .line 32
    iput-object v2, p0, Lcom/tencent/mna/x1;->c:Ljava/lang/String;

    .line 33
    iput v3, p0, Lcom/tencent/mna/x1;->e:I

    .line 34
    iput v4, p0, Lcom/tencent/mna/x1;->i:I

    .line 36
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/tencent/mna/x1;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/tencent/mna/x1;->d:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "_"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/tencent/mna/x1;->c:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/tencent/mna/x1;->e:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/tencent/mna/x1;->i:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 38
    iget-object v6, p0, Lcom/tencent/mna/x1;->g:Lcom/tencent/mna/f;

    if-eqz v6, :cond_5

    .line 39
    iput-object v5, v6, Lcom/tencent/mna/f;->d:Ljava/lang/String;

    .line 41
    :cond_5
    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/mna/base/jni/d;->a(Ljava/lang/String;ILjava/lang/String;II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;ILjava/lang/String;IIIZ)I
    .locals 11

    move-object v0, p0

    move-object v7, p3

    move v8, p4

    move/from16 v5, p6

    move-object v1, p1

    .line 52
    iput-object v1, v0, Lcom/tencent/mna/x1;->b:Ljava/lang/String;

    move v2, p2

    .line 53
    iput v2, v0, Lcom/tencent/mna/x1;->d:I

    .line 55
    iput-object v7, v0, Lcom/tencent/mna/x1;->f:Ljava/lang/String;

    move/from16 v6, p5

    .line 57
    iput v6, v0, Lcom/tencent/mna/x1;->h:I

    .line 58
    iput v5, v0, Lcom/tencent/mna/x1;->i:I

    const/4 v10, 0x1

    const/4 v3, 0x0

    if-lez v8, :cond_0

    .line 61
    invoke-static {p3}, Lcom/tencent/mna/n1;->q(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1

    .line 63
    invoke-static {p3, p4, v3}, Lcom/tencent/mna/base/jni/d;->a(Ljava/lang/String;IZ)I

    .line 67
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/tencent/mna/x1;->a(Ljava/lang/String;I)Z

    move-result v9

    if-nez v9, :cond_3

    if-eqz v4, :cond_2

    const v1, 0x13c69

    goto :goto_1

    :cond_2
    const v1, 0x13c6a

    :goto_1
    return v1

    .line 71
    :cond_3
    sget v4, Lcom/tencent/mna/t0;->h:I

    invoke-static {v4}, Lcom/tencent/mna/e2;->a(I)Lcom/tencent/mna/f1;

    move-result-object v4

    iput-object v4, v0, Lcom/tencent/mna/x1;->a:Lcom/tencent/mna/f1;

    .line 73
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v9

    invoke-interface {v4, v9}, Lcom/tencent/mna/f1;->b(Landroid/content/Context;)I

    move-result v4

    if-eqz v4, :cond_4

    const v1, 0x13880

    sub-int/2addr v1, v4

    return v1

    .line 78
    :cond_4
    iget-object v4, v0, Lcom/tencent/mna/x1;->a:Lcom/tencent/mna/f1;

    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v9

    invoke-interface {v4, v9, v3}, Lcom/tencent/mna/f1;->a(Landroid/content/Context;Z)I

    move-result v3

    if-eqz v3, :cond_5

    const v1, 0x14050

    sub-int/2addr v1, v3

    return v1

    .line 83
    :cond_5
    iget-object v3, v0, Lcom/tencent/mna/x1;->a:Lcom/tencent/mna/f1;

    invoke-interface {v3}, Lcom/tencent/mna/f1;->d()Ljava/lang/String;

    move-result-object v3

    .line 84
    iget-object v4, v0, Lcom/tencent/mna/x1;->a:Lcom/tencent/mna/f1;

    invoke-interface {v4}, Lcom/tencent/mna/f1;->a()I

    move-result v4

    .line 87
    invoke-direct {p0, v3, v4}, Lcom/tencent/mna/x1;->a(Ljava/lang/String;I)Z

    move-result v9

    if-nez v9, :cond_6

    const v1, 0x13c6e

    return v1

    .line 91
    :cond_6
    invoke-direct {p0, v5}, Lcom/tencent/mna/x1;->a(I)Z

    move-result v9

    if-nez v9, :cond_7

    const v1, 0x13c6f

    return v1

    .line 96
    :cond_7
    iput-object v3, v0, Lcom/tencent/mna/x1;->c:Ljava/lang/String;

    .line 97
    iput v4, v0, Lcom/tencent/mna/x1;->e:I

    move-object v1, p1

    move v2, p2

    move/from16 v5, p6

    move/from16 v6, p5

    move-object v7, p3

    move v8, p4

    move/from16 v9, p7

    .line 100
    invoke-static/range {v1 .. v9}, Lcom/tencent/mna/base/jni/d;->a(Ljava/lang/String;ILjava/lang/String;IIILjava/lang/String;IZ)I

    move-result v1

    if-nez v1, :cond_8

    .line 106
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mna/base/utils/c;->c(Landroid/content/Context;)I

    move-result v2

    .line 107
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mna/base/utils/c;->a(Landroid/content/Context;)Lcom/tencent/mna/base/utils/c$a;

    move-result-object v3

    .line 108
    invoke-direct {p0, v2, v3}, Lcom/tencent/mna/x1;->a(ILcom/tencent/mna/base/utils/c$a;)V

    .line 110
    invoke-static {v10}, Lcom/tencent/mna/base/jni/d;->a(Z)V

    .line 111
    iget-object v2, v0, Lcom/tencent/mna/x1;->k:Lcom/tencent/mna/base/utils/NetworkChangeReceiver$c;

    invoke-static {v2}, Lcom/tencent/mna/base/utils/NetworkChangeReceiver;->a(Lcom/tencent/mna/base/utils/NetworkChangeReceiver$c;)V

    :cond_8
    return v1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 8

    .line 3
    invoke-virtual {p0}, Lcom/tencent/mna/x1;->e()Lcom/tencent/mna/k;

    move-result-object p2

    iget-wide p2, p2, Lcom/tencent/mna/k;->i:J

    invoke-static {p1, p2, p3}, Lcom/tencent/mna/g;->b(Ljava/lang/String;J)Z

    move-result p1

    if-nez p1, :cond_0

    .line 5
    invoke-static {}, Lcom/tencent/mna/d;->k0()I

    move-result p1

    const p2, 0x14c08

    invoke-direct {p0, p2, p1}, Lcom/tencent/mna/x1;->a(II)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/tencent/mna/x1;->j:Z

    .line 9
    invoke-static {}, Lcom/tencent/mna/d;->i0()Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-static {}, Lcom/tencent/mna/d;->j0()I

    move-result v2

    .line 12
    invoke-static {}, Lcom/tencent/mna/d;->H()Ljava/lang/String;

    move-result-object v3

    .line 13
    invoke-static {}, Lcom/tencent/mna/d;->I()I

    move-result v4

    .line 16
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/tencent/mna/d;->M1()Z

    move-result p2

    invoke-static {p1, p2}, Lcom/tencent/mna/base/utils/e;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p1

    .line 17
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 18
    const-string p1, "START_SPEED [McAcc] use openid as devStr"

    invoke-static {p1}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 19
    sget-object p1, Lcom/tencent/mna/t0;->u:Ljava/lang/String;

    .line 22
    :cond_1
    invoke-static {p1}, Lcom/tencent/mna/base/utils/e;->a(Ljava/lang/String;)J

    move-result-wide p1

    long-to-int v5, p1

    .line 23
    invoke-static {}, Lcom/tencent/mna/d;->k0()I

    move-result p1

    const/4 v7, 0x0

    move-object v0, p0

    move v6, p1

    .line 25
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/mna/x1;->a(Ljava/lang/String;ILjava/lang/String;IIIZ)I

    move-result p2

    .line 28
    invoke-direct {p0, p2, p1}, Lcom/tencent/mna/x1;->a(II)I

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;IILcom/tencent/mna/f1;)Lcom/tencent/mna/e1;
    .locals 7

    .line 120
    new-instance v6, Lcom/tencent/mna/x1$b;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mna/x1$b;-><init>(Lcom/tencent/mna/x1;Ljava/lang/String;IILcom/tencent/mna/f1;)V

    return-object v6
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 121
    const-string v0, "McAccelerator"

    return-object v0
.end method

.method public b()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/tencent/mna/x1;->j()I

    move-result v0

    return v0
.end method

.method public c()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/tencent/mna/x1;->j:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/tencent/mna/g;->h()Z

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/tencent/mna/x1;->j:Z

    .line 6
    iget-object v0, p0, Lcom/tencent/mna/x1;->a:Lcom/tencent/mna/f1;

    if-eqz v0, :cond_1

    .line 7
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/mna/f1;->a(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/tencent/mna/x1;->a:Lcom/tencent/mna/f1;

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/tencent/mna/x1;->k:Lcom/tencent/mna/base/utils/NetworkChangeReceiver$c;

    invoke-static {v0}, Lcom/tencent/mna/base/utils/NetworkChangeReceiver;->b(Lcom/tencent/mna/base/utils/NetworkChangeReceiver$c;)V

    .line 12
    invoke-static {}, Lcom/tencent/mna/base/jni/d;->a()I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Lcom/tencent/mna/k;
    .locals 8

    .line 1
    new-instance v0, Lcom/tencent/mna/k;

    invoke-direct {v0}, Lcom/tencent/mna/k;-><init>()V

    .line 2
    invoke-static {}, Lcom/tencent/mna/base/jni/d;->i()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/mna/k;->a:J

    .line 3
    invoke-static {}, Lcom/tencent/mna/base/jni/d;->c()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/mna/k;->b:J

    .line 5
    invoke-static {}, Lcom/tencent/mna/base/jni/d;->g()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/mna/k;->c:J

    .line 6
    invoke-static {}, Lcom/tencent/mna/base/jni/d;->d()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/mna/k;->d:J

    .line 8
    invoke-static {}, Lcom/tencent/mna/base/jni/d;->b()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/mna/k;->e:J

    .line 9
    invoke-static {}, Lcom/tencent/mna/base/jni/d;->h()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/mna/k;->f:J

    .line 10
    invoke-static {}, Lcom/tencent/mna/base/jni/d;->e()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/mna/k;->g:J

    .line 12
    invoke-static {}, Lcom/tencent/mna/base/jni/d;->f()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/mna/k;->i:J

    .line 13
    iget-wide v3, v0, Lcom/tencent/mna/k;->a:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_1

    iget-wide v3, v0, Lcom/tencent/mna/k;->b:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_1

    iget-wide v3, v0, Lcom/tencent/mna/k;->c:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_1

    iget-wide v3, v0, Lcom/tencent/mna/k;->d:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_1

    iget-wide v3, v0, Lcom/tencent/mna/k;->e:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_1

    iget-wide v3, v0, Lcom/tencent/mna/k;->f:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_1

    iget-wide v3, v0, Lcom/tencent/mna/k;->g:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_1

    cmp-long v3, v1, v5

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public f()Lcom/tencent/mna/f;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/mna/x1;->g:Lcom/tencent/mna/f;

    invoke-static {}, Lcom/tencent/mna/base/jni/d;->j()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mna/f;->j:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/tencent/mna/x1;->g:Lcom/tencent/mna/f;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/mna/x1;->b:Ljava/lang/String;

    return-object v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/mna/x1;->d:I

    return v0
.end method

.method public i()Lcom/tencent/mna/f1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/mna/x1;->a:Lcom/tencent/mna/f1;

    return-object v0
.end method
