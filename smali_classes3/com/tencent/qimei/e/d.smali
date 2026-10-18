.class public final Lcom/tencent/qimei/e/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/tencent/qimei/e/e;


# direct methods
.method public constructor <init>(Lcom/tencent/qimei/e/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/qimei/e/d;->a:Lcom/tencent/qimei/e/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/tencent/qimei/e/d;->a:Lcom/tencent/qimei/e/e;

    .line 2
    iget-object v1, v0, Lcom/tencent/qimei/e/e;->d:Lcom/tencent/qimei/e/g;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 3
    :try_start_0
    iput-object v0, v1, Lcom/tencent/qimei/e/g;->d:Lcom/tencent/qimei/e/e;

    .line 4
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.asus.msa.action.ACCESS_DID"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.asus.msa.SupplementaryDID"

    const-string v5, "com.asus.msa.SupplementaryDID.SupplementaryDIDService"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 7
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 8
    const-string v0, "HSDID start to bind did service"

    invoke-static {v0}, Lcom/tencent/qimei/af/b;->c(Ljava/lang/String;)V

    .line 10
    iget-object v0, v1, Lcom/tencent/qimei/e/g;->b:Landroid/content/Context;

    iget-object v3, v1, Lcom/tencent/qimei/e/g;->e:Lcom/tencent/qimei/e/f;

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v3, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/tencent/qimei/e/g;->a:Z

    if-nez v0, :cond_0

    .line 12
    iget-object v0, v1, Lcom/tencent/qimei/e/g;->d:Lcom/tencent/qimei/e/e;

    .line 13
    iget-object v0, v0, Lcom/tencent/qimei/e/e;->a:Lcom/tencent/oaid2/VendorManager;

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    .line 14
    invoke-virtual {v0, v2, v3, v3, v2}, Lcom/tencent/oaid2/VendorManager;->callbackOaid(ZLjava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 15
    :catch_0
    invoke-virtual {v1, v2}, Lcom/tencent/qimei/e/g;->a(Z)V

    :cond_0
    :goto_0
    return-void
.end method
