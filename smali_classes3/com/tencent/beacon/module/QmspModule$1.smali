.class Lcom/tencent/beacon/module/QmspModule$1;
.super Ljava/lang/Object;
.source "QmspModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/beacon/module/QmspModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/beacon/module/QmspModule;


# direct methods
.method constructor <init>(Lcom/tencent/beacon/module/QmspModule;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/beacon/module/QmspModule$1;->a:Lcom/tencent/beacon/module/QmspModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/tencent/beacon/module/QmspModule$1;->a:Lcom/tencent/beacon/module/QmspModule;

    invoke-static {v0}, Lcom/tencent/beacon/module/QmspModule;->a(Lcom/tencent/beacon/module/QmspModule;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/beacon/module/QmspModule$1;->a:Lcom/tencent/beacon/module/QmspModule;

    invoke-static {}, Lcom/tencent/beacon/a/c/j;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/tencent/beacon/a/c/j;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tencent/beacon/module/QmspModule;->a(Lcom/tencent/beacon/module/QmspModule;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3
    :try_start_0
    invoke-static {}, Lcom/tencent/qmsp/sdk/u/U;->getSDKIsAlive()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    const-string v2, "Y"

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 4
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v3, v4, v0

    const-string v3, "[qmsp] getSDKIsAlive error! exception msg"

    invoke-static {v3, v4}, Lcom/tencent/beacon/base/util/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    invoke-static {v2}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/Throwable;)V

    :cond_1
    const-string v2, "N"

    .line 6
    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    const-string v0, "[qmsp] current qmsp is alive:%s"

    invoke-static {v0, v1}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    invoke-static {}, Lcom/tencent/beacon/a/c/c;->c()Lcom/tencent/beacon/a/c/c;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/beacon/a/c/c;->c(Ljava/lang/String;)V

    return-void
.end method
