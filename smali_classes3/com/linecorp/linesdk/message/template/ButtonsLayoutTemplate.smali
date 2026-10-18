.class public Lcom/linecorp/linesdk/message/template/ButtonsLayoutTemplate;
.super Lcom/linecorp/linesdk/message/template/LayoutTemplate;
.source "ButtonsLayoutTemplate.java"


# instance fields
.field private actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/message/template/ClickActionForTemplateMessage;",
            ">;"
        }
    .end annotation
.end field

.field private defaultAction:Lcom/linecorp/linesdk/message/template/ClickActionForTemplateMessage;

.field private imageAspectRatio:Lcom/linecorp/linesdk/message/template/ImageAspectRatio;

.field private imageBackgroundColor:I

.field private imageScaleType:Lcom/linecorp/linesdk/message/template/ImageScaleType;

.field private messageSender:Lcom/linecorp/linesdk/message/MessageSender;

.field private text:Ljava/lang/String;

.field private thumbnailImageUrl:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/message/template/ClickActionForTemplateMessage;",
            ">;)V"
        }
    .end annotation

    .line 50
    sget-object v0, Lcom/linecorp/linesdk/message/template/Type;->BUTTONS:Lcom/linecorp/linesdk/message/template/Type;

    invoke-direct {p0, v0}, Lcom/linecorp/linesdk/message/template/LayoutTemplate;-><init>(Lcom/linecorp/linesdk/message/template/Type;)V

    .line 24
    sget-object v0, Lcom/linecorp/linesdk/message/template/ImageAspectRatio;->RECTANGLE:Lcom/linecorp/linesdk/message/template/ImageAspectRatio;

    iput-object v0, p0, Lcom/linecorp/linesdk/message/template/ButtonsLayoutTemplate;->imageAspectRatio:Lcom/linecorp/linesdk/message/template/ImageAspectRatio;

    .line 26
    sget-object v0, Lcom/linecorp/linesdk/message/template/ImageScaleType;->COVER:Lcom/linecorp/linesdk/message/template/ImageScaleType;

    iput-object v0, p0, Lcom/linecorp/linesdk/message/template/ButtonsLayoutTemplate;->imageScaleType:Lcom/linecorp/linesdk/message/template/ImageScaleType;

    const/4 v0, -0x1

    .line 28
    iput v0, p0, Lcom/linecorp/linesdk/message/template/ButtonsLayoutTemplate;->imageBackgroundColor:I

    .line 51
    iput-object p1, p0, Lcom/linecorp/linesdk/message/template/ButtonsLayoutTemplate;->text:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/linecorp/linesdk/message/template/ButtonsLayoutTemplate;->actions:Ljava/util/List;

    return-void
.end method

.method private getColorString(I)Ljava/lang/String;
    .locals 2

    const v0, 0xffffff

    and-int/2addr p1, v0

    .line 132
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "#%06X"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public setDefaultAction(Lcom/linecorp/linesdk/message/template/ClickActionForTemplateMessage;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/linecorp/linesdk/message/template/ButtonsLayoutTemplate;->defaultAction:Lcom/linecorp/linesdk/message/template/ClickActionForTemplateMessage;

    return-void
.end method

.method public setImageAspectRatio(Lcom/linecorp/linesdk/message/template/ImageAspectRatio;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/linecorp/linesdk/message/template/ButtonsLayoutTemplate;->imageAspectRatio:Lcom/linecorp/linesdk/message/template/ImageAspectRatio;

    return-void
.end method

.method public setImageBackgroundColor(I)V
    .locals 0

    .line 84
    iput p1, p0, Lcom/linecorp/linesdk/message/template/ButtonsLayoutTemplate;->imageBackgroundColor:I

    return-void
.end method

.method public setImageScaleType(Lcom/linecorp/linesdk/message/template/ImageScaleType;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/linecorp/linesdk/message/template/ButtonsLayoutTemplate;->imageScaleType:Lcom/linecorp/linesdk/message/template/ImageScaleType;

    return-void
.end method

.method public setMessageSender(Lcom/linecorp/linesdk/message/MessageSender;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/linecorp/linesdk/message/template/ButtonsLayoutTemplate;->messageSender:Lcom/linecorp/linesdk/message/MessageSender;

    return-void
.end method

.method public setThumbnailImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/linecorp/linesdk/message/template/ButtonsLayoutTemplate;->thumbnailImageUrl:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/linecorp/linesdk/message/template/ButtonsLayoutTemplate;->title:Ljava/lang/String;

    return-void
.end method

.method public toJsonObject()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 114
    invoke-super {p0}, Lcom/linecorp/linesdk/message/template/LayoutTemplate;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 115
    const-string/jumbo v1, "text"

    iget-object v2, p0, Lcom/linecorp/linesdk/message/template/ButtonsLayoutTemplate;->text:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 116
    const-string/jumbo v1, "thumbnailImageUrl"

    iget-object v2, p0, Lcom/linecorp/linesdk/message/template/ButtonsLayoutTemplate;->thumbnailImageUrl:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 117
    iget-object v1, p0, Lcom/linecorp/linesdk/message/template/ButtonsLayoutTemplate;->imageAspectRatio:Lcom/linecorp/linesdk/message/template/ImageAspectRatio;

    invoke-virtual {v1}, Lcom/linecorp/linesdk/message/template/ImageAspectRatio;->getServerKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "imageAspectRatio"

    invoke-static {v0, v2, v1}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 118
    iget-object v1, p0, Lcom/linecorp/linesdk/message/template/ButtonsLayoutTemplate;->imageScaleType:Lcom/linecorp/linesdk/message/template/ImageScaleType;

    invoke-virtual {v1}, Lcom/linecorp/linesdk/message/template/ImageScaleType;->getServerKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "imageSize"

    invoke-static {v0, v2, v1}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 119
    iget v1, p0, Lcom/linecorp/linesdk/message/template/ButtonsLayoutTemplate;->imageBackgroundColor:I

    invoke-direct {p0, v1}, Lcom/linecorp/linesdk/message/template/ButtonsLayoutTemplate;->getColorString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "imageBackgroundColor"

    invoke-static {v0, v2, v1}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 120
    const-string/jumbo v1, "title"

    iget-object v2, p0, Lcom/linecorp/linesdk/message/template/ButtonsLayoutTemplate;->title:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 121
    const-string v1, "defaultAction"

    iget-object v2, p0, Lcom/linecorp/linesdk/message/template/ButtonsLayoutTemplate;->defaultAction:Lcom/linecorp/linesdk/message/template/ClickActionForTemplateMessage;

    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 122
    const-string v1, "sentBy"

    iget-object v2, p0, Lcom/linecorp/linesdk/message/template/ButtonsLayoutTemplate;->messageSender:Lcom/linecorp/linesdk/message/MessageSender;

    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 123
    const-string v1, "actions"

    iget-object v2, p0, Lcom/linecorp/linesdk/message/template/ButtonsLayoutTemplate;->actions:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/utils/JSONUtils;->putArray(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method
