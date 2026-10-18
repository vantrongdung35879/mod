.class Lcom/tencent/mna/MNAPlatformImpl$b$a;
.super Ljava/lang/Object;
.source "MNAPlatformImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/mna/MNAPlatformImpl$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/mna/d3$a;

.field final synthetic b:Lcom/tencent/mna/MNAPlatformImpl$b;


# direct methods
.method constructor <init>(Lcom/tencent/mna/MNAPlatformImpl$b;Lcom/tencent/mna/d3$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/mna/MNAPlatformImpl$b$a;->b:Lcom/tencent/mna/MNAPlatformImpl$b;

    iput-object p2, p0, Lcom/tencent/mna/MNAPlatformImpl$b$a;->a:Lcom/tencent/mna/d3$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    invoke-static {}, Lcom/tencent/mna/b2;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/tencent/mna/MNAPlatformImpl$b$a;->a:Lcom/tencent/mna/d3$a;

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p0, Lcom/tencent/mna/MNAPlatformImpl$b$a;->b:Lcom/tencent/mna/MNAPlatformImpl$b;

    iget-object v2, v1, Lcom/tencent/mna/MNAPlatformImpl$b;->c:Lcom/tencent/mna/RouterObserver;

    const-string v1, "OnQueryRouterNotify:"

    const-string v8, "_"

    if-eqz v2, :cond_0

    .line 4
    iget-object v3, v0, Lcom/tencent/mna/d3$a;->a:Ljava/lang/String;

    iget v4, v0, Lcom/tencent/mna/d3$a;->b:I

    iget-object v5, v0, Lcom/tencent/mna/d3$a;->c:Ljava/lang/String;

    iget-object v6, v0, Lcom/tencent/mna/d3$a;->d:Ljava/lang/String;

    iget v7, v0, Lcom/tencent/mna/d3$a;->e:I

    invoke-interface/range {v2 .. v7}, Lcom/tencent/mna/RouterObserver;->OnQueryRouterNotify(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mna/MNAPlatformImpl$b$a;->a:Lcom/tencent/mna/d3$a;

    iget-object v2, v2, Lcom/tencent/mna/d3$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/mna/MNAPlatformImpl$b$a;->a:Lcom/tencent/mna/d3$a;

    iget v2, v2, Lcom/tencent/mna/d3$a;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/mna/MNAPlatformImpl$b$a;->a:Lcom/tencent/mna/d3$a;

    iget-object v2, v2, Lcom/tencent/mna/d3$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/mna/MNAPlatformImpl$b$a;->a:Lcom/tencent/mna/d3$a;

    iget v2, v2, Lcom/tencent/mna/d3$a;->e:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/jni/e;->c(Ljava/lang/String;)I

    .line 12
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mna/MNAPlatformImpl$b$a;->a:Lcom/tencent/mna/d3$a;

    iget-object v1, v1, Lcom/tencent/mna/d3$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/mna/MNAPlatformImpl$b$a;->a:Lcom/tencent/mna/d3$a;

    iget v1, v1, Lcom/tencent/mna/d3$a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/mna/MNAPlatformImpl$b$a;->a:Lcom/tencent/mna/d3$a;

    iget-object v1, v1, Lcom/tencent/mna/d3$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/mna/MNAPlatformImpl$b$a;->a:Lcom/tencent/mna/d3$a;

    iget v1, v1, Lcom/tencent/mna/d3$a;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
