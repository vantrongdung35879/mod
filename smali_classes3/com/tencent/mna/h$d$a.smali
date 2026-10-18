.class Lcom/tencent/mna/h$d$a;
.super Ljava/lang/Object;
.source "AccelerateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/mna/h$d;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/tencent/mna/m1;

.field final synthetic c:Lcom/tencent/mna/h$d;


# direct methods
.method constructor <init>(Lcom/tencent/mna/h$d;Ljava/lang/String;Lcom/tencent/mna/m1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/mna/h$d$a;->c:Lcom/tencent/mna/h$d;

    iput-object p2, p0, Lcom/tencent/mna/h$d$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/mna/h$d$a;->b:Lcom/tencent/mna/m1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/tencent/mna/b2;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/tencent/mna/h$d$a;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p0, Lcom/tencent/mna/h$d$a;->b:Lcom/tencent/mna/m1;

    const-string v2, "%%"

    const-string v3, "OnGetIpGroupDelaysNotify:"

    if-eqz v1, :cond_0

    .line 4
    iget-object v4, p0, Lcom/tencent/mna/h$d$a;->c:Lcom/tencent/mna/h$d;

    iget-object v4, v4, Lcom/tencent/mna/h$d;->e:Ljava/lang/String;

    invoke-interface {v1, v4, v0}, Lcom/tencent/mna/m1;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mna/h$d$a;->c:Lcom/tencent/mna/h$d;

    iget-object v1, v1, Lcom/tencent/mna/h$d;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/mna/h$d$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/jni/e;->c(Ljava/lang/String;)I

    .line 9
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mna/h$d$a;->c:Lcom/tencent/mna/h$d;

    iget-object v1, v1, Lcom/tencent/mna/h$d;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/mna/h$d$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
