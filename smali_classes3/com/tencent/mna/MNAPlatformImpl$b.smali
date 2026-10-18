.class Lcom/tencent/mna/MNAPlatformImpl$b;
.super Ljava/lang/Object;
.source "MNAPlatformImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/mna/MNAPlatformImpl;->MNAQueryRouter(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/tencent/mna/RouterObserver;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/mna/RouterObserver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/mna/MNAPlatformImpl$b;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/mna/MNAPlatformImpl$b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/mna/MNAPlatformImpl$b;->c:Lcom/tencent/mna/RouterObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mna/MNAPlatformImpl$b;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/mna/MNAPlatformImpl$b;->b:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/mna/c0;->D()I

    move-result v2

    invoke-static {}, Lcom/tencent/mna/c0;->C()I

    move-result v3

    invoke-static {}, Lcom/tencent/mna/c0;->B()D

    move-result-wide v4

    .line 2
    invoke-static {}, Lcom/tencent/mna/c0;->A()Ljava/lang/String;

    move-result-object v6

    .line 3
    invoke-static/range {v0 .. v6}, Lcom/tencent/mna/d3;->a(Landroid/content/Context;Ljava/lang/String;IIDLjava/lang/String;)Lcom/tencent/mna/d3$a;

    move-result-object v0

    .line 6
    new-instance v1, Lcom/tencent/mna/MNAPlatformImpl$b$a;

    invoke-direct {v1, p0, v0}, Lcom/tencent/mna/MNAPlatformImpl$b$a;-><init>(Lcom/tencent/mna/MNAPlatformImpl$b;Lcom/tencent/mna/d3$a;)V

    invoke-static {v1}, Lcom/tencent/mna/a2;->b(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MNAQueryNetwork exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
