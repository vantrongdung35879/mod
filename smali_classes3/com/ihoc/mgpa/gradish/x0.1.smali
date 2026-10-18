.class public Lcom/ihoc/mgpa/gradish/x0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/List;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/x0;->a:Ljava/util/List;

    .line 7
    const-string/jumbo v0, "startRecordString"

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/x0;->b:Ljava/lang/String;

    .line 9
    const-string v0, "endRecordString"

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/x0;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/x0;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Z
    .locals 4

    const-string v0, ""

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 1
    :try_start_0
    const-string/jumbo v2, "startRecordString"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ihoc/mgpa/gradish/x0;->b:Ljava/lang/String;

    .line 2
    const-string v2, "endRecordString"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/x0;->c:Ljava/lang/String;

    .line 3
    const-string v0, "registerCallbackKeys"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 5
    iget-object v2, p0, Lcom/ihoc/mgpa/gradish/x0;->a:Ljava/util/List;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return v1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/x0;->b:Ljava/lang/String;

    return-object v0
.end method
