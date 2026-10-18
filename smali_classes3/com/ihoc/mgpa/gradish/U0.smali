.class public Lcom/ihoc/mgpa/gradish/U0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/HashSet;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/U0;->a:Ljava/util/HashSet;

    .line 10
    sget-object v1, Lcom/ihoc/mgpa/toolkit/constant/SceneID;->MAIN_UI:Lcom/ihoc/mgpa/toolkit/constant/SceneID;

    invoke-virtual {v1}, Lcom/ihoc/mgpa/toolkit/constant/SceneID;->getSceneID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a()Lcom/ihoc/mgpa/gradish/U0;
    .locals 1

    .line 1
    new-instance v0, Lcom/ihoc/mgpa/gradish/U0;

    invoke-direct {v0}, Lcom/ihoc/mgpa/gradish/U0;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/U0;->a:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public a(Lorg/json/JSONObject;)Z
    .locals 4

    const-string v0, "[MGPA|TaskTaskConfig]"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 2
    :try_start_0
    const-string p1, "[parse]: jsonObject is null."

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 5
    :cond_0
    const-string/jumbo v2, "taskTaskConfig"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    .line 7
    const-string p1, "[parse]: transceiverConfigObj is null."

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 10
    :cond_1
    const-string/jumbo v0, "startScene"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 12
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 13
    iget-object v2, p0, Lcom/ihoc/mgpa/gradish/U0;->a:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method
