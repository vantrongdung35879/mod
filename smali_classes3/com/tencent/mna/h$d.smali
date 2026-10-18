.class Lcom/tencent/mna/h$d;
.super Ljava/lang/Object;
.source "AccelerateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/mna/h;->a(Ljava/lang/String;Ljava/lang/String;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/mna/h$d;->a:Ljava/lang/String;

    iput p2, p0, Lcom/tencent/mna/h$d;->b:I

    iput p3, p0, Lcom/tencent/mna/h$d;->c:I

    iput p4, p0, Lcom/tencent/mna/h$d;->d:I

    iput-object p5, p0, Lcom/tencent/mna/h$d;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/b2;->f()Lcom/tencent/mna/m1;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/tencent/mna/h$d;->a:Ljava/lang/String;

    iget v2, p0, Lcom/tencent/mna/h$d;->b:I

    iget v3, p0, Lcom/tencent/mna/h$d;->c:I

    iget v4, p0, Lcom/tencent/mna/h$d;->d:I

    invoke-static {v1, v2, v3, v4}, Lcom/tencent/mna/base/jni/e;->a(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v1

    .line 5
    new-instance v2, Lcom/tencent/mna/h$d$a;

    invoke-direct {v2, p0, v1, v0}, Lcom/tencent/mna/h$d$a;-><init>(Lcom/tencent/mna/h$d;Ljava/lang/String;Lcom/tencent/mna/m1;)V

    invoke-static {v2}, Lcom/tencent/mna/a2;->b(Ljava/lang/Runnable;)V

    .line 21
    iget-object v0, p0, Lcom/tencent/mna/h$d;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mna/h$d;->a:Ljava/lang/String;

    iget v3, p0, Lcom/tencent/mna/h$d;->b:I

    iget v4, p0, Lcom/tencent/mna/h$d;->d:I

    invoke-static {v0, v2, v3, v4, v1}, Lcom/tencent/mna/h;->a(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getIpGroupDelays exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
