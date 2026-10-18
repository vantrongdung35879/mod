.class Lcom/tencent/mna/h$k;
.super Ljava/lang/Object;
.source "AccelerateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/mna/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/mna/h$k;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/mna/h$k;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/mna/h$k;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/tencent/mna/h;->h()Lcom/tencent/mna/base/report/a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/mna/h;->i()Lcom/tencent/mna/j;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/h;->h()Lcom/tencent/mna/base/report/a;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/tencent/mna/base/report/a;->l()Lcom/tencent/mna/s0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v1, p0, Lcom/tencent/mna/h$k;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mna/s0;->b(Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/tencent/mna/h$k;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mna/s0;->c(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/tencent/mna/h$k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mna/s0;->a(Ljava/lang/String;)V

    .line 11
    :cond_0
    invoke-static {}, Lcom/tencent/mna/d;->M0()I

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    invoke-static {}, Lcom/tencent/mna/h;->i()Lcom/tencent/mna/j;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mna/h$k;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mna/h$k;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/mna/h$k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/mna/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addEngineData throwable:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
