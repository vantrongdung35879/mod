.class public abstract Lcom/tencent/tme/live/c1/a;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "TT;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/tencent/tme/live/c1/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/tme/live/c1/a;->b:Ljava/util/List;

    iput p3, p0, Lcom/tencent/tme/live/c1/a;->c:I

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/tencent/tme/live/c1/d;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tme/live/c1/d;",
            "TT;)V"
        }
    .end annotation
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/c1/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tme/live/c1/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/c1/a;->a:Landroid/content/Context;

    iget v1, p0, Lcom/tencent/tme/live/c1/a;->c:I

    if-nez p2, :cond_0

    .line 1
    new-instance p2, Lcom/tencent/tme/live/c1/d;

    invoke-direct {p2, v0, p3, v1, p1}, Lcom/tencent/tme/live/c1/d;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tencent/tme/live/c1/d;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    :goto_0
    :try_start_0
    iget-object p3, p0, Lcom/tencent/tme/live/c1/a;->b:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p2, p1}, Lcom/tencent/tme/live/c1/a;->a(Lcom/tencent/tme/live/c1/d;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 4
    :goto_1
    iget-object p1, p2, Lcom/tencent/tme/live/c1/d;->b:Landroid/view/View;

    return-object p1
.end method
