.class public final Lcom/tencent/qimei/k/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/tencent/qimei/k/d;


# direct methods
.method public constructor <init>(Lcom/tencent/qimei/k/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/qimei/k/c;->a:Lcom/tencent/qimei/k/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    const-string v0, ""

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v2, Lcom/tencent/qimei/k/a;->a:Z

    if-eqz v2, :cond_1

    .line 2
    sget-boolean v2, Lcom/tencent/qimei/k/a;->b:Z

    if-eqz v2, :cond_0

    .line 3
    iget-object v2, p0, Lcom/tencent/qimei/k/c;->a:Lcom/tencent/qimei/k/d;

    .line 4
    iget-object v3, v2, Lcom/tencent/qimei/k/d;->b:Lcom/tencent/oaid2/VendorManager;

    if-eqz v3, :cond_3

    .line 6
    iget-object v2, v2, Lcom/tencent/qimei/k/d;->a:Landroid/content/Context;

    .line 7
    invoke-static {v2}, Lcom/tencent/qimei/k/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v0, v2, v1}, Lcom/tencent/oaid2/VendorManager;->callbackOaid(ZLjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object v2, p0, Lcom/tencent/qimei/k/c;->a:Lcom/tencent/qimei/k/d;

    .line 11
    iget-object v2, v2, Lcom/tencent/qimei/k/d;->b:Lcom/tencent/oaid2/VendorManager;

    if-eqz v2, :cond_3

    .line 12
    invoke-virtual {v2, v1, v0, v0, v1}, Lcom/tencent/oaid2/VendorManager;->callbackOaid(ZLjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 13
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "SDK Need Init First!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    .line 14
    iget-object v3, p0, Lcom/tencent/qimei/k/c;->a:Lcom/tencent/qimei/k/d;

    .line 15
    iget-object v3, v3, Lcom/tencent/qimei/k/d;->b:Lcom/tencent/oaid2/VendorManager;

    if-eqz v3, :cond_2

    .line 16
    invoke-virtual {v3, v1, v0, v0, v1}, Lcom/tencent/oaid2/VendorManager;->callbackOaid(ZLjava/lang/String;Ljava/lang/String;Z)V

    .line 18
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method
