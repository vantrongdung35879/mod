.class public Lcom/tencent/tme/live/k2/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic a:Landroid/app/Activity;

.field public final synthetic b:Lcom/tencent/tme/live/l2/c;

.field public final synthetic c:Lcom/tencent/tme/live/k2/b;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/k2/b;Landroid/app/Activity;Lcom/tencent/tme/live/l2/c;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/k2/a;->c:Lcom/tencent/tme/live/k2/b;

    iput-object p2, p0, Lcom/tencent/tme/live/k2/a;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/tencent/tme/live/k2/a;->b:Lcom/tencent/tme/live/l2/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/tencent/tme/live/k2/a;->c:Lcom/tencent/tme/live/k2/b;

    iget-object v0, p0, Lcom/tencent/tme/live/k2/a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tme/live/k2/a;->b:Lcom/tencent/tme/live/l2/c;

    invoke-virtual {p1, v0, v1}, Lcom/tencent/tme/live/k2/b;->a(Landroid/view/Window;Lcom/tencent/tme/live/l2/c;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
