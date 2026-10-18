.class public Lcom/linecorp/linesdk/message/template/UriAction;
.super Lcom/linecorp/linesdk/message/template/ClickActionForTemplateMessage;
.source "UriAction.java"


# instance fields
.field private label:Ljava/lang/String;

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/linecorp/linesdk/message/template/ClickActionForTemplateMessage;-><init>()V

    .line 20
    const-string/jumbo v0, "uri"

    iput-object v0, p0, Lcom/linecorp/linesdk/message/template/UriAction;->type:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/linecorp/linesdk/message/template/UriAction;->uri:Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lcom/linecorp/linesdk/message/template/UriAction;->label:Ljava/lang/String;

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

    .line 28
    invoke-super {p0}, Lcom/linecorp/linesdk/message/template/ClickActionForTemplateMessage;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 29
    const-string/jumbo v1, "uri"

    iget-object v2, p0, Lcom/linecorp/linesdk/message/template/UriAction;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    const-string v1, "label"

    iget-object v2, p0, Lcom/linecorp/linesdk/message/template/UriAction;->label:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
