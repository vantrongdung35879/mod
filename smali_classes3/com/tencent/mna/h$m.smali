.class Lcom/tencent/mna/h$m;
.super Ljava/lang/Object;
.source "AccelerateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/mna/h;->b(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Z


# direct methods
.method constructor <init>(IZ)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tencent/mna/h$m;->a:I

    iput-boolean p2, p0, Lcom/tencent/mna/h$m;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    iget v2, p0, Lcom/tencent/mna/h$m;->a:I

    iget-boolean v3, p0, Lcom/tencent/mna/h$m;->b:Z

    invoke-static {}, Lcom/tencent/mna/h;->e()Lcom/tencent/mna/f1;

    move-result-object v4

    invoke-static {}, Lcom/tencent/mna/h;->i()Lcom/tencent/mna/j;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/tencent/mna/h;->a(IZLcom/tencent/mna/f1;Lcom/tencent/mna/j;)I

    move-result v2

    .line 5
    invoke-static {}, Lcom/tencent/mna/h;->q()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eq v2, v4, :cond_1

    if-nez v2, :cond_2

    .line 9
    :cond_1
    invoke-static {v3}, Lcom/tencent/mna/h;->g(Z)I

    move-result v2

    .line 14
    :cond_2
    invoke-static {}, Lcom/tencent/mna/d;->z1()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 15
    invoke-static {}, Lcom/tencent/mna/h;->q()I

    move-result v4

    invoke-static {v2, v4}, Lcom/tencent/mna/y3;->a(II)V

    .line 18
    :cond_3
    invoke-static {}, Lcom/tencent/mna/b2;->h()Lcom/tencent/mna/NetworkBindingListener;

    move-result-object v4

    .line 21
    new-instance v5, Lcom/tencent/mna/h$m$a;

    invoke-direct {v5, p0, v4, v2, v3}, Lcom/tencent/mna/h$m$a;-><init>(Lcom/tencent/mna/h$m;Lcom/tencent/mna/NetworkBindingListener;IZ)V

    invoke-static {v5}, Lcom/tencent/mna/a2;->b(Ljava/lang/Runnable;)V

    .line 39
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v0, 0x5f

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/mna/h$m;->a:I

    .line 41
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 42
    iget-boolean v1, p0, Lcom/tencent/mna/h$m;->b:Z

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    invoke-static {}, Lcom/tencent/mna/h;->h()Lcom/tencent/mna/base/report/a;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 45
    invoke-static {}, Lcom/tencent/mna/h;->h()Lcom/tencent/mna/base/report/a;

    move-result-object v0

    sget-object v1, Lcom/tencent/mna/base/report/a$a;->W2M_FLAG:Lcom/tencent/mna/base/report/a$a;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mna/base/report/a;->a(Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)Lcom/tencent/mna/base/report/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_4
    return-void
.end method
