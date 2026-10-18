.class public abstract Lcom/tencent/tme/live/w2/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/live/w2/a;


# instance fields
.field public a:Landroid/view/View;

.field public b:Landroid/app/Activity;

.field public c:Z

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tme/live/w2/b;->c:Z

    return-void
.end method


# virtual methods
.method public a()Lcom/tencent/tme/live/w2/c;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/w2/b;->b:Landroid/app/Activity;

    check-cast v0, Lcom/tencent/tme/live/w2/a;

    invoke-interface {v0}, Lcom/tencent/tme/live/w2/a;->a()Lcom/tencent/tme/live/w2/c;

    move-result-object v0

    return-object v0
.end method

.method public abstract a(Landroid/view/View;)V
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/tme/live/w2/b;->c:Z

    return-void
.end method

.method public abstract b()I
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public abstract h()V
.end method
