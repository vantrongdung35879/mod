.class public final Lcom/tencent/qimei/n/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/qimei/a/a;


# static fields
.field public static c:Ljava/lang/Class;

.field public static d:Ljava/lang/Object;

.field public static e:Ljava/lang/reflect/Method;

.field public static f:Ljava/lang/reflect/Method;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/tencent/oaid2/VendorManager;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    :try_start_0
    const-string/jumbo v0, "xm start"

    invoke-static {v0}, Lcom/tencent/qimei/af/b;->b(Ljava/lang/String;)V

    .line 4
    const-string v0, "com.android.id.impl.IdProviderImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/tencent/qimei/n/a;->c:Ljava/lang/Class;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/tencent/qimei/n/a;->d:Ljava/lang/Object;

    .line 7
    sget-object v0, Lcom/tencent/qimei/n/a;->c:Ljava/lang/Class;

    const-string v1, "getOAID"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/tencent/qimei/n/a;->e:Ljava/lang/reflect/Method;

    .line 8
    sget-object v0, Lcom/tencent/qimei/n/a;->c:Ljava/lang/Class;

    const-string v1, "getAAID"

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/tencent/qimei/n/a;->f:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "xm reflect exception!"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qimei/af/b;->c(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/tencent/oaid2/VendorManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/qimei/n/a;->a:Landroid/content/Context;

    .line 2
    iput-object p2, p0, Lcom/tencent/qimei/n/a;->b:Lcom/tencent/oaid2/VendorManager;

    return-void
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/tencent/qimei/n/a;->b:Lcom/tencent/oaid2/VendorManager;

    if-eqz v0, :cond_3

    .line 2
    sget-object v1, Lcom/tencent/qimei/n/a;->c:Ljava/lang/Class;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    sget-object v1, Lcom/tencent/qimei/n/a;->d:Ljava/lang/Object;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    sget-object v4, Lcom/tencent/qimei/n/a;->d:Ljava/lang/Object;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    sget-object v6, Lcom/tencent/qimei/n/a;->f:Ljava/lang/reflect/Method;

    if-eqz v6, :cond_1

    .line 4
    iget-object v7, p0, Lcom/tencent/qimei/n/a;->a:Landroid/content/Context;

    .line 5
    :try_start_0
    new-array v8, v2, [Ljava/lang/Object;

    aput-object v7, v8, v3

    invoke-virtual {v6, v4, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 7
    check-cast v4, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    :cond_1
    move-object v4, v5

    .line 8
    :goto_1
    sget-object v6, Lcom/tencent/qimei/n/a;->d:Ljava/lang/Object;

    if-eqz v6, :cond_2

    sget-object v7, Lcom/tencent/qimei/n/a;->e:Ljava/lang/reflect/Method;

    if-eqz v7, :cond_2

    .line 9
    iget-object v8, p0, Lcom/tencent/qimei/n/a;->a:Landroid/content/Context;

    .line 10
    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v8, v2, v3

    invoke-virtual {v7, v6, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 12
    check-cast v2, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v2

    .line 13
    :catch_1
    :cond_2
    invoke-virtual {v0, v1, v4, v5, v3}, Lcom/tencent/oaid2/VendorManager;->callbackOaid(ZLjava/lang/String;Ljava/lang/String;Z)V

    :cond_3
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
