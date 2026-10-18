.class public Lcom/tencent/qmsp/sdk/b/g;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static c:Lcom/tencent/qmsp/sdk/b/g;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/tencent/qmsp/sdk/b/f;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Qp.netImp"

    iput-object v0, p0, Lcom/tencent/qmsp/sdk/b/g;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qmsp/sdk/b/g;->b:Lcom/tencent/qmsp/sdk/b/f;

    return-void
.end method

.method static synthetic a(Lcom/tencent/qmsp/sdk/b/g;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qmsp/sdk/b/g;->a:Ljava/lang/String;

    return-object p0
.end method

.method private a(ILorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 8

    instance-of v0, p2, Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    if-nez p2, :cond_0

    goto :goto_3

    :cond_0
    const/16 v0, 0x8

    if-ne p1, v0, :cond_3

    :try_start_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v2, p1

    :try_start_1
    invoke-static/range {v2 .. v7}, Lcom/tencent/qmsp/sdk/c/f;->a(IIIILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const/16 v0, 0x11

    invoke-static {v0}, Lcom/tencent/qmsp/sdk/a/e;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object p2

    :cond_2
    :goto_0
    return-object v1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_3
    const/16 v0, 0x9

    if-ne p1, v0, :cond_6

    invoke-virtual {p0, p2}, Lcom/tencent/qmsp/sdk/b/g;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v7, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v2, p1

    :try_start_2
    invoke-static/range {v2 .. v7}, Lcom/tencent/qmsp/sdk/c/f;->a(IIIILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_1

    :cond_4
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p2

    :cond_5
    :goto_1
    return-object v1

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_3
    return-object v1
.end method

.method static synthetic a(Lcom/tencent/qmsp/sdk/b/g;ILorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/qmsp/sdk/b/g;->b(ILorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static b()Lcom/tencent/qmsp/sdk/b/g;
    .locals 2

    sget-object v0, Lcom/tencent/qmsp/sdk/b/g;->c:Lcom/tencent/qmsp/sdk/b/g;

    if-nez v0, :cond_1

    const-class v0, Lcom/tencent/qmsp/sdk/b/g;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/qmsp/sdk/b/g;->c:Lcom/tencent/qmsp/sdk/b/g;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/qmsp/sdk/b/g;

    invoke-direct {v1}, Lcom/tencent/qmsp/sdk/b/g;-><init>()V

    sput-object v1, Lcom/tencent/qmsp/sdk/b/g;->c:Lcom/tencent/qmsp/sdk/b/g;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/qmsp/sdk/b/g;->c:Lcom/tencent/qmsp/sdk/b/g;

    return-object v0
.end method

.method private b(ILorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1

    instance-of v0, p2, Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/tencent/qmsp/sdk/b/g;->a(ILorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x11

    :try_start_0
    invoke-static {v0}, Lcom/tencent/qmsp/sdk/a/e;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public a()V
    .locals 1

    new-instance v0, Lcom/tencent/qmsp/sdk/b/g$a;

    invoke-direct {v0, p0}, Lcom/tencent/qmsp/sdk/b/g$a;-><init>(Lcom/tencent/qmsp/sdk/b/g;)V

    iput-object v0, p0, Lcom/tencent/qmsp/sdk/b/g;->b:Lcom/tencent/qmsp/sdk/b/f;

    return-void
.end method

.method public a(ILjava/lang/String;ILorg/json/JSONObject;Lcom/tencent/qmsp/sdk/b/e;)V
    .locals 7

    instance-of v0, p4, Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    if-eqz p4, :cond_1

    if-eqz p5, :cond_1

    iget-object v1, p0, Lcom/tencent/qmsp/sdk/b/g;->b:Lcom/tencent/qmsp/sdk/b/f;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/tencent/qmsp/sdk/b/f;->a(ILjava/lang/String;ILorg/json/JSONObject;Lcom/tencent/qmsp/sdk/b/e;)V

    return-void

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/tencent/qmsp/sdk/b/g;->a:Ljava/lang/String;

    sget-object p2, Lcom/tencent/qmsp/sdk/f/h;->a:[B

    invoke-static {p2}, Lcom/tencent/qmsp/sdk/f/h;->a([B)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p1, p3, p2}, Lcom/tencent/qmsp/sdk/f/g;->d(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public a(Lcom/tencent/qmsp/sdk/b/f;)V
    .locals 2

    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/tencent/qmsp/sdk/b/f;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/tencent/qmsp/sdk/b/g;->b:Lcom/tencent/qmsp/sdk/b/f;

    return-void

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/tencent/qmsp/sdk/b/g;->a:Ljava/lang/String;

    sget-object v0, Lcom/tencent/qmsp/sdk/f/h;->a:[B

    invoke-static {v0}, Lcom/tencent/qmsp/sdk/f/h;->a([B)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/tencent/qmsp/sdk/f/g;->d(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
