.class public final Lcom/tencent/qimei/i/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/qimei/a/a;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/tencent/oaid2/VendorManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/tencent/oaid2/VendorManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/qimei/i/e;->a:Landroid/content/Context;

    .line 2
    iput-object p2, p0, Lcom/tencent/qimei/i/e;->b:Lcom/tencent/oaid2/VendorManager;

    return-void
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/tencent/qimei/i/e;->b:Lcom/tencent/oaid2/VendorManager;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 2
    :try_start_0
    const-string v2, "android.app.ActivityThread"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 3
    const-string v3, "currentApplication"

    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x1

    .line 4
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 5
    invoke-virtual {v2, v1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ActivityThread:currentApplication --> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OpenIdHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    .line 11
    :cond_0
    invoke-static {}, Lcom/tencent/qimei/i/c;->a()Lcom/tencent/qimei/i/c;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/tencent/qimei/i/c;->a(Landroid/content/Context;Z)Z

    move-result v1

    .line 12
    :goto_1
    iget-object v3, p0, Lcom/tencent/qimei/i/e;->a:Landroid/content/Context;

    .line 13
    invoke-static {}, Lcom/tencent/qimei/i/c;->a()Lcom/tencent/qimei/i/c;

    move-result-object v4

    .line 14
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v5, v4, Lcom/tencent/qimei/i/c;->c:Lcom/tencent/qimei/i/b;

    invoke-virtual {v4, v3, v5}, Lcom/tencent/qimei/i/c;->a(Landroid/content/Context;Lcom/tencent/qimei/i/b;)Ljava/lang/String;

    move-result-object v3

    .line 15
    iget-object v4, p0, Lcom/tencent/qimei/i/e;->a:Landroid/content/Context;

    .line 16
    invoke-static {}, Lcom/tencent/qimei/i/c;->a()Lcom/tencent/qimei/i/c;

    move-result-object v5

    .line 17
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v6, v5, Lcom/tencent/qimei/i/c;->b:Lcom/tencent/qimei/i/b;

    invoke-virtual {v5, v4, v6}, Lcom/tencent/qimei/i/c;->a(Landroid/content/Context;Lcom/tencent/qimei/i/b;)Ljava/lang/String;

    move-result-object v4

    .line 18
    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/tencent/oaid2/VendorManager;->callbackOaid(ZLjava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final d()V
    .locals 0

    return-void
.end method
