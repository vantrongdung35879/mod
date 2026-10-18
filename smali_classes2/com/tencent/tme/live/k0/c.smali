.class public Lcom/tencent/tme/live/k0/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/live/k0/a;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/tencent/tme/live/f0/e;

.field public final c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/tencent/tme/live/f0/e;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    iput-object p1, p0, Lcom/tencent/tme/live/k0/c;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/tme/live/k0/c;->b:Lcom/tencent/tme/live/f0/e;

    iput p3, p0, Lcom/tencent/tme/live/k0/c;->c:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "scaleType must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "imageSize must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/graphics/Bitmap;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public a(Landroid/graphics/drawable/Drawable;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public b()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/tencent/tme/live/k0/c;->c:I

    return v0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/k0/c;->b:Lcom/tencent/tme/live/f0/e;

    .line 1
    iget v0, v0, Lcom/tencent/tme/live/f0/e;->a:I

    return v0
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/k0/c;->b:Lcom/tencent/tme/live/f0/e;

    .line 1
    iget v0, v0, Lcom/tencent/tme/live/f0/e;->b:I

    return v0
.end method

.method public getId()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/k0/c;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/k0/c;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method
