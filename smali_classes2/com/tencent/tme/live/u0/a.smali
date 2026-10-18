.class public Lcom/tencent/tme/live/u0/a;
.super Lcom/tencent/tme/live/o/k;


# instance fields
.field public final c:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/tme/live/o/k;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/u0/a;->c:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)Landroid/graphics/Shader;
    .locals 18

    move/from16 v0, p2

    :try_start_0
    new-instance v9, Landroid/graphics/LinearGradient;

    int-to-float v4, v0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/tencent/tme/live/s2/g;->a(Ljava/lang/String;)I

    move-result v6

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v9

    :catch_0
    new-instance v1, Landroid/graphics/LinearGradient;

    int-to-float v13, v0

    sget-object v17, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/high16 v15, -0x1000000

    const/16 v16, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    return-object v1
.end method

.method public a(Lcom/tencent/tme/live/n/b;Landroid/graphics/Canvas;FF)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/tencent/tme/live/u0/a;->c:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v0, p1, Lcom/tencent/tme/live/n/b;->E:I

    const/16 v1, 0x640

    const/4 v2, 0x0

    const/high16 v3, 0x42340000    # 45.0f

    const/high16 v4, 0x40000000    # 2.0f

    packed-switch v0, :pswitch_data_0

    iget-object p1, p0, Lcom/tencent/tme/live/u0/a;->c:Landroid/graphics/Paint;

    goto/16 :goto_2

    :pswitch_0
    iget-object v0, p0, Lcom/tencent/tme/live/u0/a;->c:Landroid/graphics/Paint;

    iget v1, p1, Lcom/tencent/tme/live/n/b;->p:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/RectF;

    add-float v1, p4, v4

    iget v2, p1, Lcom/tencent/tme/live/n/b;->m:F

    add-float/2addr v2, p3

    sub-float/2addr v2, v4

    iget p1, p1, Lcom/tencent/tme/live/n/b;->n:F

    add-float/2addr p4, p1

    sub-float/2addr p4, v4

    invoke-direct {v0, p3, v1, v2, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v3, 0x0

    const/4 p1, 0x0

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/tencent/tme/live/u0/a;->c:Landroid/graphics/Paint;

    iget v1, p1, Lcom/tencent/tme/live/n/b;->m:F

    add-float/2addr v1, v4

    float-to-int v1, v1

    invoke-virtual {p0, v2, v1}, Lcom/tencent/tme/live/u0/a;->a(Ljava/lang/String;I)Landroid/graphics/Shader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/tencent/tme/live/u0/a;->c:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/RectF;

    add-float v1, p4, v4

    iget v2, p1, Lcom/tencent/tme/live/n/b;->m:F

    add-float/2addr v2, p3

    add-float/2addr v2, v4

    iget p1, p1, Lcom/tencent/tme/live/n/b;->n:F

    add-float/2addr p4, p1

    sub-float/2addr p4, v4

    invoke-direct {v0, p3, v1, v2, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/tencent/tme/live/u0/a;->c:Landroid/graphics/Paint;

    iget v1, p1, Lcom/tencent/tme/live/n/b;->m:F

    add-float/2addr v1, v4

    float-to-int v1, v1

    invoke-virtual {p0, v2, v1}, Lcom/tencent/tme/live/u0/a;->a(Ljava/lang/String;I)Landroid/graphics/Shader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance v0, Landroid/graphics/RectF;

    add-float v1, p4, v4

    iget v2, p1, Lcom/tencent/tme/live/n/b;->m:F

    add-float/2addr v2, p3

    sub-float/2addr v2, v4

    iget p1, p1, Lcom/tencent/tme/live/n/b;->n:F

    add-float/2addr p4, p1

    sub-float/2addr p4, v4

    invoke-direct {v0, p3, v1, v2, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lcom/tencent/tme/live/u0/a;->c:Landroid/graphics/Paint;

    invoke-virtual {p0, v2, v1}, Lcom/tencent/tme/live/u0/a;->a(Ljava/lang/String;I)Landroid/graphics/Shader;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    throw v2

    :pswitch_4
    iget-object v0, p0, Lcom/tencent/tme/live/u0/a;->c:Landroid/graphics/Paint;

    invoke-virtual {p0, v2, v1}, Lcom/tencent/tme/live/u0/a;->a(Ljava/lang/String;I)Landroid/graphics/Shader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance v0, Landroid/graphics/RectF;

    add-float v1, p4, v4

    iget v2, p1, Lcom/tencent/tme/live/n/b;->m:F

    add-float/2addr v2, p3

    sub-float/2addr v2, v4

    iget p1, p1, Lcom/tencent/tme/live/n/b;->n:F

    add-float/2addr p4, p1

    sub-float/2addr p4, v4

    invoke-direct {v0, p3, v1, v2, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    :goto_0
    const/high16 p1, 0x42340000    # 45.0f

    :goto_1
    iget-object p3, p0, Lcom/tencent/tme/live/u0/a;->c:Landroid/graphics/Paint;

    invoke-virtual {p2, v0, v3, p1, p3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_3

    :goto_2
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/tencent/tme/live/n/b;Landroid/text/TextPaint;Z)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/tencent/tme/live/o/k;->a(Lcom/tencent/tme/live/n/b;Landroid/text/TextPaint;Z)V

    return-void
.end method

.method public a(Lcom/tencent/tme/live/n/b;Ljava/lang/String;Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)V
    .locals 0

    return-void
.end method
