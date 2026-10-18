.class Lcom/tencent/mna/n$d;
.super Ljava/lang/Object;
.source "CachedTouchFileUpload.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/mna/n;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/tencent/mna/n;->a()Ljava/io/FileOutputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/tencent/mna/n;->a()Ljava/io/FileOutputStream;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mna/n;->d()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mna/n;->a(Ljava/io/FileOutputStream;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/tencent/mna/n;->d()Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6
    invoke-static {}, Lcom/tencent/mna/n;->a()Ljava/io/FileOutputStream;

    move-result-object v0

    const-string v1, "RESUME"

    invoke-static {v0, v1}, Lcom/tencent/mna/n;->b(Ljava/io/FileOutputStream;Ljava/lang/String;)V

    .line 7
    const-string v0, "CachedTouchFileUpload resume"

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
