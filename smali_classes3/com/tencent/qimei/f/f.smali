.class public final Lcom/tencent/qimei/f/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/qimei/a/a;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/tencent/oaid2/VendorManager;

.field public c:Ljava/lang/String;

.field public d:Z

.field public final e:Lcom/tencent/qimei/f/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/tencent/qimei/f/f;->c:Ljava/lang/String;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/tencent/qimei/f/f;->d:Z

    .line 8
    new-instance v0, Lcom/tencent/qimei/f/e;

    invoke-direct {v0, p0}, Lcom/tencent/qimei/f/e;-><init>(Lcom/tencent/qimei/f/f;)V

    iput-object v0, p0, Lcom/tencent/qimei/f/f;->e:Lcom/tencent/qimei/f/e;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/tencent/oaid2/VendorManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/qimei/f/f;->a:Landroid/content/Context;

    .line 2
    iput-object p2, p0, Lcom/tencent/qimei/f/f;->b:Lcom/tencent/oaid2/VendorManager;

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
    iget-object v1, p0, Lcom/tencent/qimei/f/f;->e:Lcom/tencent/qimei/f/e;

    invoke-virtual {v0, v1}, Lcom/tencent/qimei/b/e;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d()V
    .locals 0

    return-void
.end method
