.class public final Lcom/tencent/tme/live/e0/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/live/e0/e$c;,
        Lcom/tencent/tme/live/e0/e$b;,
        Lcom/tencent/tme/live/e0/e$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/res/Resources;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Ljava/util/concurrent/Executor;

.field public final d:Z

.field public final e:Z

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:Lcom/tencent/tme/live/c0/b;

.field public final j:Lcom/tencent/tme/live/y/a;

.field public final k:Lcom/tencent/tme/live/j0/b;

.field public final l:Lcom/tencent/tme/live/h0/b;

.field public final m:Lcom/tencent/tme/live/e0/c;

.field public final n:Lcom/tencent/tme/live/j0/b;

.field public final o:Lcom/tencent/tme/live/j0/b;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/e0/e$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/tencent/tme/live/e0/e$a;->a(Lcom/tencent/tme/live/e0/e$a;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tme/live/e0/e;->a:Landroid/content/res/Resources;

    invoke-static {p1}, Lcom/tencent/tme/live/e0/e$a;->k(Lcom/tencent/tme/live/e0/e$a;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tme/live/e0/e;->b:Ljava/util/concurrent/Executor;

    invoke-static {p1}, Lcom/tencent/tme/live/e0/e$a;->l(Lcom/tencent/tme/live/e0/e$a;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tme/live/e0/e;->c:Ljava/util/concurrent/Executor;

    invoke-static {p1}, Lcom/tencent/tme/live/e0/e$a;->m(Lcom/tencent/tme/live/e0/e$a;)I

    move-result v0

    iput v0, p0, Lcom/tencent/tme/live/e0/e;->f:I

    invoke-static {p1}, Lcom/tencent/tme/live/e0/e$a;->n(Lcom/tencent/tme/live/e0/e$a;)I

    move-result v0

    iput v0, p0, Lcom/tencent/tme/live/e0/e;->g:I

    invoke-static {p1}, Lcom/tencent/tme/live/e0/e$a;->b(Lcom/tencent/tme/live/e0/e$a;)I

    move-result v0

    iput v0, p0, Lcom/tencent/tme/live/e0/e;->h:I

    invoke-static {p1}, Lcom/tencent/tme/live/e0/e$a;->c(Lcom/tencent/tme/live/e0/e$a;)Lcom/tencent/tme/live/y/a;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tme/live/e0/e;->j:Lcom/tencent/tme/live/y/a;

    invoke-static {p1}, Lcom/tencent/tme/live/e0/e$a;->d(Lcom/tencent/tme/live/e0/e$a;)Lcom/tencent/tme/live/c0/b;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tme/live/e0/e;->i:Lcom/tencent/tme/live/c0/b;

    invoke-static {p1}, Lcom/tencent/tme/live/e0/e$a;->e(Lcom/tencent/tme/live/e0/e$a;)Lcom/tencent/tme/live/e0/c;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tme/live/e0/e;->m:Lcom/tencent/tme/live/e0/c;

    invoke-static {p1}, Lcom/tencent/tme/live/e0/e$a;->f(Lcom/tencent/tme/live/e0/e$a;)Lcom/tencent/tme/live/j0/b;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tme/live/e0/e;->k:Lcom/tencent/tme/live/j0/b;

    invoke-static {p1}, Lcom/tencent/tme/live/e0/e$a;->g(Lcom/tencent/tme/live/e0/e$a;)Lcom/tencent/tme/live/h0/b;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/tme/live/e0/e;->l:Lcom/tencent/tme/live/h0/b;

    invoke-static {p1}, Lcom/tencent/tme/live/e0/e$a;->h(Lcom/tencent/tme/live/e0/e$a;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/tencent/tme/live/e0/e;->d:Z

    invoke-static {p1}, Lcom/tencent/tme/live/e0/e$a;->i(Lcom/tencent/tme/live/e0/e$a;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/tencent/tme/live/e0/e;->e:Z

    new-instance v1, Lcom/tencent/tme/live/e0/e$b;

    invoke-direct {v1, v0}, Lcom/tencent/tme/live/e0/e$b;-><init>(Lcom/tencent/tme/live/j0/b;)V

    iput-object v1, p0, Lcom/tencent/tme/live/e0/e;->n:Lcom/tencent/tme/live/j0/b;

    new-instance v1, Lcom/tencent/tme/live/e0/e$c;

    invoke-direct {v1, v0}, Lcom/tencent/tme/live/e0/e$c;-><init>(Lcom/tencent/tme/live/j0/b;)V

    iput-object v1, p0, Lcom/tencent/tme/live/e0/e;->o:Lcom/tencent/tme/live/j0/b;

    invoke-static {p1}, Lcom/tencent/tme/live/e0/e$a;->j(Lcom/tencent/tme/live/e0/e$a;)Z

    move-result p1

    invoke-static {p1}, Lcom/tencent/tme/live/n0/c;->a(Z)V

    return-void
.end method
