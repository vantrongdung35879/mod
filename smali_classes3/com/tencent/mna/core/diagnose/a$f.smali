.class Lcom/tencent/mna/core/diagnose/a$f;
.super Ljava/lang/Object;
.source "DiagnoseManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mna/core/diagnose/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# instance fields
.field a:Z

.field b:Lcom/tencent/mna/w1$c;

.field c:I

.field d:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/tencent/mna/c0;->c()I

    move-result v0

    sget-object v1, Lcom/tencent/mna/core/diagnose/c$a;->Direct:Lcom/tencent/mna/core/diagnose/c$a;

    invoke-static {v0, v1}, Lcom/tencent/mna/core/diagnose/c;->a(ILcom/tencent/mna/core/diagnose/c$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mna/core/diagnose/a$f;->a:Z

    return-void
.end method


# virtual methods
.method a()Lcom/tencent/mna/w1$c;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/mna/core/diagnose/a$f;->a:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/tencent/mna/w1;->e()Lcom/tencent/mna/w1$c;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mna/core/diagnose/a$f;->b:Lcom/tencent/mna/w1$c;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/tencent/mna/core/diagnose/a$f;->b:Lcom/tencent/mna/w1$c;

    return-object v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/mna/core/diagnose/a$f;->a:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/tencent/mna/w1;->f()I

    move-result v0

    iput v0, p0, Lcom/tencent/mna/core/diagnose/a$f;->d:I

    .line 4
    :cond_0
    iget v0, p0, Lcom/tencent/mna/core/diagnose/a$f;->d:I

    return v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/mna/core/diagnose/a$f;->a:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/tencent/mna/w1;->g()I

    move-result v0

    iput v0, p0, Lcom/tencent/mna/core/diagnose/a$f;->c:I

    .line 4
    :cond_0
    iget v0, p0, Lcom/tencent/mna/core/diagnose/a$f;->c:I

    return v0
.end method

.method public run()V
    .locals 18

    const-string v0, "DirectSpeedTestTask elapse:"

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const-string v2, "mna-direct-speed-task"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v3, p0

    .line 3
    :try_start_1
    iget-boolean v4, v3, Lcom/tencent/mna/core/diagnose/a$f;->a:Z

    if-nez v4, :cond_0

    .line 4
    const-string v0, "diagnose, Direct switch off"

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    return-void

    .line 9
    :cond_0
    invoke-static {}, Lcom/tencent/mna/c0;->s()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/tencent/mna/c0;->u()I

    move-result v5

    .line 10
    invoke-static {}, Lcom/tencent/mna/c0;->I()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/tencent/mna/c0;->J()I

    move-result v7

    .line 11
    invoke-static {}, Lcom/tencent/mna/c0;->F()I

    move-result v8

    invoke-static {}, Lcom/tencent/mna/c0;->G()I

    move-result v9

    .line 12
    invoke-static {}, Lcom/tencent/mna/c0;->x()I

    move-result v10

    invoke-static {}, Lcom/tencent/mna/c0;->t()I

    move-result v11

    invoke-static {}, Lcom/tencent/mna/c0;->r()I

    move-result v12

    int-to-float v12, v12

    .line 13
    invoke-static {}, Lcom/tencent/mna/c0;->v()I

    move-result v13

    invoke-static {}, Lcom/tencent/mna/c0;->f()I

    move-result v14

    invoke-static {}, Lcom/tencent/mna/c0;->q()I

    move-result v15

    .line 14
    invoke-static {}, Lcom/tencent/mna/c0;->d()I

    move-result v16

    invoke-static {}, Lcom/tencent/mna/c0;->k()I

    move-result v17

    .line 15
    invoke-static/range {v4 .. v17}, Lcom/tencent/mna/w1;->a(Ljava/lang/String;ILjava/lang/String;IIIIIFIIIII)Z

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object/from16 v3, p0

    .line 25
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DirectSpeedTestTask run exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
