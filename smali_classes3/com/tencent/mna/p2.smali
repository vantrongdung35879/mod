.class public Lcom/tencent/mna/p2;
.super Ljava/lang/Object;
.source "QosManager.java"


# direct methods
.method public static a(I)Lcom/tencent/mna/c3$a;
    .locals 23

    .line 62
    invoke-static/range {p0 .. p0}, Lcom/tencent/mna/StartSpeedRet;->isCanHook(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/tencent/mna/d;->P0()I

    move-result v0

    if-lez v0, :cond_4

    .line 65
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/utils/c;->c(Landroid/content/Context;)I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    .line 66
    const-string v0, "[N]ROUTER_QOS: not start, for not WiFi network"

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    return-object v1

    .line 69
    :cond_0
    invoke-static {}, Lcom/tencent/mna/d;->P0()I

    move-result v2

    invoke-static {}, Lcom/tencent/mna/d;->V0()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/tencent/mna/d;->J0()I

    move-result v4

    .line 70
    invoke-static {}, Lcom/tencent/mna/d;->C()I

    move-result v5

    invoke-static {}, Lcom/tencent/mna/d;->l1()I

    move-result v6

    invoke-static {}, Lcom/tencent/mna/d;->M()I

    move-result v7

    .line 71
    invoke-static {}, Lcom/tencent/mna/d;->K0()I

    move-result v8

    invoke-static {}, Lcom/tencent/mna/d;->Q0()I

    move-result v9

    invoke-static {}, Lcom/tencent/mna/d;->O0()I

    move-result v10

    .line 72
    invoke-static {}, Lcom/tencent/mna/d;->L0()I

    move-result v11

    invoke-static {}, Lcom/tencent/mna/d;->G()I

    move-result v12

    invoke-static {}, Lcom/tencent/mna/d;->W0()I

    move-result v13

    .line 73
    invoke-static {}, Lcom/tencent/mna/d;->i()I

    move-result v14

    invoke-static {}, Lcom/tencent/mna/d;->P()I

    move-result v15

    invoke-static {}, Lcom/tencent/mna/d;->X()I

    move-result v16

    .line 74
    invoke-static {}, Lcom/tencent/mna/d;->U0()I

    move-result v17

    invoke-static {}, Lcom/tencent/mna/d;->T0()I

    move-result v18

    invoke-static {}, Lcom/tencent/mna/d;->B0()I

    move-result v19

    .line 75
    invoke-static {}, Lcom/tencent/mna/d;->d()I

    move-result v20

    invoke-static {}, Lcom/tencent/mna/d;->D()I

    move-result v21

    invoke-static {}, Lcom/tencent/mna/d;->K()I

    move-result v22

    .line 76
    invoke-static/range {v2 .. v22}, Lcom/tencent/mna/c3;->a(ILjava/lang/String;IIIIIIIIIIIIIIIIIII)V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    invoke-static {}, Lcom/tencent/mna/t0;->f()I

    move-result v2

    .line 88
    invoke-static {}, Lcom/tencent/mna/t0;->e()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 89
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 91
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    const-string v7, ":"

    if-ge v6, v4, :cond_1

    .line 93
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 103
    :cond_1
    invoke-static {}, Lcom/tencent/mna/h;->o()Lcom/tencent/mna/a1;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 105
    invoke-interface {v3}, Lcom/tencent/mna/a1;->h()I

    move-result v4

    .line 106
    invoke-interface {v3}, Lcom/tencent/mna/a1;->g()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 107
    const-string v6, "0.0.0.0"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 108
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_2
    invoke-static {}, Lcom/tencent/mna/h;->p()Lcom/tencent/mna/f1;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 115
    invoke-interface {v3}, Lcom/tencent/mna/f1;->c()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 116
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 117
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    :goto_1
    if-ge v5, v4, :cond_3

    .line 119
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 124
    :cond_3
    invoke-static {v0}, Lcom/tencent/mna/c3;->a(Ljava/util/List;)Lcom/tencent/mna/c3$a;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[N]ROUTER_QOS failed, exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->b(Ljava/lang/String;)V

    goto :goto_2

    .line 129
    :cond_4
    const-string v0, "[N]ROUTER_QOS not start, for rport switch not open, or for hook failed"

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    :goto_2
    return-object v1
.end method

.method public static a()V
    .locals 3

    .line 57
    invoke-static {}, Lcom/tencent/mna/d;->I0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/m2;->l()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "stopMobileQos exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->b(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static a(Lcom/tencent/mna/o1;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/tencent/mna/d;->I0()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-static {}, Lcom/tencent/mna/t0;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-static {}, Lcom/tencent/mna/t0;->e()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 9
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 10
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 11
    invoke-static {}, Lcom/tencent/mna/t0;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 12
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 17
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "0.0.0.0"

    if-lez v1, :cond_4

    .line 18
    :try_start_1
    invoke-static {}, Lcom/tencent/mna/d;->a1()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 20
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    :cond_2
    invoke-static {}, Lcom/tencent/mna/h;->o()Lcom/tencent/mna/a1;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 25
    invoke-interface {v1}, Lcom/tencent/mna/a1;->g()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 27
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    :cond_3
    invoke-static {}, Lcom/tencent/mna/h;->p()Lcom/tencent/mna/f1;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 33
    invoke-interface {v1}, Lcom/tencent/mna/f1;->c()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 34
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 35
    invoke-interface {v1}, Lcom/tencent/mna/f1;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 40
    :cond_4
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_5
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "4G_QOS guaranteeIps:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[N]4G_QOS\uff1astart, delay:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/mna/o1;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", signal:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/mna/o1;->m:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isInPvp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/tencent/mna/o1;->a:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", diagnose:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-static {}, Lcom/tencent/mna/d;->x()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-static {v1}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 51
    invoke-static {p0, v0}, Lcom/tencent/mna/m2;->a(Lcom/tencent/mna/o1;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[N]4G_QOS failed, exception:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/v1;->b(Ljava/lang/String;)V

    goto :goto_2

    .line 56
    :cond_6
    const-string p0, "[N]4G_QOS not start, for qos switch close"

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public static b()I
    .locals 3

    .line 1
    invoke-static {}, Lcom/tencent/mna/d;->P0()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/c3;->e()Lcom/tencent/mna/b3;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget v0, v0, Lcom/tencent/mna/b3;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ROUTER_QOS stopRouterQos exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->b(Ljava/lang/String;)V

    :cond_0
    const/16 v0, -0x64

    :goto_0
    return v0
.end method
