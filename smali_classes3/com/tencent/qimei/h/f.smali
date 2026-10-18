.class public final Lcom/tencent/qimei/h/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lcom/tencent/qimei/h/c;

.field public final b:Lcom/tencent/qimei/h/h;


# direct methods
.method public constructor <init>(Lcom/tencent/qimei/h/c;Lcom/tencent/qimei/h/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tencent/qimei/h/f;->a:Lcom/tencent/qimei/h/c;

    .line 3
    iput-object p2, p0, Lcom/tencent/qimei/h/f;->b:Lcom/tencent/qimei/h/h;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/tencent/qimei/h/f;->a:Lcom/tencent/qimei/h/c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 8
    :cond_1
    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0xa

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->sleep(J)V

    .line 9
    iget-object v3, p0, Lcom/tencent/qimei/h/f;->a:Lcom/tencent/qimei/h/c;

    check-cast v3, Lcom/tencent/qimei/h/a;

    invoke-virtual {v3}, Lcom/tencent/qimei/h/a;->a()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    if-nez v2, :cond_2

    const/16 v3, 0x1e

    if-lt v1, v3, :cond_1

    goto :goto_0

    :catch_0
    nop

    :cond_2
    :goto_0
    if-eqz v2, :cond_9

    .line 16
    iget-object v1, p0, Lcom/tencent/qimei/h/f;->b:Lcom/tencent/qimei/h/h;

    if-eqz v1, :cond_9

    .line 17
    iget-object v2, v1, Lcom/tencent/qimei/h/h;->c:Lcom/tencent/oaid2/VendorManager;

    if-eqz v2, :cond_9

    .line 18
    invoke-virtual {v1}, Lcom/tencent/qimei/h/h;->e()Z

    move-result v3

    .line 20
    invoke-virtual {v1}, Lcom/tencent/qimei/h/h;->e()Z

    move-result v4

    const-string v5, ""

    if-eqz v4, :cond_4

    .line 21
    iget-object v4, v1, Lcom/tencent/qimei/h/h;->a:Lcom/tencent/qimei/h/e;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    :try_start_1
    iget-object v4, v4, Lcom/tencent/qimei/h/e;->d:Lcom/tencent/qimei/h/c;

    if-nez v4, :cond_3

    goto :goto_1

    .line 26
    :cond_3
    check-cast v4, Lcom/tencent/qimei/h/a;

    invoke-virtual {v4}, Lcom/tencent/qimei/h/a;->b()Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    nop

    :goto_1
    move-object v4, v5

    :goto_2
    if-nez v4, :cond_5

    :cond_4
    move-object v4, v5

    .line 35
    :cond_5
    invoke-virtual {v1}, Lcom/tencent/qimei/h/h;->e()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 36
    iget-object v1, v1, Lcom/tencent/qimei/h/h;->a:Lcom/tencent/qimei/h/e;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    :try_start_2
    iget-object v1, v1, Lcom/tencent/qimei/h/e;->d:Lcom/tencent/qimei/h/c;

    if-nez v1, :cond_6

    goto :goto_3

    .line 41
    :cond_6
    check-cast v1, Lcom/tencent/qimei/h/a;

    invoke-virtual {v1}, Lcom/tencent/qimei/h/a;->c()Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception v1

    .line 45
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    move-object v1, v5

    :goto_4
    if-nez v1, :cond_7

    goto :goto_5

    :cond_7
    move-object v5, v1

    .line 50
    :cond_8
    :goto_5
    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/tencent/oaid2/VendorManager;->callbackOaid(ZLjava/lang/String;Ljava/lang/String;Z)V

    :cond_9
    return-void
.end method
