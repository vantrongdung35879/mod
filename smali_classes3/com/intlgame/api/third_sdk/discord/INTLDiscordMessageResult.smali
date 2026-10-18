.class public Lcom/intlgame/api/third_sdk/discord/INTLDiscordMessageResult;
.super Lcom/intlgame/api/INTLResult;
.source "INTLDiscordMessageResult.java"


# instance fields
.field public author_:Lcom/intlgame/api/third_sdk/discord/INTLDiscordUserInfo;
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "author"
    .end annotation
.end field

.field public content_:Ljava/lang/String;
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "content"
    .end annotation
.end field

.field public editedTimestamp_:J
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "editedTimestamp"
    .end annotation
.end field

.field public is_sent_from_game_:Z
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "isSentFromGame"
    .end annotation
.end field

.field public message_id_:Ljava/lang/String;
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "messageId"
    .end annotation
.end field

.field public receiver_:Lcom/intlgame/api/third_sdk/discord/INTLDiscordUserInfo;
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "receiver"
    .end annotation
.end field

.field public sentTimestamp_:J
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "sentTimestamp"
    .end annotation
.end field

.field public type_:I
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/intlgame/api/INTLResult;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1}, Lcom/intlgame/api/INTLResult;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1}, Lcom/intlgame/api/INTLResult;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method
