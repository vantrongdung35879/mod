.class public Lcom/linecorp/linesdk/message/template/ImageCarouselLayoutTemplate$ImageCarouselColumn;
.super Ljava/lang/Object;
.source "ImageCarouselLayoutTemplate.java"

# interfaces
.implements Lcom/linecorp/linesdk/message/Jsonable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/message/template/ImageCarouselLayoutTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageCarouselColumn"
.end annotation


# instance fields
.field private action:Lcom/linecorp/linesdk/message/template/ClickActionForTemplateMessage;

.field private imageUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/linecorp/linesdk/message/template/ClickActionForTemplateMessage;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/linecorp/linesdk/message/template/ImageCarouselLayoutTemplate$ImageCarouselColumn;->imageUrl:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/linecorp/linesdk/message/template/ImageCarouselLayoutTemplate$ImageCarouselColumn;->action:Lcom/linecorp/linesdk/message/template/ClickActionForTemplateMessage;

    return-void
.end method


# virtual methods
.method public toJsonObject()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 47
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 48
    const-string v1, "imageUrl"

    iget-object v2, p0, Lcom/linecorp/linesdk/message/template/ImageCarouselLayoutTemplate$ImageCarouselColumn;->imageUrl:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    const-string v1, "action"

    iget-object v2, p0, Lcom/linecorp/linesdk/message/template/ImageCarouselLayoutTemplate$ImageCarouselColumn;->action:Lcom/linecorp/linesdk/message/template/ClickActionForTemplateMessage;

    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method
