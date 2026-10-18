.class public Lcom/linecorp/linesdk/message/template/CarouselLayoutTemplate$CarouselColumn;
.super Ljava/lang/Object;
.source "CarouselLayoutTemplate.java"

# interfaces
.implements Lcom/linecorp/linesdk/message/Jsonable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/message/template/CarouselLayoutTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CarouselColumn"
.end annotation


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

.field private imageBackgroundColor:Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private thumbnailImageUrl:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/message/template/ClickActionForTemplateMessage;",
            ">;)V"
        }
    .end annotation

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/linecorp/linesdk/message/template/CarouselLayoutTemplate$CarouselColumn;->text:Ljava/lang/String;

    .line 89
    iput-object p2, p0, Lcom/linecorp/linesdk/message/template/CarouselLayoutTemplate$CarouselColumn;->actions:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public setDefaultAction(Lcom/linecorp/linesdk/message/template/ClickActionForTemplateMessage;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/linecorp/linesdk/message/template/CarouselLayoutTemplate$CarouselColumn;->defaultAction:Lcom/linecorp/linesdk/message/template/ClickActionForTemplateMessage;

    return-void
.end method

.method public setImageBackgroundColor(Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/linecorp/linesdk/message/template/CarouselLayoutTemplate$CarouselColumn;->imageBackgroundColor:Ljava/lang/String;

    return-void
.end method

.method public setThumbnailImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/linecorp/linesdk/message/template/CarouselLayoutTemplate$CarouselColumn;->thumbnailImageUrl:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/linecorp/linesdk/message/template/CarouselLayoutTemplate$CarouselColumn;->title:Ljava/lang/String;

    return-void
.end method

.method public toJsonObject()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 127
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 128
    const-string/jumbo v1, "text"

    iget-object v2, p0, Lcom/linecorp/linesdk/message/template/CarouselLayoutTemplate$CarouselColumn;->text:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 129
    const-string v1, "actions"

    iget-object v2, p0, Lcom/linecorp/linesdk/message/template/CarouselLayoutTemplate$CarouselColumn;->actions:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/utils/JSONUtils;->putArray(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)V

    .line 130
    const-string/jumbo v1, "thumbnailImageUrl"

    iget-object v2, p0, Lcom/linecorp/linesdk/message/template/CarouselLayoutTemplate$CarouselColumn;->thumbnailImageUrl:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 131
    const-string v1, "imageBackgroundColor"

    iget-object v2, p0, Lcom/linecorp/linesdk/message/template/CarouselLayoutTemplate$CarouselColumn;->imageBackgroundColor:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 132
    const-string/jumbo v1, "title"

    iget-object v2, p0, Lcom/linecorp/linesdk/message/template/CarouselLayoutTemplate$CarouselColumn;->title:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 133
    const-string v1, "defaultAction"

    iget-object v2, p0, Lcom/linecorp/linesdk/message/template/CarouselLayoutTemplate$CarouselColumn;->defaultAction:Lcom/linecorp/linesdk/message/template/ClickActionForTemplateMessage;

    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method
