.class Lcom/tencent/mna/h$f;
.super Ljava/lang/Object;
.source "AccelerateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/mna/h;->u()V
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
    .locals 3

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/tencent/mna/h;->a(J)J

    .line 3
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/utils/NetworkChangeReceiver;->a(Landroid/content/Context;)V

    .line 4
    invoke-static {}, Lcom/tencent/mna/t3;->c()V

    .line 6
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/utils/c;->c(Landroid/content/Context;)I

    move-result v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AccelerateManager init, networkType:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 8
    invoke-static {v0}, Lcom/tencent/mna/base/utils/c;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 12
    invoke-static {v2, v0, v1}, Lcom/tencent/mna/h;->a(Lcom/tencent/mna/y2;II)Z

    move-result v0

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AccelerateManager init, requestAccCloud:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 15
    new-instance v0, Lcom/tencent/mna/l0;

    invoke-direct {v0}, Lcom/tencent/mna/l0;-><init>()V

    invoke-static {v0}, Lcom/tencent/mna/base/vendor/h;->a(Lcom/tencent/mna/i1;)V

    .line 17
    invoke-static {}, Lcom/tencent/mna/d;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/t3;->e(Ljava/lang/String;)V

    return-void
.end method
