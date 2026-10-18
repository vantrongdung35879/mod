.class public Lcom/tencent/mna/l3;
.super Ljava/lang/Object;
.source "TCallAccelerator.java"

# interfaces
.implements Lcom/tencent/mna/a1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mna/l3$a;
    }
.end annotation


# instance fields
.field private a:Lcom/tencent/mna/base/jni/entity/TCallTunnelRet;

.field private b:Lcom/tencent/mna/f;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/tencent/mna/l3;->a:Lcom/tencent/mna/base/jni/entity/TCallTunnelRet;

    .line 3
    new-instance v0, Lcom/tencent/mna/f;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/tencent/mna/f;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/mna/l3;->b:Lcom/tencent/mna/f;

    return-void
.end method

.method private a(I)I
    .locals 1

    if-gez p1, :cond_0

    const v0, 0xee48

    sub-int/2addr v0, p1

    return v0

    :cond_0
    return p1
.end method

.method private b(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/mna/l3;->b:Lcom/tencent/mna/f;

    invoke-direct {p0, p1}, Lcom/tencent/mna/l3;->a(I)I

    move-result p1

    iput p1, v0, Lcom/tencent/mna/f;->g:I

    .line 2
    iget-object p1, p0, Lcom/tencent/mna/l3;->b:Lcom/tencent/mna/f;

    iget p1, p1, Lcom/tencent/mna/f;->g:I

    return p1
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 6

    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Lcom/tencent/mna/base/jni/f;->a(Z)I

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0, v0}, Lcom/tencent/mna/l3;->b(I)I

    move-result p1

    return p1

    .line 7
    :cond_0
    sget-object v0, Lcom/tencent/mna/t0;->u:Ljava/lang/String;

    .line 8
    invoke-static {p2, v0}, Lcom/tencent/mna/base/jni/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/jni/entity/TCallTunnelRet;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mna/l3;->a:Lcom/tencent/mna/base/jni/entity/TCallTunnelRet;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 11
    iget v1, v1, Lcom/tencent/mna/base/jni/entity/TCallTunnelRet;->tunnelErrno:I

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v3, p0, Lcom/tencent/mna/l3;->a:Lcom/tencent/mna/base/jni/entity/TCallTunnelRet;

    iget v3, v3, Lcom/tencent/mna/base/jni/entity/TCallTunnelRet;->masterIp:I

    .line 13
    invoke-static {v3}, Lcom/tencent/mna/n1;->a(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mna/l3;->a:Lcom/tencent/mna/base/jni/entity/TCallTunnelRet;

    iget v4, v4, Lcom/tencent/mna/base/jni/entity/TCallTunnelRet;->accessIp:I

    .line 14
    invoke-static {v4}, Lcom/tencent/mna/n1;->a(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v2

    aput-object v3, v5, p1

    const/4 p1, 0x2

    aput-object v4, v5, p1

    .line 15
    const-string p1, "[N]START_SPEED TCall failed, error:%d, masterIp:%s, proxyIp:%s"

    invoke-static {p1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 21
    :cond_1
    iget-object p1, p0, Lcom/tencent/mna/l3;->a:Lcom/tencent/mna/base/jni/entity/TCallTunnelRet;

    if-nez p1, :cond_2

    const p1, 0x11171

    .line 22
    invoke-direct {p0, p1}, Lcom/tencent/mna/l3;->b(I)I

    move-result p1

    return p1

    .line 26
    :cond_2
    iget-object v1, p0, Lcom/tencent/mna/l3;->b:Lcom/tencent/mna/f;

    iget p1, p1, Lcom/tencent/mna/base/jni/entity/TCallTunnelRet;->masterIp:I

    invoke-static {p1}, Lcom/tencent/mna/n1;->a(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/tencent/mna/f;->b:Ljava/lang/String;

    .line 27
    iget-object p1, p0, Lcom/tencent/mna/l3;->b:Lcom/tencent/mna/f;

    iget-object v1, p0, Lcom/tencent/mna/l3;->a:Lcom/tencent/mna/base/jni/entity/TCallTunnelRet;

    iget v1, v1, Lcom/tencent/mna/base/jni/entity/TCallTunnelRet;->accessIp:I

    invoke-static {v1}, Lcom/tencent/mna/n1;->a(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/tencent/mna/f;->d:Ljava/lang/String;

    .line 28
    iget-object p1, p0, Lcom/tencent/mna/l3;->b:Lcom/tencent/mna/f;

    iget-object v1, p0, Lcom/tencent/mna/l3;->a:Lcom/tencent/mna/base/jni/entity/TCallTunnelRet;

    iget v1, v1, Lcom/tencent/mna/base/jni/entity/TCallTunnelRet;->accessIp:I

    invoke-static {v1}, Lcom/tencent/mna/n1;->a(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/tencent/mna/f;->e:Ljava/lang/String;

    .line 30
    iget-object p1, p0, Lcom/tencent/mna/l3;->a:Lcom/tencent/mna/base/jni/entity/TCallTunnelRet;

    iget p1, p1, Lcom/tencent/mna/base/jni/entity/TCallTunnelRet;->tunnelErrno:I

    if-eqz p1, :cond_3

    .line 31
    invoke-direct {p0, p1}, Lcom/tencent/mna/l3;->b(I)I

    move-result p1

    return p1

    .line 35
    :cond_3
    invoke-static {}, Lcom/tencent/mna/d;->a1()Ljava/lang/String;

    move-result-object p1

    .line 36
    invoke-static {}, Lcom/tencent/mna/d;->b1()I

    move-result v1

    .line 37
    invoke-static {}, Lcom/tencent/mna/d;->l()Ljava/lang/String;

    move-result-object v3

    .line 39
    invoke-static {p2, p2, p3, v0, v3}, Lcom/tencent/mna/base/jni/f;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result p3

    if-eqz p3, :cond_4

    .line 41
    invoke-direct {p0, p3}, Lcom/tencent/mna/l3;->b(I)I

    move-result p1

    return p1

    .line 44
    :cond_4
    invoke-static {p2, p1, v1, v0, v3}, Lcom/tencent/mna/base/jni/f;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_5

    .line 46
    invoke-direct {p0, p1}, Lcom/tencent/mna/l3;->b(I)I

    move-result p1

    return p1

    .line 49
    :cond_5
    invoke-direct {p0, v2}, Lcom/tencent/mna/l3;->b(I)I

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;IILcom/tencent/mna/f1;)Lcom/tencent/mna/e1;
    .locals 7

    .line 50
    new-instance v6, Lcom/tencent/mna/l3$a;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mna/l3$a;-><init>(Lcom/tencent/mna/l3;Ljava/lang/String;IILcom/tencent/mna/f1;)V

    return-object v6
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 51
    const-string v0, "TCallAccelerator"

    return-object v0
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x0

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
    invoke-static {}, Lcom/tencent/mna/base/jni/f;->j()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/mna/k;->a:J

    .line 3
    invoke-static {}, Lcom/tencent/mna/base/jni/f;->e()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/mna/k;->b:J

    .line 5
    invoke-static {}, Lcom/tencent/mna/base/jni/f;->h()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/mna/k;->c:J

    .line 6
    invoke-static {}, Lcom/tencent/mna/base/jni/f;->f()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/mna/k;->d:J

    .line 8
    invoke-static {}, Lcom/tencent/mna/base/jni/f;->d()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/mna/k;->e:J

    .line 9
    invoke-static {}, Lcom/tencent/mna/base/jni/f;->i()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/mna/k;->f:J

    .line 10
    invoke-static {}, Lcom/tencent/mna/base/jni/f;->g()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/mna/k;->g:J

    .line 13
    invoke-static {}, Lcom/tencent/mna/base/jni/f;->c()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/mna/k;->h:J

    .line 14
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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/mna/l3;->b:Lcom/tencent/mna/f;

    iget-object v1, v0, Lcom/tencent/mna/f;->f:Lcom/tencent/mna/base/jni/entity/TCallExportInfo;

    if-eqz v1, :cond_0

    iget v1, v1, Lcom/tencent/mna/base/jni/entity/TCallExportInfo;->isSameArea:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 2
    :cond_0
    invoke-static {}, Lcom/tencent/mna/base/jni/f;->a()Lcom/tencent/mna/base/jni/entity/TCallExportInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mna/f;->f:Lcom/tencent/mna/base/jni/entity/TCallExportInfo;

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/tencent/mna/l3;->b:Lcom/tencent/mna/f;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/mna/l3;->a:Lcom/tencent/mna/base/jni/entity/TCallTunnelRet;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/tencent/mna/base/jni/entity/TCallTunnelRet;->accessIp:I

    invoke-static {v0}, Lcom/tencent/mna/n1;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "0.0.0.0"

    :goto_0
    return-object v0
.end method

.method public h()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
