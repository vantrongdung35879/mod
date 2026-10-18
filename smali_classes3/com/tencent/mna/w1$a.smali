.class Lcom/tencent/mna/w1$a;
.super Ljava/lang/Object;
.source "LossRateCounter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/mna/w1;->b(Ljava/lang/String;ILjava/lang/String;IIIIIFIIIII)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I


# direct methods
.method constructor <init>(III)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tencent/mna/w1$a;->a:I

    iput p2, p0, Lcom/tencent/mna/w1$a;->b:I

    iput p3, p0, Lcom/tencent/mna/w1$a;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/w1;->a()I

    move-result v0

    invoke-static {}, Lcom/tencent/mna/w1;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/n1;->h(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {}, Lcom/tencent/mna/w1;->c()I

    move-result v2

    invoke-static {}, Lcom/tencent/mna/w1;->d()I

    move-result v3

    iget v4, p0, Lcom/tencent/mna/w1$a;->a:I

    iget v5, p0, Lcom/tencent/mna/w1$a;->b:I

    iget v6, p0, Lcom/tencent/mna/w1$a;->c:I

    invoke-static/range {v0 .. v6}, Lcom/tencent/mna/base/jni/e;->a(I[BIIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
