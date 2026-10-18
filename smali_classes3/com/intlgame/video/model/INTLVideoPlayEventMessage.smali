.class public Lcom/intlgame/video/model/INTLVideoPlayEventMessage;
.super Lcom/intlgame/video/tools/json/JsonSerializable;
.source "INTLVideoPlayEventMessage.java"


# instance fields
.field public code:I

.field public errorCode:I
    .annotation runtime Lcom/intlgame/video/tools/json/JsonProp;
        value = "errorCode"
    .end annotation
.end field

.field public playerId:I
    .annotation runtime Lcom/intlgame/video/tools/json/JsonProp;
        value = "playerId"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Lcom/intlgame/video/tools/json/JsonSerializable;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/intlgame/video/model/INTLVideoPlayEventMessage;->code:I

    .line 12
    iput v0, p0, Lcom/intlgame/video/model/INTLVideoPlayEventMessage;->errorCode:I

    .line 14
    iput v0, p0, Lcom/intlgame/video/model/INTLVideoPlayEventMessage;->playerId:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/intlgame/video/tools/json/JsonSerializable;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/intlgame/video/model/INTLVideoPlayEventMessage;->code:I

    .line 12
    iput v0, p0, Lcom/intlgame/video/model/INTLVideoPlayEventMessage;->errorCode:I

    .line 21
    iput p1, p0, Lcom/intlgame/video/model/INTLVideoPlayEventMessage;->playerId:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1}, Lcom/intlgame/video/tools/json/JsonSerializable;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 11
    iput p1, p0, Lcom/intlgame/video/model/INTLVideoPlayEventMessage;->code:I

    .line 12
    iput p1, p0, Lcom/intlgame/video/model/INTLVideoPlayEventMessage;->errorCode:I

    .line 14
    iput p1, p0, Lcom/intlgame/video/model/INTLVideoPlayEventMessage;->playerId:I

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1}, Lcom/intlgame/video/tools/json/JsonSerializable;-><init>(Lorg/json/JSONObject;)V

    const/4 p1, 0x0

    .line 11
    iput p1, p0, Lcom/intlgame/video/model/INTLVideoPlayEventMessage;->code:I

    .line 12
    iput p1, p0, Lcom/intlgame/video/model/INTLVideoPlayEventMessage;->errorCode:I

    .line 14
    iput p1, p0, Lcom/intlgame/video/model/INTLVideoPlayEventMessage;->playerId:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "INTLVideoPlayEventMessage{errorCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/intlgame/video/model/INTLVideoPlayEventMessage;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", playerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/intlgame/video/model/INTLVideoPlayEventMessage;->playerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
