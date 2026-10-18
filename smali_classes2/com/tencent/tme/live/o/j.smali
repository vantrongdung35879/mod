.class public Lcom/tencent/tme/live/o/j;
.super Lcom/tencent/tme/live/o/b;


# static fields
.field public static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/tme/live/o/j;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tme/live/o/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Paint;)Ljava/lang/Float;
    .locals 4

    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sget-object v1, Lcom/tencent/tme/live/o/j;->b:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    iget v2, p1, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v3, p1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v2, v3

    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->leading:F

    add-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v2
.end method

.method public a()V
    .locals 1

    sget-object v0, Lcom/tencent/tme/live/o/j;->b:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public a(Lcom/tencent/tme/live/n/b;Landroid/graphics/Canvas;FF)V
    .locals 0

    return-void
.end method

.method public a(Lcom/tencent/tme/live/n/b;Landroid/text/TextPaint;Z)V
    .locals 6

    const/4 p3, 0x0

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget-object v1, p1, Lcom/tencent/tme/live/n/b;->d:[Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/tencent/tme/live/n/b;->c:Ljava/lang/CharSequence;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p3

    invoke-virtual {p0, p2}, Lcom/tencent/tme/live/o/j;->a(Landroid/graphics/Paint;)Ljava/lang/Float;

    move-result-object v0

    :goto_0
    iput p3, p1, Lcom/tencent/tme/live/n/b;->m:F

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p1, Lcom/tencent/tme/live/n/b;->n:F

    goto :goto_2

    :cond_1
    invoke-virtual {p0, p2}, Lcom/tencent/tme/live/o/j;->a(Landroid/graphics/Paint;)Ljava/lang/Float;

    move-result-object v0

    iget-object v1, p1, Lcom/tencent/tme/live/n/b;->d:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    invoke-virtual {p2, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    invoke-static {v4, p3}, Ljava/lang/Math;->max(FF)F

    move-result p3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iput p3, p1, Lcom/tencent/tme/live/n/b;->m:F

    iget-object p2, p1, Lcom/tencent/tme/live/n/b;->d:[Ljava/lang/String;

    array-length p2, p2

    int-to-float p2, p2

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p3

    mul-float p3, p3, p2

    iput p3, p1, Lcom/tencent/tme/live/n/b;->n:F

    :goto_2
    return-void
.end method

.method public a(Lcom/tencent/tme/live/n/b;Ljava/lang/String;Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p3, p2, p4, p5, p6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/tencent/tme/live/n/b;->c:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1, p4, p5, p6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/tencent/tme/live/n/b;Ljava/lang/String;Landroid/graphics/Canvas;FFLandroid/text/TextPaint;Z)V
    .locals 0

    if-eqz p7, :cond_0

    instance-of p7, p1, Lcom/tencent/tme/live/n/n;

    if-eqz p7, :cond_0

    const/16 p7, 0xff

    invoke-virtual {p6, p7}, Landroid/text/TextPaint;->setAlpha(I)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p3, p2, p4, p5, p6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    iget-object p1, p1, Lcom/tencent/tme/live/n/b;->c:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1, p4, p5, p6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method
