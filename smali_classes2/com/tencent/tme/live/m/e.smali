.class public Lcom/tencent/tme/live/m/e;
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
.field public final synthetic a:Lcom/tencent/tme/live/m/a$b$a;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/m/a$b$a;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/m/e;->a:Lcom/tencent/tme/live/m/a$b$a;

    invoke-direct {p0}, Lcom/tencent/tme/live/n/j$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 8

    check-cast p1, Lcom/tencent/tme/live/n/b;

    .line 1
    iget-object v0, p0, Lcom/tencent/tme/live/m/e;->a:Lcom/tencent/tme/live/m/a$b$a;

    .line 2
    iget-boolean v1, v0, Lcom/tencent/tme/live/m/a$b$a;->a:Z

    const/4 v7, 0x1

    if-nez v1, :cond_5

    .line 3
    iget-boolean v0, v0, Lcom/tencent/tme/live/m/a$b$a;->d:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/tme/live/n/b;->g()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/tme/live/m/e;->a:Lcom/tencent/tme/live/m/a$b$a;

    iget-object v0, v0, Lcom/tencent/tme/live/m/a$b$a;->e:Lcom/tencent/tme/live/m/a$b;

    iget-object v0, v0, Lcom/tencent/tme/live/m/a$b;->i:Lcom/tencent/tme/live/m/a;

    iget-object v6, v0, Lcom/tencent/tme/live/m/k;->a:Lcom/tencent/tme/live/o/d;

    iget-object v0, v6, Lcom/tencent/tme/live/o/d;->j:Lcom/tencent/tme/live/m/f;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/tme/live/m/f;->a(Lcom/tencent/tme/live/n/b;IILcom/tencent/tme/live/n/d;ZLcom/tencent/tme/live/o/d;)V

    :cond_1
    invoke-virtual {p1}, Lcom/tencent/tme/live/n/b;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/tencent/tme/live/n/b;->i()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tencent/tme/live/m/e;->a:Lcom/tencent/tme/live/m/a$b$a;

    iget-object v0, v0, Lcom/tencent/tme/live/m/a$b$a;->e:Lcom/tencent/tme/live/m/a$b;

    iget-object v0, v0, Lcom/tencent/tme/live/m/a$b;->i:Lcom/tencent/tme/live/m/a;

    iget-object v0, v0, Lcom/tencent/tme/live/m/k;->b:Lcom/tencent/tme/live/n/a;

    invoke-virtual {p1, v0, v7}, Lcom/tencent/tme/live/n/b;->a(Lcom/tencent/tme/live/n/k;Z)V

    .line 5
    :cond_3
    iget v0, p1, Lcom/tencent/tme/live/n/b;->v:I

    iget-object v1, p1, Lcom/tencent/tme/live/n/b;->C:Lcom/tencent/tme/live/n/h;

    iget v1, v1, Lcom/tencent/tme/live/n/h;->f:I

    if-ne v0, v1, :cond_4

    goto :goto_0

    .line 6
    :cond_4
    iget-object v0, p0, Lcom/tencent/tme/live/m/e;->a:Lcom/tencent/tme/live/m/a$b$a;

    iget-object v0, v0, Lcom/tencent/tme/live/m/a$b$a;->e:Lcom/tencent/tme/live/m/a$b;

    iget-object v0, v0, Lcom/tencent/tme/live/m/a$b;->i:Lcom/tencent/tme/live/m/a;

    iget-object v0, v0, Lcom/tencent/tme/live/m/k;->b:Lcom/tencent/tme/live/n/a;

    .line 7
    check-cast v0, Lcom/tencent/tme/live/o/a;

    .line 8
    iget-object v0, v0, Lcom/tencent/tme/live/o/a;->d:Lcom/tencent/tme/live/o/b;

    .line 9
    iput v1, p1, Lcom/tencent/tme/live/n/b;->v:I

    :goto_0
    const/4 v7, 0x0

    :cond_5
    :goto_1
    return v7
.end method
