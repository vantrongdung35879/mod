.class Lcom/tencent/qmsp/sdk/c/f$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/tencent/qmsp/sdk/c/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qmsp/sdk/c/f;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/qmsp/sdk/c/f;


# direct methods
.method constructor <init>(Lcom/tencent/qmsp/sdk/c/f;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qmsp/sdk/c/f$b;->a:Lcom/tencent/qmsp/sdk/c/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v0, 0x1

    const-string v1, "Something wrong when init native."

    const-string v2, "Qp.QFW"

    invoke-static {v2, v0, v1}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public run()V
    .locals 14

    invoke-static {}, Lcom/tencent/qmsp/sdk/c/f;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qmsp/sdk/c/f$b;->a:Lcom/tencent/qmsp/sdk/c/f;

    invoke-static {v0}, Lcom/tencent/qmsp/sdk/c/f;->a(Lcom/tencent/qmsp/sdk/c/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    new-array v13, v0, [Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/qmsp/sdk/a/c;->g()I

    move-result v1

    int-to-long v5, v1

    iget-object v1, p0, Lcom/tencent/qmsp/sdk/c/f$b;->a:Lcom/tencent/qmsp/sdk/c/f;

    invoke-static {v1}, Lcom/tencent/qmsp/sdk/c/f;->b(Lcom/tencent/qmsp/sdk/c/f;)Lcom/tencent/qmsp/sdk/c/l;

    move-result-object v9

    invoke-static {}, Lcom/tencent/qmsp/sdk/app/QmspSDK;->getContext()Landroid/content/Context;

    move-result-object v10

    const-wide/16 v1, 0x1

    const-wide/16 v3, 0x200

    const-wide/16 v7, 0x0

    const/4 v11, 0x0

    move-object v12, v13

    invoke-static/range {v1 .. v12}, Lcom/tencent/qmsp/sdk/c/f;->a(JJJJLjava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    aget-object v1, v13, v2

    if-eqz v1, :cond_1

    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/tencent/qmsp/sdk/c/f$b;->a:Lcom/tencent/qmsp/sdk/c/f;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v3, v1}, Lcom/tencent/qmsp/sdk/c/f;->a(Lcom/tencent/qmsp/sdk/c/f;I)I

    iget-object v1, p0, Lcom/tencent/qmsp/sdk/c/f$b;->a:Lcom/tencent/qmsp/sdk/c/f;

    invoke-static {v1}, Lcom/tencent/qmsp/sdk/c/f;->c(Lcom/tencent/qmsp/sdk/c/f;)I

    iget-object v1, p0, Lcom/tencent/qmsp/sdk/c/f$b;->a:Lcom/tencent/qmsp/sdk/c/f;

    invoke-static {v1, v0}, Lcom/tencent/qmsp/sdk/c/f;->a(Lcom/tencent/qmsp/sdk/c/f;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    const-string v1, "Qp.QFW"

    const-string v3, "Native ver: %d(%s)"

    :try_start_1
    iget-object v4, p0, Lcom/tencent/qmsp/sdk/c/f$b;->a:Lcom/tencent/qmsp/sdk/c/f;

    invoke-static {v4}, Lcom/tencent/qmsp/sdk/c/f;->c(Lcom/tencent/qmsp/sdk/c/f;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/qmsp/sdk/c/f$b;->a:Lcom/tencent/qmsp/sdk/c/f;

    invoke-static {v5}, Lcom/tencent/qmsp/sdk/c/f;->c(Lcom/tencent/qmsp/sdk/c/f;)I

    move-result v5

    invoke-static {v5}, Lcom/tencent/qmsp/sdk/a/c;->a(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v2

    aput-object v5, v6, v0

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method
