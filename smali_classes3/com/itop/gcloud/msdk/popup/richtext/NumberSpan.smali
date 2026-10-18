.class public Lcom/itop/gcloud/msdk/popup/richtext/NumberSpan;
.super Landroid/text/style/BulletSpan;
.source "NumberSpan.java"


# static fields
.field public static final STANDARD_GAP_WIDTH:I = 0xa


# instance fields
.field private final mNumber:Ljava/lang/String;

.field private final mNumberGapWidth:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/16 v0, 0xa

    .line 28
    invoke-direct {p0, v0, p1}, Lcom/itop/gcloud/msdk/popup/richtext/NumberSpan;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroid/text/style/BulletSpan;-><init>()V

    .line 23
    iput p1, p0, Lcom/itop/gcloud/msdk/popup/richtext/NumberSpan;->mNumberGapWidth:I

    .line 24
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "."

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/itop/gcloud/msdk/popup/richtext/NumberSpan;->mNumber:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 32
    invoke-direct {p0, p1}, Landroid/text/style/BulletSpan;-><init>(Landroid/os/Parcel;)V

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/itop/gcloud/msdk/popup/richtext/NumberSpan;->mNumberGapWidth:I

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/itop/gcloud/msdk/popup/richtext/NumberSpan;->mNumber:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .locals 0

    .line 51
    check-cast p8, Landroid/text/Spanned;

    invoke-interface {p8, p0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result p8

    if-ne p8, p9, :cond_1

    .line 52
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object p8

    .line 54
    sget-object p9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 56
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result p9

    if-eqz p9, :cond_0

    .line 57
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 58
    iget-object p5, p0, Lcom/itop/gcloud/msdk/popup/richtext/NumberSpan;->mNumber:Ljava/lang/String;

    add-int/2addr p3, p4

    int-to-float p3, p3

    int-to-float p4, p6

    invoke-virtual {p1, p5, p3, p4, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 59
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 61
    :cond_0
    iget-object p6, p0, Lcom/itop/gcloud/msdk/popup/richtext/NumberSpan;->mNumber:Ljava/lang/String;

    add-int/2addr p3, p4

    int-to-float p3, p3

    add-int/2addr p5, p7

    int-to-float p4, p5

    const/high16 p5, 0x40000000    # 2.0f

    div-float/2addr p4, p5

    invoke-virtual {p1, p6, p3, p4, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 64
    :goto_0
    invoke-virtual {p2, p8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_1
    return-void
.end method

.method public getLeadingMargin(Z)I
    .locals 0

    .line 44
    iget p1, p0, Lcom/itop/gcloud/msdk/popup/richtext/NumberSpan;->mNumberGapWidth:I

    add-int/lit8 p1, p1, 0x14

    return p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 38
    invoke-super {p0, p1, p2}, Landroid/text/style/BulletSpan;->writeToParcel(Landroid/os/Parcel;I)V

    .line 39
    iget p2, p0, Lcom/itop/gcloud/msdk/popup/richtext/NumberSpan;->mNumberGapWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    iget-object p2, p0, Lcom/itop/gcloud/msdk/popup/richtext/NumberSpan;->mNumber:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
