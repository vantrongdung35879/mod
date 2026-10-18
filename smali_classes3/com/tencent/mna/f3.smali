.class public Lcom/tencent/mna/f3;
.super Ljava/lang/Object;
.source "RulesConfig.java"


# instance fields
.field public a:[Lcom/tencent/mna/p1;

.field public b:[Lcom/tencent/mna/p1;

.field public c:[Lcom/tencent/mna/p1;

.field public d:[Lcom/tencent/mna/p1;

.field public e:[Lcom/tencent/mna/p1;

.field public f:[Lcom/tencent/mna/p1;

.field public g:[Lcom/tencent/mna/p1;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    new-array v1, v0, [Lcom/tencent/mna/p1;

    iput-object v1, p0, Lcom/tencent/mna/f3;->a:[Lcom/tencent/mna/p1;

    .line 4
    new-array v1, v0, [Lcom/tencent/mna/p1;

    iput-object v1, p0, Lcom/tencent/mna/f3;->b:[Lcom/tencent/mna/p1;

    .line 5
    new-array v1, v0, [Lcom/tencent/mna/p1;

    iput-object v1, p0, Lcom/tencent/mna/f3;->c:[Lcom/tencent/mna/p1;

    .line 6
    new-array v1, v0, [Lcom/tencent/mna/p1;

    iput-object v1, p0, Lcom/tencent/mna/f3;->d:[Lcom/tencent/mna/p1;

    .line 7
    new-array v1, v0, [Lcom/tencent/mna/p1;

    iput-object v1, p0, Lcom/tencent/mna/f3;->e:[Lcom/tencent/mna/p1;

    .line 8
    new-array v1, v0, [Lcom/tencent/mna/p1;

    iput-object v1, p0, Lcom/tencent/mna/f3;->f:[Lcom/tencent/mna/p1;

    .line 9
    new-array v0, v0, [Lcom/tencent/mna/p1;

    iput-object v0, p0, Lcom/tencent/mna/f3;->g:[Lcom/tencent/mna/p1;

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/tencent/mna/f3;
    .locals 9

    .line 1
    new-instance v0, Lcom/tencent/mna/f3;

    invoke-direct {v0}, Lcom/tencent/mna/f3;-><init>()V

    .line 4
    const-string v1, "router"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    const-string v3, "export"

    invoke-virtual {p0, v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6
    const-string/jumbo v4, "terminal"

    invoke-virtual {p0, v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 7
    const-string v5, "signal"

    invoke-virtual {p0, v5, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 8
    const-string v6, "direct"

    invoke-virtual {p0, v6, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 9
    const-string v7, "network"

    invoke-virtual {p0, v7, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 10
    const-string v8, "queryRule"

    invoke-virtual {p0, v8, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 12
    invoke-static {v1}, Lcom/tencent/mna/f3;->a(Ljava/lang/String;)[Lcom/tencent/mna/p1;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mna/f3;->a:[Lcom/tencent/mna/p1;

    .line 13
    invoke-static {v3}, Lcom/tencent/mna/f3;->a(Ljava/lang/String;)[Lcom/tencent/mna/p1;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mna/f3;->b:[Lcom/tencent/mna/p1;

    .line 14
    invoke-static {v4}, Lcom/tencent/mna/f3;->a(Ljava/lang/String;)[Lcom/tencent/mna/p1;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mna/f3;->c:[Lcom/tencent/mna/p1;

    .line 15
    invoke-static {v5}, Lcom/tencent/mna/f3;->a(Ljava/lang/String;)[Lcom/tencent/mna/p1;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mna/f3;->d:[Lcom/tencent/mna/p1;

    .line 16
    invoke-static {v6}, Lcom/tencent/mna/f3;->a(Ljava/lang/String;)[Lcom/tencent/mna/p1;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mna/f3;->e:[Lcom/tencent/mna/p1;

    .line 17
    invoke-static {v7}, Lcom/tencent/mna/f3;->a(Ljava/lang/String;)[Lcom/tencent/mna/p1;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mna/f3;->f:[Lcom/tencent/mna/p1;

    .line 18
    invoke-static {p0}, Lcom/tencent/mna/f3;->a(Ljava/lang/String;)[Lcom/tencent/mna/p1;

    move-result-object p0

    iput-object p0, v0, Lcom/tencent/mna/f3;->g:[Lcom/tencent/mna/p1;

    return-object v0
.end method

.method private static a(Ljava/lang/String;)[Lcom/tencent/mna/p1;
    .locals 11

    .line 19
    const-string v0, ") error:"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "parseRules("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 20
    new-array v3, v1, [Lcom/tencent/mna/p1;

    .line 22
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v5

    new-array v3, v5, [Lcom/tencent/mna/p1;

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    add-int/lit8 v7, v6, 0x1

    .line 26
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 27
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") rule error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 28
    new-array p0, v1, [Lcom/tencent/mna/p1;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    return-object p0

    .line 31
    :cond_0
    :try_start_1
    new-instance v8, Lcom/tencent/mna/p1;

    invoke-direct {v8}, Lcom/tencent/mna/p1;-><init>()V

    aput-object v8, v3, v6

    .line 32
    iput v7, v8, Lcom/tencent/mna/p1;->a:I

    .line 33
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 34
    aget-object v9, v3, v6

    invoke-virtual {v8, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/tencent/mna/p1;->b:Ljava/lang/String;

    .line 35
    aget-object v9, v3, v6

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/tencent/mna/p1;->c:Ljava/lang/String;

    .line 36
    aget-object v6, v3, v6

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->getInt(I)I

    move-result v8

    iput v8, v6, Lcom/tencent/mna/p1;->d:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    .line 38
    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/mna/v1;->e(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    move v6, v7

    goto :goto_0

    :catch_1
    move-exception v1

    .line 42
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/v1;->e(Ljava/lang/String;)V

    :cond_1
    return-object v3
.end method
