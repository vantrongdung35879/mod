.class public Lcom/linecorp/linesdk/message/VideoMessage;
.super Lcom/linecorp/linesdk/message/MessageData;
.source "VideoMessage.java"


# instance fields
.field private final originalContentUrl:Ljava/lang/String;

.field private final previewImageUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/linecorp/linesdk/message/MessageData;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/linecorp/linesdk/message/VideoMessage;->originalContentUrl:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/linecorp/linesdk/message/VideoMessage;->previewImageUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getType()Lcom/linecorp/linesdk/message/Type;
    .locals 1

    .line 33
    sget-object v0, Lcom/linecorp/linesdk/message/Type;->VIDEO:Lcom/linecorp/linesdk/message/Type;

    return-object v0
.end method

.method public toJsonObject()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 39
    invoke-super {p0}, Lcom/linecorp/linesdk/message/MessageData;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 40
    const-string v1, "originalContentUrl"

    iget-object v2, p0, Lcom/linecorp/linesdk/message/VideoMessage;->originalContentUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    const-string v1, "previewImageUrl"

    iget-object v2, p0, Lcom/linecorp/linesdk/message/VideoMessage;->previewImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
