.class public Lcom/tencent/tme/live/framework/view/base/LinearGradientView;
.super Landroid/view/View;


# static fields
.field public static final j:I

.field public static final k:I


# instance fields
.field public a:I

.field public b:I

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:Landroid/graphics/Paint;

.field public h:Landroid/graphics/RectF;

.field public i:Landroid/graphics/LinearGradient;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "#FFFF0000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/tencent/tme/live/framework/view/base/LinearGradientView;->j:I

    const-string v0, "#00FF0000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/tencent/tme/live/framework/view/base/LinearGradientView;->k:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/tme/live/framework/view/base/LinearGradientView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/tme/live/framework/view/base/LinearGradientView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    iput p3, p0, Lcom/tencent/tme/live/framework/view/base/LinearGradientView;->c:F

    iput p3, p0, Lcom/tencent/tme/live/framework/view/base/LinearGradientView;->d:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/tencent/tme/live/framework/view/base/LinearGradientView;->e:F

    iput p3, p0, Lcom/tencent/tme/live/framework/view/base/LinearGradientView;->f:F

    if-eqz p2, :cond_0

    sget-object v1, Lcom/tencent/tme/live/biz/R$styleable;->LinearGradientView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/tencent/tme/live/biz/R$styleable;->LinearGradientView_startColor:I

    sget v1, Lcom/tencent/tme/live/framework/view/base/LinearGradientView;->j:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/tencent/tme/live/framework/view/base/LinearGradientView;->a:I

    sget p2, Lcom/tencent/tme/live/biz/R$styleable;->LinearGradientView_endColor:I

    sget v1, Lcom/tencent/tme/live/framework/view/base/LinearGradientView;->k:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/tencent/tme/live/framework/view/base/LinearGradientView;->b:I

    sget p2, Lcom/tencent/tme/live/biz/R$styleable;->LinearGradientView_startX:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/tencent/tme/live/framework/view/base/LinearGradientView;->c:F

    sget p2, Lcom/tencent/tme/live/biz/R$styleable;->LinearGradientView_startY:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/tencent/tme/live/framework/view/base/LinearGradientView;->d:F

    sget p2, Lcom/tencent/tme/live/biz/R$styleable;->LinearGradientView_endX:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/tencent/tme/live/framework/view/base/LinearGradientView;->e:F

    sget p2, Lcom/tencent/tme/live/biz/R$styleable;->LinearGradientView_endY:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/tencent/tme/live/framework/view/base/LinearGradientView;->f:F

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tme/live/framework/view/base/LinearGradientView;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/framework/view/base/LinearGradientView;->g:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/tencent/tme/live/framework/view/base/LinearGradientView;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method public a(IIFFFF)V
    .locals 0

    iput p1, p0, Lcom/tencent/tme/live/framework/view/base/LinearGradientView;->a:I

    iput p2, p0, Lcom/tencent/tme/live/framework/view/base/LinearGradientView;->b:I

    iput p3, p0, Lcom/tencent/tme/live/framework/view/base/LinearGradientView;->c:F

    iput p4, p0, Lcom/tencent/tme/live/framework/view/base/LinearGradientView;->d:F

    iput p5, p0, Lcom/tencent/tme/live/framework/view/base/LinearGradientView;->e:F

    iput p6, p0, Lcom/tencent/tme/live/framework/view/base/LinearGradientView;->f:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/tencent/tme/live/framework/view/base/LinearGradientView;->h:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/tencent/tme/live/framework/view/base/LinearGradientView;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 8

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    new-instance p3, Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 p4, 0x0

    invoke-direct {p3, p4, p4, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p3, p0, Lcom/tencent/tme/live/framework/view/base/LinearGradientView;->h:Landroid/graphics/RectF;

    iget-object p3, p0, Lcom/tencent/tme/live/framework/view/base/LinearGradientView;->i:Landroid/graphics/LinearGradient;

    if-eqz p3, :cond_0

    iget-object p1, p0, Lcom/tencent/tme/live/framework/view/base/LinearGradientView;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    :cond_0
    iget p3, p0, Lcom/tencent/tme/live/framework/view/base/LinearGradientView;->c:F

    mul-float v1, p1, p3

    iget p3, p0, Lcom/tencent/tme/live/framework/view/base/LinearGradientView;->d:F

    mul-float v2, p2, p3

    iget p3, p0, Lcom/tencent/tme/live/framework/view/base/LinearGradientView;->e:F

    mul-float v3, p1, p3

    iget p1, p0, Lcom/tencent/tme/live/framework/view/base/LinearGradientView;->f:F

    mul-float v4, p2, p1

    iget-object p1, p0, Lcom/tencent/tme/live/framework/view/base/LinearGradientView;->g:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/LinearGradient;

    iget v5, p0, Lcom/tencent/tme/live/framework/view/base/LinearGradientView;->a:I

    iget v6, p0, Lcom/tencent/tme/live/framework/view/base/LinearGradientView;->b:I

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v0, p2

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :goto_0
    return-void
.end method

.method public setLinearGradient(Landroid/graphics/LinearGradient;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/framework/view/base/LinearGradientView;->i:Landroid/graphics/LinearGradient;

    return-void
.end method
