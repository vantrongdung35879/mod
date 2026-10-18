.class Lcom/tencent/mna/core/diagnose/a$g;
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
    name = "g"
.end annotation


# instance fields
.field a:Lcom/tencent/mna/c1;

.field b:I

.field c:I

.field d:Ljava/lang/String;

.field e:I

.field f:I

.field g:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Lcom/tencent/mna/c1;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/tencent/mna/core/diagnose/a$g;->c:I

    .line 3
    const-string v1, "-1"

    iput-object v1, p0, Lcom/tencent/mna/core/diagnose/a$g;->d:Ljava/lang/String;

    .line 4
    iput v0, p0, Lcom/tencent/mna/core/diagnose/a$g;->e:I

    const/16 v0, -0xa

    .line 5
    iput v0, p0, Lcom/tencent/mna/core/diagnose/a$g;->f:I

    .line 9
    iput-object p1, p0, Lcom/tencent/mna/core/diagnose/a$g;->a:Lcom/tencent/mna/c1;

    .line 10
    iput p2, p0, Lcom/tencent/mna/core/diagnose/a$g;->b:I

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/tencent/mna/core/diagnose/a$g;->g:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/mna/core/diagnose/a$g;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 17

    move-object/from16 v1, p0

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v2, "mna-export-speed-test-task"

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 3
    invoke-static {}, Lcom/tencent/mna/c0;->c()I

    move-result v0

    sget-object v4, Lcom/tencent/mna/core/diagnose/c$a;->Export:Lcom/tencent/mna/core/diagnose/c$a;

    invoke-static {v0, v4}, Lcom/tencent/mna/core/diagnose/c;->a(ILcom/tencent/mna/core/diagnose/c$a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    const-string v0, "diagnose, Export switch off"

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    return-void

    .line 10
    :cond_0
    iget-object v0, v1, Lcom/tencent/mna/core/diagnose/a$g;->a:Lcom/tencent/mna/c1;

    if-eqz v0, :cond_d

    .line 13
    invoke-static {}, Lcom/tencent/mna/c0;->N()I

    move-result v0

    const/16 v4, 0x2c

    const/16 v5, 0xa

    const/4 v6, 0x1

    const/16 v7, 0xc8

    if-ne v0, v6, :cond_1

    .line 15
    invoke-static {}, Lcom/tencent/mna/t0;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mna/c0;->l()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/tencent/mna/i2;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mna/core/diagnose/a$g;->d:Ljava/lang/String;

    .line 16
    iput v6, v1, Lcom/tencent/mna/core/diagnose/a$g;->c:I

    .line 17
    invoke-static {v0, v5}, Lcom/tencent/mna/i2;->b(Ljava/lang/String;I)I

    move-result v0

    goto/16 :goto_4

    .line 18
    :cond_1
    invoke-static {}, Lcom/tencent/mna/c0;->N()I

    move-result v0

    const/4 v8, 0x2

    const/4 v9, 0x3

    if-ne v0, v8, :cond_4

    .line 20
    invoke-static {}, Lcom/tencent/mna/t0;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mna/c0;->l()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/tencent/mna/i2;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mna/core/diagnose/a$g;->d:Ljava/lang/String;

    const/16 v6, 0x15

    .line 22
    iput v6, v1, Lcom/tencent/mna/core/diagnose/a$g;->c:I

    if-eqz v0, :cond_3

    .line 23
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    goto :goto_0

    .line 35
    :cond_2
    iget-object v0, v1, Lcom/tencent/mna/core/diagnose/a$g;->d:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/tencent/mna/i2;->b(Ljava/lang/String;I)I

    move-result v0

    goto/16 :goto_4

    .line 36
    :cond_3
    :goto_0
    invoke-static {}, Lcom/tencent/mna/c0;->l()Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-static {}, Lcom/tencent/mna/c0;->K()Ljava/lang/String;

    move-result-object v6

    .line 38
    invoke-static {v0, v6, v9}, Lcom/tencent/mna/i2;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/tencent/mna/i2$a;

    move-result-object v0

    .line 41
    iget v6, v0, Lcom/tencent/mna/i2$a;->b:I

    .line 42
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/tencent/mna/i2$a;->a:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/mna/c0;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mna/core/diagnose/a$g;->d:Ljava/lang/String;

    const/16 v0, 0x16

    .line 44
    iput v0, v1, Lcom/tencent/mna/core/diagnose/a$g;->c:I

    move v0, v6

    goto :goto_4

    .line 51
    :cond_4
    invoke-static {}, Lcom/tencent/mna/c0;->h()I

    move-result v0

    if-eqz v0, :cond_9

    .line 54
    invoke-static {v7}, Lcom/tencent/mna/base/jni/e;->d(I)I

    move-result v0

    .line 55
    iget v10, v1, Lcom/tencent/mna/core/diagnose/a$g;->b:I

    const/4 v11, 0x4

    if-ne v10, v11, :cond_5

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 57
    invoke-static {}, Lcom/tencent/mna/c0;->j()I

    move-result v12

    const/4 v13, 0x0

    .line 58
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v9

    int-to-long v7, v12

    cmp-long v16, v14, v7

    if-gez v16, :cond_7

    .line 60
    iget-object v7, v1, Lcom/tencent/mna/core/diagnose/a$g;->a:Lcom/tencent/mna/c1;

    invoke-interface {v7, v0}, Lcom/tencent/mna/c1;->a(I)I

    move-result v7

    add-int/2addr v13, v7

    .line 62
    iget-object v8, v1, Lcom/tencent/mna/core/diagnose/a$g;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 63
    iget v7, v1, Lcom/tencent/mna/core/diagnose/a$g;->e:I

    add-int/2addr v7, v6

    iput v7, v1, Lcom/tencent/mna/core/diagnose/a$g;->e:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-wide/16 v7, 0x32

    .line 65
    :try_start_1
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_0
    const/16 v7, 0xc8

    goto :goto_1

    :cond_5
    const/4 v6, 0x0

    const/4 v13, 0x0

    :goto_2
    if-ge v6, v9, :cond_6

    .line 72
    :try_start_2
    iget-object v7, v1, Lcom/tencent/mna/core/diagnose/a$g;->a:Lcom/tencent/mna/c1;

    invoke-interface {v7, v0}, Lcom/tencent/mna/c1;->a(I)I

    move-result v7

    add-int/2addr v13, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 75
    :cond_6
    iput v9, v1, Lcom/tencent/mna/core/diagnose/a$g;->e:I

    .line 78
    :cond_7
    iget v0, v1, Lcom/tencent/mna/core/diagnose/a$g;->e:I

    if-eqz v0, :cond_9

    .line 79
    div-int/2addr v13, v0

    .line 81
    iget v0, v1, Lcom/tencent/mna/core/diagnose/a$g;->b:I

    if-eq v0, v11, :cond_8

    .line 82
    iget-object v0, v1, Lcom/tencent/mna/core/diagnose/a$g;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_8
    move v0, v13

    goto :goto_3

    :cond_9
    const/16 v0, 0xc8

    .line 87
    :goto_3
    iget-object v6, v1, Lcom/tencent/mna/core/diagnose/a$g;->a:Lcom/tencent/mna/c1;

    invoke-interface {v6}, Lcom/tencent/mna/c1;->b()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/tencent/mna/core/diagnose/a$g;->d:Ljava/lang/String;

    const/4 v6, 0x0

    .line 88
    iput v6, v1, Lcom/tencent/mna/core/diagnose/a$g;->c:I

    :goto_4
    const/16 v6, 0xc8

    if-ltz v0, :cond_a

    if-ge v0, v6, :cond_a

    .line 92
    iput v0, v1, Lcom/tencent/mna/core/diagnose/a$g;->f:I

    goto :goto_5

    .line 94
    :cond_a
    iput v6, v1, Lcom/tencent/mna/core/diagnose/a$g;->f:I

    .line 96
    :goto_5
    iget-object v0, v1, Lcom/tencent/mna/core/diagnose/a$g;->d:Ljava/lang/String;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_c

    .line 98
    :cond_b
    const-string v0, "-3"

    iput-object v0, v1, Lcom/tencent/mna/core/diagnose/a$g;->d:Ljava/lang/String;

    .line 100
    :cond_c
    iget-object v0, v1, Lcom/tencent/mna/core/diagnose/a$g;->g:Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/tencent/mna/core/diagnose/a$g;->f:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 101
    iput v5, v1, Lcom/tencent/mna/core/diagnose/a$g;->e:I

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ExportSpeedTestTask edgeDelay:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/tencent/mna/core/diagnose/a$g;->f:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", edgeIp:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/tencent/mna/core/diagnose/a$g;->d:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", realUseping:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/tencent/mna/core/diagnose/a$g;->c:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    goto :goto_6

    .line 105
    :cond_d
    const-string v0, "ExportSpeedTestTask pingDelay speedTester is null"

    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 108
    :goto_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExportSpeedTestTask:elapse:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ExportSpeedTestTask run exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    :goto_7
    return-void
.end method
