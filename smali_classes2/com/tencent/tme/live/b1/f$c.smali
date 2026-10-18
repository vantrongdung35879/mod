.class public Lcom/tencent/tme/live/b1/f$c;
.super Lcom/tencent/tme/live/l0/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tme/live/b1/f;->a(Ljava/lang/String;IILandroid/view/View;Lcom/tencent/tme/live/l0/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/ref/Reference;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Landroid/view/View;

.field public final synthetic e:Lcom/tencent/tme/live/l0/c;


# direct methods
.method public constructor <init>(Ljava/lang/ref/Reference;IILandroid/view/View;Lcom/tencent/tme/live/l0/c;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/b1/f$c;->a:Ljava/lang/ref/Reference;

    iput p2, p0, Lcom/tencent/tme/live/b1/f$c;->b:I

    iput p3, p0, Lcom/tencent/tme/live/b1/f$c;->c:I

    iput-object p4, p0, Lcom/tencent/tme/live/b1/f$c;->d:Landroid/view/View;

    iput-object p5, p0, Lcom/tencent/tme/live/b1/f$c;->e:Lcom/tencent/tme/live/l0/c;

    invoke-direct {p0}, Lcom/tencent/tme/live/l0/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 2

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/tencent/tme/live/b1/f$c;->a:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tme/live/b1/f$c;->a:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/tencent/tme/live/b1/f$c$a;

    invoke-direct {v1, p0, p3}, Lcom/tencent/tme/live/b1/f$c$a;-><init>(Lcom/tencent/tme/live/b1/f$c;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/b1/f$c;->e:Lcom/tencent/tme/live/l0/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/tme/live/l0/c;->a(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/view/View;Lcom/tencent/tme/live/f0/c;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/b1/f$c;->e:Lcom/tencent/tme/live/l0/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/tme/live/l0/c;->a(Ljava/lang/String;Landroid/view/View;Lcom/tencent/tme/live/f0/c;)V

    :cond_0
    return-void
.end method
