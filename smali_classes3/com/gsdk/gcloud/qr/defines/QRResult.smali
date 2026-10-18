.class public Lcom/gsdk/gcloud/qr/defines/QRResult;
.super Ljava/lang/Object;
.source "QRResult.java"


# instance fields
.field private iTag:I

.field private imagePath:Ljava/lang/String;

.field private imageType:I

.field private retCode:I


# direct methods
.method public constructor <init>(IIILjava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/gsdk/gcloud/qr/defines/QRResult;->iTag:I

    .line 13
    iput p2, p0, Lcom/gsdk/gcloud/qr/defines/QRResult;->retCode:I

    .line 14
    iput p3, p0, Lcom/gsdk/gcloud/qr/defines/QRResult;->imageType:I

    .line 15
    iput-object p4, p0, Lcom/gsdk/gcloud/qr/defines/QRResult;->imagePath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getImagePath()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/gsdk/gcloud/qr/defines/QRResult;->imagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getImageType()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/gsdk/gcloud/qr/defines/QRResult;->imageType:I

    return v0
.end method

.method public getRetCode()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/gsdk/gcloud/qr/defines/QRResult;->retCode:I

    return v0
.end method

.method public getTag()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/gsdk/gcloud/qr/defines/QRResult;->iTag:I

    return v0
.end method
