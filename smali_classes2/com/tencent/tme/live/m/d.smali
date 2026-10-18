.class public Lcom/tencent/tme/live/m/d;
.super Lcom/tencent/tme/live/n/j$c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/tme/live/n/j$c<",
        "Lcom/tencent/tme/live/n/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z

.field public final synthetic c:Lcom/tencent/tme/live/m/a$b;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/m/a$b;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/m/d;->c:Lcom/tencent/tme/live/m/a$b;

    iput p2, p0, Lcom/tencent/tme/live/m/d;->a:I

    iput-boolean p3, p0, Lcom/tencent/tme/live/m/d;->b:Z

    invoke-direct {p0}, Lcom/tencent/tme/live/n/j$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 3

    check-cast p1, Lcom/tencent/tme/live/n/b;

    .line 1
    iget-object v0, p0, Lcom/tencent/tme/live/m/d;->c:Lcom/tencent/tme/live/m/a$b;

    .line 2
    iget-boolean v1, v0, Lcom/tencent/tme/live/m/a$b;->h:Z

    if-eqz v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget v1, v0, Lcom/tencent/tme/live/m/a$b;->e:I

    .line 4
    iget v2, p0, Lcom/tencent/tme/live/m/d;->a:I

    add-int/2addr v1, v2

    .line 5
    iget v0, v0, Lcom/tencent/tme/live/m/a$b;->d:I

    if-le v1, v0, :cond_4

    .line 6
    invoke-virtual {p1}, Lcom/tencent/tme/live/n/b;->l()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/tencent/tme/live/n/b;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lcom/tencent/tme/live/m/d;->b:Z

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/tencent/tme/live/m/d;->c:Lcom/tencent/tme/live/m/a$b;

    invoke-virtual {v0, p1}, Lcom/tencent/tme/live/m/a$b;->b(Lcom/tencent/tme/live/n/b;)V

    const/4 p1, 0x2

    goto :goto_2

    :cond_4
    :goto_1
    const/4 p1, 0x1

    :goto_2
    return p1
.end method
