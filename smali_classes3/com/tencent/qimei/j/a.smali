.class public final Lcom/tencent/qimei/j/a;
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
    iput-object p1, p0, Lcom/tencent/qimei/j/a;->a:Landroid/content/Context;

    .line 2
    iput-object p2, p0, Lcom/tencent/qimei/j/a;->b:Lcom/tencent/oaid2/VendorManager;

    return-void
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/tencent/qimei/j/a;->b:Lcom/tencent/oaid2/VendorManager;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/tencent/qimei/j/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/qimei/j/b;->a(Landroid/content/Context;)Z

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/tencent/qimei/j/a;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/qimei/a/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/qimei/j/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lcom/tencent/qimei/j/a;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/qimei/j/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 5
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/oaid2/VendorManager;->callbackOaid(ZLjava/lang/String;Ljava/lang/String;Z)V

    :cond_0
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
