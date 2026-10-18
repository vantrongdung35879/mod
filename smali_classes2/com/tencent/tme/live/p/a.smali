.class public Lcom/tencent/tme/live/p/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/tencent/tme/live/p/b<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lcom/tencent/tme/live/o/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tme/live/o/i;"
        }
    .end annotation
.end field

.field public final b:I

.field public c:Lcom/tencent/tme/live/p/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public d:I


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/o/i;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tme/live/o/i;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p2, :cond_0

    iput-object p1, p0, Lcom/tencent/tme/live/p/a;->a:Lcom/tencent/tme/live/o/i;

    iput p2, p0, Lcom/tencent/tme/live/p/a;->b:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The pool limit must be > 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Lcom/tencent/tme/live/p/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tme/live/p/a;->c:Lcom/tencent/tme/live/p/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/tencent/tme/live/p/b;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/tme/live/p/b;

    iput-object v2, p0, Lcom/tencent/tme/live/p/a;->c:Lcom/tencent/tme/live/p/b;

    iget v2, p0, Lcom/tencent/tme/live/p/a;->d:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/tencent/tme/live/p/a;->d:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/p/a;->a:Lcom/tencent/tme/live/o/i;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Lcom/tencent/tme/live/p/b;->a(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/tencent/tme/live/p/b;->a(Z)V

    iget-object v1, p0, Lcom/tencent/tme/live/p/a;->a:Lcom/tencent/tme/live/o/i;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object v1, v0

    check-cast v1, Lcom/tencent/tme/live/o/g;

    :cond_1
    return-object v0
.end method

.method public a(Lcom/tencent/tme/live/p/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Lcom/tencent/tme/live/o/g;

    .line 2
    iget-boolean v1, v0, Lcom/tencent/tme/live/o/g;->d:Z

    if-nez v1, :cond_1

    .line 3
    iget v1, p0, Lcom/tencent/tme/live/p/a;->d:I

    iget v2, p0, Lcom/tencent/tme/live/p/a;->b:I

    if-ge v1, v2, :cond_0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/tencent/tme/live/p/a;->d:I

    iget-object v1, p0, Lcom/tencent/tme/live/p/a;->c:Lcom/tencent/tme/live/p/b;

    .line 4
    check-cast v1, Lcom/tencent/tme/live/o/g;

    .line 5
    iput-object v1, v0, Lcom/tencent/tme/live/o/g;->c:Lcom/tencent/tme/live/o/g;

    .line 6
    iput-boolean v2, v0, Lcom/tencent/tme/live/o/g;->d:Z

    .line 7
    iput-object p1, p0, Lcom/tencent/tme/live/p/a;->c:Lcom/tencent/tme/live/p/b;

    :cond_0
    iget-object p1, p0, Lcom/tencent/tme/live/p/a;->a:Lcom/tencent/tme/live/o/i;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    .line 8
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[FinitePool] Element is already in pool: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9
    const-string v0, "Danma"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
