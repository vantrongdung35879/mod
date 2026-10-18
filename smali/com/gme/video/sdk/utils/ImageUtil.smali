.class public Lcom/gme/video/sdk/utils/ImageUtil;
.super Ljava/lang/Object;
.source "ImageUtil.java"


# static fields
.field public static final COLOR_FORMAT_I420:I = 0x1

.field public static final COLOR_FORMAT_NV12:I = 0x3

.field public static final COLOR_FORMAT_NV21:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDataFromImage(Landroid/media/Image;I)[B
    .locals 20

    move/from16 v0, p1

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "only support COLOR_FormatI420 and COLOR_FormatNV21"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_1
    :goto_0
    invoke-static/range {p0 .. p0}, Lcom/gme/video/sdk/utils/ImageUtil;->isImageFormatSupported(Landroid/media/Image;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 45
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    move-result-object v4

    .line 46
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getFormat()I

    move-result v5

    .line 48
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 49
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 51
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v8

    const/4 v9, 0x0

    .line 53
    aget-object v10, v8, v9

    invoke-virtual {v10}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v10

    new-array v10, v10, [B

    mul-int v11, v6, v7

    .line 56
    invoke-static {v5}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v5

    mul-int v5, v5, v11

    div-int/lit8 v5, v5, 0x8

    new-array v5, v5, [B

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    .line 61
    :goto_1
    array-length v15, v8

    if-ge v12, v15, :cond_f

    if-eqz v12, :cond_8

    if-eq v12, v3, :cond_5

    if-eq v12, v2, :cond_2

    goto :goto_6

    :cond_2
    if-ne v0, v3, :cond_3

    int-to-double v13, v11

    const-wide/high16 v15, 0x3ff4000000000000L    # 1.25

    mul-double v13, v13, v15

    double-to-int v13, v13

    goto :goto_5

    :cond_3
    if-ne v0, v2, :cond_4

    :goto_2
    move v13, v11

    goto :goto_4

    :cond_4
    if-ne v0, v1, :cond_9

    goto :goto_3

    :cond_5
    if-ne v0, v3, :cond_6

    move v13, v11

    goto :goto_5

    :cond_6
    if-ne v0, v2, :cond_7

    :goto_3
    add-int/lit8 v13, v11, 0x1

    :goto_4
    const/4 v14, 0x2

    goto :goto_6

    :cond_7
    if-ne v0, v1, :cond_9

    goto :goto_2

    :cond_8
    const/4 v13, 0x0

    :goto_5
    const/4 v14, 0x1

    .line 95
    :cond_9
    :goto_6
    aget-object v15, v8, v12

    invoke-virtual {v15}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 97
    aget-object v16, v8, v12

    invoke-virtual/range {v16 .. v16}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v16

    .line 99
    aget-object v17, v8, v12

    invoke-virtual/range {v17 .. v17}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v1

    if-nez v12, :cond_a

    const/16 v17, 0x0

    goto :goto_7

    :cond_a
    const/16 v17, 0x1

    :goto_7
    shr-int v2, v6, v17

    shr-int v9, v7, v17

    .line 105
    iget v3, v4, Landroid/graphics/Rect;->top:I

    shr-int v3, v3, v17

    mul-int v3, v3, v16

    iget v0, v4, Landroid/graphics/Rect;->left:I

    shr-int v0, v0, v17

    mul-int v0, v0, v1

    add-int/2addr v3, v0

    invoke-virtual {v15, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v9, :cond_e

    const/4 v3, 0x1

    if-ne v1, v3, :cond_b

    if-ne v14, v3, :cond_b

    .line 110
    invoke-virtual {v15, v5, v13, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/2addr v13, v2

    move-object/from16 v18, v4

    move v4, v2

    goto :goto_a

    :cond_b
    add-int/lit8 v17, v2, -0x1

    mul-int v17, v17, v1

    move-object/from16 v18, v4

    add-int/lit8 v4, v17, 0x1

    const/4 v3, 0x0

    .line 114
    invoke-virtual {v15, v10, v3, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    :goto_9
    if-ge v3, v2, :cond_c

    mul-int v19, v3, v1

    .line 116
    aget-byte v19, v10, v19

    aput-byte v19, v5, v13

    add-int/2addr v13, v14

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_c
    :goto_a
    add-int/lit8 v3, v9, -0x1

    if-ge v0, v3, :cond_d

    .line 121
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int v3, v3, v16

    sub-int/2addr v3, v4

    invoke-virtual {v15, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_d
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v4, v18

    goto :goto_8

    :cond_e
    move-object/from16 v18, v4

    add-int/lit8 v12, v12, 0x1

    move/from16 v0, p1

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v9, 0x0

    goto/16 :goto_1

    :cond_f
    return-object v5

    .line 42
    :cond_10
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "can\'t convert Image to byte array, format "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getFormat()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isImageFormatSupported(Landroid/media/Image;)Z
    .locals 1

    .line 26
    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    move-result p0

    const/16 v0, 0x11

    if-eq p0, v0, :cond_0

    const/16 v0, 0x23

    if-eq p0, v0, :cond_0

    const v0, 0x32315659

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
