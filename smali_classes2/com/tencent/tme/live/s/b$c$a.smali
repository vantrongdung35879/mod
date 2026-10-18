.class public Lcom/tencent/tme/live/s/b$c$a;
.super Lcom/tencent/tme/live/n/j$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/s/b$c;
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

.field public f:Lcom/tencent/tme/live/n/b;

.field public g:Lcom/tencent/tme/live/n/b;

.field public h:Z

.field public i:Z

.field public j:Z

.field public final synthetic k:Lcom/tencent/tme/live/s/b$c;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/s/b$c;)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/tme/live/s/b$c$a;->k:Lcom/tencent/tme/live/s/b$c;

    invoke-direct {p0}, Lcom/tencent/tme/live/n/j$b;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/tencent/tme/live/s/b$c$a;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tme/live/s/b$c$a;->c:Lcom/tencent/tme/live/n/b;

    iput-object v0, p0, Lcom/tencent/tme/live/s/b$c$a;->d:Lcom/tencent/tme/live/n/b;

    iput-object v0, p0, Lcom/tencent/tme/live/s/b$c$a;->e:Lcom/tencent/tme/live/n/b;

    iput-object v0, p0, Lcom/tencent/tme/live/s/b$c$a;->f:Lcom/tencent/tme/live/n/b;

    iput-object v0, p0, Lcom/tencent/tme/live/s/b$c$a;->g:Lcom/tencent/tme/live/n/b;

    iput-boolean p1, p0, Lcom/tencent/tme/live/s/b$c$a;->h:Z

    iput-boolean p1, p0, Lcom/tencent/tme/live/s/b$c$a;->i:Z

    iput-boolean p1, p0, Lcom/tencent/tme/live/s/b$c$a;->j:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 9

    check-cast p1, Lcom/tencent/tme/live/n/b;

    .line 1
    iget-object v0, p0, Lcom/tencent/tme/live/s/b$c$a;->k:Lcom/tencent/tme/live/s/b$c;

    iget-boolean v0, v0, Lcom/tencent/tme/live/s/b$c;->b:Z

    const/4 v7, 0x1

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/tencent/tme/live/s/b$c$a;->b:I

    add-int/2addr v0, v7

    iput v0, p0, Lcom/tencent/tme/live/s/b$c$a;->b:I

    iget-object v0, p0, Lcom/tencent/tme/live/s/b$c$a;->g:Lcom/tencent/tme/live/n/b;

    const/4 v8, 0x0

    if-ne p1, v0, :cond_1

    iput-object p1, p0, Lcom/tencent/tme/live/s/b$c$a;->c:Lcom/tencent/tme/live/n/b;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tencent/tme/live/s/b$c$a;->e:Lcom/tencent/tme/live/n/b;

    iput-boolean v7, p0, Lcom/tencent/tme/live/s/b$c$a;->i:Z

    iput-boolean v8, p0, Lcom/tencent/tme/live/s/b$c$a;->j:Z

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/tencent/tme/live/s/b$c$a;->d:Lcom/tencent/tme/live/n/b;

    if-nez v1, :cond_2

    iput-object p1, p0, Lcom/tencent/tme/live/s/b$c$a;->d:Lcom/tencent/tme/live/n/b;

    :cond_2
    iget v0, v0, Lcom/tencent/tme/live/n/b;->n:F

    invoke-virtual {p1}, Lcom/tencent/tme/live/n/b;->e()F

    move-result v1

    add-float/2addr v1, v0

    iget-object v0, p0, Lcom/tencent/tme/live/s/b$c$a;->a:Lcom/tencent/tme/live/n/k;

    check-cast v0, Lcom/tencent/tme/live/o/a;

    .line 2
    iget v0, v0, Lcom/tencent/tme/live/o/a;->g:I

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_3

    .line 3
    iput-boolean v7, p0, Lcom/tencent/tme/live/s/b$c$a;->h:Z

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/tencent/tme/live/s/b$c$a;->f:Lcom/tencent/tme/live/n/b;

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/tencent/tme/live/n/b;->d()F

    move-result v0

    invoke-virtual {p1}, Lcom/tencent/tme/live/n/b;->d()F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_5

    :goto_0
    iput-object p1, p0, Lcom/tencent/tme/live/s/b$c$a;->f:Lcom/tencent/tme/live/n/b;

    :cond_5
    iget-object v0, p0, Lcom/tencent/tme/live/s/b$c$a;->a:Lcom/tencent/tme/live/n/k;

    iget-object v2, p0, Lcom/tencent/tme/live/s/b$c$a;->g:Lcom/tencent/tme/live/n/b;

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

    iput-boolean v0, p0, Lcom/tencent/tme/live/s/b$c$a;->j:Z

    if-nez v0, :cond_6

    iput-object p1, p0, Lcom/tencent/tme/live/s/b$c$a;->c:Lcom/tencent/tme/live/n/b;

    goto :goto_1

    :cond_6
    iput-object p1, p0, Lcom/tencent/tme/live/s/b$c$a;->e:Lcom/tencent/tme/live/n/b;

    const/4 v7, 0x0

    :goto_1
    return v7
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tme/live/s/b$c$a;->b:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/tme/live/s/b$c$a;->f:Lcom/tencent/tme/live/n/b;

    iput-object v1, p0, Lcom/tencent/tme/live/s/b$c$a;->e:Lcom/tencent/tme/live/n/b;

    iput-object v1, p0, Lcom/tencent/tme/live/s/b$c$a;->d:Lcom/tencent/tme/live/n/b;

    iput-object v1, p0, Lcom/tencent/tme/live/s/b$c$a;->c:Lcom/tencent/tme/live/n/b;

    iput-boolean v0, p0, Lcom/tencent/tme/live/s/b$c$a;->j:Z

    iput-boolean v0, p0, Lcom/tencent/tme/live/s/b$c$a;->i:Z

    iput-boolean v0, p0, Lcom/tencent/tme/live/s/b$c$a;->h:Z

    return-void
.end method

.method public c()Lcom/tencent/tme/live/s/b$f;
    .locals 2

    new-instance v0, Lcom/tencent/tme/live/s/b$f;

    .line 1
    invoke-direct {v0}, Lcom/tencent/tme/live/s/b$f;-><init>()V

    .line 2
    iget v1, p0, Lcom/tencent/tme/live/s/b$c$a;->b:I

    iput v1, v0, Lcom/tencent/tme/live/s/b$f;->a:I

    iget-object v1, p0, Lcom/tencent/tme/live/s/b$c$a;->d:Lcom/tencent/tme/live/n/b;

    iput-object v1, v0, Lcom/tencent/tme/live/s/b$f;->c:Lcom/tencent/tme/live/n/b;

    iget-object v1, p0, Lcom/tencent/tme/live/s/b$c$a;->c:Lcom/tencent/tme/live/n/b;

    iput-object v1, v0, Lcom/tencent/tme/live/s/b$f;->b:Lcom/tencent/tme/live/n/b;

    iget-object v1, p0, Lcom/tencent/tme/live/s/b$c$a;->e:Lcom/tencent/tme/live/n/b;

    iput-object v1, v0, Lcom/tencent/tme/live/s/b$f;->d:Lcom/tencent/tme/live/n/b;

    iget-object v1, p0, Lcom/tencent/tme/live/s/b$c$a;->f:Lcom/tencent/tme/live/n/b;

    iput-object v1, v0, Lcom/tencent/tme/live/s/b$f;->e:Lcom/tencent/tme/live/n/b;

    iget-boolean v1, p0, Lcom/tencent/tme/live/s/b$c$a;->h:Z

    iput-boolean v1, v0, Lcom/tencent/tme/live/s/b$f;->g:Z

    iget-boolean v1, p0, Lcom/tencent/tme/live/s/b$c$a;->i:Z

    iput-boolean v1, v0, Lcom/tencent/tme/live/s/b$f;->h:Z

    iget-boolean v1, p0, Lcom/tencent/tme/live/s/b$c$a;->j:Z

    iput-boolean v1, v0, Lcom/tencent/tme/live/s/b$f;->i:Z

    return-object v0
.end method
