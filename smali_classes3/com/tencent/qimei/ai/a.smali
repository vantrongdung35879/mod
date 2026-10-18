.class public final Lcom/tencent/qimei/ai/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/qimei/sdk/IAsyncQimeiListener;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/qimei/ai/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/qimei/ai/a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onQimeiDispatch(Lcom/tencent/qimei/sdk/Qimei;)V
    .locals 6

    .line 1
    const-string p1, "IsolateRequest"

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/tencent/qimei/v/a;->g()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 5
    :cond_0
    sget-object v1, Lcom/tencent/qimei/au/b;->F:Lcom/tencent/qimei/aa/c;

    iget-object v2, p0, Lcom/tencent/qimei/ai/a;->b:Ljava/lang/String;

    .line 6
    invoke-virtual {v1, v2}, Lcom/tencent/qimei/aa/c;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gtz v2, :cond_1

    .line 8
    const-string v1, "disable get oid"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/tencent/qimei/af/c;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 11
    :cond_1
    invoke-static {}, Lcom/tencent/qimei/u/a;->a()Lcom/tencent/qimei/u/a;

    move-result-object v2

    new-instance v3, Lcom/tencent/qimei/ai/b;

    iget-object v4, p0, Lcom/tencent/qimei/ai/a;->a:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-direct {v3, v4, v1}, Lcom/tencent/qimei/ai/b;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v2, v3}, Lcom/tencent/qimei/u/a;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 13
    :catch_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "get oid with exception"

    invoke-static {p1, v1, v0}, Lcom/tencent/qimei/af/c;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
