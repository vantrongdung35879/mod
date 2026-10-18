.class public Lcom/tencent/qmsp/sdk/d/b;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/qmsp/sdk/d/d$b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qmsp/sdk/d/b;->b:Landroid/content/SharedPreferences;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qmsp/sdk/d/b;->a:Ljava/util/List;

    invoke-static {}, Lcom/tencent/qmsp/sdk/app/QmspSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/qmsp/sdk/c/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/tencent/qmsp/sdk/d/d;->b:[B

    invoke-direct {p0, v2}, Lcom/tencent/qmsp/sdk/d/b;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qmsp/sdk/d/b;->b:Landroid/content/SharedPreferences;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/tencent/qmsp/sdk/app/QmspSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    goto :goto_1

    :cond_1
    const-string p1, ""

    goto :goto_2

    :cond_2
    :goto_0
    invoke-static {}, Lcom/tencent/qmsp/sdk/app/QmspSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    :goto_1
    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p1

    :goto_2
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3

    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    :goto_3
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a([B)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/tencent/qmsp/sdk/f/h;->a([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;JJ)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    const-string v1, "android"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    cmp-long p1, p2, v1

    if-ltz p1, :cond_7

    cmp-long v3, p4, v1

    if-gez v3, :cond_1

    goto :goto_0

    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    int-to-long v1, v1

    const/4 v4, 0x1

    if-nez p1, :cond_2

    if-nez v3, :cond_2

    return v4

    :cond_2
    if-nez p1, :cond_4

    if-lez v3, :cond_4

    cmp-long p1, v1, p4

    if-gtz p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0

    :cond_4
    if-lez p1, :cond_6

    if-nez v3, :cond_6

    cmp-long p1, v1, p2

    if-ltz p1, :cond_5

    const/4 v0, 0x1

    :cond_5
    return v0

    :cond_6
    if-lez p1, :cond_7

    if-lez v3, :cond_7

    cmp-long p1, v1, p2

    if-ltz p1, :cond_7

    cmp-long p1, v1, p4

    if-gtz p1, :cond_7

    const/4 v0, 0x1

    :cond_7
    :goto_0
    return v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, " "

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    return v3

    :cond_1
    invoke-static {}, Lcom/tencent/qmsp/sdk/a/c;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    return v0

    :cond_2
    if-eqz v2, :cond_4

    if-nez v1, :cond_4

    :try_start_0
    invoke-direct {p0, v4, p2}, Lcom/tencent/qmsp/sdk/d/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-gtz p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_4
    if-nez v2, :cond_6

    if-eqz v1, :cond_6

    invoke-direct {p0, v4, p1}, Lcom/tencent/qmsp/sdk/d/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_5

    const/4 v0, 0x1

    :cond_5
    return v0

    :cond_6
    if-nez v2, :cond_8

    if-nez v1, :cond_8

    invoke-direct {p0, v4, p2}, Lcom/tencent/qmsp/sdk/d/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    if-gtz p2, :cond_7

    invoke-direct {p0, v4, p1}, Lcom/tencent/qmsp/sdk/d/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz p1, :cond_7

    const/4 v0, 0x1

    :cond_7
    return v0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    :goto_1
    return v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    array-length v0, p1

    array-length v1, p2

    if-ge v0, v1, :cond_0

    array-length v0, p1

    goto :goto_0

    :cond_0
    array-length v0, p2

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_3

    aget-object v3, p1, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget-object v4, p2, v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-le v3, v4, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    if-ge v3, v4, :cond_2

    const/4 p1, -0x1

    return p1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return v1
.end method

.method private b()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/qmsp/sdk/a/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/tencent/qmsp/sdk/d/d;->a:[B

    invoke-direct {p0, v1}, Lcom/tencent/qmsp/sdk/d/b;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, " "

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    return v0

    :cond_2
    array-length v3, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v5, p1, v4

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    return v2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 17

    move-object/from16 v7, p0

    const/4 v8, 0x0

    const/4 v9, 0x1

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/tencent/qmsp/sdk/d/d;->g:[[B

    aget-object v2, v2, v8

    invoke-direct {v7, v2}, Lcom/tencent/qmsp/sdk/d/b;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    sget-object v2, Lcom/tencent/qmsp/sdk/d/d;->g:[[B

    aget-object v2, v2, v9

    invoke-direct {v7, v2}, Lcom/tencent/qmsp/sdk/d/b;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    sget-object v2, Lcom/tencent/qmsp/sdk/d/d;->g:[[B

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-direct {v7, v2}, Lcom/tencent/qmsp/sdk/d/b;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    const/4 v11, 0x0

    :goto_0
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v11, v1, :cond_3

    new-instance v12, Lcom/tencent/qmsp/sdk/d/d$b;

    invoke-direct {v12}, Lcom/tencent/qmsp/sdk/d/d$b;-><init>()V

    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    sget-object v1, Lcom/tencent/qmsp/sdk/d/d;->g:[[B

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-direct {v7, v1}, Lcom/tencent/qmsp/sdk/d/b;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v12, Lcom/tencent/qmsp/sdk/d/d$b;->a:J

    sget-object v1, Lcom/tencent/qmsp/sdk/d/d;->g:[[B

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-direct {v7, v1}, Lcom/tencent/qmsp/sdk/d/b;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v12, Lcom/tencent/qmsp/sdk/d/d$b;->b:J

    sget-object v1, Lcom/tencent/qmsp/sdk/d/d;->g:[[B

    const/4 v14, 0x7

    aget-object v1, v1, v14

    invoke-direct {v7, v1}, Lcom/tencent/qmsp/sdk/d/b;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    sget-object v1, Lcom/tencent/qmsp/sdk/d/d;->g:[[B

    const/4 v15, 0x5

    aget-object v1, v1, v15

    invoke-direct {v7, v1}, Lcom/tencent/qmsp/sdk/d/b;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/tencent/qmsp/sdk/d/d$b;->c:Ljava/lang/String;

    sget-object v1, Lcom/tencent/qmsp/sdk/d/d;->g:[[B

    const/16 v16, 0x6

    aget-object v1, v1, v16

    invoke-direct {v7, v1}, Lcom/tencent/qmsp/sdk/d/b;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/tencent/qmsp/sdk/d/d$b;->d:Ljava/lang/String;

    sget-object v1, Lcom/tencent/qmsp/sdk/d/d;->g:[[B

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-direct {v7, v1}, Lcom/tencent/qmsp/sdk/d/b;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/tencent/qmsp/sdk/d/d$b;->e:Ljava/lang/String;

    sget-object v1, Lcom/tencent/qmsp/sdk/d/d;->g:[[B

    const/16 v2, 0xf

    aget-object v1, v1, v2

    invoke-direct {v7, v1}, Lcom/tencent/qmsp/sdk/d/b;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v12, Lcom/tencent/qmsp/sdk/d/d$b;->f:J

    sget-object v1, Lcom/tencent/qmsp/sdk/d/d;->g:[[B

    const/16 v2, 0x10

    aget-object v1, v1, v2

    invoke-direct {v7, v1}, Lcom/tencent/qmsp/sdk/d/b;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v12, Lcom/tencent/qmsp/sdk/d/d$b;->g:J

    sget-object v1, Lcom/tencent/qmsp/sdk/d/d;->g:[[B

    const/16 v2, 0x12

    aget-object v1, v1, v2

    invoke-direct {v7, v1}, Lcom/tencent/qmsp/sdk/d/b;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/tencent/qmsp/sdk/d/d$b;->j:Ljava/lang/String;

    sget-object v1, Lcom/tencent/qmsp/sdk/d/d;->g:[[B

    const/16 v2, 0xa

    aget-object v1, v1, v2

    invoke-direct {v7, v1}, Lcom/tencent/qmsp/sdk/d/b;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/tencent/qmsp/sdk/d/d$b;->h:Ljava/lang/String;

    sget-object v1, Lcom/tencent/qmsp/sdk/d/d;->g:[[B

    const/16 v2, 0xb

    aget-object v1, v1, v2

    invoke-direct {v7, v1}, Lcom/tencent/qmsp/sdk/d/b;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/tencent/qmsp/sdk/d/d$b;->i:Ljava/lang/String;

    sget-object v1, Lcom/tencent/qmsp/sdk/d/d;->g:[[B

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-direct {v7, v1}, Lcom/tencent/qmsp/sdk/d/b;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/tencent/qmsp/sdk/d/d$b;->k:Ljava/lang/String;

    iget-object v2, v12, Lcom/tencent/qmsp/sdk/d/d$b;->k:Ljava/lang/String;

    iget-wide v3, v12, Lcom/tencent/qmsp/sdk/d/d$b;->f:J

    iget-wide v5, v12, Lcom/tencent/qmsp/sdk/d/d$b;->g:J

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/tencent/qmsp/sdk/d/b;->a(Ljava/lang/String;JJ)Z

    move-result v1

    iput-boolean v1, v12, Lcom/tencent/qmsp/sdk/d/d$b;->m:Z

    iget-object v1, v12, Lcom/tencent/qmsp/sdk/d/d$b;->j:Ljava/lang/String;

    invoke-direct {v7, v1}, Lcom/tencent/qmsp/sdk/d/b;->b(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v12, Lcom/tencent/qmsp/sdk/d/d$b;->n:Z

    iget-object v1, v12, Lcom/tencent/qmsp/sdk/d/d$b;->h:Ljava/lang/String;

    iget-object v2, v12, Lcom/tencent/qmsp/sdk/d/d$b;->i:Ljava/lang/String;

    invoke-direct {v7, v1, v2}, Lcom/tencent/qmsp/sdk/d/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v12, Lcom/tencent/qmsp/sdk/d/d$b;->l:Z

    sget-object v1, Lcom/tencent/qmsp/sdk/d/d;->g:[[B

    const/16 v2, 0x14

    aget-object v1, v1, v2

    invoke-direct {v7, v1}, Lcom/tencent/qmsp/sdk/d/b;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/tencent/qmsp/sdk/d/d;->g:[[B

    aget-object v1, v1, v2

    invoke-direct {v7, v1}, Lcom/tencent/qmsp/sdk/d/b;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v12, Lcom/tencent/qmsp/sdk/d/d$b;->u:I

    :cond_0
    sget-object v1, Lcom/tencent/qmsp/sdk/d/d;->g:[[B

    const/16 v2, 0xc

    aget-object v1, v1, v2

    invoke-direct {v7, v1}, Lcom/tencent/qmsp/sdk/d/b;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v4, Lcom/tencent/qmsp/sdk/d/d$a;

    invoke-direct {v4}, Lcom/tencent/qmsp/sdk/d/d$a;-><init>()V

    sget-object v5, Lcom/tencent/qmsp/sdk/d/d;->g:[[B

    aget-object v5, v5, v14

    invoke-direct {v7, v5}, Lcom/tencent/qmsp/sdk/d/b;->a([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    sget-object v5, Lcom/tencent/qmsp/sdk/d/d;->g:[[B

    const/16 v6, 0xd

    aget-object v5, v5, v6

    invoke-direct {v7, v5}, Lcom/tencent/qmsp/sdk/d/b;->a([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/tencent/qmsp/sdk/d/d$a;->d:Ljava/lang/String;

    sget-object v5, Lcom/tencent/qmsp/sdk/d/d;->g:[[B

    const/16 v6, 0xe

    aget-object v5, v5, v6

    invoke-direct {v7, v5}, Lcom/tencent/qmsp/sdk/d/b;->a([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/tencent/qmsp/sdk/d/d$a;->e:Ljava/lang/String;

    sget-object v5, Lcom/tencent/qmsp/sdk/d/d;->g:[[B

    aget-object v5, v5, v15

    invoke-direct {v7, v5}, Lcom/tencent/qmsp/sdk/d/b;->a([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/tencent/qmsp/sdk/d/d$a;->a:Ljava/lang/String;

    iget-object v5, v4, Lcom/tencent/qmsp/sdk/d/d$a;->d:Ljava/lang/String;

    iget-object v6, v4, Lcom/tencent/qmsp/sdk/d/d$a;->e:Ljava/lang/String;

    iget-object v13, v4, Lcom/tencent/qmsp/sdk/d/d$a;->a:Ljava/lang/String;

    invoke-direct {v7, v5, v6, v13}, Lcom/tencent/qmsp/sdk/d/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/tencent/qmsp/sdk/d/d$a;->f:Ljava/lang/String;

    sget-object v5, Lcom/tencent/qmsp/sdk/d/d;->g:[[B

    aget-object v5, v5, v16

    invoke-direct {v7, v5}, Lcom/tencent/qmsp/sdk/d/b;->a([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/tencent/qmsp/sdk/d/d$a;->b:Ljava/lang/String;

    sget-object v5, Lcom/tencent/qmsp/sdk/d/d;->g:[[B

    const/16 v6, 0x11

    aget-object v5, v5, v6

    invoke-direct {v7, v5}, Lcom/tencent/qmsp/sdk/d/b;->a([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/tencent/qmsp/sdk/d/d$a;->h:J

    sget-object v5, Lcom/tencent/qmsp/sdk/d/d;->g:[[B

    const/16 v6, 0x13

    aget-object v5, v5, v6

    invoke-direct {v7, v5}, Lcom/tencent/qmsp/sdk/d/b;->a([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lcom/tencent/qmsp/sdk/d/d;->g:[[B

    aget-object v5, v5, v6

    invoke-direct {v7, v5}, Lcom/tencent/qmsp/sdk/d/b;->a([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/tencent/qmsp/sdk/d/d$a;->i:Ljava/lang/String;

    :cond_1
    iget-object v3, v12, Lcom/tencent/qmsp/sdk/d/d$b;->o:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_2
    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    :cond_3
    iput-object v0, v7, Lcom/tencent/qmsp/sdk/d/b;->a:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v9

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "Qp.QPUpdate"

    const-string v1, "[SFU] parsing config error"

    invoke-static {v0, v9, v1}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    return v8
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/qmsp/sdk/d/d$b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/qmsp/sdk/d/b;->a:Ljava/util/List;

    return-object v0
.end method

.method public a(J)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/tencent/qmsp/sdk/d/d$b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/tencent/qmsp/sdk/d/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tencent/qmsp/sdk/d/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/tencent/qmsp/sdk/d/b;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/tencent/qmsp/sdk/d/b;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    iget-object v3, p0, Lcom/tencent/qmsp/sdk/d/b;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/qmsp/sdk/d/d$b;

    iget-wide v4, v3, Lcom/tencent/qmsp/sdk/d/d$b;->b:J

    cmp-long v6, v4, p1

    if-eqz v6, :cond_0

    goto :goto_4

    :cond_0
    const/4 v4, 0x0

    :goto_1
    iget-object v5, v3, Lcom/tencent/qmsp/sdk/d/d$b;->o:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const-string v6, ""

    if-ge v4, v5, :cond_1

    iget-object v5, v3, Lcom/tencent/qmsp/sdk/d/d$b;->o:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/qmsp/sdk/d/d$a;

    iget-object v7, p0, Lcom/tencent/qmsp/sdk/d/b;->b:Landroid/content/SharedPreferences;

    iget-object v8, v5, Lcom/tencent/qmsp/sdk/d/d$a;->f:Ljava/lang/String;

    invoke-interface {v7, v8, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/tencent/qmsp/sdk/d/d$a;->g:Ljava/lang/String;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_2
    iget-object v5, v3, Lcom/tencent/qmsp/sdk/d/d$b;->q:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    iget-object v5, v3, Lcom/tencent/qmsp/sdk/d/d$b;->q:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/qmsp/sdk/d/d$a;

    iget-object v7, p0, Lcom/tencent/qmsp/sdk/d/b;->b:Landroid/content/SharedPreferences;

    iget-object v8, v5, Lcom/tencent/qmsp/sdk/d/d$a;->f:Ljava/lang/String;

    invoke-interface {v7, v8, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/tencent/qmsp/sdk/d/d$a;->g:Ljava/lang/String;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_3
    iget-object v5, v3, Lcom/tencent/qmsp/sdk/d/d$b;->p:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    iget-object v5, v3, Lcom/tencent/qmsp/sdk/d/d$b;->p:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/qmsp/sdk/d/d$a;

    iget-object v7, p0, Lcom/tencent/qmsp/sdk/d/b;->b:Landroid/content/SharedPreferences;

    iget-object v8, v5, Lcom/tencent/qmsp/sdk/d/d$a;->f:Ljava/lang/String;

    invoke-interface {v7, v8, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/tencent/qmsp/sdk/d/d$a;->g:Ljava/lang/String;

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/qmsp/sdk/d/e;->a(Ljava/io/File;Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {p0, p1}, Lcom/tencent/qmsp/sdk/d/b;->c(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "[SFU] invalid sig of config: %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Qp.QPUpdate"

    invoke-static {v1, v0, p1}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    return v2
.end method
