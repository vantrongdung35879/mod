.class public Lcom/tencent/tme/live/e0/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/e0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Landroid/graphics/drawable/Drawable;

.field public e:Landroid/graphics/drawable/Drawable;

.field public f:Landroid/graphics/drawable/Drawable;

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:I

.field public k:Landroid/graphics/BitmapFactory$Options;

.field public l:I

.field public m:Z

.field public n:Ljava/lang/Object;

.field public o:Lcom/tencent/tme/live/m0/a;

.field public p:Lcom/tencent/tme/live/m0/a;

.field public q:Lcom/tencent/tme/live/i0/a;

.field public r:Landroid/os/Handler;

.field public s:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tme/live/e0/c$a;->a:I

    iput v0, p0, Lcom/tencent/tme/live/e0/c$a;->b:I

    iput v0, p0, Lcom/tencent/tme/live/e0/c$a;->c:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/tme/live/e0/c$a;->d:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/tencent/tme/live/e0/c$a;->e:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/tencent/tme/live/e0/c$a;->f:Landroid/graphics/drawable/Drawable;

    iput-boolean v0, p0, Lcom/tencent/tme/live/e0/c$a;->g:Z

    iput-boolean v0, p0, Lcom/tencent/tme/live/e0/c$a;->h:Z

    iput-boolean v0, p0, Lcom/tencent/tme/live/e0/c$a;->i:Z

    const/4 v2, 0x3

    iput v2, p0, Lcom/tencent/tme/live/e0/c$a;->j:I

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v2, p0, Lcom/tencent/tme/live/e0/c$a;->k:Landroid/graphics/BitmapFactory$Options;

    iput v0, p0, Lcom/tencent/tme/live/e0/c$a;->l:I

    iput-boolean v0, p0, Lcom/tencent/tme/live/e0/c$a;->m:Z

    iput-object v1, p0, Lcom/tencent/tme/live/e0/c$a;->n:Ljava/lang/Object;

    iput-object v1, p0, Lcom/tencent/tme/live/e0/c$a;->o:Lcom/tencent/tme/live/m0/a;

    iput-object v1, p0, Lcom/tencent/tme/live/e0/c$a;->p:Lcom/tencent/tme/live/m0/a;

    invoke-static {}, Lcom/tencent/tme/live/e0/a;->a()Lcom/tencent/tme/live/i0/a;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/tme/live/e0/c$a;->q:Lcom/tencent/tme/live/i0/a;

    iput-object v1, p0, Lcom/tencent/tme/live/e0/c$a;->r:Landroid/os/Handler;

    iput-boolean v0, p0, Lcom/tencent/tme/live/e0/c$a;->s:Z

    return-void
.end method

.method public static synthetic a(Lcom/tencent/tme/live/e0/c$a;)I
    .locals 0

    iget p0, p0, Lcom/tencent/tme/live/e0/c$a;->a:I

    return p0
.end method

.method public static synthetic b(Lcom/tencent/tme/live/e0/c$a;)I
    .locals 0

    iget p0, p0, Lcom/tencent/tme/live/e0/c$a;->b:I

    return p0
.end method

.method public static synthetic c(Lcom/tencent/tme/live/e0/c$a;)Landroid/graphics/BitmapFactory$Options;
    .locals 0

    iget-object p0, p0, Lcom/tencent/tme/live/e0/c$a;->k:Landroid/graphics/BitmapFactory$Options;

    return-object p0
.end method

.method public static synthetic d(Lcom/tencent/tme/live/e0/c$a;)I
    .locals 0

    iget p0, p0, Lcom/tencent/tme/live/e0/c$a;->l:I

    return p0
.end method

.method public static synthetic e(Lcom/tencent/tme/live/e0/c$a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/tme/live/e0/c$a;->m:Z

    return p0
.end method

.method public static synthetic f(Lcom/tencent/tme/live/e0/c$a;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/tencent/tme/live/e0/c$a;->n:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic g(Lcom/tencent/tme/live/e0/c$a;)Lcom/tencent/tme/live/m0/a;
    .locals 0

    iget-object p0, p0, Lcom/tencent/tme/live/e0/c$a;->o:Lcom/tencent/tme/live/m0/a;

    return-object p0
.end method

.method public static synthetic h(Lcom/tencent/tme/live/e0/c$a;)Lcom/tencent/tme/live/m0/a;
    .locals 0

    iget-object p0, p0, Lcom/tencent/tme/live/e0/c$a;->p:Lcom/tencent/tme/live/m0/a;

    return-object p0
.end method

.method public static synthetic i(Lcom/tencent/tme/live/e0/c$a;)Lcom/tencent/tme/live/i0/a;
    .locals 0

    iget-object p0, p0, Lcom/tencent/tme/live/e0/c$a;->q:Lcom/tencent/tme/live/i0/a;

    return-object p0
.end method

.method public static synthetic j(Lcom/tencent/tme/live/e0/c$a;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/tencent/tme/live/e0/c$a;->r:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic k(Lcom/tencent/tme/live/e0/c$a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/tme/live/e0/c$a;->s:Z

    return p0
.end method

.method public static synthetic l(Lcom/tencent/tme/live/e0/c$a;)I
    .locals 0

    iget p0, p0, Lcom/tencent/tme/live/e0/c$a;->c:I

    return p0
.end method

.method public static synthetic m(Lcom/tencent/tme/live/e0/c$a;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/tencent/tme/live/e0/c$a;->d:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static synthetic n(Lcom/tencent/tme/live/e0/c$a;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/tencent/tme/live/e0/c$a;->e:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static synthetic o(Lcom/tencent/tme/live/e0/c$a;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/tencent/tme/live/e0/c$a;->f:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static synthetic p(Lcom/tencent/tme/live/e0/c$a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/tme/live/e0/c$a;->g:Z

    return p0
.end method

.method public static synthetic q(Lcom/tencent/tme/live/e0/c$a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/tme/live/e0/c$a;->h:Z

    return p0
.end method

.method public static synthetic r(Lcom/tencent/tme/live/e0/c$a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/tme/live/e0/c$a;->i:Z

    return p0
.end method

.method public static synthetic s(Lcom/tencent/tme/live/e0/c$a;)I
    .locals 0

    iget p0, p0, Lcom/tencent/tme/live/e0/c$a;->j:I

    return p0
.end method


# virtual methods
.method public a(Lcom/tencent/tme/live/e0/c;)Lcom/tencent/tme/live/e0/c$a;
    .locals 1

    .line 2
    iget v0, p1, Lcom/tencent/tme/live/e0/c;->a:I

    .line 3
    iput v0, p0, Lcom/tencent/tme/live/e0/c$a;->a:I

    .line 4
    iget v0, p1, Lcom/tencent/tme/live/e0/c;->b:I

    .line 5
    iput v0, p0, Lcom/tencent/tme/live/e0/c$a;->b:I

    .line 6
    iget v0, p1, Lcom/tencent/tme/live/e0/c;->c:I

    .line 7
    iput v0, p0, Lcom/tencent/tme/live/e0/c$a;->c:I

    .line 8
    iget-object v0, p1, Lcom/tencent/tme/live/e0/c;->d:Landroid/graphics/drawable/Drawable;

    .line 9
    iput-object v0, p0, Lcom/tencent/tme/live/e0/c$a;->d:Landroid/graphics/drawable/Drawable;

    .line 10
    iget-object v0, p1, Lcom/tencent/tme/live/e0/c;->e:Landroid/graphics/drawable/Drawable;

    .line 11
    iput-object v0, p0, Lcom/tencent/tme/live/e0/c$a;->e:Landroid/graphics/drawable/Drawable;

    .line 12
    iget-object v0, p1, Lcom/tencent/tme/live/e0/c;->f:Landroid/graphics/drawable/Drawable;

    .line 13
    iput-object v0, p0, Lcom/tencent/tme/live/e0/c$a;->f:Landroid/graphics/drawable/Drawable;

    .line 14
    iget-boolean v0, p1, Lcom/tencent/tme/live/e0/c;->g:Z

    .line 15
    iput-boolean v0, p0, Lcom/tencent/tme/live/e0/c$a;->g:Z

    .line 16
    iget-boolean v0, p1, Lcom/tencent/tme/live/e0/c;->h:Z

    .line 17
    iput-boolean v0, p0, Lcom/tencent/tme/live/e0/c$a;->h:Z

    .line 18
    iget-boolean v0, p1, Lcom/tencent/tme/live/e0/c;->i:Z

    .line 19
    iput-boolean v0, p0, Lcom/tencent/tme/live/e0/c$a;->i:Z

    .line 20
    iget v0, p1, Lcom/tencent/tme/live/e0/c;->j:I

    .line 21
    iput v0, p0, Lcom/tencent/tme/live/e0/c$a;->j:I

    .line 22
    iget-object v0, p1, Lcom/tencent/tme/live/e0/c;->k:Landroid/graphics/BitmapFactory$Options;

    .line 23
    iput-object v0, p0, Lcom/tencent/tme/live/e0/c$a;->k:Landroid/graphics/BitmapFactory$Options;

    .line 24
    iget v0, p1, Lcom/tencent/tme/live/e0/c;->l:I

    .line 25
    iput v0, p0, Lcom/tencent/tme/live/e0/c$a;->l:I

    .line 26
    iget-boolean v0, p1, Lcom/tencent/tme/live/e0/c;->m:Z

    .line 27
    iput-boolean v0, p0, Lcom/tencent/tme/live/e0/c$a;->m:Z

    .line 28
    iget-object v0, p1, Lcom/tencent/tme/live/e0/c;->n:Ljava/lang/Object;

    .line 29
    iput-object v0, p0, Lcom/tencent/tme/live/e0/c$a;->n:Ljava/lang/Object;

    .line 30
    iget-object v0, p1, Lcom/tencent/tme/live/e0/c;->o:Lcom/tencent/tme/live/m0/a;

    .line 31
    iput-object v0, p0, Lcom/tencent/tme/live/e0/c$a;->o:Lcom/tencent/tme/live/m0/a;

    .line 32
    iget-object v0, p1, Lcom/tencent/tme/live/e0/c;->p:Lcom/tencent/tme/live/m0/a;

    .line 33
    iput-object v0, p0, Lcom/tencent/tme/live/e0/c$a;->p:Lcom/tencent/tme/live/m0/a;

    .line 34
    iget-object v0, p1, Lcom/tencent/tme/live/e0/c;->q:Lcom/tencent/tme/live/i0/a;

    .line 35
    iput-object v0, p0, Lcom/tencent/tme/live/e0/c$a;->q:Lcom/tencent/tme/live/i0/a;

    .line 36
    iget-object v0, p1, Lcom/tencent/tme/live/e0/c;->r:Landroid/os/Handler;

    .line 37
    iput-object v0, p0, Lcom/tencent/tme/live/e0/c$a;->r:Landroid/os/Handler;

    .line 38
    iget-boolean p1, p1, Lcom/tencent/tme/live/e0/c;->s:Z

    .line 39
    iput-boolean p1, p0, Lcom/tencent/tme/live/e0/c$a;->s:Z

    return-object p0
.end method

.method public a(Z)Lcom/tencent/tme/live/e0/c$a;
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/tme/live/e0/c$a;->h:Z

    return-object p0
.end method

.method public a()Lcom/tencent/tme/live/e0/c;
    .locals 1

    new-instance v0, Lcom/tencent/tme/live/e0/c;

    .line 1
    invoke-direct {v0, p0}, Lcom/tencent/tme/live/e0/c;-><init>(Lcom/tencent/tme/live/e0/c$a;)V

    return-object v0
.end method

.method public b(Z)Lcom/tencent/tme/live/e0/c$a;
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/tme/live/e0/c$a;->i:Z

    return-object p0
.end method
