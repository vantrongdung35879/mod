.class public final Lcom/tencent/qimei/t/c;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field public final a:Lcom/tencent/qimei/ao/j;

.field public final b:Ljava/lang/String;

.field public final c:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/tencent/qimei/ao/j;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/tencent/qimei/t/c;->a:Lcom/tencent/qimei/ao/j;

    .line 4
    iput-object p2, p0, Lcom/tencent/qimei/t/c;->b:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/tencent/qimei/t/c;->c:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v1, p0

    .line 1
    move-object/from16 v0, p1

    check-cast v0, [Ljava/lang/String;

    .line 2
    iget-object v0, v1, Lcom/tencent/qimei/t/c;->c:Landroid/os/Bundle;

    if-eqz v0, :cond_5

    .line 4
    iget-object v2, v1, Lcom/tencent/qimei/t/c;->a:Lcom/tencent/qimei/ao/j;

    iget-object v3, v1, Lcom/tencent/qimei/t/c;->b:Ljava/lang/String;

    monitor-enter v2

    .line 5
    :try_start_0
    const-string v4, "appKey"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 6
    const-string v5, "source"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 7
    const-string v6, "spread_data"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    sget-object v6, Lcom/tencent/qimei/ao/j;->f:Ljava/lang/String;

    .line 9
    invoke-static {v0, v6}, Lcom/tencent/qimei/ao/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/qimei/sdk/S/DataFormatter;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/tencent/qimei/sdk/S/DataFormatter;->a()Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v2, v7, v4, v5}, Lcom/tencent/qimei/ao/j;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 12
    iget-object v8, v2, Lcom/tencent/qimei/ao/j;->e:Lcom/tencent/qimei/sdk/S/DataFormatter;

    invoke-virtual {v8}, Lcom/tencent/qimei/sdk/S/DataFormatter;->a()Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v0}, Lcom/tencent/qimei/sdk/S/DataFormatter;->a()Ljava/util/HashMap;

    move-result-object v9

    .line 13
    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v8

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    const/4 v11, 0x0

    if-le v8, v9, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    .line 14
    :goto_0
    const-string v9, "SpreadQM"

    const-string v12, "%s%s received broadcast from %s%s|data = %s|,needReply:%b "

    iget-object v13, v2, Lcom/tencent/qimei/ao/j;->a:Ljava/lang/String;

    iget-object v14, v2, Lcom/tencent/qimei/ao/j;->b:Ljava/lang/String;

    if-nez v7, :cond_2

    if-eqz v8, :cond_1

    goto :goto_1

    :cond_1
    const/4 v15, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v15, 0x1

    .line 15
    :goto_2
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    const/4 v10, 0x6

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v13, v10, v11

    const/4 v13, 0x1

    aput-object v14, v10, v13

    const/4 v13, 0x2

    aput-object v4, v10, v13

    const/4 v4, 0x3

    aput-object v5, v10, v4

    const/4 v14, 0x4

    aput-object v0, v10, v14

    const/4 v0, 0x5

    aput-object v15, v10, v0

    .line 16
    invoke-static {v9, v12, v10}, Lcom/tencent/qimei/af/c;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez v7, :cond_3

    if-eqz v8, :cond_4

    .line 23
    :cond_3
    const-string v0, "com.tencent.qm.spread"

    .line 24
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 25
    iget-object v7, v2, Lcom/tencent/qimei/ao/j;->e:Lcom/tencent/qimei/sdk/S/DataFormatter;

    invoke-static {v7, v6}, Lcom/tencent/qimei/ao/c;->a(Lcom/tencent/qimei/sdk/S/DataFormatter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 26
    const-string v7, "spread_data"

    invoke-virtual {v3, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-string v6, "appKey"

    iget-object v7, v2, Lcom/tencent/qimei/ao/j;->a:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const-string v6, "source"

    iget-object v7, v2, Lcom/tencent/qimei/ao/j;->b:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-static {v0, v5, v3}, Lcom/tencent/qimei/t/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 30
    const-string v0, "SpreadQM"

    const-string v3, "%s%s reply broadcast to %s"

    iget-object v6, v2, Lcom/tencent/qimei/ao/j;->a:Ljava/lang/String;

    iget-object v7, v2, Lcom/tencent/qimei/ao/j;->b:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v6, v4, v11

    const/4 v6, 0x1

    aput-object v7, v4, v6

    aput-object v5, v4, v13

    invoke-static {v0, v3, v4}, Lcom/tencent/qimei/af/c;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :cond_4
    monitor-exit v2

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 32
    monitor-exit v2

    throw v0

    :cond_5
    :goto_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method
