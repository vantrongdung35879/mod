.class public Lcom/tencent/mna/e;
.super Ljava/lang/Object;
.source "AccCloudReq.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mna/e$b;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:I

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private final l:I

.field private final m:I

.field private final n:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/tencent/mna/e$b;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/tencent/mna/e$b;->a(Lcom/tencent/mna/e$b;)I

    move-result v0

    iput v0, p0, Lcom/tencent/mna/e;->a:I

    .line 4
    invoke-static {p1}, Lcom/tencent/mna/e$b;->b(Lcom/tencent/mna/e$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mna/e;->b:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lcom/tencent/mna/e$b;->g(Lcom/tencent/mna/e$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mna/e;->c:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Lcom/tencent/mna/e$b;->h(Lcom/tencent/mna/e$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mna/e;->d:Ljava/lang/String;

    .line 7
    invoke-static {p1}, Lcom/tencent/mna/e$b;->i(Lcom/tencent/mna/e$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mna/e;->e:Ljava/lang/String;

    .line 8
    invoke-static {p1}, Lcom/tencent/mna/e$b;->j(Lcom/tencent/mna/e$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mna/e;->f:Ljava/lang/String;

    .line 9
    invoke-static {p1}, Lcom/tencent/mna/e$b;->k(Lcom/tencent/mna/e$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mna/e;->g:Ljava/lang/String;

    .line 10
    invoke-static {p1}, Lcom/tencent/mna/e$b;->l(Lcom/tencent/mna/e$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mna/e;->h:Ljava/lang/String;

    .line 11
    invoke-static {p1}, Lcom/tencent/mna/e$b;->m(Lcom/tencent/mna/e$b;)I

    move-result v0

    iput v0, p0, Lcom/tencent/mna/e;->i:I

    .line 12
    invoke-static {p1}, Lcom/tencent/mna/e$b;->n(Lcom/tencent/mna/e$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mna/e;->j:Ljava/lang/String;

    .line 13
    invoke-static {p1}, Lcom/tencent/mna/e$b;->c(Lcom/tencent/mna/e$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mna/e;->k:Ljava/lang/String;

    .line 14
    invoke-static {p1}, Lcom/tencent/mna/e$b;->d(Lcom/tencent/mna/e$b;)I

    move-result v0

    iput v0, p0, Lcom/tencent/mna/e;->l:I

    .line 15
    invoke-static {p1}, Lcom/tencent/mna/e$b;->e(Lcom/tencent/mna/e$b;)I

    move-result v0

    iput v0, p0, Lcom/tencent/mna/e;->m:I

    .line 16
    invoke-static {p1}, Lcom/tencent/mna/e$b;->f(Lcom/tencent/mna/e$b;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/mna/e;->n:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/mna/e$b;Lcom/tencent/mna/e$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/mna/e;-><init>(Lcom/tencent/mna/e$b;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/tencent/mna/e;
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/tencent/mna/base/utils/c;->c(Landroid/content/Context;)I

    move-result v0

    .line 2
    new-instance v1, Lcom/tencent/mna/e$b;

    invoke-direct {v1}, Lcom/tencent/mna/e$b;-><init>()V

    sget v2, Lcom/tencent/mna/t0;->a:I

    invoke-virtual {v1, v2}, Lcom/tencent/mna/e$b;->d(I)Lcom/tencent/mna/e$b;

    move-result-object v1

    .line 3
    invoke-static {}, Lcom/tencent/mna/t0;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mna/e$b;->i(Ljava/lang/String;)Lcom/tencent/mna/e$b;

    move-result-object v1

    sget-object v2, Lcom/tencent/mna/t0;->u:Ljava/lang/String;

    .line 4
    invoke-virtual {v1, v2}, Lcom/tencent/mna/e$b;->e(Ljava/lang/String;)Lcom/tencent/mna/e$b;

    move-result-object v1

    .line 5
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v2

    .line 6
    invoke-static {}, Lcom/tencent/mna/d;->M1()Z

    move-result v3

    .line 7
    invoke-static {v2, v3}, Lcom/tencent/mna/base/utils/e;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mna/e$b;->b(Ljava/lang/String;)Lcom/tencent/mna/e$b;

    move-result-object v1

    .line 9
    invoke-static {}, Lcom/tencent/mna/base/utils/e;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mna/e$b;->d(Ljava/lang/String;)Lcom/tencent/mna/e$b;

    move-result-object v1

    .line 10
    const-string v2, "0"

    invoke-virtual {v1, v2}, Lcom/tencent/mna/e$b;->c(Ljava/lang/String;)Lcom/tencent/mna/e$b;

    move-result-object v1

    .line 11
    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/tencent/mna/e$b;->f(Ljava/lang/String;)Lcom/tencent/mna/e$b;

    move-result-object v1

    .line 12
    invoke-static {p0}, Lcom/tencent/mna/base/utils/e;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mna/e$b;->a(Ljava/lang/String;)Lcom/tencent/mna/e$b;

    move-result-object v1

    .line 13
    invoke-static {p0}, Lcom/tencent/mna/base/utils/WifiUtil;->d(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tencent/mna/e$b;->a(I)Lcom/tencent/mna/e$b;

    move-result-object v1

    .line 14
    invoke-static {p0}, Lcom/tencent/mna/base/utils/WifiUtil;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mna/e$b;->h(Ljava/lang/String;)Lcom/tencent/mna/e$b;

    move-result-object v1

    sget-object v2, Lcom/tencent/mna/t0;->t:Ljava/lang/String;

    .line 15
    invoke-virtual {v1, v2}, Lcom/tencent/mna/e$b;->g(Ljava/lang/String;)Lcom/tencent/mna/e$b;

    move-result-object v1

    .line 16
    invoke-virtual {v1, v0}, Lcom/tencent/mna/e$b;->b(I)Lcom/tencent/mna/e$b;

    move-result-object v1

    .line 17
    invoke-static {p0, v0}, Lcom/tencent/mna/base/utils/c;->b(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/tencent/mna/e$b;->c(I)Lcom/tencent/mna/e$b;

    move-result-object p0

    .line 18
    invoke-virtual {p0}, Lcom/tencent/mna/e$b;->a()Lcom/tencent/mna/e;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/tencent/mna/e;->h:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/mna/e;->i:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/mna/e;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/mna/e;->f:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/mna/e;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/mna/e;->l:I

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/mna/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/mna/e;->g:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/mna/e;->k:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/mna/e;->j:Ljava/lang/String;

    return-object v0
.end method

.method public k()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/mna/e;->m:I

    return v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/mna/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/mna/e;->n:Ljava/lang/String;

    return-object v0
.end method

.method public n()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/mna/e;->a:I

    return v0
.end method
