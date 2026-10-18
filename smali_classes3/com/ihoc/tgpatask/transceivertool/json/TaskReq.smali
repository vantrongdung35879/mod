.class public Lcom/ihoc/tgpatask/transceivertool/json/TaskReq;
.super Ljava/lang/Object;
.source "TaskReq.java"


# instance fields
.field private accesstoken:Ljava/lang/String;

.field private appid:Ljava/lang/String;

.field private gameid:Ljava/lang/String;

.field private manufacturer:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private netaccesstype:Ljava/lang/String;

.field private netprottype:Ljava/lang/String;

.field private openid:Ljava/lang/String;

.field private osType:Ljava/lang/String;

.field private osversion:Ljava/lang/String;

.field private scene:Ljava/lang/String;

.field private version:Ljava/lang/String;

.field private xid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v0

    iget-object v0, v0, Lcom/ihoc/tgpatask/TransceiverManager;->openid:Ljava/lang/String;

    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/TaskReq;->openid:Ljava/lang/String;

    .line 32
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v0

    iget-object v0, v0, Lcom/ihoc/tgpatask/TransceiverManager;->xid:Ljava/lang/String;

    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/TaskReq;->xid:Ljava/lang/String;

    .line 33
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v0

    iget-object v0, v0, Lcom/ihoc/tgpatask/TransceiverManager;->version:Ljava/lang/String;

    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/TaskReq;->version:Ljava/lang/String;

    .line 34
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v0

    iget-object v0, v0, Lcom/ihoc/tgpatask/TransceiverManager;->appid:Ljava/lang/String;

    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/TaskReq;->appid:Ljava/lang/String;

    .line 35
    const-string v0, "0"

    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/TaskReq;->gameid:Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/json/TaskReq;->scene:Ljava/lang/String;

    .line 37
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object p1

    iget-object p1, p1, Lcom/ihoc/tgpatask/TransceiverManager;->netprottype:Ljava/lang/String;

    iput-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/json/TaskReq;->netprottype:Ljava/lang/String;

    .line 38
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object p1

    iget-object p1, p1, Lcom/ihoc/tgpatask/TransceiverManager;->netaccesstype:Ljava/lang/String;

    iput-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/json/TaskReq;->netaccesstype:Ljava/lang/String;

    .line 39
    const-string p1, ""

    iput-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/json/TaskReq;->accesstoken:Ljava/lang/String;

    .line 40
    sget-object p1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/json/TaskReq;->manufacturer:Ljava/lang/String;

    .line 41
    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/report/ReportBase;->getInstance()Lcom/ihoc/tgpatask/transceivertool/report/ReportBase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ihoc/tgpatask/transceivertool/report/ReportBase;->getModel()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/json/TaskReq;->model:Ljava/lang/String;

    .line 42
    sget-object p1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/json/TaskReq;->osversion:Ljava/lang/String;

    .line 43
    const-string p1, "android"

    iput-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/json/TaskReq;->osType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public generatePostParam()Ljava/lang/String;
    .locals 3

    .line 52
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 54
    :try_start_0
    const-string/jumbo v1, "version"

    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/json/TaskReq;->version:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    const-string v1, "openid"

    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/json/TaskReq;->openid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    const-string/jumbo v1, "xid"

    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/json/TaskReq;->xid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    const-string v1, "appid"

    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/json/TaskReq;->appid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    const-string v1, "netprottype"

    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/json/TaskReq;->netprottype:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    const-string v1, "netaccesstype"

    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/json/TaskReq;->netaccesstype:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    const-string v1, "accesstoken"

    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/json/TaskReq;->accesstoken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    const-string v1, "gameid"

    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/json/TaskReq;->gameid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    const-string v1, "scene"

    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/json/TaskReq;->scene:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    const-string v1, "manufacturer"

    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/json/TaskReq;->manufacturer:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    const-string v1, "model"

    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/json/TaskReq;->model:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    const-string v1, "osversion"

    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/json/TaskReq;->osversion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    const-string v1, "ostype"

    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/json/TaskReq;->osType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 68
    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method
