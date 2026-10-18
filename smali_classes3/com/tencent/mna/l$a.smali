.class Lcom/tencent/mna/l$a;
.super Landroid/content/BroadcastReceiver;
.source "BatteryListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/mna/l;->a(Landroid/content/Context;Lcom/tencent/mna/l$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/mna/l$b;

.field final synthetic b:Lcom/tencent/mna/l;


# direct methods
.method constructor <init>(Lcom/tencent/mna/l;Lcom/tencent/mna/l$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/mna/l$a;->b:Lcom/tencent/mna/l;

    iput-object p2, p0, Lcom/tencent/mna/l$a;->a:Lcom/tencent/mna/l$b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    const-string p1, "level"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 2
    const-string/jumbo v0, "status"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 7
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/tencent/mna/l$a;->b:Lcom/tencent/mna/l;

    invoke-static {p2}, Lcom/tencent/mna/l;->a(Lcom/tencent/mna/l;)I

    move-result p2

    if-ne p1, p2, :cond_2

    iget-object p2, p0, Lcom/tencent/mna/l$a;->b:Lcom/tencent/mna/l;

    invoke-static {p2}, Lcom/tencent/mna/l;->b(Lcom/tencent/mna/l;)I

    move-result p2

    if-eq v1, p2, :cond_3

    .line 8
    :cond_2
    iget-object p2, p0, Lcom/tencent/mna/l$a;->a:Lcom/tencent/mna/l$b;

    invoke-interface {p2, v1, p1}, Lcom/tencent/mna/l$b;->a(II)V

    .line 9
    iget-object p2, p0, Lcom/tencent/mna/l$a;->b:Lcom/tencent/mna/l;

    invoke-static {p2, v1}, Lcom/tencent/mna/l;->b(Lcom/tencent/mna/l;I)I

    .line 10
    iget-object p2, p0, Lcom/tencent/mna/l$a;->b:Lcom/tencent/mna/l;

    invoke-static {p2, p1}, Lcom/tencent/mna/l;->a(Lcom/tencent/mna/l;I)I

    :cond_3
    return-void
.end method
