.class public final Lcom/tencent/tme/live/e0/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/live/e0/c$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:Landroid/graphics/drawable/Drawable;

.field public final e:Landroid/graphics/drawable/Drawable;

.field public final f:Landroid/graphics/drawable/Drawable;

.field public final g:Z

.field public final h:Z

.field public final i:Z

.field public final j:I

.field public final k:Landroid/graphics/BitmapFactory$Options;

.field public final l:I

.field public final m:Z

.field public final n:Ljava/lang/Object;

.field public final o:Lcom/tencent/tme/live/m0/a;

.field public final p:Lcom/tencent/tme/live/m0/a;

.field public final q:Lcom/tencent/tme/live/i0/a;

.field public final r:Landroid/os/Handler;

.field public final s:Z


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/e0/c$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/tencent/tme/live/e0/c$a;->a(Lcom/tencent/tme/live/e0/c$a;)I

    move-result v0

    iput v0, p0, Lcom/tencent/tme/live/e0/c;->a:I

    invoke-static {p1}, Lcom/tencent/tme/live/e0/c$a;->b(Lcom/tencent/tme/live/e0/c$a;)I

    move-result v0

    iput v0, p0, Lcom/tencent/tme/live/e0/c;->b:I

    invoke-static {p1}, Lcom/tencent/tme/live/e0/c$a;->l(Lcom/tencent/tme/live/e0/c$a;)I

    move-result v0

    iput v0, p0, Lcom/tencent/tme/live/e0/c;->c:I

    invoke-static {p1}, Lcom/tencent/tme/live/e0/c$a;->m(Lcom/tencent/tme/live/e0/c$a;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tme/live/e0/c;->d:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lcom/tencent/tme/live/e0/c$a;->n(Lcom/tencent/tme/live/e0/c$a;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tme/live/e0/c;->e:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lcom/tencent/tme/live/e0/c$a;->o(Lcom/tencent/tme/live/e0/c$a;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tme/live/e0/c;->f:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lcom/tencent/tme/live/e0/c$a;->p(Lcom/tencent/tme/live/e0/c$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/tme/live/e0/c;->g:Z

    invoke-static {p1}, Lcom/tencent/tme/live/e0/c$a;->q(Lcom/tencent/tme/live/e0/c$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/tme/live/e0/c;->h:Z

    invoke-static {p1}, Lcom/tencent/tme/live/e0/c$a;->r(Lcom/tencent/tme/live/e0/c$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/tme/live/e0/c;->i:Z

    invoke-static {p1}, Lcom/tencent/tme/live/e0/c$a;->s(Lcom/tencent/tme/live/e0/c$a;)I

    move-result v0

    iput v0, p0, Lcom/tencent/tme/live/e0/c;->j:I

    invoke-static {p1}, Lcom/tencent/tme/live/e0/c$a;->c(Lcom/tencent/tme/live/e0/c$a;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tme/live/e0/c;->k:Landroid/graphics/BitmapFactory$Options;

    invoke-static {p1}, Lcom/tencent/tme/live/e0/c$a;->d(Lcom/tencent/tme/live/e0/c$a;)I

    move-result v0

    iput v0, p0, Lcom/tencent/tme/live/e0/c;->l:I

    invoke-static {p1}, Lcom/tencent/tme/live/e0/c$a;->e(Lcom/tencent/tme/live/e0/c$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/tme/live/e0/c;->m:Z

    invoke-static {p1}, Lcom/tencent/tme/live/e0/c$a;->f(Lcom/tencent/tme/live/e0/c$a;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tme/live/e0/c;->n:Ljava/lang/Object;

    invoke-static {p1}, Lcom/tencent/tme/live/e0/c$a;->g(Lcom/tencent/tme/live/e0/c$a;)Lcom/tencent/tme/live/m0/a;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tme/live/e0/c;->o:Lcom/tencent/tme/live/m0/a;

    invoke-static {p1}, Lcom/tencent/tme/live/e0/c$a;->h(Lcom/tencent/tme/live/e0/c$a;)Lcom/tencent/tme/live/m0/a;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tme/live/e0/c;->p:Lcom/tencent/tme/live/m0/a;

    invoke-static {p1}, Lcom/tencent/tme/live/e0/c$a;->i(Lcom/tencent/tme/live/e0/c$a;)Lcom/tencent/tme/live/i0/a;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tme/live/e0/c;->q:Lcom/tencent/tme/live/i0/a;

    invoke-static {p1}, Lcom/tencent/tme/live/e0/c$a;->j(Lcom/tencent/tme/live/e0/c$a;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tme/live/e0/c;->r:Landroid/os/Handler;

    invoke-static {p1}, Lcom/tencent/tme/live/e0/c$a;->k(Lcom/tencent/tme/live/e0/c$a;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/tencent/tme/live/e0/c;->s:Z

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/BitmapFactory$Options;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/e0/c;->k:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method public b()Lcom/tencent/tme/live/i0/a;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/e0/c;->q:Lcom/tencent/tme/live/i0/a;

    return-object v0
.end method

.method public c()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/e0/c;->n:Ljava/lang/Object;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/tencent/tme/live/e0/c;->j:I

    return v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/tme/live/e0/c;->m:Z

    return v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/tme/live/e0/c;->s:Z

    return v0
.end method
