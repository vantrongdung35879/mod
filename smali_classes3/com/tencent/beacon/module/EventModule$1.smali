.class Lcom/tencent/beacon/module/EventModule$1;
.super Ljava/lang/Object;
.source "EventModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/beacon/module/EventModule;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/beacon/module/EventModule;


# direct methods
.method constructor <init>(Lcom/tencent/beacon/module/EventModule;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/beacon/module/EventModule$1;->a:Lcom/tencent/beacon/module/EventModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tencent/beacon/event/a/a;->a()Lcom/tencent/beacon/event/a/a;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v1, "t_r_e"

    .line 2
    :try_start_1
    invoke-virtual {v0, v1}, Lcom/tencent/beacon/event/a/a;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string/jumbo v2, "t_n_e"

    .line 3
    :try_start_2
    invoke-virtual {v0, v2}, Lcom/tencent/beacon/event/a/a;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 4
    iget-object v2, p0, Lcom/tencent/beacon/module/EventModule$1;->a:Lcom/tencent/beacon/module/EventModule;

    invoke-static {v2, v1, v0}, Lcom/tencent/beacon/module/EventModule;->a(Lcom/tencent/beacon/module/EventModule;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 5
    invoke-static {v0}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/Throwable;)V

    .line 6
    invoke-static {}, Lcom/tencent/beacon/a/b/i;->e()Lcom/tencent/beacon/a/b/i;

    move-result-object v1

    const-string v2, "204"

    const-string v3, "error while storageReport"

    .line 7
    invoke-virtual {v1, v2, v3, v0}, Lcom/tencent/beacon/a/b/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
