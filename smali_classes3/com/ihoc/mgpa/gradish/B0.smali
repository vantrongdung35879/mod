.class public Lcom/ihoc/mgpa/gradish/B0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:I

.field d:I

.field e:I

.field f:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/ihoc/mgpa/gradish/B0;
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Lcom/ihoc/mgpa/gradish/B0;

    invoke-direct {v1}, Lcom/ihoc/mgpa/gradish/B0;-><init>()V

    .line 2
    const-string v2, "server_ip"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ihoc/mgpa/gradish/B0;->b:Ljava/lang/String;

    .line 3
    const-string v2, "server_port"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/ihoc/mgpa/gradish/B0;->d:I

    .line 4
    const-string v2, "client_ip"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ihoc/mgpa/gradish/B0;->a:Ljava/lang/String;

    .line 5
    const-string v2, "client_port"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/ihoc/mgpa/gradish/B0;->c:I

    .line 6
    const-string v2, "protocol"

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/ihoc/mgpa/gradish/B0;->e:I

    .line 7
    const-string v2, "mode"

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/ihoc/mgpa/gradish/B0;->f:I

    .line 8
    iget-object v2, v1, Lcom/ihoc/mgpa/gradish/B0;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/ihoc/mgpa/gradish/B0;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, v1, Lcom/ihoc/mgpa/gradish/B0;->d:I

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    return-object v1

    .line 9
    :cond_1
    :goto_0
    const-string/jumbo v1, "the acc tuples data is not valid, ple check ip/port: %s"

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 14
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 1

    .line 26
    invoke-static {p0}, Lcom/ihoc/mgpa/gradish/B0;->b(Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static b(Ljava/lang/String;)I
    .locals 12

    const/16 v0, 0x2e

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ltz v1, :cond_a

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_9

    const/4 v6, 0x3

    if-ne v1, v6, :cond_0

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    goto :goto_1

    :cond_0
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p0, v0, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    :goto_1
    if-gez v7, :cond_1

    return v4

    :cond_1
    sub-int v8, v7, v3

    sub-int/2addr v8, v5

    if-lt v8, v5, :cond_8

    if-le v8, v6, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    move v6, v3

    const/4 v9, 0x0

    :goto_2
    const/16 v10, 0x30

    if-ge v6, v7, :cond_4

    .line 14
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11}, Ljava/lang/Character;->isDigit(C)Z

    move-result v11

    if-nez v11, :cond_3

    return v4

    :cond_3
    mul-int/lit8 v9, v9, 0xa

    .line 17
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v11

    sub-int/2addr v11, v10

    add-int/2addr v9, v11

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    const/16 v6, 0xff

    if-le v9, v6, :cond_5

    return v4

    :cond_5
    if-lez v9, :cond_6

    .line 22
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v10, :cond_6

    return v4

    :cond_6
    if-nez v9, :cond_7

    if-le v8, v5, :cond_7

    return v4

    :cond_7
    add-int/lit8 v1, v1, 0x1

    move v3, v7

    goto :goto_0

    :cond_8
    :goto_3
    return v4

    :cond_9
    return v5

    :cond_a
    const/4 v0, 0x0

    :goto_4
    const/16 v1, 0x8

    if-ge v0, v1, :cond_11

    const/4 v1, 0x7

    if-ne v0, v1, :cond_b

    .line 35
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_5

    :cond_b
    add-int/lit8 v1, v3, 0x1

    const/16 v6, 0x3a

    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    :goto_5
    if-gez v1, :cond_c

    return v4

    :cond_c
    sub-int v6, v1, v3

    sub-int/2addr v6, v5

    if-lt v6, v5, :cond_10

    if-le v6, v2, :cond_d

    goto :goto_6

    :cond_d
    add-int/2addr v3, v5

    if-ge v3, v1, :cond_f

    .line 43
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-nez v6, :cond_d

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    const/16 v7, 0x61

    if-gt v7, v6, :cond_e

    .line 44
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    const/16 v7, 0x66

    if-le v6, v7, :cond_d

    :cond_e
    return v4

    :cond_f
    add-int/lit8 v0, v0, 0x1

    move v3, v1

    goto :goto_4

    :cond_10
    :goto_6
    return v4

    :cond_11
    const/4 p0, 0x2

    return p0
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 3

    .line 15
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 16
    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/B0;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "client_ip"

    if-eqz v1, :cond_0

    .line 17
    :try_start_1
    invoke-static {}, Lcom/ihoc/mgpa/gradish/x1;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 19
    :cond_0
    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/B0;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    :goto_0
    const-string v1, "client_port"

    iget v2, p0, Lcom/ihoc/mgpa/gradish/B0;->c:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 22
    const-string v1, "server_ip"

    iget-object v2, p0, Lcom/ihoc/mgpa/gradish/B0;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    const-string v1, "server_port"

    iget v2, p0, Lcom/ihoc/mgpa/gradish/B0;->d:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 24
    const-string v1, "protocol"

    iget v2, p0, Lcom/ihoc/mgpa/gradish/B0;->e:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 25
    const-string v1, "mode"

    iget v2, p0, Lcom/ihoc/mgpa/gradish/B0;->f:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method
