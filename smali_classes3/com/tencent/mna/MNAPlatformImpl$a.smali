.class Lcom/tencent/mna/MNAPlatformImpl$a;
.super Ljava/lang/Object;
.source "MNAPlatformImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/mna/MNAPlatformImpl;->MNAQueryNetwork(ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Z

.field final synthetic c:Z

.field final synthetic d:Z

.field final synthetic e:Lcom/tencent/mna/NetworkObserver;


# direct methods
.method constructor <init>(Landroid/content/Context;ZZZLcom/tencent/mna/NetworkObserver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/mna/MNAPlatformImpl$a;->a:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/tencent/mna/MNAPlatformImpl$a;->b:Z

    iput-boolean p3, p0, Lcom/tencent/mna/MNAPlatformImpl$a;->c:Z

    iput-boolean p4, p0, Lcom/tencent/mna/MNAPlatformImpl$a;->d:Z

    iput-object p5, p0, Lcom/tencent/mna/MNAPlatformImpl$a;->e:Lcom/tencent/mna/NetworkObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mna/MNAPlatformImpl$a;->a:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/tencent/mna/MNAPlatformImpl$a;->b:Z

    iget-boolean v2, p0, Lcom/tencent/mna/MNAPlatformImpl$a;->c:Z

    iget-boolean v3, p0, Lcom/tencent/mna/MNAPlatformImpl$a;->d:Z

    .line 2
    invoke-static {}, Lcom/tencent/mna/h;->n()Lcom/tencent/mna/j;

    move-result-object v4

    .line 3
    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/mna/g2;->a(Landroid/content/Context;ZZZLcom/tencent/mna/j;)Lcom/tencent/mna/g2$b;

    move-result-object v0

    .line 7
    new-instance v1, Lcom/tencent/mna/MNAPlatformImpl$a$a;

    invoke-direct {v1, p0, v0}, Lcom/tencent/mna/MNAPlatformImpl$a$a;-><init>(Lcom/tencent/mna/MNAPlatformImpl$a;Lcom/tencent/mna/g2$b;)V

    invoke-static {v1}, Lcom/tencent/mna/a2;->b(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 47
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
