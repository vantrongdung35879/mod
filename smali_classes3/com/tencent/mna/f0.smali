.class public Lcom/tencent/mna/f0;
.super Ljava/lang/Object;
.source "DsAccelerator.java"

# interfaces
.implements Lcom/tencent/mna/a1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mna/f0$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:Lcom/tencent/mna/f;

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, "0.0.0.0"

    iput-object v0, p0, Lcom/tencent/mna/f0;->a:Ljava/lang/String;

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lcom/tencent/mna/f0;->b:I

    .line 5
    iput-object v0, p0, Lcom/tencent/mna/f0;->c:Ljava/lang/String;

    .line 7
    iput v1, p0, Lcom/tencent/mna/f0;->d:I

    .line 8
    iput v1, p0, Lcom/tencent/mna/f0;->e:I

    .line 9
    new-instance v0, Lcom/tencent/mna/f;

    const/4 v2, 0x5

    invoke-direct {v0, v2}, Lcom/tencent/mna/f;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/mna/f0;->f:Lcom/tencent/mna/f;

    .line 10
    iput v1, p0, Lcom/tencent/mna/f0;->g:I

    .line 11
    iput v1, p0, Lcom/tencent/mna/f0;->h:I

    return-void
.end method

.method static synthetic a(Lcom/tencent/mna/f0;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/mna/f0;->c:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;ILjava/lang/String;IIIIIZ)I
    .locals 2

    .line 48
    iput-object p1, p0, Lcom/tencent/mna/f0;->a:Ljava/lang/String;

    .line 49
    iput p2, p0, Lcom/tencent/mna/f0;->b:I

    .line 51
    iput-object p3, p0, Lcom/tencent/mna/f0;->c:Ljava/lang/String;

    .line 53
    iput p5, p0, Lcom/tencent/mna/f0;->d:I

    .line 54
    iput p6, p0, Lcom/tencent/mna/f0;->e:I

    .line 55
    iput p7, p0, Lcom/tencent/mna/f0;->g:I

    .line 56
    iput p8, p0, Lcom/tencent/mna/f0;->h:I

    const/4 v0, 0x0

    if-lez p4, :cond_0

    .line 59
    invoke-static {p3}, Lcom/tencent/mna/n1;->q(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 61
    invoke-static {p3, p4, v0}, Lcom/tencent/mna/base/jni/b;->a(Ljava/lang/String;IZ)I

    :cond_1
    if-lez p2, :cond_2

    .line 65
    invoke-static {p1}, Lcom/tencent/mna/n1;->q(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    invoke-static/range {p1 .. p9}, Lcom/tencent/mna/base/jni/b;->a(Ljava/lang/String;ILjava/lang/String;IIIIIZ)I

    move-result p1

    return p1

    :cond_2
    if-eqz v1, :cond_3

    const p1, 0x13c69

    goto :goto_1

    :cond_3
    const p1, 0x13c6a

    :goto_1
    return p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 21

    move-object/from16 v10, p0

    .line 2
    invoke-static {}, Lcom/tencent/mna/d;->A()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {}, Lcom/tencent/mna/d;->B()I

    move-result v2

    .line 5
    invoke-static {}, Lcom/tencent/mna/d;->H()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-static {}, Lcom/tencent/mna/d;->I()I

    move-result v4

    .line 9
    sget-object v0, Lcom/tencent/mna/t0;->u:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 10
    sget-object v0, Lcom/tencent/mna/t0;->u:Ljava/lang/String;

    goto :goto_0

    .line 13
    :cond_0
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mna/d;->M1()Z

    move-result v5

    invoke-static {v0, v5}, Lcom/tencent/mna/base/utils/e;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v11, 0x0

    if-eqz v0, :cond_1

    .line 16
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 17
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    .line 20
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mna/d;->M1()Z

    move-result v7

    invoke-static {v0, v7}, Lcom/tencent/mna/base/utils/e;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 21
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    move v7, v0

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    .line 22
    :goto_2
    invoke-static {}, Lcom/tencent/mna/d;->k0()I

    move-result v12

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move v8, v12

    .line 24
    invoke-virtual/range {v0 .. v9}, Lcom/tencent/mna/f0;->a(Ljava/lang/String;ILjava/lang/String;IIIIIZ)I

    move-result v0

    .line 29
    new-instance v1, Lcom/tencent/mna/f;

    iget-object v2, v10, Lcom/tencent/mna/f0;->a:Ljava/lang/String;

    iget-object v3, v10, Lcom/tencent/mna/f0;->c:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const-string v15, "0.0.0.0"

    const-string v16, "0.0.0.0"

    const/4 v14, 0x5

    move-object v13, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move/from16 v19, v0

    invoke-direct/range {v13 .. v20}, Lcom/tencent/mna/f;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    iput-object v1, v10, Lcom/tencent/mna/f0;->f:Lcom/tencent/mna/f;

    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v10, Lcom/tencent/mna/f0;->g:I

    invoke-static {v3}, Lcom/tencent/mna/v;->b(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v10, Lcom/tencent/mna/f0;->d:I

    invoke-static {v4}, Lcom/tencent/mna/v;->b(I)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v10, Lcom/tencent/mna/f0;->e:I

    .line 38
    invoke-static {v4}, Lcom/tencent/mna/v;->b(I)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v10, Lcom/tencent/mna/f0;->h:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mna/f;->i:Ljava/lang/String;

    .line 40
    sget-object v1, Lcom/tencent/mna/w;->a:Ljava/util/Locale;

    iget-object v2, v10, Lcom/tencent/mna/f0;->f:Lcom/tencent/mna/f;

    iget v2, v2, Lcom/tencent/mna/f;->g:I

    .line 41
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, v10, Lcom/tencent/mna/f0;->a:Ljava/lang/String;

    iget v4, v10, Lcom/tencent/mna/f0;->g:I

    .line 43
    invoke-static {v4}, Lcom/tencent/mna/v;->b(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget v5, v10, Lcom/tencent/mna/f0;->d:I

    .line 44
    invoke-static {v5}, Lcom/tencent/mna/v;->b(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget v6, v10, Lcom/tencent/mna/f0;->e:I

    .line 45
    invoke-static {v6}, Lcom/tencent/mna/v;->b(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget v7, v10, Lcom/tencent/mna/f0;->h:I

    .line 46
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v2, v8, v11

    const/4 v2, 0x1

    aput-object v3, v8, v2

    const/4 v2, 0x2

    aput-object v4, v8, v2

    const/4 v2, 0x3

    aput-object v5, v8, v2

    const/4 v2, 0x4

    aput-object v6, v8, v2

    const/4 v2, 0x5

    aput-object v7, v8, v2

    .line 47
    const-string v2, "[N]START_SPEED [DsAcc] errCode:%d, Proxy1IpMain:[%s], devkey:%d, clientkey:%d, delay_clientkey:%d, setId:%d"

    invoke-static {v1, v2, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    return v0
.end method

.method public a(Ljava/lang/String;IILcom/tencent/mna/f1;)Lcom/tencent/mna/e1;
    .locals 7

    .line 73
    new-instance v6, Lcom/tencent/mna/f0$a;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mna/f0$a;-><init>(Lcom/tencent/mna/f0;Ljava/lang/String;IILcom/tencent/mna/f1;)V

    return-object v6
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 74
    const-string v0, "DsAccelerator"

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
    invoke-static {}, Lcom/tencent/mna/base/jni/b;->a()I

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
    invoke-static {}, Lcom/tencent/mna/base/jni/b;->h()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/mna/k;->a:J

    .line 3
    invoke-static {}, Lcom/tencent/mna/base/jni/b;->c()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/mna/k;->b:J

    .line 5
    invoke-static {}, Lcom/tencent/mna/base/jni/b;->f()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/mna/k;->c:J

    .line 6
    invoke-static {}, Lcom/tencent/mna/base/jni/b;->d()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/mna/k;->d:J

    .line 8
    invoke-static {}, Lcom/tencent/mna/base/jni/b;->b()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/mna/k;->e:J

    .line 9
    invoke-static {}, Lcom/tencent/mna/base/jni/b;->g()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/mna/k;->f:J

    .line 10
    invoke-static {}, Lcom/tencent/mna/base/jni/b;->e()J

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
    iget-object v0, p0, Lcom/tencent/mna/f0;->f:Lcom/tencent/mna/f;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/mna/f0;->a:Ljava/lang/String;

    return-object v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/mna/f0;->b:I

    return v0
.end method
