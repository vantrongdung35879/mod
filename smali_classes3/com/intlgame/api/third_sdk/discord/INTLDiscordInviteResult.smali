.class public Lcom/intlgame/api/third_sdk/discord/INTLDiscordInviteResult;
.super Lcom/intlgame/api/INTLResult;
.source "INTLDiscordInviteResult.java"


# instance fields
.field public invite_type_:I
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "inviteType"
    .end annotation
.end field

.field public is_valid_:Z
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "isValid"
    .end annotation
.end field

.field public message_id_:I
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "messageId"
    .end annotation
.end field

.field public sender_:Lcom/intlgame/api/third_sdk/discord/INTLDiscordUserInfo;
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "sender"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
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

    .line 31
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

    .line 27
    invoke-direct {p0, p1}, Lcom/intlgame/api/INTLResult;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method
