.class public Lcom/tencent/tme/live/e0/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Lcom/tencent/tme/live/e0/l;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/e0/l;II)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/e0/i;->c:Lcom/tencent/tme/live/e0/l;

    iput p2, p0, Lcom/tencent/tme/live/e0/i;->a:I

    iput p3, p0, Lcom/tencent/tme/live/e0/i;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/tencent/tme/live/e0/i;->c:Lcom/tencent/tme/live/e0/l;

    iget-object v1, v0, Lcom/tencent/tme/live/e0/l;->o:Lcom/tencent/tme/live/l0/b;

    iget-object v2, v0, Lcom/tencent/tme/live/e0/l;->i:Ljava/lang/String;

    iget-object v0, v0, Lcom/tencent/tme/live/e0/l;->k:Lcom/tencent/tme/live/k0/a;

    invoke-interface {v0}, Lcom/tencent/tme/live/k0/a;->b()Landroid/view/View;

    move-result-object v0

    iget v3, p0, Lcom/tencent/tme/live/e0/i;->a:I

    iget v4, p0, Lcom/tencent/tme/live/e0/i;->b:I

    invoke-interface {v1, v2, v0, v3, v4}, Lcom/tencent/tme/live/l0/b;->a(Ljava/lang/String;Landroid/view/View;II)V

    return-void
.end method
