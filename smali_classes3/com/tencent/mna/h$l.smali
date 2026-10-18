.class Lcom/tencent/mna/h$l;
.super Ljava/lang/Object;
.source "AccelerateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/mna/h;->a(Ljava/lang/String;ILjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/mna/h$l;->a:Ljava/lang/String;

    iput p2, p0, Lcom/tencent/mna/h$l;->b:I

    iput-object p3, p0, Lcom/tencent/mna/h$l;->c:Ljava/lang/String;

    iput p4, p0, Lcom/tencent/mna/h$l;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "setGameIp updateProxyIp res:"

    const-string v1, "setGameIp not execute for isBGP switch false, gameIp:"

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/d;->K1()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2
    iget-object v1, p0, Lcom/tencent/mna/h$l;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/tencent/mna/h$l;->b:I

    if-lez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/tencent/mna/h$l;->a:Ljava/lang/String;

    sput-object v1, Lcom/tencent/mna/t0;->k:Ljava/lang/String;

    .line 4
    iget v1, p0, Lcom/tencent/mna/h$l;->b:I

    sput v1, Lcom/tencent/mna/t0;->l:I

    .line 5
    iget-object v1, p0, Lcom/tencent/mna/h$l;->c:Ljava/lang/String;

    iget v2, p0, Lcom/tencent/mna/h$l;->d:I

    iget-object v3, p0, Lcom/tencent/mna/h$l;->a:Ljava/lang/String;

    iget v4, p0, Lcom/tencent/mna/h$l;->b:I

    invoke-static {v1, v2, v3, v4}, Lcom/tencent/mna/base/jni/e;->a(Ljava/lang/String;ILjava/lang/String;I)V

    .line 7
    :cond_0
    invoke-static {}, Lcom/tencent/mna/h;->x()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/mna/h$l;->c:Ljava/lang/String;

    iget v2, p0, Lcom/tencent/mna/h$l;->d:I

    invoke-static {v1, v2}, Lcom/tencent/mna/h;->a(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 8
    iget-object v1, p0, Lcom/tencent/mna/h$l;->c:Ljava/lang/String;

    iget v2, p0, Lcom/tencent/mna/h$l;->d:I

    invoke-static {v1, v2}, Lcom/tencent/mna/h;->d(Ljava/lang/String;I)Z

    .line 9
    invoke-static {}, Lcom/tencent/mna/h;->b()Lcom/tencent/mna/a1;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 10
    invoke-static {}, Lcom/tencent/mna/h;->b()Lcom/tencent/mna/a1;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/mna/a1;->b()I

    move-result v1

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/tencent/mna/h;->b()Lcom/tencent/mna/a1;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mna/a1;->f()Lcom/tencent/mna/f;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 14
    invoke-static {}, Lcom/tencent/mna/h;->h()Lcom/tencent/mna/base/report/a;

    move-result-object v1

    sget-object v2, Lcom/tencent/mna/base/report/a$a;->PROXYIPS:Lcom/tencent/mna/base/report/a$a;

    iget-object v0, v0, Lcom/tencent/mna/f;->d:Ljava/lang/String;

    .line 15
    invoke-virtual {v1, v2, v0}, Lcom/tencent/mna/base/report/a;->a(Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)Lcom/tencent/mna/base/report/a;

    goto :goto_0

    .line 21
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mna/h$l;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", port:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/mna/h$l;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lastGameIp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-static {}, Lcom/tencent/mna/t0;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    :goto_0
    return-void
.end method
