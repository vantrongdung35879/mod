.class public Lcom/tencent/tme/live/b1/f$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/live/l0/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tme/live/b1/f;->a(Ljava/lang/String;Landroid/widget/ImageView;ZIIZLcom/tencent/tme/live/l0/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/ref/Reference;

.field public final synthetic b:I

.field public final synthetic c:Lcom/tencent/tme/live/l0/c;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Z

.field public final synthetic f:I


# direct methods
.method public constructor <init>(Ljava/lang/ref/Reference;ILcom/tencent/tme/live/l0/c;Ljava/lang/String;ZI)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/b1/f$b;->a:Ljava/lang/ref/Reference;

    iput p2, p0, Lcom/tencent/tme/live/b1/f$b;->b:I

    iput-object p3, p0, Lcom/tencent/tme/live/b1/f$b;->c:Lcom/tencent/tme/live/l0/c;

    iput-object p4, p0, Lcom/tencent/tme/live/b1/f$b;->d:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/tencent/tme/live/b1/f$b;->e:Z

    iput p6, p0, Lcom/tencent/tme/live/b1/f$b;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 6

    iget-object p1, p0, Lcom/tencent/tme/live/b1/f$b;->d:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/tme/live/b1/f$b;->a:Ljava/lang/ref/Reference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/tme/live/b1/f$b;->a:Ljava/lang/ref/Reference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_0
    if-nez p3, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/tencent/tme/live/b1/f$b;->a:Ljava/lang/ref/Reference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/tencent/tme/live/b1/f$b;->e:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/tencent/tme/live/b1/f$b;->f:I

    const/4 p2, 0x0

    invoke-static {p3, p1, p1, p2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    iget p3, p0, Lcom/tencent/tme/live/b1/f$b;->f:I

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v3, p2, p2, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v1, p2, p2, p2, p2}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    const p2, -0xbdbdbe

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p2, p3

    invoke-virtual {v1, v4, p2, p2, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v1, p1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2
    iget-object p1, p0, Lcom/tencent/tme/live/b1/f$b;->a:Ljava/lang/ref/Reference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/tencent/tme/live/b1/f$b;->a:Ljava/lang/ref/Reference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/view/View;Lcom/tencent/tme/live/f0/c;)V
    .locals 1

    iget-object p1, p0, Lcom/tencent/tme/live/b1/f$b;->a:Ljava/lang/ref/Reference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/tencent/tme/live/b1/f$b;->b:I

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/tencent/tme/live/b1/f$b;->a:Ljava/lang/ref/Reference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iget v0, p0, Lcom/tencent/tme/live/b1/f$b;->b:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    iget-object p1, p0, Lcom/tencent/tme/live/b1/f$b;->c:Lcom/tencent/tme/live/l0/c;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/tencent/tme/live/b1/f$b;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, p2, p3}, Lcom/tencent/tme/live/l0/c;->a(Ljava/lang/String;Landroid/view/View;Lcom/tencent/tme/live/f0/c;)V

    :cond_1
    return-void
.end method

.method public b(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    return-void
.end method
