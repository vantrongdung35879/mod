.class public Lcom/itop/gcloud/msdk/popup/richtext/MSDKFontsizeSpan;
.super Landroid/text/style/RelativeSizeSpan;
.source "MSDKFontsizeSpan.java"


# instance fields
.field private final fontSize:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 12
    iput p1, p0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKFontsizeSpan;->fontSize:F

    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .line 17
    iget v0, p0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKFontsizeSpan;->fontSize:F

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 1

    .line 22
    iget v0, p0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKFontsizeSpan;->fontSize:F

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    return-void
.end method
