.class public Lcom/tencent/mna/o;
.super Ljava/lang/Object;
.source "CdnAccelerator.java"

# interfaces
.implements Lcom/tencent/mna/a1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mna/o$a;
    }
.end annotation


# instance fields
.field private a:Lcom/tencent/mna/base/jni/entity/CdnMasterRet;

.field private b:Lcom/tencent/mna/base/jni/entity/CdnNegRet;

.field private c:Lcom/tencent/mna/f;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/tencent/mna/o;->a:Lcom/tencent/mna/base/jni/entity/CdnMasterRet;

    .line 4
    iput-object v0, p0, Lcom/tencent/mna/o;->b:Lcom/tencent/mna/base/jni/entity/CdnNegRet;

    .line 5
    new-instance v0, Lcom/tencent/mna/f;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/tencent/mna/f;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/mna/o;->c:Lcom/tencent/mna/f;

    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 3

    .line 30
    iget-object v0, p0, Lcom/tencent/mna/o;->c:Lcom/tencent/mna/f;

    iput-object p1, v0, Lcom/tencent/mna/f;->b:Ljava/lang/String;

    .line 31
    iget-object p1, p0, Lcom/tencent/mna/o;->a:Lcom/tencent/mna/base/jni/entity/CdnMasterRet;

    iget p1, p1, Lcom/tencent/mna/base/jni/entity/CdnMasterRet;->negIp:I

    invoke-static {p1}, Lcom/tencent/mna/n1;->a(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/tencent/mna/f;->c:Ljava/lang/String;

    .line 32
    iget-object p1, p0, Lcom/tencent/mna/o;->c:Lcom/tencent/mna/f;

    iget-object v0, p0, Lcom/tencent/mna/o;->b:Lcom/tencent/mna/base/jni/entity/CdnNegRet;

    iget v0, v0, Lcom/tencent/mna/base/jni/entity/CdnNegRet;->proxyIp:I

    invoke-static {v0}, Lcom/tencent/mna/n1;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mna/f;->d:Ljava/lang/String;

    .line 33
    iget-object p1, p0, Lcom/tencent/mna/o;->c:Lcom/tencent/mna/f;

    iget-object v0, p0, Lcom/tencent/mna/o;->a:Lcom/tencent/mna/base/jni/entity/CdnMasterRet;

    iget v0, v0, Lcom/tencent/mna/base/jni/entity/CdnMasterRet;->exportIp:I

    invoke-static {v0}, Lcom/tencent/mna/n1;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mna/f;->e:Ljava/lang/String;

    .line 34
    iget-object p1, p0, Lcom/tencent/mna/o;->c:Lcom/tencent/mna/f;

    const/4 v0, 0x0

    iput v0, p1, Lcom/tencent/mna/f;->g:I

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mna/o;->b:Lcom/tencent/mna/base/jni/entity/CdnNegRet;

    iget v2, v2, Lcom/tencent/mna/base/jni/entity/CdnNegRet;->token:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/tencent/mna/f;->h:Ljava/lang/String;

    return v0
.end method

.method private a(Ljava/lang/String;I)I
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/tencent/mna/o;->c:Lcom/tencent/mna/f;

    iput-object p1, v0, Lcom/tencent/mna/f;->b:Ljava/lang/String;

    .line 37
    iput p2, v0, Lcom/tencent/mna/f;->g:I

    return p2
.end method

.method static synthetic a(Lcom/tencent/mna/o;)Lcom/tencent/mna/base/jni/entity/CdnMasterRet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/mna/o;->a:Lcom/tencent/mna/base/jni/entity/CdnMasterRet;

    return-object p0
.end method

.method private b(Ljava/lang/String;I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/mna/o;->c:Lcom/tencent/mna/f;

    iput-object p1, v0, Lcom/tencent/mna/f;->b:Ljava/lang/String;

    .line 2
    iget-object p1, p0, Lcom/tencent/mna/o;->a:Lcom/tencent/mna/base/jni/entity/CdnMasterRet;

    iget p1, p1, Lcom/tencent/mna/base/jni/entity/CdnMasterRet;->negIp:I

    invoke-static {p1}, Lcom/tencent/mna/n1;->a(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/tencent/mna/f;->c:Ljava/lang/String;

    .line 3
    iget-object p1, p0, Lcom/tencent/mna/o;->c:Lcom/tencent/mna/f;

    iget-object v0, p0, Lcom/tencent/mna/o;->a:Lcom/tencent/mna/base/jni/entity/CdnMasterRet;

    iget v0, v0, Lcom/tencent/mna/base/jni/entity/CdnMasterRet;->exportIp:I

    invoke-static {v0}, Lcom/tencent/mna/n1;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mna/f;->e:Ljava/lang/String;

    .line 4
    iget-object p1, p0, Lcom/tencent/mna/o;->c:Lcom/tencent/mna/f;

    iput p2, p1, Lcom/tencent/mna/f;->g:I

    return p2
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 8

    .line 2
    const-string p1, "101.226.141.225"

    invoke-static {p1}, Lcom/tencent/mna/n1;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cdn masterIp:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    .line 7
    sget-object v7, Lcom/tencent/mna/t0;->u:Ljava/lang/String;

    const/16 v1, 0x1f9a

    const/4 v5, 0x0

    move-object v0, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v7

    .line 8
    invoke-static/range {v0 .. v5}, Lcom/tencent/mna/base/jni/a;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)Lcom/tencent/mna/base/jni/entity/CdnMasterRet;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mna/o;->a:Lcom/tencent/mna/base/jni/entity/CdnMasterRet;

    if-nez v0, :cond_0

    const p2, 0xc738

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/tencent/mna/o;->a(Ljava/lang/String;I)I

    move-result p1

    return p1

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[N]START_SPEED [CdnAcc] Master errCode:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mna/o;->a:Lcom/tencent/mna/base/jni/entity/CdnMasterRet;

    invoke-virtual {v1}, Lcom/tencent/mna/base/jni/entity/CdnMasterRet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/tencent/mna/o;->a:Lcom/tencent/mna/base/jni/entity/CdnMasterRet;

    iget v1, v0, Lcom/tencent/mna/base/jni/entity/CdnMasterRet;->masterErrno:I

    if-eqz v1, :cond_1

    .line 14
    invoke-direct {p0, p1, v1}, Lcom/tencent/mna/o;->a(Ljava/lang/String;I)I

    move-result p1

    return p1

    .line 18
    :cond_1
    iget v1, v0, Lcom/tencent/mna/base/jni/entity/CdnMasterRet;->negIp:I

    iget v2, v0, Lcom/tencent/mna/base/jni/entity/CdnMasterRet;->negPort:I

    move-object v3, p2

    move v4, p3

    move-object v5, v7

    invoke-static/range {v1 .. v6}, Lcom/tencent/mna/base/jni/a;->a(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/jni/entity/CdnNegRet;

    move-result-object p2

    iput-object p2, p0, Lcom/tencent/mna/o;->b:Lcom/tencent/mna/base/jni/entity/CdnNegRet;

    if-nez p2, :cond_2

    const p2, 0xf230

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/tencent/mna/o;->b(Ljava/lang/String;I)I

    move-result p1

    return p1

    .line 22
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "[N]START_SPEED [CdnAcc] Neg errCode:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/tencent/mna/o;->b:Lcom/tencent/mna/base/jni/entity/CdnNegRet;

    invoke-virtual {p3}, Lcom/tencent/mna/base/jni/entity/CdnNegRet;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 23
    iget-object p2, p0, Lcom/tencent/mna/o;->b:Lcom/tencent/mna/base/jni/entity/CdnNegRet;

    iget p2, p2, Lcom/tencent/mna/base/jni/entity/CdnNegRet;->negErrno:I

    if-eqz p2, :cond_3

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/tencent/mna/o;->b(Ljava/lang/String;I)I

    move-result p1

    return p1

    .line 27
    :cond_3
    invoke-direct {p0, p1}, Lcom/tencent/mna/o;->a(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;IILcom/tencent/mna/f1;)Lcom/tencent/mna/e1;
    .locals 7

    .line 28
    new-instance v6, Lcom/tencent/mna/o$a;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mna/o$a;-><init>(Lcom/tencent/mna/o;Ljava/lang/String;IILcom/tencent/mna/f1;)V

    return-object v6
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 29
    const-string v0, "CdnAccelerator"

    return-object v0
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/mna/base/jni/a;->a()I

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
    invoke-static {}, Lcom/tencent/mna/base/jni/a;->h()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/mna/k;->a:J

    .line 3
    invoke-static {}, Lcom/tencent/mna/base/jni/a;->c()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/mna/k;->b:J

    .line 5
    invoke-static {}, Lcom/tencent/mna/base/jni/a;->f()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/mna/k;->c:J

    .line 6
    invoke-static {}, Lcom/tencent/mna/base/jni/a;->d()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/mna/k;->d:J

    .line 8
    invoke-static {}, Lcom/tencent/mna/base/jni/a;->b()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/mna/k;->e:J

    .line 9
    invoke-static {}, Lcom/tencent/mna/base/jni/a;->g()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/mna/k;->f:J

    .line 10
    invoke-static {}, Lcom/tencent/mna/base/jni/a;->e()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/mna/k;->g:J

    .line 11
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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/mna/o;->c:Lcom/tencent/mna/f;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/mna/o;->b:Lcom/tencent/mna/base/jni/entity/CdnNegRet;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 4
    :cond_0
    iget v0, v0, Lcom/tencent/mna/base/jni/entity/CdnNegRet;->proxyIp:I

    invoke-static {v0}, Lcom/tencent/mna/n1;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/mna/o;->b:Lcom/tencent/mna/base/jni/entity/CdnNegRet;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 4
    :cond_0
    iget v0, v0, Lcom/tencent/mna/base/jni/entity/CdnNegRet;->proxyPort:I

    return v0
.end method
