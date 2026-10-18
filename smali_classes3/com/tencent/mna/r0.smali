.class public Lcom/tencent/mna/r0;
.super Lcom/tencent/mna/d0;
.source "FpsApmSpeedTester.java"


# static fields
.field private static n:I = 0xc

.field private static o:I = 0xd


# instance fields
.field private l:J

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILcom/tencent/mna/f1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/mna/d0;-><init>(Ljava/lang/String;IILcom/tencent/mna/f1;)V

    const-wide/16 p1, 0x0

    .line 2
    iput-wide p1, p0, Lcom/tencent/mna/r0;->l:J

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/tencent/mna/r0;->m:I

    .line 9
    invoke-direct {p0}, Lcom/tencent/mna/r0;->b()V

    return-void
.end method

.method private b()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tencent/mna/base/utils/e;->b(Landroid/content/Context;Z)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mna/r0;->l:J

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/tencent/mna/r0;->l:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/tencent/mna/r0;->m:I

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Z)I
    .locals 10

    .line 1
    iget-object v1, p0, Lcom/tencent/mna/d0;->g:[B

    if-nez v1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-eqz p3, :cond_1

    .line 4
    sget p3, Lcom/tencent/mna/r0;->o:I

    goto :goto_0

    :cond_1
    sget p3, Lcom/tencent/mna/r0;->n:I

    :goto_0
    move v4, p3

    .line 5
    iget v0, p0, Lcom/tencent/mna/d0;->f:I

    iget v2, p0, Lcom/tencent/mna/d0;->e:I

    iget-object p3, p0, Lcom/tencent/mna/d0;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    iget-wide v5, p0, Lcom/tencent/mna/r0;->l:J

    long-to-int v5, v5

    iget v6, p0, Lcom/tencent/mna/r0;->m:I

    iget-object p3, p0, Lcom/tencent/mna/d0;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v7

    move-object v8, p2

    move v9, p1

    .line 9
    invoke-static/range {v0 .. v9}, Lcom/tencent/mna/base/jni/e;->a(I[BIIIIIILjava/lang/String;I)I

    move-result p1

    .line 13
    invoke-virtual {p0, p1}, Lcom/tencent/mna/d0;->a(I)I

    move-result p1

    .line 14
    invoke-virtual {p0, p1}, Lcom/tencent/mna/d0;->d(I)V

    return p1
.end method
