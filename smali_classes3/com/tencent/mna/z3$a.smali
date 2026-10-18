.class Lcom/tencent/mna/z3$a;
.super Ljava/lang/Object;
.source "VivoLocalSocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/mna/z3;->a(Lcom/tencent/mna/y;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/mna/z3;


# direct methods
.method constructor <init>(Lcom/tencent/mna/z3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/mna/z3$a;->a:Lcom/tencent/mna/z3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mna/z3$a;->a:Lcom/tencent/mna/z3;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/mna/z3;->a(Lcom/tencent/mna/z3;Z)Z

    .line 2
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tencent/mna/z3$a;->a:Lcom/tencent/mna/z3;

    invoke-static {v0}, Lcom/tencent/mna/z3;->a(Lcom/tencent/mna/z3;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mna/z3$a;->a:Lcom/tencent/mna/z3;

    invoke-static {v0}, Lcom/tencent/mna/z3;->b(Lcom/tencent/mna/z3;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v0, 0x400

    .line 3
    new-array v0, v0, [B

    .line 4
    iget-object v2, p0, Lcom/tencent/mna/z3$a;->a:Lcom/tencent/mna/z3;

    invoke-static {v2}, Lcom/tencent/mna/z3;->b(Lcom/tencent/mna/z3;)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 5
    new-instance v3, Ljava/lang/String;

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-direct {v3, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/tencent/mna/z3$a;->a:Lcom/tencent/mna/z3;

    invoke-static {v0}, Lcom/tencent/mna/z3;->c(Lcom/tencent/mna/z3;)Lcom/tencent/mna/y;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/tencent/mna/z3$a;->a:Lcom/tencent/mna/z3;

    invoke-static {v0}, Lcom/tencent/mna/z3;->c(Lcom/tencent/mna/z3;)Lcom/tencent/mna/y;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/tencent/mna/y;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 11
    :catchall_0
    const-string v0, "LocalSocket recv failed"

    invoke-static {v0}, Lcom/tencent/mna/v1;->e(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
