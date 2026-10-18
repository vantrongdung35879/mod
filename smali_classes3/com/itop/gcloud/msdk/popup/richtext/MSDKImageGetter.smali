.class public Lcom/itop/gcloud/msdk/popup/richtext/MSDKImageGetter;
.super Ljava/lang/Object;
.source "MSDKImageGetter.java"

# interfaces
.implements Landroid/text/Html$ImageGetter;


# instance fields
.field private base64ImageGetter:Lcom/itop/gcloud/msdk/popup/richtext/HtmlBase64ImageGetter;

.field private httpImageGetter:Lcom/itop/gcloud/msdk/popup/richtext/HtmlHttpImageGetter;

.field private resImageGetter:Lcom/itop/gcloud/msdk/popup/richtext/HtmlResImageGetter;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/itop/gcloud/msdk/popup/richtext/HtmlResImageGetter;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itop/gcloud/msdk/popup/richtext/HtmlResImageGetter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKImageGetter;->resImageGetter:Lcom/itop/gcloud/msdk/popup/richtext/HtmlResImageGetter;

    .line 18
    new-instance v0, Lcom/itop/gcloud/msdk/popup/richtext/HtmlHttpImageGetter;

    invoke-direct {v0, p1}, Lcom/itop/gcloud/msdk/popup/richtext/HtmlHttpImageGetter;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKImageGetter;->httpImageGetter:Lcom/itop/gcloud/msdk/popup/richtext/HtmlHttpImageGetter;

    .line 19
    new-instance v0, Lcom/itop/gcloud/msdk/popup/richtext/HtmlBase64ImageGetter;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/itop/gcloud/msdk/popup/richtext/HtmlBase64ImageGetter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKImageGetter;->base64ImageGetter:Lcom/itop/gcloud/msdk/popup/richtext/HtmlBase64ImageGetter;

    return-void
.end method


# virtual methods
.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 24
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 27
    :cond_0
    invoke-static {p1}, Lcom/itop/gcloud/msdk/popup/utils/CommonUtils;->isLink(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKImageGetter;->httpImageGetter:Lcom/itop/gcloud/msdk/popup/richtext/HtmlHttpImageGetter;

    invoke-virtual {v0, p1}, Lcom/itop/gcloud/msdk/popup/richtext/HtmlHttpImageGetter;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 29
    :cond_1
    const-string v0, "data:image/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 33
    const-string v0, "data:image/(.*);base64,"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 34
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKImageGetter;->base64ImageGetter:Lcom/itop/gcloud/msdk/popup/richtext/HtmlBase64ImageGetter;

    invoke-virtual {v0, p1}, Lcom/itop/gcloud/msdk/popup/richtext/HtmlBase64ImageGetter;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 36
    :cond_2
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKImageGetter;->resImageGetter:Lcom/itop/gcloud/msdk/popup/richtext/HtmlResImageGetter;

    invoke-virtual {v0, p1}, Lcom/itop/gcloud/msdk/popup/richtext/HtmlResImageGetter;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method
