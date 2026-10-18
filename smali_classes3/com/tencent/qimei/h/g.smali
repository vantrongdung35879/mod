.class public final Lcom/tencent/qimei/h/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/tencent/qimei/h/h;


# direct methods
.method public constructor <init>(Lcom/tencent/qimei/h/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/qimei/h/g;->a:Lcom/tencent/qimei/h/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/tencent/qimei/h/g;->a:Lcom/tencent/qimei/h/h;

    .line 2
    iget-object v1, v0, Lcom/tencent/qimei/h/h;->a:Lcom/tencent/qimei/h/e;

    const-string v2, ""

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 3
    iget-object v0, v0, Lcom/tencent/qimei/h/h;->b:Landroid/content/Context;

    .line 4
    invoke-static {v0}, Lcom/tencent/qimei/a/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 6
    const-string v5, "com.mdid.msa"

    const-string v6, "com.mdid.msa.service.MsaIdService"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    const-string v5, "com.bun.msa.action.bindto.service"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    const-string v5, "com.bun.msa.param.pkgname"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    iget-object v0, v1, Lcom/tencent/qimei/h/e;->c:Landroid/content/Context;

    iget-object v5, v1, Lcom/tencent/qimei/h/e;->b:Lcom/tencent/qimei/h/d;

    const/4 v6, 0x1

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, v1, Lcom/tencent/qimei/h/e;->a:Lcom/tencent/qimei/h/h;

    if-eqz v0, :cond_2

    .line 13
    iget-object v0, v0, Lcom/tencent/qimei/h/h;->c:Lcom/tencent/oaid2/VendorManager;

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {v0, v3, v2, v2, v3}, Lcom/tencent/oaid2/VendorManager;->callbackOaid(ZLjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 15
    :cond_1
    iget-object v0, v0, Lcom/tencent/qimei/h/h;->c:Lcom/tencent/oaid2/VendorManager;

    if-eqz v0, :cond_2

    .line 16
    invoke-virtual {v0, v3, v2, v2, v3}, Lcom/tencent/oaid2/VendorManager;->callbackOaid(ZLjava/lang/String;Ljava/lang/String;Z)V

    :cond_2
    :goto_0
    return-void
.end method
