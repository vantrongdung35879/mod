.class public Lcom/tencent/tme/live/s/b$b$a;
.super Lcom/tencent/tme/live/n/j$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/s/b$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/tme/live/n/j$b<",
        "Lcom/tencent/tme/live/n/b;",
        "Lcom/tencent/tme/live/s/b$f;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/tencent/tme/live/n/k;

.field public b:I

.field public c:Lcom/tencent/tme/live/n/b;

.field public d:Lcom/tencent/tme/live/n/b;

.field public e:Lcom/tencent/tme/live/n/b;

.field public f:Z

.field public g:F

.field public final synthetic h:Lcom/tencent/tme/live/s/b$b;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/s/b$b;)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/tme/live/s/b$b$a;->h:Lcom/tencent/tme/live/s/b$b;

    invoke-direct {p0}, Lcom/tencent/tme/live/n/j$b;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/tencent/tme/live/s/b$b$a;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tme/live/s/b$b$a;->c:Lcom/tencent/tme/live/n/b;

    iput-object v0, p0, Lcom/tencent/tme/live/s/b$b$a;->d:Lcom/tencent/tme/live/n/b;

    iput-object v0, p0, Lcom/tencent/tme/live/s/b$b$a;->e:Lcom/tencent/tme/live/n/b;

    iput-boolean p1, p0, Lcom/tencent/tme/live/s/b$b$a;->f:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 10

    check-cast p1, Lcom/tencent/tme/live/n/b;

    .line 1
    iget-object v0, p0, Lcom/tencent/tme/live/s/b$b$a;->h:Lcom/tencent/tme/live/s/b$b;

    iget-boolean v0, v0, Lcom/tencent/tme/live/s/b$c;->b:Z

    const/4 v7, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/tencent/tme/live/s/b$b$a;->b:I

    add-int/2addr v0, v7

    iput v0, p0, Lcom/tencent/tme/live/s/b$b$a;->b:I

    iget-object v0, p0, Lcom/tencent/tme/live/s/b$b$a;->e:Lcom/tencent/tme/live/n/b;

    const/4 v1, 0x0

    const/4 v8, 0x0

    if-ne p1, v0, :cond_1

    iput-object v1, p0, Lcom/tencent/tme/live/s/b$b$a;->c:Lcom/tencent/tme/live/n/b;

    iput-boolean v8, p0, Lcom/tencent/tme/live/s/b$b$a;->f:Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/tme/live/s/b$b$a;->d:Lcom/tencent/tme/live/n/b;

    if-nez v0, :cond_2

    iput-object p1, p0, Lcom/tencent/tme/live/s/b$b$a;->d:Lcom/tencent/tme/live/n/b;

    invoke-virtual {p1}, Lcom/tencent/tme/live/n/b;->b()F

    move-result v0

    iget-object v2, p0, Lcom/tencent/tme/live/s/b$b$a;->a:Lcom/tencent/tme/live/n/k;

    check-cast v2, Lcom/tencent/tme/live/o/a;

    .line 2
    iget v2, v2, Lcom/tencent/tme/live/o/a;->g:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_2

    goto :goto_0

    .line 3
    :cond_2
    iget v0, p0, Lcom/tencent/tme/live/s/b$b$a;->g:F

    iget-object v2, p0, Lcom/tencent/tme/live/s/b$b$a;->a:Lcom/tencent/tme/live/n/k;

    check-cast v2, Lcom/tencent/tme/live/o/a;

    invoke-virtual {v2}, Lcom/tencent/tme/live/o/a;->d()I

    int-to-float v9, v8

    cmpg-float v0, v0, v9

    if-gez v0, :cond_3

    iput-object v1, p0, Lcom/tencent/tme/live/s/b$b$a;->c:Lcom/tencent/tme/live/n/b;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/tencent/tme/live/s/b$b$a;->a:Lcom/tencent/tme/live/n/k;

    iget-object v2, p0, Lcom/tencent/tme/live/s/b$b$a;->e:Lcom/tencent/tme/live/n/b;

    .line 4
    iget-object v1, v2, Lcom/tencent/tme/live/n/b;->o:Lcom/tencent/tme/live/n/e;

    iget-wide v3, v1, Lcom/tencent/tme/live/n/e;->c:J

    .line 5
    iget-object v1, v2, Lcom/tencent/tme/live/n/b;->y:Lcom/tencent/tme/live/n/d;

    .line 6
    iget-wide v5, v1, Lcom/tencent/tme/live/n/d;->a:J

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/tencent/tme/live/t/a;->a(Lcom/tencent/tme/live/n/k;Lcom/tencent/tme/live/n/b;Lcom/tencent/tme/live/n/b;JJ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/tme/live/s/b$b$a;->f:Z

    if-nez v0, :cond_4

    iput-object p1, p0, Lcom/tencent/tme/live/s/b$b$a;->c:Lcom/tencent/tme/live/n/b;

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/tencent/tme/live/n/b;->e()F

    move-result p1

    iget-object v0, p0, Lcom/tencent/tme/live/s/b$b$a;->a:Lcom/tencent/tme/live/n/k;

    check-cast v0, Lcom/tencent/tme/live/o/a;

    .line 7
    iget-object v0, v0, Lcom/tencent/tme/live/o/a;->c:Lcom/tencent/tme/live/o/a$a;

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sub-float/2addr p1, v9

    .line 9
    iget-object v0, p0, Lcom/tencent/tme/live/s/b$b$a;->e:Lcom/tencent/tme/live/n/b;

    iget v0, v0, Lcom/tencent/tme/live/n/b;->n:F

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/tencent/tme/live/s/b$b$a;->g:F

    const/4 v7, 0x0

    :goto_0
    return v7
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tme/live/s/b$b$a;->b:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/tme/live/s/b$b$a;->d:Lcom/tencent/tme/live/n/b;

    iput-object v1, p0, Lcom/tencent/tme/live/s/b$b$a;->c:Lcom/tencent/tme/live/n/b;

    iput-boolean v0, p0, Lcom/tencent/tme/live/s/b$b$a;->f:Z

    return-void
.end method

.method public c()Lcom/tencent/tme/live/s/b$f;
    .locals 2

    new-instance v0, Lcom/tencent/tme/live/s/b$f;

    .line 1
    invoke-direct {v0}, Lcom/tencent/tme/live/s/b$f;-><init>()V

    .line 2
    iget v1, p0, Lcom/tencent/tme/live/s/b$b$a;->b:I

    iput v1, v0, Lcom/tencent/tme/live/s/b$f;->a:I

    iget-object v1, p0, Lcom/tencent/tme/live/s/b$b$a;->d:Lcom/tencent/tme/live/n/b;

    iput-object v1, v0, Lcom/tencent/tme/live/s/b$f;->c:Lcom/tencent/tme/live/n/b;

    iget-object v1, p0, Lcom/tencent/tme/live/s/b$b$a;->c:Lcom/tencent/tme/live/n/b;

    iput-object v1, v0, Lcom/tencent/tme/live/s/b$f;->f:Lcom/tencent/tme/live/n/b;

    iget-boolean v1, p0, Lcom/tencent/tme/live/s/b$b$a;->f:Z

    iput-boolean v1, v0, Lcom/tencent/tme/live/s/b$f;->i:Z

    return-object v0
.end method
