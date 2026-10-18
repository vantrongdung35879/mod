.class public abstract Lcom/ihoc/mgpa/gradish/C0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z = false

.field private static b:Z = false

.field private static c:Lcom/ihoc/mgpa/gradish/D0; = null

.field private static d:Ljava/util/List; = null

.field private static e:I = 0x1388

.field private static f:J = 0x1eL


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private static a(Ljava/util/List;)Ljava/lang/String;
    .locals 3

    .line 30
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 31
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 32
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ihoc/mgpa/gradish/B0;

    .line 33
    invoke-virtual {v2}, Lcom/ihoc/mgpa/gradish/B0;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 35
    :cond_0
    const-string/jumbo p0, "tuples"

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 38
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Ljava/lang/String;)Ljava/util/List;
    .locals 4

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    .line 44
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 45
    const-string/jumbo p0, "tuples"

    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v2, 0x0

    .line 46
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 47
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 48
    invoke-static {v3}, Lcom/ihoc/mgpa/gradish/B0;->a(Lorg/json/JSONObject;)Lcom/ihoc/mgpa/gradish/B0;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 50
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 54
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 55
    new-array p0, v1, [Ljava/lang/Object;

    const-string/jumbo v1, "the ip/port tuples data parse exception! ple check!"

    invoke-static {v1, p0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-object v0
.end method

.method public static a(ILjava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 22
    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "report data to router failed! data is null!"

    invoke-static {p1, p0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 25
    :cond_0
    invoke-static {}, Lcom/ihoc/mgpa/gradish/C0;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 26
    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "report data to router failed! router is not connected!"

    invoke-static {p1, p0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 29
    :cond_1
    sget-object v0, Lcom/ihoc/mgpa/gradish/C0;->c:Lcom/ihoc/mgpa/gradish/D0;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/ihoc/mgpa/gradish/D0;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static a(Ljava/lang/String;I)V
    .locals 17

    .line 3
    sget-boolean v0, Lcom/ihoc/mgpa/gradish/C0;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/ihoc/mgpa/gradish/C0;->b:Z

    if-eqz v0, :cond_2

    .line 5
    sget-object v0, Lcom/ihoc/mgpa/gradish/C0;->c:Lcom/ihoc/mgpa/gradish/D0;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/ihoc/mgpa/gradish/D0;->a()I

    .line 8
    :cond_0
    invoke-static {}, Lcom/ihoc/mgpa/gradish/L;->c()Lcom/ihoc/mgpa/gradish/L;

    move-result-object v0

    iget-object v0, v0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iget-object v0, v0, Lcom/ihoc/mgpa/gradish/L$a;->x:Lcom/ihoc/mgpa/gradish/Q0;

    if-eqz v0, :cond_1

    .line 10
    new-instance v9, Lcom/ihoc/mgpa/gradish/D0;

    iget v5, v0, Lcom/ihoc/mgpa/gradish/Q0;->e:I

    iget-object v6, v0, Lcom/ihoc/mgpa/gradish/Q0;->a:Ljava/lang/String;

    iget-object v7, v0, Lcom/ihoc/mgpa/gradish/Q0;->b:Ljava/lang/String;

    iget v8, v0, Lcom/ihoc/mgpa/gradish/Q0;->c:I

    move-object v2, v9

    move-object/from16 v3, p0

    move/from16 v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/ihoc/mgpa/gradish/D0;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;I)V

    sput-object v9, Lcom/ihoc/mgpa/gradish/C0;->c:Lcom/ihoc/mgpa/gradish/D0;

    goto :goto_0

    .line 13
    :cond_1
    new-instance v0, Lcom/ihoc/mgpa/gradish/D0;

    const-string v15, ""

    const/16 v16, 0x0

    const/16 v13, 0x7d0

    const-string v14, ""

    move-object v10, v0

    move-object/from16 v11, p0

    move/from16 v12, p1

    invoke-direct/range {v10 .. v16}, Lcom/ihoc/mgpa/gradish/D0;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/ihoc/mgpa/gradish/C0;->c:Lcom/ihoc/mgpa/gradish/D0;

    .line 16
    :goto_0
    sget-object v0, Lcom/ihoc/mgpa/gradish/C0;->d:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 17
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "start to send last ip tuples to router!"

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    sget-object v0, Lcom/ihoc/mgpa/gradish/C0;->d:Ljava/util/List;

    invoke-static {v0}, Lcom/ihoc/mgpa/gradish/C0;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ihoc/mgpa/gradish/C0;->f(Ljava/lang/String;)V

    goto :goto_1

    .line 21
    :cond_2
    new-array v0, v1, [Ljava/lang/Object;

    const-string/jumbo v1, "this sdk or wifi don\'t support start acceleration !"

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private static a(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/ihoc/mgpa/gradish/C0;->b:Z

    return-void
.end method

.method public static a()Z
    .locals 1

    .line 2
    sget-boolean v0, Lcom/ihoc/mgpa/gradish/C0;->a:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/ihoc/mgpa/gradish/C0;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ihoc/mgpa/gradish/C0;->c:Lcom/ihoc/mgpa/gradish/D0;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static b()V
    .locals 9

    const/4 v0, 0x0

    .line 19
    invoke-static {v0}, Lcom/ihoc/mgpa/gradish/C0;->a(Z)V

    .line 20
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ihoc/mgpa/gradish/x1;->a(Landroid/content/Context;)V

    .line 22
    invoke-static {}, Lcom/ihoc/mgpa/gradish/x1;->a()Ljava/lang/String;

    move-result-object v1

    .line 23
    invoke-static {}, Lcom/ihoc/mgpa/gradish/x1;->b()Ljava/lang/String;

    move-result-object v2

    .line 24
    invoke-static {}, Lcom/ihoc/mgpa/gradish/x1;->a()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v2, v5, v0

    const/4 v2, 0x1

    aput-object v3, v5, v2

    .line 25
    const-string v3, "get wifi client_ip: %s , router_ip: %s"

    invoke-static {v3, v5}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const/16 v5, 0x4e29

    .line 28
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 30
    invoke-static {}, Lcom/ihoc/mgpa/gradish/L;->c()Lcom/ihoc/mgpa/gradish/L;

    move-result-object v5

    iget-object v5, v5, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iget-object v5, v5, Lcom/ihoc/mgpa/gradish/L$a;->x:Lcom/ihoc/mgpa/gradish/Q0;

    if-eqz v5, :cond_0

    .line 31
    iget-object v6, v5, Lcom/ihoc/mgpa/gradish/Q0;->h:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    .line 32
    invoke-interface {v3, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 33
    iget v6, v5, Lcom/ihoc/mgpa/gradish/Q0;->d:I

    .line 34
    iget v7, v5, Lcom/ihoc/mgpa/gradish/Q0;->f:I

    sput v7, Lcom/ihoc/mgpa/gradish/C0;->e:I

    .line 35
    iget v5, v5, Lcom/ihoc/mgpa/gradish/Q0;->g:I

    int-to-long v7, v5

    sput-wide v7, Lcom/ihoc/mgpa/gradish/C0;->f:J

    goto :goto_0

    :cond_0
    const/16 v6, 0x3e8

    .line 38
    :goto_0
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 40
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->isDebugLogOpen()Z

    move-result v8

    .line 41
    invoke-static {v1, v7, v6, v8}, Lcom/ihoc/mgpa/gradish/D0;->a(Ljava/lang/String;IIZ)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 43
    invoke-static {v2}, Lcom/ihoc/mgpa/gradish/C0;->a(Z)V

    .line 44
    new-array v3, v4, [Ljava/lang/Object;

    aput-object v1, v3, v0

    aput-object v5, v3, v2

    const-string/jumbo v0, "this router ip/port connect success, ip: %s:%d "

    invoke-static {v0, v3}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    invoke-static {v1, v7}, Lcom/ihoc/mgpa/gradish/C0;->a(Ljava/lang/String;I)V

    goto :goto_2

    .line 48
    :cond_1
    new-array v7, v4, [Ljava/lang/Object;

    aput-object v1, v7, v0

    aput-object v5, v7, v2

    const-string/jumbo v5, "this router ip/port cann\'t connect success, ip: %s:%d "

    invoke-static {v5, v7}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->startRouter:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    new-array p0, v1, [Ljava/lang/Object;

    const-string v0, "start router func is not open!"

    invoke-static {v0, p0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->print(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_0
    invoke-static {p0}, Lcom/ihoc/mgpa/gradish/C0;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    sput-object p0, Lcom/ihoc/mgpa/gradish/C0;->d:Ljava/util/List;

    .line 11
    invoke-static {}, Lcom/ihoc/mgpa/gradish/C0;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    invoke-static {}, Lcom/ihoc/mgpa/gradish/u1;->a()Lcom/ihoc/mgpa/gradish/u1;

    move-result-object v0

    .line 13
    invoke-static {p0}, Lcom/ihoc/mgpa/gradish/C0;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x7

    const-wide/16 v2, 0x0

    .line 14
    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/ihoc/mgpa/gradish/u1;->a(ILjava/lang/String;J)V

    goto :goto_0

    .line 17
    :cond_2
    new-array p0, v1, [Ljava/lang/Object;

    const-string v0, "no router is supported, just cache ip tuples!"

    invoke-static {v0, p0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 18
    :cond_3
    :goto_1
    new-array p0, v1, [Ljava/lang/Object;

    const-string/jumbo v0, "the acc tuples data format is not corrent!"

    invoke-static {v0, p0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 17
    sget-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->startRouter:Z

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-nez p0, :cond_1

    return-object v1

    .line 23
    :cond_1
    const-string v0, "WIFI_IPV4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 24
    sget-object p0, Lcom/ihoc/mgpa/gradish/x1$a;->d:Lcom/ihoc/mgpa/gradish/x1$a;

    invoke-static {p0}, Lcom/ihoc/mgpa/gradish/x1;->a(Lcom/ihoc/mgpa/gradish/x1$a;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 25
    :cond_2
    const-string v0, "WIFI_IPV6"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 26
    sget-object p0, Lcom/ihoc/mgpa/gradish/x1$a;->e:Lcom/ihoc/mgpa/gradish/x1$a;

    invoke-static {p0}, Lcom/ihoc/mgpa/gradish/x1;->a(Lcom/ihoc/mgpa/gradish/x1$a;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 27
    :cond_3
    const-string v0, "CELLULAR_IPV4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 28
    sget-object p0, Lcom/ihoc/mgpa/gradish/x1$a;->b:Lcom/ihoc/mgpa/gradish/x1$a;

    invoke-static {p0}, Lcom/ihoc/mgpa/gradish/x1;->a(Lcom/ihoc/mgpa/gradish/x1$a;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 29
    :cond_4
    const-string v0, "CELLULAR_IPV6"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 30
    sget-object p0, Lcom/ihoc/mgpa/gradish/x1$a;->c:Lcom/ihoc/mgpa/gradish/x1$a;

    invoke-static {p0}, Lcom/ihoc/mgpa/gradish/x1;->a(Lcom/ihoc/mgpa/gradish/x1$a;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    return-object v1
.end method

.method public static c()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->startRouter:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "start router is not open in cloud config!"

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->print(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_0
    invoke-static {}, Lcom/ihoc/mgpa/MGPANative;->tryLoadLibrary()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    new-array v0, v1, [Ljava/lang/Object;

    const-string/jumbo v1, "try load native so failed, ple check the so!"

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 9
    :cond_1
    invoke-static {}, Lcom/ihoc/mgpa/MGPANative;->isRouterAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 10
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "start router is not supported in this version!"

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->print(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    const/4 v0, 0x1

    .line 13
    sput-boolean v0, Lcom/ihoc/mgpa/gradish/C0;->a:Z

    .line 15
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ihoc/mgpa/gradish/w1;->a(Landroid/content/Context;)V

    .line 16
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ihoc/mgpa/gradish/w1;->b(Landroid/content/Context;)V

    return-void
.end method

.method public static d()V
    .locals 10

    .line 9
    invoke-static {}, Lcom/ihoc/mgpa/gradish/C0;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 10
    sget-boolean v0, Lcom/ihoc/mgpa/gradish/w1;->a:Z

    const-string v2, ""

    const/4 v3, 0x6

    if-eqz v0, :cond_0

    .line 11
    sget-object v0, Lcom/ihoc/mgpa/gradish/C0;->c:Lcom/ihoc/mgpa/gradish/D0;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/gradish/D0;->c()I

    .line 12
    invoke-static {}, Lcom/ihoc/mgpa/gradish/u1;->a()Lcom/ihoc/mgpa/gradish/u1;

    move-result-object v0

    sget v1, Lcom/ihoc/mgpa/gradish/C0;->e:I

    int-to-long v4, v1

    .line 13
    invoke-virtual {v0, v3, v2, v4, v5}, Lcom/ihoc/mgpa/gradish/u1;->a(ILjava/lang/String;J)V

    goto :goto_0

    .line 16
    :cond_0
    invoke-static {}, Lcom/ihoc/mgpa/gradish/w1;->a()J

    move-result-wide v4

    sget-wide v6, Lcom/ihoc/mgpa/gradish/C0;->f:J

    const-wide/16 v8, 0x3e8

    mul-long v6, v6, v8

    cmp-long v0, v4, v6

    if-lez v0, :cond_1

    .line 17
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "router keep heartbeat in background long time, stop it!"

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    invoke-static {}, Lcom/ihoc/mgpa/gradish/C0;->f()V

    goto :goto_0

    .line 20
    :cond_1
    sget-object v0, Lcom/ihoc/mgpa/gradish/C0;->c:Lcom/ihoc/mgpa/gradish/D0;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/gradish/D0;->c()I

    .line 21
    invoke-static {}, Lcom/ihoc/mgpa/gradish/u1;->a()Lcom/ihoc/mgpa/gradish/u1;

    move-result-object v0

    sget v1, Lcom/ihoc/mgpa/gradish/C0;->e:I

    int-to-long v4, v1

    .line 22
    invoke-virtual {v0, v3, v2, v4, v5}, Lcom/ihoc/mgpa/gradish/u1;->a(ILjava/lang/String;J)V

    goto :goto_0

    .line 27
    :cond_2
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "no router connector is valid, needn\'t to keep heartbeat!"

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->startRouter:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p0, :cond_1

    return-void

    .line 7
    :cond_1
    invoke-static {}, Lcom/ihoc/mgpa/gradish/u1;->a()Lcom/ihoc/mgpa/gradish/u1;

    move-result-object v0

    const/16 v1, 0xa

    const-wide/16 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/ihoc/mgpa/gradish/u1;->a(ILjava/lang/String;J)V

    return-void
.end method

.method public static e()V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->startRouter:Z

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/ihoc/mgpa/gradish/C0;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, Lcom/ihoc/mgpa/gradish/u1;->a()Lcom/ihoc/mgpa/gradish/u1;

    move-result-object v0

    .line 6
    const-string v1, ""

    const-wide/16 v2, 0x0

    const/16 v4, 0x8

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/ihoc/mgpa/gradish/u1;->a(ILjava/lang/String;J)V

    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 4

    .line 7
    sget-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->startRouter:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p0, :cond_1

    return-void

    .line 13
    :cond_1
    invoke-static {}, Lcom/ihoc/mgpa/gradish/u1;->a()Lcom/ihoc/mgpa/gradish/u1;

    move-result-object v0

    const/16 v1, 0x9

    const-wide/16 v2, 0x0

    .line 14
    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/ihoc/mgpa/gradish/u1;->a(ILjava/lang/String;J)V

    return-void
.end method

.method public static f()V
    .locals 2

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/gradish/C0;->c:Lcom/ihoc/mgpa/gradish/D0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ihoc/mgpa/gradish/D0;->a()I

    const/4 v0, 0x0

    .line 3
    sput-object v0, Lcom/ihoc/mgpa/gradish/C0;->c:Lcom/ihoc/mgpa/gradish/D0;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "no router connector need to release!"

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static f(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    .line 6
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string v3, "start to send ip tuples to router! tuples: %s"

    invoke-static {v3, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    invoke-static {}, Lcom/ihoc/mgpa/gradish/C0;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    sget-object v1, Lcom/ihoc/mgpa/gradish/C0;->c:Lcom/ihoc/mgpa/gradish/D0;

    invoke-virtual {v1}, Lcom/ihoc/mgpa/gradish/D0;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10
    sget-object v0, Lcom/ihoc/mgpa/gradish/C0;->c:Lcom/ihoc/mgpa/gradish/D0;

    invoke-virtual {v0, p0}, Lcom/ihoc/mgpa/gradish/D0;->b(Ljava/lang/String;)I

    goto :goto_0

    .line 13
    :cond_0
    sget-object v1, Lcom/ihoc/mgpa/gradish/C0;->c:Lcom/ihoc/mgpa/gradish/D0;

    invoke-virtual {v1, p0}, Lcom/ihoc/mgpa/gradish/D0;->a(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    .line 15
    sget-object p0, Lcom/ihoc/mgpa/gradish/C0;->c:Lcom/ihoc/mgpa/gradish/D0;

    invoke-virtual {p0, v0}, Lcom/ihoc/mgpa/gradish/D0;->a(Z)V

    .line 16
    invoke-static {}, Lcom/ihoc/mgpa/gradish/u1;->a()Lcom/ihoc/mgpa/gradish/u1;

    move-result-object p0

    sget v0, Lcom/ihoc/mgpa/gradish/C0;->e:I

    int-to-long v0, v0

    const/4 v2, 0x6

    .line 17
    const-string v3, ""

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/ihoc/mgpa/gradish/u1;->a(ILjava/lang/String;J)V

    goto :goto_0

    .line 19
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v2

    const-string p0, "router handshake failed, ret: %d!"

    invoke-static {p0, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method
