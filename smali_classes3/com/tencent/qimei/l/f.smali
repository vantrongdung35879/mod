.class public final Lcom/tencent/qimei/l/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/tencent/qimei/l/g;


# direct methods
.method public constructor <init>(Lcom/tencent/qimei/l/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/qimei/l/f;->a:Lcom/tencent/qimei/l/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/tencent/qimei/l/f;->a:Lcom/tencent/qimei/l/g;

    .line 2
    iget-object v0, v0, Lcom/tencent/qimei/l/g;->b:Lcom/tencent/qimei/l/e;

    if-eqz v0, :cond_1

    .line 3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 4
    const-string v2, "com.samsung.android.deviceidservice"

    const-string v3, "com.samsung.android.deviceidservice.DeviceIdService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    iget-object v2, v0, Lcom/tencent/qimei/l/e;->c:Landroid/content/Context;

    iget-object v3, v0, Lcom/tencent/qimei/l/e;->b:Lcom/tencent/qimei/l/d;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/tencent/qimei/l/e;->d:Z

    .line 7
    iget-boolean v1, v0, Lcom/tencent/qimei/l/e;->d:Z

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/tencent/qimei/l/e;->a:Lcom/tencent/qimei/l/g;

    if-eqz v1, :cond_0

    .line 8
    const-string v1, "SI bindService Failed!"

    invoke-static {v1}, Lcom/tencent/qimei/af/b;->b(Ljava/lang/String;)V

    .line 9
    iget-object v0, v0, Lcom/tencent/qimei/l/e;->a:Lcom/tencent/qimei/l/g;

    invoke-virtual {v0}, Lcom/tencent/qimei/l/g;->f()V

    goto :goto_0

    .line 11
    :cond_0
    const-string v0, "SI bindService Successful!"

    invoke-static {v0}, Lcom/tencent/qimei/af/b;->b(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
