.class Lcom/tencent/qmsp/sdk/c/k$g;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qmsp/sdk/c/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "g"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/qmsp/sdk/c/k;


# direct methods
.method public constructor <init>(Lcom/tencent/qmsp/sdk/c/k;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qmsp/sdk/c/k$g;->a:Lcom/tencent/qmsp/sdk/c/k;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/tencent/qmsp/sdk/c/k$g;->a:Lcom/tencent/qmsp/sdk/c/k;

    check-cast p1, Lcom/tencent/qmsp/sdk/c/k$e;

    invoke-static {v0, p1}, Lcom/tencent/qmsp/sdk/c/k;->a(Lcom/tencent/qmsp/sdk/c/k;Lcom/tencent/qmsp/sdk/c/k$e;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/tencent/qmsp/sdk/c/k$g;->a:Lcom/tencent/qmsp/sdk/c/k;

    invoke-static {p1}, Lcom/tencent/qmsp/sdk/c/k;->d(Lcom/tencent/qmsp/sdk/c/k;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/tencent/qmsp/sdk/c/k$g;->a:Lcom/tencent/qmsp/sdk/c/k;

    invoke-static {p1}, Lcom/tencent/qmsp/sdk/c/k;->c(Lcom/tencent/qmsp/sdk/c/k;)V

    goto :goto_0

    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/tencent/qmsp/sdk/c/k$g;->a:Lcom/tencent/qmsp/sdk/c/k;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/tencent/qmsp/sdk/c/k;->a(Lcom/tencent/qmsp/sdk/c/k;Ljava/util/List;)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/tencent/qmsp/sdk/c/k$g;->a:Lcom/tencent/qmsp/sdk/c/k;

    invoke-static {p1}, Lcom/tencent/qmsp/sdk/c/k;->a(Lcom/tencent/qmsp/sdk/c/k;)V

    :cond_5
    :goto_0
    return-void
.end method
