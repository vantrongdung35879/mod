.class public final Lcom/tencent/qimei/d/f;
.super Lcom/tencent/qimei/d/a;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/tencent/qimei/d/g;


# direct methods
.method public constructor <init>(Lcom/tencent/qimei/d/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/qimei/d/f;->a:Lcom/tencent/qimei/d/g;

    invoke-direct {p0}, Lcom/tencent/qimei/d/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    const-string p1, "honor get oaid_limit_state,bundle is null"

    invoke-static {p1}, Lcom/tencent/qimei/af/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    const-string v0, "oa_id_limit_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 4
    iget-object v0, p0, Lcom/tencent/qimei/d/f;->a:Lcom/tencent/qimei/d/g;

    .line 5
    iget-object v0, v0, Lcom/tencent/qimei/d/g;->b:Lcom/tencent/qimei/d/d;

    .line 6
    iput-boolean p1, v0, Lcom/tencent/qimei/d/d;->b:Z

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "honor got oaid_limit_state is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/qimei/af/b;->b(Ljava/lang/String;)V

    .line 9
    :goto_0
    iget-object p1, p0, Lcom/tencent/qimei/d/f;->a:Lcom/tencent/qimei/d/g;

    iget-object p1, p1, Lcom/tencent/qimei/d/g;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
