.class public Lcom/tencent/tme/live/h0/c;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/tencent/tme/live/f0/e;

.field public final d:I

.field public final e:I

.field public final f:Lcom/tencent/tme/live/j0/b;

.field public final g:Ljava/lang/Object;

.field public final h:Z

.field public final i:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tme/live/f0/e;ILcom/tencent/tme/live/j0/b;Lcom/tencent/tme/live/e0/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/tme/live/h0/c;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/tme/live/h0/c;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/tme/live/h0/c;->c:Lcom/tencent/tme/live/f0/e;

    invoke-virtual {p7}, Lcom/tencent/tme/live/e0/c;->d()I

    move-result p1

    iput p1, p0, Lcom/tencent/tme/live/h0/c;->d:I

    iput p5, p0, Lcom/tencent/tme/live/h0/c;->e:I

    iput-object p6, p0, Lcom/tencent/tme/live/h0/c;->f:Lcom/tencent/tme/live/j0/b;

    invoke-virtual {p7}, Lcom/tencent/tme/live/e0/c;->c()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/tme/live/h0/c;->g:Ljava/lang/Object;

    invoke-virtual {p7}, Lcom/tencent/tme/live/e0/c;->e()Z

    move-result p1

    iput-boolean p1, p0, Lcom/tencent/tme/live/h0/c;->h:Z

    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object p1, p0, Lcom/tencent/tme/live/h0/c;->i:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {p7}, Lcom/tencent/tme/live/e0/c;->a()Landroid/graphics/BitmapFactory$Options;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/tencent/tme/live/h0/c;->a(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/BitmapFactory$Options;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/BitmapFactory$Options;)V
    .locals 2

    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    iput v0, p2, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    iget-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    iget-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    iget-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iput-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iget-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput v0, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iget-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->inScreenDensity:I

    iput v0, p2, Landroid/graphics/BitmapFactory$Options;->inScreenDensity:I

    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    iput v0, p2, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    iget-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    iput-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    sget v0, Lcom/tencent/tme/live/b/a;->a:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 1
    iget-boolean v1, p1, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    iput-boolean v1, p2, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    :cond_0
    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 2
    iget-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    iget-boolean p1, p1, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    iput-boolean p1, p2, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    :cond_1
    return-void
.end method
