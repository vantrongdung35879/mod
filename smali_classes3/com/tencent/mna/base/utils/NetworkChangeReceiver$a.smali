.class Lcom/tencent/mna/base/utils/NetworkChangeReceiver$a;
.super Ljava/lang/Object;
.source "NetworkChangeReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/mna/base/utils/NetworkChangeReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/tencent/mna/base/utils/NetworkChangeReceiver;


# direct methods
.method constructor <init>(Lcom/tencent/mna/base/utils/NetworkChangeReceiver;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/mna/base/utils/NetworkChangeReceiver$a;->b:Lcom/tencent/mna/base/utils/NetworkChangeReceiver;

    iput-object p2, p0, Lcom/tencent/mna/base/utils/NetworkChangeReceiver$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/mna/base/utils/NetworkChangeReceiver$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/mna/base/utils/c;->c(Landroid/content/Context;)I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/tencent/mna/base/utils/NetworkChangeReceiver$a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/mna/base/utils/c;->a(Landroid/content/Context;)Lcom/tencent/mna/base/utils/c$a;

    move-result-object v1

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ">> NetworkChange onReceive curNetType:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", dtType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/tencent/mna/base/utils/c$a;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 6
    iget-object v2, p0, Lcom/tencent/mna/base/utils/NetworkChangeReceiver$a;->b:Lcom/tencent/mna/base/utils/NetworkChangeReceiver;

    invoke-static {v2}, Lcom/tencent/mna/base/utils/NetworkChangeReceiver;->a(Lcom/tencent/mna/base/utils/NetworkChangeReceiver;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 7
    iget-object v0, p0, Lcom/tencent/mna/base/utils/NetworkChangeReceiver$a;->b:Lcom/tencent/mna/base/utils/NetworkChangeReceiver;

    iget v1, v1, Lcom/tencent/mna/base/utils/c$a;->a:I

    invoke-static {v0, v1}, Lcom/tencent/mna/base/utils/NetworkChangeReceiver;->a(Lcom/tencent/mna/base/utils/NetworkChangeReceiver;I)I

    goto :goto_0

    .line 8
    :cond_0
    iget-object v2, p0, Lcom/tencent/mna/base/utils/NetworkChangeReceiver$a;->b:Lcom/tencent/mna/base/utils/NetworkChangeReceiver;

    invoke-static {v2}, Lcom/tencent/mna/base/utils/NetworkChangeReceiver;->a(Lcom/tencent/mna/base/utils/NetworkChangeReceiver;)I

    move-result v2

    iget v3, v1, Lcom/tencent/mna/base/utils/c$a;->a:I

    if-eq v2, v3, :cond_1

    .line 9
    iget-object v2, p0, Lcom/tencent/mna/base/utils/NetworkChangeReceiver$a;->b:Lcom/tencent/mna/base/utils/NetworkChangeReceiver;

    invoke-static {v2, v3}, Lcom/tencent/mna/base/utils/NetworkChangeReceiver;->a(Lcom/tencent/mna/base/utils/NetworkChangeReceiver;I)I

    .line 11
    iget-object v2, p0, Lcom/tencent/mna/base/utils/NetworkChangeReceiver$a;->b:Lcom/tencent/mna/base/utils/NetworkChangeReceiver;

    invoke-static {v2, v0, v1}, Lcom/tencent/mna/base/utils/NetworkChangeReceiver;->a(Lcom/tencent/mna/base/utils/NetworkChangeReceiver;ILcom/tencent/mna/base/utils/c$a;)V

    :cond_1
    :goto_0
    return-void
.end method
