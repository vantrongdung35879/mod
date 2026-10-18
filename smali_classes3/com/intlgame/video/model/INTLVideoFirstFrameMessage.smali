.class public Lcom/intlgame/video/model/INTLVideoFirstFrameMessage;
.super Lcom/intlgame/video/model/INTLVideoPlayEventMessage;
.source "INTLVideoFirstFrameMessage.java"


# instance fields
.field public bitrate:I
    .annotation runtime Lcom/intlgame/video/tools/json/JsonProp;
        value = "bitrate"
    .end annotation
.end field

.field public fps:I
    .annotation runtime Lcom/intlgame/video/tools/json/JsonProp;
        value = "fps"
    .end annotation
.end field

.field public height:I
    .annotation runtime Lcom/intlgame/video/tools/json/JsonProp;
        value = "height"
    .end annotation
.end field

.field public width:I
    .annotation runtime Lcom/intlgame/video/tools/json/JsonProp;
        value = "width"
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/intlgame/video/model/INTLVideoPlayEventMessage;-><init>(I)V

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/intlgame/video/model/INTLVideoFirstFrameMessage;->width:I

    .line 12
    iput p1, p0, Lcom/intlgame/video/model/INTLVideoFirstFrameMessage;->height:I

    .line 14
    iput p1, p0, Lcom/intlgame/video/model/INTLVideoFirstFrameMessage;->fps:I

    .line 16
    iput p1, p0, Lcom/intlgame/video/model/INTLVideoFirstFrameMessage;->bitrate:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1}, Lcom/intlgame/video/model/INTLVideoPlayEventMessage;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/intlgame/video/model/INTLVideoFirstFrameMessage;->width:I

    .line 12
    iput p1, p0, Lcom/intlgame/video/model/INTLVideoFirstFrameMessage;->height:I

    .line 14
    iput p1, p0, Lcom/intlgame/video/model/INTLVideoFirstFrameMessage;->fps:I

    .line 16
    iput p1, p0, Lcom/intlgame/video/model/INTLVideoFirstFrameMessage;->bitrate:I

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1}, Lcom/intlgame/video/model/INTLVideoPlayEventMessage;-><init>(Lorg/json/JSONObject;)V

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/intlgame/video/model/INTLVideoFirstFrameMessage;->width:I

    .line 12
    iput p1, p0, Lcom/intlgame/video/model/INTLVideoFirstFrameMessage;->height:I

    .line 14
    iput p1, p0, Lcom/intlgame/video/model/INTLVideoFirstFrameMessage;->fps:I

    .line 16
    iput p1, p0, Lcom/intlgame/video/model/INTLVideoFirstFrameMessage;->bitrate:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "INTLVideoFirstFrameMessage{width="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/intlgame/video/model/INTLVideoFirstFrameMessage;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/intlgame/video/model/INTLVideoFirstFrameMessage;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/intlgame/video/model/INTLVideoFirstFrameMessage;->fps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bitrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/intlgame/video/model/INTLVideoFirstFrameMessage;->bitrate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/intlgame/video/model/INTLVideoFirstFrameMessage;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", playerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/intlgame/video/model/INTLVideoFirstFrameMessage;->playerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
