.class public Lcom/itop/gcloud/msdk/popup/richtext/MSDKHtmlView;
.super Landroid/widget/TextView;
.source "MSDKHtmlView.java"


# instance fields
.field private imageGetter:Lcom/itop/gcloud/msdk/popup/richtext/MSDKImageGetter;

.field private wrapperContentHandler:Lcom/itop/gcloud/msdk/popup/richtext/WrapperContentHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 17
    invoke-virtual {p0}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKHtmlView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    invoke-virtual {p0}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKHtmlView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    invoke-virtual {p0}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKHtmlView;->initView()V

    return-void
.end method


# virtual methods
.method protected initView()V
    .locals 1

    .line 31
    invoke-static {}, Lcom/itop/gcloud/msdk/popup/richtext/LocalLinkMovementMethod;->getInstance()Lcom/itop/gcloud/msdk/popup/richtext/LocalLinkMovementMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKHtmlView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 32
    new-instance v0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKImageGetter;

    invoke-direct {v0, p0}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKImageGetter;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKHtmlView;->imageGetter:Lcom/itop/gcloud/msdk/popup/richtext/MSDKImageGetter;

    return-void
.end method

.method public setHTML(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 37
    invoke-virtual {p0, v0, v0}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKHtmlView;->scrollTo(II)V

    .line 39
    new-instance v0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;

    invoke-direct {v0, p0}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;-><init>(Landroid/widget/TextView;)V

    .line 40
    new-instance v1, Lcom/itop/gcloud/msdk/popup/richtext/WrapperContentHandler;

    invoke-direct {v1, v0}, Lcom/itop/gcloud/msdk/popup/richtext/WrapperContentHandler;-><init>(Lcom/itop/gcloud/msdk/popup/richtext/WrapperTagHandler;)V

    iput-object v1, p0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKHtmlView;->wrapperContentHandler:Lcom/itop/gcloud/msdk/popup/richtext/WrapperContentHandler;

    .line 41
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 42
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKHtmlView;->imageGetter:Lcom/itop/gcloud/msdk/popup/richtext/MSDKImageGetter;

    iget-object v1, p0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKHtmlView;->wrapperContentHandler:Lcom/itop/gcloud/msdk/popup/richtext/WrapperContentHandler;

    const/16 v2, 0x3f

    invoke-static {p1, v2, v0, v1}, Lcom/tencent/qimei/ab/a$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;ILandroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object p1

    goto :goto_0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKHtmlView;->imageGetter:Lcom/itop/gcloud/msdk/popup/richtext/MSDKImageGetter;

    iget-object v1, p0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKHtmlView;->wrapperContentHandler:Lcom/itop/gcloud/msdk/popup/richtext/WrapperContentHandler;

    invoke-static {p1, v0, v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object p1

    .line 46
    :goto_0
    invoke-virtual {p0, p1}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKHtmlView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
