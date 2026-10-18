.class final Lcom/uqm/crashsight/crashreport/biz/c$2;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/crashreport/biz/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 490
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 489
    :cond_0
    const-string p2, "unknown"

    .line 492
    :goto_0
    invoke-static {}, Lcom/uqm/crashsight/crashreport/biz/c;->c()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 493
    invoke-static {}, Lcom/uqm/crashsight/crashreport/biz/c;->c()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 498
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string v1, ">>> %s onCreated <<<"

    invoke-static {v1, v0}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 500
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/a;->d()Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 502
    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/a;->G:Ljava/util/List;

    const-string v1, "onCreated"

    .line 503
    invoke-static {p2, v1}, Lcom/uqm/crashsight/crashreport/biz/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 505
    :cond_2
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/biz/c;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 469
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 468
    :cond_0
    const-string p1, "unknown"

    .line 471
    :goto_0
    invoke-static {}, Lcom/uqm/crashsight/crashreport/biz/c;->c()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 472
    invoke-static {}, Lcom/uqm/crashsight/crashreport/biz/c;->c()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 477
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, ">>> %s onDestroyed <<<"

    invoke-static {v1, v0}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 479
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/a;->d()Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 481
    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/a;->G:Ljava/util/List;

    const-string v1, "onDestroyed"

    .line 482
    invoke-static {p1, v1}, Lcom/uqm/crashsight/crashreport/biz/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 7

    .line 431
    const-string v0, "unknown"

    if-eqz p1, :cond_0

    .line 432
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 434
    :goto_0
    invoke-static {}, Lcom/uqm/crashsight/crashreport/biz/c;->c()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 435
    invoke-static {}, Lcom/uqm/crashsight/crashreport/biz/c;->c()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x1

    .line 440
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v4, ">>> %s onPaused <<<"

    invoke-static {v4, v2}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 442
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/a;->d()Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object v2

    if-nez v2, :cond_2

    return-void

    .line 446
    :cond_2
    iget-object v4, v2, Lcom/uqm/crashsight/crashreport/common/info/a;->G:Ljava/util/List;

    const-string v5, "onPaused"

    .line 447
    invoke-static {v1, v5}, Lcom/uqm/crashsight/crashreport/biz/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    invoke-virtual {v2, v3}, Lcom/uqm/crashsight/crashreport/common/info/a;->a(Z)V

    .line 450
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/uqm/crashsight/crashreport/common/info/a;->u:J

    .line 451
    iget-wide v3, v2, Lcom/uqm/crashsight/crashreport/common/info/a;->u:J

    iget-wide v5, v2, Lcom/uqm/crashsight/crashreport/common/info/a;->t:J

    sub-long/2addr v3, v5

    iput-wide v3, v2, Lcom/uqm/crashsight/crashreport/common/info/a;->v:J

    .line 453
    iget-wide v3, v2, Lcom/uqm/crashsight/crashreport/common/info/a;->u:J

    invoke-static {v3, v4}, Lcom/uqm/crashsight/crashreport/biz/c;->c(J)J

    .line 455
    iget-wide v3, v2, Lcom/uqm/crashsight/crashreport/common/info/a;->v:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-gez v1, :cond_3

    .line 456
    iput-wide v5, v2, Lcom/uqm/crashsight/crashreport/common/info/a;->v:J

    :cond_3
    if-eqz p1, :cond_4

    .line 459
    const-string p1, "background"

    iput-object p1, v2, Lcom/uqm/crashsight/crashreport/common/info/a;->s:Ljava/lang/String;

    return-void

    .line 461
    :cond_4
    iput-object v0, v2, Lcom/uqm/crashsight/crashreport/common/info/a;->s:Ljava/lang/String;

    return-void
.end method

.method public final onActivityPrePaused(Landroid/app/Activity;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 411
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 410
    :cond_0
    const-string p1, "unknown"

    .line 413
    :goto_0
    invoke-static {}, Lcom/uqm/crashsight/crashreport/biz/c;->c()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 414
    invoke-static {}, Lcom/uqm/crashsight/crashreport/biz/c;->c()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 419
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, ">>> %s onPrePaused <<<"

    invoke-static {p1, v0}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 421
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/a;->d()Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 425
    :cond_2
    invoke-virtual {p1, v1}, Lcom/uqm/crashsight/crashreport/common/info/a;->a(Z)V

    return-void
.end method

.method public final onActivityPreStopped(Landroid/app/Activity;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 317
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 316
    :cond_0
    const-string p1, "unknown"

    .line 319
    :goto_0
    invoke-static {}, Lcom/uqm/crashsight/crashreport/biz/c;->c()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 320
    invoke-static {}, Lcom/uqm/crashsight/crashreport/biz/c;->c()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 325
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, ">>> %s onPreStopped <<<"

    invoke-static {p1, v0}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 9

    if-eqz p1, :cond_0

    .line 353
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 352
    :cond_0
    const-string p1, "unknown"

    .line 355
    :goto_0
    invoke-static {}, Lcom/uqm/crashsight/crashreport/biz/c;->c()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 356
    invoke-static {}, Lcom/uqm/crashsight/crashreport/biz/c;->c()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 361
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, ">>> %s onResumed <<<"

    invoke-static {v3, v1}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 363
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/a;->d()Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    .line 367
    :cond_2
    iget-object v3, v1, Lcom/uqm/crashsight/crashreport/common/info/a;->G:Ljava/util/List;

    const-string v4, "onResumed"

    .line 368
    invoke-static {p1, v4}, Lcom/uqm/crashsight/crashreport/biz/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    invoke-virtual {v1, v0}, Lcom/uqm/crashsight/crashreport/common/info/a;->a(Z)V

    .line 370
    iput-object p1, v1, Lcom/uqm/crashsight/crashreport/common/info/a;->s:Ljava/lang/String;

    .line 372
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/uqm/crashsight/crashreport/common/info/a;->t:J

    .line 374
    iget-wide v3, v1, Lcom/uqm/crashsight/crashreport/common/info/a;->t:J

    .line 375
    invoke-static {}, Lcom/uqm/crashsight/crashreport/biz/c;->d()J

    move-result-wide v5

    sub-long/2addr v3, v5

    iput-wide v3, v1, Lcom/uqm/crashsight/crashreport/common/info/a;->w:J

    .line 376
    iget-wide v3, v1, Lcom/uqm/crashsight/crashreport/common/info/a;->t:J

    invoke-static {}, Lcom/uqm/crashsight/crashreport/biz/c;->e()J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 378
    invoke-static {}, Lcom/uqm/crashsight/crashreport/biz/c;->f()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long p1, v5, v7

    if-lez p1, :cond_3

    .line 379
    invoke-static {}, Lcom/uqm/crashsight/crashreport/biz/c;->f()J

    move-result-wide v5

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/uqm/crashsight/crashreport/biz/c;->g()J

    move-result-wide v5

    :goto_1
    cmp-long p1, v3, v5

    if-lez p1, :cond_5

    .line 382
    invoke-virtual {v1}, Lcom/uqm/crashsight/crashreport/common/info/a;->f()V

    .line 383
    invoke-static {}, Lcom/uqm/crashsight/crashreport/biz/c;->h()I

    const-wide/16 v5, 0x3e8

    .line 384
    div-long/2addr v3, v5

    .line 386
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {}, Lcom/uqm/crashsight/crashreport/biz/c;->g()J

    move-result-wide v3

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    aput-object v1, v3, v0

    .line 384
    const-string p1, "[session] launch app one times (app in background %d seconds and over %d seconds)"

    invoke-static {p1, v3}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 388
    invoke-static {}, Lcom/uqm/crashsight/crashreport/biz/c;->i()I

    move-result p1

    invoke-static {}, Lcom/uqm/crashsight/crashreport/biz/c;->j()I

    move-result v1

    rem-int/2addr p1, v1

    const/4 v1, 0x3

    if-nez p1, :cond_4

    .line 389
    sget-object p1, Lcom/uqm/crashsight/crashreport/biz/c;->a:Lcom/uqm/crashsight/crashreport/biz/b;

    .line 390
    invoke-static {}, Lcom/uqm/crashsight/crashreport/biz/c;->k()Z

    move-result v0

    .line 389
    invoke-virtual {p1, v1, v0, v7, v8}, Lcom/uqm/crashsight/crashreport/biz/b;->a(IZJ)V

    return-void

    .line 392
    :cond_4
    sget-object p1, Lcom/uqm/crashsight/crashreport/biz/c;->a:Lcom/uqm/crashsight/crashreport/biz/b;

    invoke-virtual {p1, v1, v2, v7, v8}, Lcom/uqm/crashsight/crashreport/biz/b;->a(IZJ)V

    .line 393
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 394
    invoke-static {}, Lcom/uqm/crashsight/crashreport/biz/c;->l()J

    move-result-wide v5

    sub-long v5, v3, v5

    invoke-static {}, Lcom/uqm/crashsight/crashreport/biz/c;->m()J

    move-result-wide v7

    cmp-long p1, v5, v7

    if-lez p1, :cond_5

    .line 395
    invoke-static {v3, v4}, Lcom/uqm/crashsight/crashreport/biz/c;->b(J)J

    .line 396
    const-string p1, "add a timer to upload hot start user info"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 397
    invoke-static {}, Lcom/uqm/crashsight/crashreport/biz/c;->k()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 399
    sget-object p1, Lcom/uqm/crashsight/crashreport/biz/c;->a:Lcom/uqm/crashsight/crashreport/biz/b;

    .line 400
    invoke-static {}, Lcom/uqm/crashsight/crashreport/biz/c;->m()J

    move-result-wide v1

    .line 1111
    invoke-static {}, Lcom/uqm/crashsight/proguard/n;->a()Lcom/uqm/crashsight/proguard/n;

    move-result-object v3

    new-instance v4, Lcom/uqm/crashsight/crashreport/biz/b$a;

    const/4 v5, 0x0

    invoke-direct {v4, p1, v5, v0}, Lcom/uqm/crashsight/crashreport/biz/b$a;-><init>(Lcom/uqm/crashsight/crashreport/biz/b;Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;Z)V

    invoke-virtual {v3, v4, v1, v2}, Lcom/uqm/crashsight/proguard/n;->a(Ljava/lang/Runnable;J)Z

    :cond_5
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
