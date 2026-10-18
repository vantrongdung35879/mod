.class public final Lcom/tencent/qimei/ao/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/tencent/qimei/ao/h;


# direct methods
.method public constructor <init>(Lcom/tencent/qimei/ao/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/qimei/ao/g;->a:Lcom/tencent/qimei/ao/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    sget-object v0, Lcom/tencent/qimei/ao/j;->f:Ljava/lang/String;

    .line 2
    sget-object v0, Lcom/tencent/qimei/ao/i;->a:Lcom/tencent/qimei/ao/j;

    .line 3
    iget-object v1, p0, Lcom/tencent/qimei/ao/g;->a:Lcom/tencent/qimei/ao/h;

    .line 4
    iget-object v2, v1, Lcom/tencent/qimei/ao/h;->a:Ljava/lang/String;

    .line 5
    iget-object v1, v1, Lcom/tencent/qimei/ao/h;->b:Ljava/lang/String;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iput-object v2, v0, Lcom/tencent/qimei/ao/j;->a:Ljava/lang/String;

    .line 8
    iput-object v1, v0, Lcom/tencent/qimei/ao/j;->b:Ljava/lang/String;

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/qimei/ao/j;->c:Ljava/lang/String;

    .line 10
    iget-object v1, v0, Lcom/tencent/qimei/ao/j;->d:Lcom/tencent/qimei/t/d;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    .line 11
    new-instance v1, Lcom/tencent/qimei/t/d;

    iget-object v2, v0, Lcom/tencent/qimei/ao/j;->c:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/tencent/qimei/t/d;-><init>(Lcom/tencent/qimei/ao/j;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/tencent/qimei/ao/j;->d:Lcom/tencent/qimei/t/d;

    .line 12
    invoke-virtual {v1}, Lcom/tencent/qimei/t/d;->a()V

    .line 13
    :cond_1
    const-string v1, "com.tencent.qm.spread"

    .line 14
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 15
    iget-object v3, v0, Lcom/tencent/qimei/ao/j;->e:Lcom/tencent/qimei/sdk/S/DataFormatter;

    sget-object v4, Lcom/tencent/qimei/ao/j;->f:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/tencent/qimei/ao/c;->a(Lcom/tencent/qimei/sdk/S/DataFormatter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 16
    const-string v4, "spread_data"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    const-string v3, "appKey"

    iget-object v4, v0, Lcom/tencent/qimei/ao/j;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    const-string v3, "source"

    iget-object v4, v0, Lcom/tencent/qimei/ao/j;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    const-string v3, ""

    invoke-static {v1, v3, v2}, Lcom/tencent/qimei/t/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 20
    const-string v1, "SpreadQM"

    const-string v2, "%s-%s | send implicit broadcast"

    iget-object v3, v0, Lcom/tencent/qimei/ao/j;->a:Ljava/lang/String;

    iget-object v4, v0, Lcom/tencent/qimei/ao/j;->b:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x1

    aput-object v4, v5, v3

    invoke-static {v1, v2, v5}, Lcom/tencent/qimei/af/c;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    :goto_0
    monitor-exit v0

    .line 22
    invoke-static {}, Lcom/tencent/qimei/u/a;->a()Lcom/tencent/qimei/u/a;

    move-result-object v0

    new-instance v1, Lcom/tencent/qimei/ao/f;

    invoke-direct {v1, p0}, Lcom/tencent/qimei/ao/f;-><init>(Lcom/tencent/qimei/ao/g;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v2, v3, v1}, Lcom/tencent/qimei/u/a;->a(JLjava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v1

    .line 38
    monitor-exit v0

    throw v1
.end method
