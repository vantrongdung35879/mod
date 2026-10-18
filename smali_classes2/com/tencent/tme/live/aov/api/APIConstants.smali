.class public Lcom/tencent/tme/live/aov/api/APIConstants;
.super Ljava/lang/Object;


# static fields
.field public static final AVAILABLE:Ljava/lang/String; = "available"

.field public static final CALL_HOST_ENGINE:Ljava/lang/String; = "callHostEngine"

.field public static final EVENT:Ljava/lang/String; = "event"

.field public static final EXIT:Ljava/lang/String; = "exit"

.field public static final INIT_OR_UPDATE:Ljava/lang/String; = "initOrUpdate"

.field public static final START:Ljava/lang/String; = "start"

.field public static final START_CALLBACK:Ljava/lang/String; = "startCallback"

.field public static final _ANDROID_ERROR_BASE:I = 0x190

.field public static final _ERROR_CREATE_TME_PROCESS_INVALID:I = 0x193

.field public static final _ERROR_ContainerIsFinished:I = 0xd4

.field public static final _ERROR_EVENT_INVALID:I = 0x2

.field public static final _ERROR_EVENT_NULL:I = 0x1

.field public static final _ERROR_GAME_SERVICE_NULL:I = 0x199

.field public static final _ERROR_INIT_UNREADY:I = 0x198

.field public static final _ERROR_INNER:I = 0x3e7

.field public static final _ERROR_MATCH_LIVE_CONFIG_CLOSED:I = 0xb

.field public static final _ERROR_NOT_GAME_PROCESS:I = 0x19a

.field public static final _ERROR_NO_REGION:I = 0x19b

.field public static final _ERROR_PARAM_INVALID:I = 0x4

.field public static final _ERROR_PARAM_LACK:I = 0x197

.field public static final _ERROR_PARAM_NULL:I = 0x3

.field public static final _ERROR_PARAM_PARSE_EXCEPTION:I = 0x5

.field public static final _ERROR_POP_INFO_NULL:I = 0xf

.field public static final _ERROR_POP_LIVE_CONFIG_CLOSED:I = 0xc

.field public static final _ERROR_POP_LIVE_TIMEOUT:I = 0xd

.field public static final _ERROR_REGION_INVALID:I = 0x19c

.field public static final _ERROR_REINIT:I = 0x6

.field public static final _ERROR_RESOURCE_PATH_INVALID:I = 0x64

.field public static final _ERROR_RESTART:I = 0x7

.field public static final _ERROR_SERVER_CONFIG_INVALID:I = 0xa

.field public static final _ERROR_SOURCETYPE_INVALID:I = 0x8

.field public static final _ERROR_START_UNMAIN:I = 0x9

.field public static final _ERROR_SYSTEM_VERSION_INVALID:I = 0x191

.field public static final _ERROR_TME_PROCESS_BINDER_EXCEPTION:I = 0x196

.field public static final _ERROR_TME_PROCESS_BINDER_INVALID:I = 0x195

.field public static final _ERROR_TME_PROCESS_CONTROLLER_NULL:I = 0x194

.field public static final _ERROR_UNITY_ACTIVITY_NULL:I = 0x192

.field public static final _ERROR_USER_INFO_NULL:I = 0xe

.field public static final _SUCCESS:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAsyncCallbackInfo(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/tencent/tme/live/aov/api/APIConstants;->getAsyncCallbackInfo(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAsyncCallbackInfo(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "liveType"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    invoke-static {p0, v0, p1}, Lcom/tencent/tme/live/aov/api/APIConstants;->getAsyncCallbackInfo(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAsyncCallbackInfo(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    :try_start_0
    const-string v0, "event"

    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "result"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
