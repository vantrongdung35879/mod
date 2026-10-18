.class public Lcom/tencent/tme/live/p2/o;
.super Ljava/lang/Object;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:Z

.field public final f:Z

.field public final g:Z

.field public final h:I

.field public final i:I

.field public final j:I


# direct methods
.method public constructor <init>(IIIZZZ)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/tencent/tme/live/p2/o;->a:I

    iput p2, p0, Lcom/tencent/tme/live/p2/o;->b:I

    iput-boolean p4, p0, Lcom/tencent/tme/live/p2/o;->e:Z

    iput-boolean p6, p0, Lcom/tencent/tme/live/p2/o;->g:Z

    iput-boolean p5, p0, Lcom/tencent/tme/live/p2/o;->f:Z

    if-eqz p5, :cond_1

    if-nez p6, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/tencent/tme/live/p2/v;

    const-string p2, "palette and greyscale are mutually exclusive"

    invoke-direct {p1, p2}, Lcom/tencent/tme/live/p2/v;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 v0, 0x4

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez p5, :cond_4

    if-eqz p6, :cond_2

    goto :goto_1

    :cond_2
    if-eqz p4, :cond_3

    const/4 p4, 0x4

    goto :goto_2

    :cond_3
    const/4 p4, 0x3

    goto :goto_2

    :cond_4
    :goto_1
    if-eqz p4, :cond_5

    const/4 p4, 0x2

    goto :goto_2

    :cond_5
    const/4 p4, 0x1

    :goto_2
    iput p4, p0, Lcom/tencent/tme/live/p2/o;->d:I

    iput p3, p0, Lcom/tencent/tme/live/p2/o;->c:I

    mul-int v3, p4, p3

    iput v3, p0, Lcom/tencent/tme/live/p2/o;->h:I

    add-int/lit8 v4, v3, 0x7

    const/16 v5, 0x8

    div-int/2addr v4, v5

    iput v4, p0, Lcom/tencent/tme/live/p2/o;->i:I

    mul-int v3, v3, p1

    add-int/lit8 v3, v3, 0x7

    div-int/2addr v3, v5

    iput v3, p0, Lcom/tencent/tme/live/p2/o;->j:I

    mul-int p4, p4, p1

    if-eq p3, v2, :cond_8

    if-eq p3, v1, :cond_8

    if-eq p3, v0, :cond_8

    if-eq p3, v5, :cond_a

    const/16 p5, 0x10

    if-ne p3, p5, :cond_7

    if-nez p6, :cond_6

    goto :goto_3

    :cond_6
    new-instance p1, Lcom/tencent/tme/live/p2/v;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "indexed can\'t have bitdepth="

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/tencent/tme/live/p2/v;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Lcom/tencent/tme/live/p2/v;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "invalid bitdepth="

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/tencent/tme/live/p2/v;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    if-nez p6, :cond_a

    if-eqz p5, :cond_9

    goto :goto_3

    :cond_9
    new-instance p1, Lcom/tencent/tme/live/p2/v;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "only indexed or grayscale can have bitdepth="

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/tencent/tme/live/p2/v;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    :goto_3
    const-string p3, " ???"

    if-lt p1, v2, :cond_d

    const/high16 p5, 0x1000000

    if-gt p1, p5, :cond_d

    if-lt p2, v2, :cond_c

    if-gt p2, p5, :cond_c

    if-lt p4, v2, :cond_b

    return-void

    :cond_b
    new-instance p1, Lcom/tencent/tme/live/p2/v;

    const-string p2, "invalid image parameters (overflow?)"

    invoke-direct {p1, p2}, Lcom/tencent/tme/live/p2/v;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    new-instance p1, Lcom/tencent/tme/live/p2/v;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "invalid rows="

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/tencent/tme/live/p2/v;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    new-instance p2, Lcom/tencent/tme/live/p2/v;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "invalid cols="

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/tencent/tme/live/p2/v;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/tencent/tme/live/p2/o;

    if-eq v3, v2, :cond_2

    return v1

    :cond_2
    check-cast p1, Lcom/tencent/tme/live/p2/o;

    iget-boolean v2, p0, Lcom/tencent/tme/live/p2/o;->e:Z

    iget-boolean v3, p1, Lcom/tencent/tme/live/p2/o;->e:Z

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget v2, p0, Lcom/tencent/tme/live/p2/o;->c:I

    iget v3, p1, Lcom/tencent/tme/live/p2/o;->c:I

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    iget v2, p0, Lcom/tencent/tme/live/p2/o;->a:I

    iget v3, p1, Lcom/tencent/tme/live/p2/o;->a:I

    if-eq v2, v3, :cond_5

    return v1

    :cond_5
    iget-boolean v2, p0, Lcom/tencent/tme/live/p2/o;->f:Z

    iget-boolean v3, p1, Lcom/tencent/tme/live/p2/o;->f:Z

    if-eq v2, v3, :cond_6

    return v1

    :cond_6
    iget-boolean v2, p0, Lcom/tencent/tme/live/p2/o;->g:Z

    iget-boolean v3, p1, Lcom/tencent/tme/live/p2/o;->g:Z

    if-eq v2, v3, :cond_7

    return v1

    :cond_7
    iget v2, p0, Lcom/tencent/tme/live/p2/o;->b:I

    iget p1, p1, Lcom/tencent/tme/live/p2/o;->b:I

    if-eq v2, p1, :cond_8

    return v1

    :cond_8
    return v0
.end method

.method public hashCode()I
    .locals 4

    iget-boolean v0, p0, Lcom/tencent/tme/live/p2/o;->e:Z

    const/16 v1, 0x4cf

    const/16 v2, 0x4d5

    if-eqz v0, :cond_0

    const/16 v0, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v0, 0x4d5

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/tencent/tme/live/p2/o;->c:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/tencent/tme/live/p2/o;->a:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Lcom/tencent/tme/live/p2/o;->f:Z

    if-eqz v3, :cond_1

    const/16 v3, 0x4cf

    goto :goto_1

    :cond_1
    const/16 v3, 0x4d5

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Lcom/tencent/tme/live/p2/o;->g:Z

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    const/16 v1, 0x4d5

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/tencent/tme/live/p2/o;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "ImageInfo [cols="

    invoke-static {v0}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/tme/live/p2/o;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rows="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/tme/live/p2/o;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bitDepth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/tme/live/p2/o;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", channels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/tme/live/p2/o;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/tme/live/p2/o;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", greyscale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/tme/live/p2/o;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", indexed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/tme/live/p2/o;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
