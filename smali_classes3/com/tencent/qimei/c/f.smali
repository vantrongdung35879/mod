.class public final Lcom/tencent/qimei/c/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/tencent/qimei/c/g;


# direct methods
.method public constructor <init>(Lcom/tencent/qimei/c/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/qimei/c/f;->a:Lcom/tencent/qimei/c/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/tencent/qimei/c/f;->a:Lcom/tencent/qimei/c/g;

    .line 2
    iget-object v0, v0, Lcom/tencent/qimei/c/g;->b:Lcom/tencent/qimei/c/b;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 4
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.coolpad.deviceidsupport"

    const-string v4, "com.coolpad.deviceidsupport.DeviceIdService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 6
    iget-object v2, v0, Lcom/tencent/qimei/c/b;->a:Landroid/content/Context;

    iget-object v3, v0, Lcom/tencent/qimei/c/b;->c:Lcom/tencent/qimei/c/a;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/tencent/qimei/c/b;->e:Z

    .line 8
    iget-boolean v1, v0, Lcom/tencent/qimei/c/b;->e:Z

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/tencent/qimei/c/b;->b:Lcom/tencent/qimei/c/g;

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0}, Lcom/tencent/qimei/c/g;->e()V

    :cond_0
    return-void
.end method
