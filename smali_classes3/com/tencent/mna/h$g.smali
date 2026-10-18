.class Lcom/tencent/mna/h$g;
.super Ljava/lang/Object;
.source "AccelerateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/mna/h;->a(Ljava/lang/String;IILjava/lang/String;IIILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:I

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:I

.field final synthetic h:I


# direct methods
.method constructor <init>(Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/mna/h$g;->a:Ljava/lang/String;

    iput p2, p0, Lcom/tencent/mna/h$g;->b:I

    iput p3, p0, Lcom/tencent/mna/h$g;->c:I

    iput-object p4, p0, Lcom/tencent/mna/h$g;->d:Ljava/lang/String;

    iput p5, p0, Lcom/tencent/mna/h$g;->e:I

    iput-object p6, p0, Lcom/tencent/mna/h$g;->f:Ljava/lang/String;

    iput p7, p0, Lcom/tencent/mna/h$g;->g:I

    iput p8, p0, Lcom/tencent/mna/h$g;->h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    const-string v0, "[N]START_SPEED tosRet:"

    const-string/jumbo v1, "startSpeed throwable:"

    .line 1
    new-instance v2, Lcom/tencent/mna/StartSpeedRet;

    iget-object v3, p0, Lcom/tencent/mna/h$g;->a:Ljava/lang/String;

    iget v4, p0, Lcom/tencent/mna/h$g;->b:I

    iget v5, p0, Lcom/tencent/mna/h$g;->c:I

    invoke-direct {v2, v3, v4, v5}, Lcom/tencent/mna/StartSpeedRet;-><init>(Ljava/lang/String;II)V

    .line 3
    sget-object v3, Lcom/tencent/mna/base/report/d;->START:Lcom/tencent/mna/base/report/d;

    invoke-static {v3}, Lcom/tencent/mna/base/report/f;->a(Lcom/tencent/mna/base/report/d;)Lcom/tencent/mna/y2;

    move-result-object v3

    const/4 v13, 0x0

    .line 7
    :try_start_0
    iget-object v4, p0, Lcom/tencent/mna/h$g;->a:Ljava/lang/String;

    sput-object v4, Lcom/tencent/mna/t0;->d:Ljava/lang/String;

    .line 8
    iget-object v4, p0, Lcom/tencent/mna/h$g;->d:Ljava/lang/String;

    sput-object v4, Lcom/tencent/mna/t0;->c:Ljava/lang/String;

    .line 9
    iget v4, p0, Lcom/tencent/mna/h$g;->e:I

    sput v4, Lcom/tencent/mna/t0;->a:I

    .line 11
    const-string v4, ""

    sput-object v4, Lcom/tencent/mna/t0;->e:Ljava/lang/String;

    .line 15
    invoke-static {v13}, Lcom/tencent/mna/h;->a(Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/mna/t3;->d(Ljava/lang/String;)V

    .line 17
    iget-object v5, p0, Lcom/tencent/mna/h$g;->a:Ljava/lang/String;

    iget v6, p0, Lcom/tencent/mna/h$g;->b:I

    iget v7, p0, Lcom/tencent/mna/h$g;->c:I

    iget-object v8, p0, Lcom/tencent/mna/h$g;->f:Ljava/lang/String;

    iget v9, p0, Lcom/tencent/mna/h$g;->e:I

    iget v10, p0, Lcom/tencent/mna/h$g;->g:I

    iget v11, p0, Lcom/tencent/mna/h$g;->h:I

    iget-object v12, p0, Lcom/tencent/mna/h$g;->d:Ljava/lang/String;

    move-object v4, v3

    invoke-static/range {v4 .. v12}, Lcom/tencent/mna/h;->a(Lcom/tencent/mna/y2;Ljava/lang/String;IILjava/lang/String;IIILjava/lang/String;)I

    move-result v4

    iput v4, v2, Lcom/tencent/mna/StartSpeedRet;->flag:I

    .line 21
    invoke-static {}, Lcom/tencent/mna/d;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/mna/t3;->e(Ljava/lang/String;)V

    .line 24
    invoke-static {}, Lcom/tencent/mna/h;->g()V

    .line 25
    iget v4, v2, Lcom/tencent/mna/StartSpeedRet;->flag:I

    invoke-static {v4}, Lcom/tencent/mna/h;->b(I)I

    .line 26
    iget v4, v2, Lcom/tencent/mna/StartSpeedRet;->flag:I

    invoke-static {v4}, Lcom/tencent/mna/StartSpeedRet;->getSpeedDesc(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/tencent/mna/StartSpeedRet;->desc:Ljava/lang/String;

    .line 28
    iget v4, v2, Lcom/tencent/mna/StartSpeedRet;->flag:I

    if-nez v4, :cond_0

    .line 29
    const-string v4, "MNAStartSpeed succeed"

    invoke-static {v4}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 31
    :cond_0
    const-string v4, "MNAStartSpeed fail"

    invoke-static {v4}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 34
    :goto_0
    invoke-static {v2}, Lcom/tencent/mna/h;->a(Lcom/tencent/mna/StartSpeedRet;)V

    .line 36
    invoke-static {}, Lcom/tencent/mna/d;->h0()I

    move-result v4

    if-nez v4, :cond_1

    .line 38
    const-string/jumbo v0, "startSpeed is shut down: mna eq 0"

    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 40
    iget v0, v2, Lcom/tencent/mna/StartSpeedRet;->flag:I

    iget-object v2, p0, Lcom/tencent/mna/h$g;->d:Ljava/lang/String;

    invoke-static {v3, v0, v2, v13}, Lcom/tencent/mna/h;->a(Lcom/tencent/mna/y2;ILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    invoke-static {v13}, Lcom/tencent/mna/i;->b(Z)V

    return-void

    .line 91
    :cond_1
    :try_start_1
    sget-boolean v4, Lcom/tencent/mna/t0;->y:Z

    if-eqz v4, :cond_2

    .line 92
    invoke-static {}, Lcom/tencent/mna/d;->s0()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/tencent/mna/d;->t0()I

    move-result v5

    invoke-static {v4, v5}, Lcom/tencent/mna/h2;->a(Ljava/lang/String;I)V

    .line 93
    invoke-static {}, Lcom/tencent/mna/d;->r1()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/tencent/mna/d;->s1()I

    move-result v5

    invoke-static {v4, v5}, Lcom/tencent/mna/v2;->a(Ljava/lang/String;I)V

    .line 94
    iget-object v4, p0, Lcom/tencent/mna/h$g;->d:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/mna/d;->e1()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/tencent/mna/d;->g1()I

    move-result v6

    sget-wide v7, Lcom/tencent/mna/t0;->f:J

    invoke-static {v4, v5, v6, v7, v8}, Lcom/tencent/mna/n;->a(Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 99
    :cond_2
    invoke-static {}, Lcom/tencent/mna/d;->n1()I

    move-result v4

    iget v5, v2, Lcom/tencent/mna/StartSpeedRet;->flag:I

    invoke-static {v5}, Lcom/tencent/mna/StartSpeedRet;->isCanHook(I)Z

    move-result v5

    invoke-static {v4, v5}, Lcom/tencent/mna/r3;->b(IZ)I

    move-result v4

    .line 100
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", tosFlag:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/mna/d;->n1()I

    move-result v0

    invoke-static {v0}, Lcom/tencent/mna/r3;->a(I)I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 101
    invoke-static {}, Lcom/tencent/mna/h;->h()Lcom/tencent/mna/base/report/a;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/tencent/mna/h;->a(Lcom/tencent/mna/base/report/a;I)V

    if-nez v4, :cond_3

    .line 102
    invoke-static {}, Lcom/tencent/mna/h;->i()Lcom/tencent/mna/j;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 104
    invoke-static {}, Lcom/tencent/mna/h;->i()Lcom/tencent/mna/j;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mna/d;->n1()I

    move-result v5

    invoke-static {v5}, Lcom/tencent/mna/r3;->a(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/tencent/mna/j;->c(I)V

    .line 108
    :cond_3
    invoke-static {}, Lcom/tencent/mna/d;->y1()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/tencent/mna/d;->z1()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 109
    :cond_4
    invoke-static {}, Lcom/tencent/mna/h;->h()Lcom/tencent/mna/base/report/a;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/y3;->a(Lcom/tencent/mna/base/report/a;)V

    .line 110
    invoke-static {}, Lcom/tencent/mna/d;->y1()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 111
    invoke-static {}, Lcom/tencent/mna/t0;->d()Ljava/lang/String;

    move-result-object v0

    iget v5, p0, Lcom/tencent/mna/h$g;->b:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/tencent/mna/y3;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_5
    iget v0, v2, Lcom/tencent/mna/StartSpeedRet;->flag:I

    iget-object v5, p0, Lcom/tencent/mna/h$g;->f:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/tencent/mna/h;->a(ILjava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/tencent/mna/h$g;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mna/h;->a(Ljava/lang/String;)V

    .line 121
    invoke-static {v3}, Lcom/tencent/mna/h;->a(Lcom/tencent/mna/y2;)V

    .line 123
    iget v0, v2, Lcom/tencent/mna/StartSpeedRet;->flag:I

    invoke-static {v0}, Lcom/tencent/mna/h;->a(I)V

    .line 125
    iget v0, v2, Lcom/tencent/mna/StartSpeedRet;->flag:I

    invoke-static {v0}, Lcom/tencent/mna/p2;->a(I)Lcom/tencent/mna/c3$a;

    move-result-object v0

    .line 126
    invoke-static {}, Lcom/tencent/mna/h;->h()Lcom/tencent/mna/base/report/a;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/tencent/mna/h;->a(Lcom/tencent/mna/base/report/a;Lcom/tencent/mna/c3$a;)V

    .line 128
    iget v0, v2, Lcom/tencent/mna/StartSpeedRet;->flag:I

    invoke-static {}, Lcom/tencent/mna/h;->i()Lcom/tencent/mna/j;

    move-result-object v5

    invoke-static {}, Lcom/tencent/mna/h;->h()Lcom/tencent/mna/base/report/a;

    move-result-object v6

    invoke-static {v0, v5, v6}, Lcom/tencent/mna/h;->a(ILcom/tencent/mna/j;Lcom/tencent/mna/base/report/a;)V

    .line 130
    iget v0, v2, Lcom/tencent/mna/StartSpeedRet;->flag:I

    iget-object v2, p0, Lcom/tencent/mna/h$g;->d:Ljava/lang/String;

    invoke-static {v3, v0, v2, v4}, Lcom/tencent/mna/h;->a(Lcom/tencent/mna/y2;ILjava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 133
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 136
    :goto_1
    invoke-static {v13}, Lcom/tencent/mna/i;->b(Z)V

    return-void

    :catchall_1
    move-exception v0

    invoke-static {v13}, Lcom/tencent/mna/i;->b(Z)V

    .line 137
    throw v0
.end method
