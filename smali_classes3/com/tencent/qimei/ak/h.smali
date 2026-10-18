.class public final Lcom/tencent/qimei/ak/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/tencent/qimei/sdk/IAsyncQimeiListener;

.field public final synthetic b:Lcom/tencent/qimei/ak/n;


# direct methods
.method public constructor <init>(Lcom/tencent/qimei/ak/n;Lcom/tencent/qimei/sdk/IAsyncQimeiListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/qimei/ak/h;->b:Lcom/tencent/qimei/ak/n;

    iput-object p2, p0, Lcom/tencent/qimei/ak/h;->a:Lcom/tencent/qimei/sdk/IAsyncQimeiListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/qimei/ak/h;->b:Lcom/tencent/qimei/ak/n;

    invoke-virtual {v0}, Lcom/tencent/qimei/ak/n;->getQimei()Lcom/tencent/qimei/sdk/Qimei;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/tencent/qimei/sdk/Qimei;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/tencent/qimei/ak/h;->a:Lcom/tencent/qimei/sdk/IAsyncQimeiListener;

    invoke-interface {v1, v0}, Lcom/tencent/qimei/sdk/IAsyncQimeiListener;->onQimeiDispatch(Lcom/tencent/qimei/sdk/Qimei;)V

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/tencent/qimei/ak/h;->b:Lcom/tencent/qimei/ak/n;

    iget-object v1, p0, Lcom/tencent/qimei/ak/h;->a:Lcom/tencent/qimei/sdk/IAsyncQimeiListener;

    .line 7
    invoke-virtual {v0, v1}, Lcom/tencent/qimei/ak/n;->a(Lcom/tencent/qimei/sdk/IAsyncQimeiListener;)V

    return-void
.end method
