.class public final Lcom/tencent/qimei/g/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/tencent/qimei/g/e;


# direct methods
.method public constructor <init>(Lcom/tencent/qimei/g/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/qimei/g/d;->a:Lcom/tencent/qimei/g/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/tencent/qimei/g/d;->a:Lcom/tencent/qimei/g/e;

    .line 2
    iget-object v0, v0, Lcom/tencent/qimei/g/e;->a:Lcom/tencent/qimei/g/g;

    if-eqz v0, :cond_2

    .line 3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 4
    const-string v2, "com.zui.deviceidservice"

    const-string v3, "com.zui.deviceidservice.DeviceidService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    iget-object v2, v0, Lcom/tencent/qimei/g/g;->a:Landroid/content/Context;

    iget-object v3, v0, Lcom/tencent/qimei/g/g;->c:Lcom/tencent/qimei/g/f;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    const-string v0, "bindService Successful!"

    invoke-static {v0}, Lcom/tencent/qimei/g/g;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, v0, Lcom/tencent/qimei/g/g;->d:Lcom/tencent/qimei/g/e;

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0}, Lcom/tencent/qimei/g/e;->h()V

    .line 11
    :cond_1
    const-string v0, "bindService Failed!!!"

    invoke-static {v0}, Lcom/tencent/qimei/g/g;->a(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
