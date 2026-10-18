.class public final Lcom/tencent/qimei/k/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/qimei/a/a;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/tencent/oaid2/VendorManager;

.field public final c:Lcom/tencent/qimei/k/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/tencent/qimei/k/d;->a:Landroid/content/Context;

    .line 4
    iput-object v0, p0, Lcom/tencent/qimei/k/d;->b:Lcom/tencent/oaid2/VendorManager;

    .line 5
    new-instance v0, Lcom/tencent/qimei/k/c;

    invoke-direct {v0, p0}, Lcom/tencent/qimei/k/c;-><init>(Lcom/tencent/qimei/k/d;)V

    iput-object v0, p0, Lcom/tencent/qimei/k/d;->c:Lcom/tencent/qimei/k/c;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/tencent/oaid2/VendorManager;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/tencent/qimei/k/d;->a:Landroid/content/Context;

    .line 2
    iput-object p2, p0, Lcom/tencent/qimei/k/d;->b:Lcom/tencent/oaid2/VendorManager;

    .line 3
    sget-object p2, Lcom/tencent/qimei/k/i;->f:Lcom/tencent/qimei/k/i;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 6
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/tencent/qimei/k/i;->a(Landroid/content/Context;)Z

    move-result p1

    sput-boolean p1, Lcom/tencent/qimei/k/a;->b:Z

    const/4 p1, 0x1

    .line 7
    sput-boolean p1, Lcom/tencent/qimei/k/a;->a:Z

    return-void
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    sget-object v0, Lcom/tencent/qimei/b/e;->c:Lcom/tencent/qimei/b/e;

    .line 2
    iget-object v1, p0, Lcom/tencent/qimei/k/d;->c:Lcom/tencent/qimei/k/c;

    invoke-virtual {v0, v1}, Lcom/tencent/qimei/b/e;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d()V
    .locals 0

    return-void
.end method
