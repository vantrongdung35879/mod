.class public Lcom/tencent/tme/live/o/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/live/o/d$a;,
        Lcom/tencent/tme/live/o/d$b;
    }
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tencent/tme/live/o/d$a;",
            ">;>;"
        }
    .end annotation
.end field

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Lcom/tencent/tme/live/n/a;

.field public i:Lcom/tencent/tme/live/n/h;

.field public j:Lcom/tencent/tme/live/m/f;

.field public k:Lcom/tencent/tme/live/o/e;

.field public l:Lcom/tencent/tme/live/o/c;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/tencent/tme/live/o/d;->a:F

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput v0, p0, Lcom/tencent/tme/live/o/d;->b:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tme/live/o/d;->d:Z

    iput-boolean v0, p0, Lcom/tencent/tme/live/o/d;->e:Z

    new-instance v0, Lcom/tencent/tme/live/o/a;

    invoke-direct {v0}, Lcom/tencent/tme/live/o/a;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/o/d;->h:Lcom/tencent/tme/live/n/a;

    new-instance v0, Lcom/tencent/tme/live/n/h;

    invoke-direct {v0}, Lcom/tencent/tme/live/n/h;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/o/d;->i:Lcom/tencent/tme/live/n/h;

    new-instance v0, Lcom/tencent/tme/live/m/f;

    invoke-direct {v0}, Lcom/tencent/tme/live/m/f;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/o/d;->j:Lcom/tencent/tme/live/m/f;

    invoke-static {}, Lcom/tencent/tme/live/o/e;->a()Lcom/tencent/tme/live/o/e;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tme/live/o/d;->k:Lcom/tencent/tme/live/o/e;

    sget-object v0, Lcom/tencent/tme/live/o/c;->f:Lcom/tencent/tme/live/o/c;

    iput-object v0, p0, Lcom/tencent/tme/live/o/d;->l:Lcom/tencent/tme/live/o/c;

    return-void
.end method


# virtual methods
.method public a()Lcom/tencent/tme/live/n/a;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/o/d;->h:Lcom/tencent/tme/live/n/a;

    return-object v0
.end method

.method public a(F)Lcom/tencent/tme/live/o/d;
    .locals 4

    iget v0, p0, Lcom/tencent/tme/live/o/d;->b:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_3

    iput p1, p0, Lcom/tencent/tme/live/o/d;->b:F

    iget-object v0, p0, Lcom/tencent/tme/live/o/d;->k:Lcom/tencent/tme/live/o/e;

    .line 3
    iget-object v1, v0, Lcom/tencent/tme/live/o/e;->g:Lcom/tencent/tme/live/n/e;

    if-eqz v1, :cond_2

    iget-object v2, v0, Lcom/tencent/tme/live/o/e;->h:Lcom/tencent/tme/live/n/e;

    if-nez v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget v2, v1, Lcom/tencent/tme/live/n/e;->b:F

    cmpl-float v2, v2, p1

    if-eqz v2, :cond_1

    iput p1, v1, Lcom/tencent/tme/live/n/e;->b:F

    iget-wide v2, v1, Lcom/tencent/tme/live/n/e;->a:J

    long-to-float v2, v2

    mul-float v2, v2, p1

    float-to-long v2, v2

    iput-wide v2, v1, Lcom/tencent/tme/live/n/e;->c:J

    .line 5
    :cond_1
    invoke-virtual {v0}, Lcom/tencent/tme/live/o/e;->b()V

    .line 6
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/tencent/tme/live/o/d;->i:Lcom/tencent/tme/live/n/h;

    invoke-virtual {v0}, Lcom/tencent/tme/live/n/h;->b()V

    iget-object v0, p0, Lcom/tencent/tme/live/o/d;->i:Lcom/tencent/tme/live/n/h;

    invoke-virtual {v0}, Lcom/tencent/tme/live/n/h;->c()V

    sget-object v0, Lcom/tencent/tme/live/o/d$b;->l:Lcom/tencent/tme/live/o/d$b;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/tencent/tme/live/o/d;->a(Lcom/tencent/tme/live/o/d$b;[Ljava/lang/Object;)V

    :cond_3
    return-object p0
.end method

.method public a(Ljava/util/Map;)Lcom/tencent/tme/live/o/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/tencent/tme/live/o/d;"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tme/live/o/d;->f:Z

    const-string v1, "1018_Filter"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Lcom/tencent/tme/live/o/d;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    iget-object v1, p0, Lcom/tencent/tme/live/o/d;->i:Lcom/tencent/tme/live/n/h;

    invoke-virtual {v1}, Lcom/tencent/tme/live/n/h;->a()V

    sget-object v1, Lcom/tencent/tme/live/o/d$b;->n:Lcom/tencent/tme/live/o/d$b;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    invoke-virtual {p0, v1, v0}, Lcom/tencent/tme/live/o/d;->a(Lcom/tencent/tme/live/o/d$b;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public a(Z)Lcom/tencent/tme/live/o/d;
    .locals 3

    iget-boolean v0, p0, Lcom/tencent/tme/live/o/d;->e:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/tencent/tme/live/o/d;->e:Z

    sget-object v0, Lcom/tencent/tme/live/o/d$b;->p:Lcom/tencent/tme/live/o/d$b;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/tencent/tme/live/o/d;->a(Lcom/tencent/tme/live/o/d$b;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/tencent/tme/live/o/d;->i:Lcom/tencent/tme/live/n/h;

    invoke-virtual {p1}, Lcom/tencent/tme/live/n/h;->c()V

    :cond_0
    return-object p0
.end method

.method public final varargs a(Lcom/tencent/tme/live/o/d$b;[Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/o/d;->c:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tme/live/o/d$a;

    if-eqz v1, :cond_0

    invoke-interface {v1, p0, p1, p2}, Lcom/tencent/tme/live/o/d$a;->a(Lcom/tencent/tme/live/o/d;Lcom/tencent/tme/live/o/d$b;[Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tme/live/o/d;->j:Lcom/tencent/tme/live/m/f;

    if-eqz p3, :cond_0

    .line 1
    iget-object v1, v0, Lcom/tencent/tme/live/m/f;->b:Ljava/util/Map;

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/tencent/tme/live/m/f;->c:Ljava/util/Map;

    :goto_0
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tme/live/m/f$e;

    if-nez v1, :cond_1

    invoke-virtual {v0, p1, p3}, Lcom/tencent/tme/live/m/f;->a(Ljava/lang/String;Z)Lcom/tencent/tme/live/m/f$e;

    move-result-object v1

    .line 2
    :cond_1
    invoke-interface {v1, p2}, Lcom/tencent/tme/live/m/f$e;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/tme/live/o/d;->e:Z

    return v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/tme/live/o/d;->d:Z

    return v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/tme/live/o/d;->f:Z

    return v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/tme/live/o/d;->g:Z

    return v0
.end method
