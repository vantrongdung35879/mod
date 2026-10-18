.class public final Lcom/tencent/qimei/ak/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/tencent/qimei/ak/p;


# direct methods
.method public constructor <init>(Lcom/tencent/qimei/ak/p;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/qimei/ak/o;->b:Lcom/tencent/qimei/ak/p;

    iput-object p2, p0, Lcom/tencent/qimei/ak/o;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/tencent/qimei/ak/o;->b:Lcom/tencent/qimei/ak/p;

    iget-object v1, p0, Lcom/tencent/qimei/ak/o;->a:Ljava/lang/String;

    .line 2
    iget-object v2, v0, Lcom/tencent/qimei/ak/p;->d:Ljava/lang/Object;

    .line 3
    monitor-enter v2

    .line 4
    :try_start_0
    iget-object v3, v0, Lcom/tencent/qimei/ak/p;->a:Ljava/lang/String;

    invoke-static {v3}, Lcom/tencent/qimei/ac/m;->a(Ljava/lang/String;)Lcom/tencent/qimei/ac/m;

    move-result-object v3

    const-string/jumbo v4, "tn"

    invoke-virtual {v3, v4, v1}, Lcom/tencent/qimei/ac/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, v0, Lcom/tencent/qimei/ak/p;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qimei/ac/m;->a(Ljava/lang/String;)Lcom/tencent/qimei/ac/m;

    move-result-object v0

    const-string/jumbo v1, "t_s_t"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v1, v3, v4}, Lcom/tencent/qimei/ac/m;->a(Ljava/lang/String;J)V

    .line 6
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
