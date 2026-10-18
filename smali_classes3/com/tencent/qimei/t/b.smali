.class public final Lcom/tencent/qimei/t/b;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final a:Lcom/tencent/qimei/ak/g;

.field public final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/tencent/qimei/ak/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tencent/qimei/t/b;->a:Lcom/tencent/qimei/ak/g;

    .line 3
    invoke-static {}, Lcom/tencent/qimei/ar/d;->a()Lcom/tencent/qimei/ar/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/qimei/ar/d;->i()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/qimei/t/b;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.tencent.qm.mulprocess_share"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/tencent/qimei/t/b;->b:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x22

    if-lt v2, v3, :cond_0

    const/4 v2, 0x4

    .line 4
    invoke-static {v1, p0, v0, v2}, Lbq/log$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 8
    :goto_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    :cond_1
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-static {p1}, Lcom/tencent/qimei/af/c;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 6
    const-string p2, "com.tencent.qm.mulprocess_share"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/tencent/qimei/t/b;->a:Lcom/tencent/qimei/ak/g;

    if-eqz p1, :cond_1

    .line 11
    iget-object p2, p1, Lcom/tencent/qimei/ak/g;->g:Ljava/lang/String;

    invoke-static {p2}, Lcom/tencent/qimei/ak/b;->a(Ljava/lang/String;)Lcom/tencent/qimei/ak/b;

    move-result-object p2

    iget-object v0, p1, Lcom/tencent/qimei/ak/g;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qimei/ap/f;->c(Ljava/lang/String;)Lcom/tencent/qimei/sdk/Qimei;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/tencent/qimei/ak/b;->b(Lcom/tencent/qimei/sdk/Qimei;)V

    .line 12
    iget-object p2, p1, Lcom/tencent/qimei/ak/g;->g:Ljava/lang/String;

    invoke-static {p2}, Lcom/tencent/qimei/ak/b;->a(Ljava/lang/String;)Lcom/tencent/qimei/ak/b;

    move-result-object p2

    .line 13
    iget-object p2, p2, Lcom/tencent/qimei/ak/b;->b:Lcom/tencent/qimei/sdk/Qimei;

    if-eqz p2, :cond_1

    .line 14
    invoke-virtual {p2}, Lcom/tencent/qimei/sdk/Qimei;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 15
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 16
    new-instance p2, Lcom/tencent/qimei/ar/a;

    iget-object v0, p1, Lcom/tencent/qimei/ak/g;->g:Ljava/lang/String;

    invoke-direct {p2, v0}, Lcom/tencent/qimei/ar/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/tencent/qimei/ar/a;->c()V

    .line 17
    iget-object p1, p1, Lcom/tencent/qimei/ak/g;->b:Lcom/tencent/qimei/t/b;

    if-eqz p1, :cond_1

    .line 18
    iget-object p2, p1, Lcom/tencent/qimei/t/b;->b:Landroid/content/Context;

    if-eqz p2, :cond_1

    .line 20
    :try_start_1
    invoke-virtual {p2, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 21
    invoke-static {}, Landroid/os/Process;->myPid()I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 23
    invoke-static {p1}, Lcom/tencent/qimei/af/c;->a(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method
