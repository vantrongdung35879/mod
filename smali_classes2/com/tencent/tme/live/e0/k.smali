.class public Lcom/tencent/tme/live/e0/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/e0/l;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/e0/l;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/e0/k;->a:Lcom/tencent/tme/live/e0/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/tme/live/e0/k;->a:Lcom/tencent/tme/live/e0/l;

    iget-object v1, v0, Lcom/tencent/tme/live/e0/l;->n:Lcom/tencent/tme/live/l0/a;

    iget-object v2, v0, Lcom/tencent/tme/live/e0/l;->i:Ljava/lang/String;

    iget-object v0, v0, Lcom/tencent/tme/live/e0/l;->k:Lcom/tencent/tme/live/k0/a;

    invoke-interface {v0}, Lcom/tencent/tme/live/k0/a;->b()Landroid/view/View;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/tencent/tme/live/l0/a;->a(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
