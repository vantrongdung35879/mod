.class public Lcom/ihoc/mgpa/gradish/Q0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Ljava/util/ArrayList;

.field public i:I

.field public j:I

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1
    :try_start_0
    const-string v1, "config"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ihoc/mgpa/gradish/Q0;->a:Ljava/lang/String;

    .line 2
    const-string v1, "reportDomain"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ihoc/mgpa/gradish/Q0;->b:Ljava/lang/String;

    .line 3
    const-string v1, "reportPort"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/ihoc/mgpa/gradish/Q0;->c:I

    .line 4
    const-string v1, "checkTimeout"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/ihoc/mgpa/gradish/Q0;->d:I

    .line 5
    const-string v1, "connectTimeout"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/ihoc/mgpa/gradish/Q0;->e:I

    .line 6
    const-string v1, "heartbeatInterval"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/ihoc/mgpa/gradish/Q0;->f:I

    .line 7
    const-string v1, "liveTimeInBackground"

    const/16 v2, 0x1e

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/ihoc/mgpa/gradish/Q0;->g:I

    .line 8
    const-string v1, "latencyMeasurment"

    const/16 v2, 0x78

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/ihoc/mgpa/gradish/Q0;->i:I

    .line 9
    const-string v1, "samplingCount"

    const/16 v2, 0xa

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/ihoc/mgpa/gradish/Q0;->j:I

    .line 10
    const-string/jumbo v1, "startScene"

    sget-object v2, Lcom/ihoc/mgpa/toolkit/constant/SceneID;->PLAYING:Lcom/ihoc/mgpa/toolkit/constant/SceneID;

    invoke-virtual {v2}, Lcom/ihoc/mgpa/toolkit/constant/SceneID;->getSceneID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ihoc/mgpa/gradish/Q0;->k:Ljava/lang/String;

    .line 11
    const-string/jumbo v1, "stopScene"

    sget-object v2, Lcom/ihoc/mgpa/toolkit/constant/SceneID;->MAIN_UI:Lcom/ihoc/mgpa/toolkit/constant/SceneID;

    invoke-virtual {v2}, Lcom/ihoc/mgpa/toolkit/constant/SceneID;->getSceneID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ihoc/mgpa/gradish/Q0;->l:Ljava/lang/String;

    .line 12
    const-string v1, "portList"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 14
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ihoc/mgpa/gradish/Q0;->h:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 15
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 16
    iget-object v2, p0, Lcom/ihoc/mgpa/gradish/Q0;->h:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return v0
.end method
