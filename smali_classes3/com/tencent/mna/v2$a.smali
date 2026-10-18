.class Lcom/tencent/mna/v2$a;
.super Ljava/lang/Object;
.source "RealTimeTouchUpload.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/mna/v2;->a(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/mna/v2$a;->a:Ljava/lang/String;

    iput p2, p0, Lcom/tencent/mna/v2$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/tencent/mna/v2;->a()Lcom/tencent/mna/u0;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/tencent/mna/u0;

    const/16 v1, 0x12c

    invoke-static {v1}, Lcom/tencent/mna/base/jni/e;->b(I)I

    move-result v1

    iget-object v2, p0, Lcom/tencent/mna/v2$a;->a:Ljava/lang/String;

    iget v3, p0, Lcom/tencent/mna/v2$a;->b:I

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/mna/u0;-><init>(ILjava/lang/String;I)V

    invoke-static {v0}, Lcom/tencent/mna/v2;->a(Lcom/tencent/mna/u0;)Lcom/tencent/mna/u0;

    const/16 v0, -0x2710

    .line 3
    invoke-static {v0}, Lcom/tencent/mna/v2;->a(I)I

    .line 4
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tencent/mna/base/utils/e;->b(Landroid/content/Context;Z)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v2;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RealTimeTouchUpload init with ip:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mna/v2$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", port:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/mna/v2$a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
