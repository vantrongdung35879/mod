.class Lcom/tencent/mna/h$h;
.super Ljava/lang/Object;
.source "AccelerateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/mna/h;->a(Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/mna/h$h;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    const-string v0, "MNAEndSpeed fail"

    :try_start_0
    sget-wide v1, Lcom/tencent/mna/t0;->f:J

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    cmp-long v6, v1, v3

    if-eqz v6, :cond_0

    .line 3
    invoke-static {v5}, Lcom/tencent/mna/h;->a(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/t3;->c(Ljava/lang/String;)V

    .line 6
    :cond_0
    invoke-static {}, Lcom/tencent/mna/d;->h0()I

    move-result v1

    if-nez v1, :cond_1

    .line 8
    const-string v1, "endSpeed is shut down: mna eq 0"

    invoke-static {v1}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    return-void

    .line 11
    :cond_1
    invoke-static {}, Lcom/tencent/mna/d;->y1()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 12
    invoke-static {}, Lcom/tencent/mna/y3;->c()V

    .line 15
    :cond_2
    invoke-static {}, Lcom/tencent/mna/h;->g()V

    .line 17
    invoke-static {}, Lcom/tencent/mna/h;->a()V

    .line 19
    invoke-static {}, Lcom/tencent/mna/h;->b()Lcom/tencent/mna/a1;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 21
    sget-object v1, Lcom/tencent/mna/base/report/d;->END:Lcom/tencent/mna/base/report/d;

    invoke-static {v1}, Lcom/tencent/mna/base/report/f;->a(Lcom/tencent/mna/base/report/d;)Lcom/tencent/mna/y2;

    move-result-object v1

    const-string v3, "pvpid"

    sget-object v4, Lcom/tencent/mna/t0;->c:Ljava/lang/String;

    .line 22
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object v1

    const-string v3, "openid"

    sget-object v4, Lcom/tencent/mna/t0;->u:Ljava/lang/String;

    .line 23
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object v1

    const-string/jumbo v3, "timestamp"

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object v1

    const-string/jumbo v3, "tasknormal"

    .line 25
    invoke-static {}, Lcom/tencent/mna/h;->c()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object v1

    .line 26
    invoke-interface {v1}, Lcom/tencent/mna/y2;->c()V

    .line 28
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/base/utils/c;->a(Landroid/content/Context;)Lcom/tencent/mna/base/utils/c$a;

    move-result-object v1

    iget v1, v1, Lcom/tencent/mna/base/utils/c$a;->a:I

    .line 29
    invoke-static {}, Lcom/tencent/mna/h;->h()Lcom/tencent/mna/base/report/a;

    move-result-object v3

    sget-object v4, Lcom/tencent/mna/base/report/a$a;->END_DTTYPE:Lcom/tencent/mna/base/report/a$a;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v4, v1}, Lcom/tencent/mna/h;->a(Lcom/tencent/mna/base/report/a;Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)V

    .line 31
    invoke-static {}, Lcom/tencent/mna/h;->h()Lcom/tencent/mna/base/report/a;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mna/h;->b()Lcom/tencent/mna/a1;

    move-result-object v3

    invoke-interface {v3}, Lcom/tencent/mna/a1;->f()Lcom/tencent/mna/f;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tencent/mna/h;->a(Lcom/tencent/mna/base/report/a;Lcom/tencent/mna/f;)V

    .line 33
    invoke-static {}, Lcom/tencent/mna/g;->f()Z

    move-result v1

    if-nez v1, :cond_3

    .line 34
    const-string v1, "endSpeed unhookByType failed"

    invoke-static {v1}, Lcom/tencent/mna/v1;->e(Ljava/lang/String;)V

    .line 37
    :cond_3
    invoke-static {}, Lcom/tencent/mna/g;->g()Z

    move-result v1

    if-nez v1, :cond_4

    .line 38
    const-string v1, "endSpeed unhookClose failed"

    invoke-static {v1}, Lcom/tencent/mna/v1;->e(Ljava/lang/String;)V

    .line 40
    :cond_4
    invoke-static {}, Lcom/tencent/mna/g;->b()Z

    move-result v1

    if-nez v1, :cond_5

    .line 41
    const-string v1, "endSpeed endFpsByUnhook failed"

    invoke-static {v1}, Lcom/tencent/mna/v1;->e(Ljava/lang/String;)V

    .line 44
    :cond_5
    invoke-static {}, Lcom/tencent/mna/h;->b()Lcom/tencent/mna/a1;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/mna/a1;->c()I

    .line 46
    invoke-static {}, Lcom/tencent/mna/p2;->b()I

    move-result v1

    .line 47
    invoke-static {}, Lcom/tencent/mna/h;->h()Lcom/tencent/mna/base/report/a;

    move-result-object v3

    sget-object v4, Lcom/tencent/mna/base/report/a$a;->ROUT_END:Lcom/tencent/mna/base/report/a$a;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v4, v1}, Lcom/tencent/mna/h;->a(Lcom/tencent/mna/base/report/a;Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)V

    .line 49
    invoke-static {}, Lcom/tencent/mna/p2;->a()V

    .line 51
    invoke-static {v2}, Lcom/tencent/mna/h;->a(Lcom/tencent/mna/a1;)Lcom/tencent/mna/a1;

    .line 52
    const-string v1, "MNAEndSpeed succeed"

    invoke-static {v1}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :cond_6
    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 55
    const-string v1, "endSpeed release accelerator failed, accelerator is null"

    invoke-static {v1}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 58
    :goto_0
    iget-object v1, p0, Lcom/tencent/mna/h$h;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mna/h;->b(Ljava/lang/String;)V

    .line 60
    invoke-static {}, Lcom/tencent/mna/h;->i()Lcom/tencent/mna/j;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 61
    invoke-static {}, Lcom/tencent/mna/h;->d()V

    .line 62
    invoke-static {}, Lcom/tencent/mna/h;->i()Lcom/tencent/mna/j;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mna/h;->h()Lcom/tencent/mna/base/report/a;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-static {}, Lcom/tencent/mna/h;->h()Lcom/tencent/mna/base/report/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mna/base/report/a;->g()Ljava/util/Map;

    move-result-object v3

    goto :goto_1

    :cond_7
    move-object v3, v2

    :goto_1
    invoke-virtual {v1, v3}, Lcom/tencent/mna/j;->a(Ljava/util/Map;)Z

    .line 63
    invoke-static {v2}, Lcom/tencent/mna/h;->a(Lcom/tencent/mna/j;)Lcom/tencent/mna/j;

    .line 66
    :cond_8
    invoke-static {}, Lcom/tencent/mna/h;->e()Lcom/tencent/mna/f1;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 67
    invoke-static {}, Lcom/tencent/mna/h;->e()Lcom/tencent/mna/f1;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/tencent/mna/f1;->a(Landroid/content/Context;)V

    .line 68
    invoke-static {v2}, Lcom/tencent/mna/h;->a(Lcom/tencent/mna/f1;)Lcom/tencent/mna/f1;

    .line 71
    :cond_9
    sget-boolean v1, Lcom/tencent/mna/t0;->y:Z

    if-eqz v1, :cond_a

    .line 72
    invoke-static {}, Lcom/tencent/mna/h2;->c()V

    .line 73
    invoke-static {}, Lcom/tencent/mna/v2;->d()V

    .line 74
    invoke-static {v5}, Lcom/tencent/mna/n;->b(Z)V

    .line 77
    :cond_a
    invoke-static {}, Lcom/tencent/mna/d;->y1()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-static {}, Lcom/tencent/mna/d;->z1()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 78
    :cond_b
    invoke-static {}, Lcom/tencent/mna/y3;->b()V

    .line 81
    :cond_c
    invoke-static {v5}, Lcom/tencent/mna/h;->b(Z)V

    .line 83
    invoke-static {}, Lcom/tencent/mna/h;->f()V

    .line 85
    const-string v1, "[N]END_SPEED success"

    invoke-static {v1}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 87
    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "endSpeed throwable:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    :goto_2
    return-void
.end method
