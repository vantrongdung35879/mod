.class public Lcom/tencent/tme/live/w0/l;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/live/w0/l$a;
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/tme/live/w0/l$a;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/w0/l;->a:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tme/live/w0/l;->c:I

    iput v0, p0, Lcom/tencent/tme/live/w0/l;->d:I

    iput v0, p0, Lcom/tencent/tme/live/w0/l;->e:I

    iput v0, p0, Lcom/tencent/tme/live/w0/l;->f:I

    iput-boolean v0, p0, Lcom/tencent/tme/live/w0/l;->g:Z

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 3

    iget-object v0, p0, Lcom/tencent/tme/live/w0/l;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tme/live/w0/l$a;

    iget v1, v1, Lcom/tencent/tme/live/w0/l$a;->d:I

    sub-int v2, v1, p1

    if-lez v1, :cond_0

    if-lez v2, :cond_0

    return v2

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public a()Z
    .locals 3

    iget-object v0, p0, Lcom/tencent/tme/live/w0/l;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tme/live/w0/l$a;

    iget v1, v1, Lcom/tencent/tme/live/w0/l$a;->c:I

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_1
    return v2
.end method

.method public b(I)F
    .locals 5

    iget v0, p0, Lcom/tencent/tme/live/w0/l;->c:I

    if-ge p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget v1, p0, Lcom/tencent/tme/live/w0/l;->d:I

    const/high16 v2, 0x40400000    # 3.0f

    const/high16 v3, 0x3f800000    # 1.0f

    if-ge p1, v1, :cond_1

    if-ge v0, v1, :cond_1

    sub-int/2addr p1, v0

    int-to-float p1, p1

    mul-float p1, p1, v3

    sub-int/2addr v1, v0

    int-to-float v0, v1

    div-float/2addr p1, v0

    div-float/2addr p1, v2

    return p1

    :cond_1
    const v0, 0x3eaaaaab

    if-ne p1, v1, :cond_2

    return v0

    :cond_2
    iget v4, p0, Lcom/tencent/tme/live/w0/l;->e:I

    if-ge p1, v4, :cond_3

    if-ge v1, v4, :cond_3

    sub-int/2addr p1, v1

    int-to-float p1, p1

    mul-float p1, p1, v3

    sub-int/2addr v4, v1

    int-to-float v1, v4

    div-float/2addr p1, v1

    div-float/2addr p1, v2

    add-float/2addr p1, v0

    return p1

    :cond_3
    const v0, 0x3f2aaaab

    if-ne p1, v4, :cond_4

    return v0

    :cond_4
    iget v1, p0, Lcom/tencent/tme/live/w0/l;->f:I

    if-ge p1, v1, :cond_5

    if-ge v4, v1, :cond_5

    sub-int/2addr p1, v4

    int-to-float p1, p1

    mul-float p1, p1, v3

    sub-int/2addr v1, v4

    int-to-float v1, v1

    div-float/2addr p1, v1

    div-float/2addr p1, v2

    add-float/2addr p1, v0

    return p1

    :cond_5
    return v3
.end method

.method public c(I)Z
    .locals 7

    iget-object v0, p0, Lcom/tencent/tme/live/w0/l;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/tme/live/w0/l$a;

    iget v4, v3, Lcom/tencent/tme/live/w0/l$a;->d:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-gt v4, p1, :cond_2

    iget v4, v3, Lcom/tencent/tme/live/w0/l$a;->c:I

    if-eq v4, v6, :cond_2

    if-nez v4, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput v5, v3, Lcom/tencent/tme/live/w0/l$a;->c:I

    :cond_2
    iget v3, v3, Lcom/tencent/tme/live/w0/l$a;->c:I

    if-ne v3, v5, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    iput-boolean v2, p0, Lcom/tencent/tme/live/w0/l;->g:Z

    return v1
.end method
