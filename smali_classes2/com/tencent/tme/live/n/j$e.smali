.class public Lcom/tencent/tme/live/n/j$e;
.super Lcom/tencent/tme/live/n/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/n/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/tme/live/n/j$a;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/tencent/tme/live/n/b;

    check-cast p2, Lcom/tencent/tme/live/n/b;

    .line 1
    iget-boolean v0, p0, Lcom/tencent/tme/live/n/j$a;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/tencent/tme/live/t/a;->a(Lcom/tencent/tme/live/n/b;Lcom/tencent/tme/live/n/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/tencent/tme/live/n/b;->e()F

    move-result p1

    invoke-virtual {p2}, Lcom/tencent/tme/live/n/b;->e()F

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    :goto_0
    return p1
.end method
