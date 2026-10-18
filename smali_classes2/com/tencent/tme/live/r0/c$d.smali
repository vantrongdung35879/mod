.class public Lcom/tencent/tme/live/r0/c$d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tme/live/r0/c;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/r0/c;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/r0/c;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/r0/c$d;->a:Lcom/tencent/tme/live/r0/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/tme/live/w0/o;

    iget-object v0, p1, Lcom/tencent/tme/live/w0/o;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tme/live/r0/c$d;->a:Lcom/tencent/tme/live/r0/c;

    iget-object p1, p1, Lcom/tencent/tme/live/w0/o;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/tme/live/w0/o$a;

    .line 1
    invoke-virtual {v0, p1, v1}, Lcom/tencent/tme/live/r0/c;->b(Lcom/tencent/tme/live/w0/o$a;Z)V

    :cond_0
    return-void
.end method
