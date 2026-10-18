.class public Lcom/linecorp/linesdk/message/LocationMessage;
.super Lcom/linecorp/linesdk/message/MessageData;
.source "LocationMessage.java"


# instance fields
.field private final address:Ljava/lang/String;

.field private final latitude:Ljava/lang/Double;

.field private final longitude:Ljava/lang/Double;

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/linecorp/linesdk/message/MessageData;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/linecorp/linesdk/message/LocationMessage;->title:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/linecorp/linesdk/message/LocationMessage;->address:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/linecorp/linesdk/message/LocationMessage;->latitude:Ljava/lang/Double;

    .line 39
    iput-object p4, p0, Lcom/linecorp/linesdk/message/LocationMessage;->longitude:Ljava/lang/Double;

    return-void
.end method


# virtual methods
.method public getType()Lcom/linecorp/linesdk/message/Type;
    .locals 1

    .line 45
    sget-object v0, Lcom/linecorp/linesdk/message/Type;->LOCATION:Lcom/linecorp/linesdk/message/Type;

    return-object v0
.end method

.method public toJsonObject()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 51
    invoke-super {p0}, Lcom/linecorp/linesdk/message/MessageData;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 52
    const-string/jumbo v1, "title"

    iget-object v2, p0, Lcom/linecorp/linesdk/message/LocationMessage;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    const-string v1, "address"

    iget-object v2, p0, Lcom/linecorp/linesdk/message/LocationMessage;->address:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    const-string v1, "latitude"

    iget-object v2, p0, Lcom/linecorp/linesdk/message/LocationMessage;->latitude:Ljava/lang/Double;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    const-string v1, "longitude"

    iget-object v2, p0, Lcom/linecorp/linesdk/message/LocationMessage;->longitude:Ljava/lang/Double;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
