.class public Lcom/tencent/tme/live/o/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/o/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:F

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Landroid/text/TextPaint;

.field public final d:Landroid/text/TextPaint;

.field public e:Landroid/graphics/Paint;

.field public f:Landroid/graphics/Paint;

.field public g:Landroid/graphics/Paint;

.field public h:I

.field public i:F

.field public j:F

.field public k:F

.field public l:F

.field public m:I

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:F

.field public w:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/tme/live/o/a$a;->b:Ljava/util/Map;

    const/4 v0, 0x4

    iput v0, p0, Lcom/tencent/tme/live/o/a$a;->h:I

    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lcom/tencent/tme/live/o/a$a;->i:F

    const/high16 v1, 0x40600000    # 3.5f

    iput v1, p0, Lcom/tencent/tme/live/o/a$a;->j:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/tencent/tme/live/o/a$a;->k:F

    iput v1, p0, Lcom/tencent/tme/live/o/a$a;->l:F

    const/16 v2, 0xcc

    iput v2, p0, Lcom/tencent/tme/live/o/a$a;->m:I

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/tencent/tme/live/o/a$a;->n:Z

    iput-boolean v2, p0, Lcom/tencent/tme/live/o/a$a;->o:Z

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/tencent/tme/live/o/a$a;->p:Z

    iput-boolean v3, p0, Lcom/tencent/tme/live/o/a$a;->q:Z

    iput-boolean v2, p0, Lcom/tencent/tme/live/o/a$a;->r:Z

    iput-boolean v2, p0, Lcom/tencent/tme/live/o/a$a;->s:Z

    iput-boolean v3, p0, Lcom/tencent/tme/live/o/a$a;->t:Z

    iput-boolean v3, p0, Lcom/tencent/tme/live/o/a$a;->u:Z

    iput v1, p0, Lcom/tencent/tme/live/o/a$a;->v:F

    iput-boolean v2, p0, Lcom/tencent/tme/live/o/a$a;->w:Z

    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iput-object v1, p0, Lcom/tencent/tme/live/o/a$a;->c:Landroid/text/TextPaint;

    iget v2, p0, Lcom/tencent/tme/live/o/a$a;->j:F

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v1}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v2, p0, Lcom/tencent/tme/live/o/a$a;->d:Landroid/text/TextPaint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/tencent/tme/live/o/a$a;->e:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/tencent/tme/live/o/a$a;->f:Landroid/graphics/Paint;

    iget v2, p0, Lcom/tencent/tme/live/o/a$a;->h:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/tencent/tme/live/o/a$a;->f:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/tencent/tme/live/o/a$a;->g:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/tencent/tme/live/o/a$a;->g:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/tme/live/n/b;Z)Landroid/text/TextPaint;
    .locals 3

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/tencent/tme/live/o/a$a;->c:Landroid/text/TextPaint;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/tencent/tme/live/o/a$a;->d:Landroid/text/TextPaint;

    iget-object v0, p0, Lcom/tencent/tme/live/o/a$a;->c:Landroid/text/TextPaint;

    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    :goto_0
    iget v0, p1, Lcom/tencent/tme/live/n/b;->h:F

    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 3
    iget-boolean v0, p0, Lcom/tencent/tme/live/o/a$a;->w:Z

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/tencent/tme/live/o/a$a;->b:Ljava/util/Map;

    iget v1, p1, Lcom/tencent/tme/live/n/b;->h:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/tencent/tme/live/o/a$a;->a:F

    iget v2, p0, Lcom/tencent/tme/live/o/a$a;->v:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_3

    :cond_2
    iget v0, p0, Lcom/tencent/tme/live/o/a$a;->v:F

    iput v0, p0, Lcom/tencent/tme/live/o/a$a;->a:F

    iget v1, p1, Lcom/tencent/tme/live/n/b;->h:F

    mul-float v1, v1, v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tme/live/o/a$a;->b:Ljava/util/Map;

    iget v2, p1, Lcom/tencent/tme/live/n/b;->h:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 4
    :goto_1
    iget-boolean v0, p0, Lcom/tencent/tme/live/o/a$a;->o:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/tencent/tme/live/o/a$a;->i:F

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-lez v2, :cond_5

    iget p1, p1, Lcom/tencent/tme/live/n/b;->g:I

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p2, v0, v1, v1, p1}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    goto :goto_3

    :cond_5
    :goto_2
    invoke-virtual {p2}, Landroid/text/TextPaint;->clearShadowLayer()V

    :goto_3
    iget-boolean p1, p0, Lcom/tencent/tme/live/o/a$a;->u:Z

    invoke-virtual {p2, p1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    return-object p2
.end method

.method public a(Lcom/tencent/tme/live/n/b;Landroid/graphics/Paint;Z)V
    .locals 1

    const v0, 0xffffff

    if-eqz p3, :cond_1

    iget-boolean p3, p0, Lcom/tencent/tme/live/o/a$a;->s:Z

    if-eqz p3, :cond_0

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    goto :goto_0

    :cond_0
    sget-object p3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    :goto_0
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget p3, p1, Lcom/tencent/tme/live/n/b;->g:I

    goto :goto_1

    :cond_1
    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget p3, p1, Lcom/tencent/tme/live/n/b;->f:I

    :goto_1
    and-int/2addr p3, v0

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget p3, p1, Lcom/tencent/tme/live/n/b;->z:I

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p1}, Lcom/tencent/tme/live/n/b;->f()I

    move-result p3

    const/4 v0, 0x7

    if-ne p3, v0, :cond_2

    .line 1
    iget p1, p1, Lcom/tencent/tme/live/n/b;->z:I

    .line 2
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_2
    return-void
.end method

.method public a(Lcom/tencent/tme/live/n/b;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/tencent/tme/live/o/a$a;->q:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/tme/live/o/a$a;->s:Z

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/tencent/tme/live/o/a$a;->j:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget p1, p1, Lcom/tencent/tme/live/n/b;->g:I

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
