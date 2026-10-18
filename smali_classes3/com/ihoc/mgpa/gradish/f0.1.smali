.class public Lcom/ihoc/mgpa/gradish/f0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final d:Ljava/lang/String;

.field private static volatile e:Lcom/ihoc/mgpa/gradish/f0;


# instance fields
.field private a:Z

.field private b:I

.field private c:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/gradish/o;->b:Ljava/lang/String;

    sput-object v0, Lcom/ihoc/mgpa/gradish/f0;->d:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    sput-object v0, Lcom/ihoc/mgpa/gradish/f0;->e:Lcom/ihoc/mgpa/gradish/f0;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/ihoc/mgpa/gradish/f0;->a:Z

    const/4 v0, -0x1

    .line 22
    iput v0, p0, Lcom/ihoc/mgpa/gradish/f0;->b:I

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/f0;->c:Ljava/util/ArrayList;

    .line 24
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/f0;->b()V

    return-void
.end method

.method static synthetic a(Lcom/ihoc/mgpa/gradish/f0;)I
    .locals 0

    .line 2
    iget p0, p0, Lcom/ihoc/mgpa/gradish/f0;->b:I

    return p0
.end method

.method static synthetic a(Lcom/ihoc/mgpa/gradish/f0;I)I
    .locals 0

    .line 3
    iput p1, p0, Lcom/ihoc/mgpa/gradish/f0;->b:I

    return p1
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/gradish/f0;->d:Ljava/lang/String;

    return-object v0
.end method

.method private a(I)V
    .locals 3

    .line 56
    sget-object v0, Lcom/ihoc/mgpa/gradish/f0;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "curr netLatency level is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isSSPFuncOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-static {}, Lcom/ihoc/mgpa/gradish/G0;->e()Lcom/ihoc/mgpa/gradish/G0;

    move-result-object v0

    sget-object v1, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->NET_LATENCY_LEVEL:Lcom/ihoc/mgpa/toolkit/constant/KogKey;

    invoke-virtual {v1}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKey()I

    move-result v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/ihoc/mgpa/gradish/G0;->b(ILjava/lang/String;)V

    goto :goto_0

    .line 60
    :cond_0
    sget-object v0, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->NET_LATENCY_LEVEL:Lcom/ihoc/mgpa/toolkit/constant/KogKey;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKey()I

    move-result v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/gradish/m1;->c(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .line 61
    sget-object v0, Lcom/ihoc/mgpa/gradish/f0;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "netLatency level config is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isSSPFuncOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-static {}, Lcom/ihoc/mgpa/gradish/G0;->e()Lcom/ihoc/mgpa/gradish/G0;

    move-result-object v0

    sget-object v1, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->NET_LATENCY_LEVEL_CONFIG:Lcom/ihoc/mgpa/toolkit/constant/KogKey;

    invoke-virtual {v1}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKey()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/ihoc/mgpa/gradish/G0;->b(ILjava/lang/String;)V

    goto :goto_0

    .line 65
    :cond_0
    sget-object v0, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->NET_LATENCY_LEVEL_CONFIG:Lcom/ihoc/mgpa/toolkit/constant/KogKey;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKey()I

    move-result v0

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/gradish/m1;->c(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private a(Z)V
    .locals 4

    .line 4
    invoke-static {}, Lcom/ihoc/mgpa/gradish/L;->c()Lcom/ihoc/mgpa/gradish/L;

    move-result-object v0

    iget-object v0, v0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iget-object v0, v0, Lcom/ihoc/mgpa/gradish/L$a;->q:Lcom/ihoc/mgpa/gradish/e0;

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/ihoc/mgpa/gradish/e0;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ihoc/mgpa/gradish/f0;->a(Ljava/lang/String;)V

    .line 10
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 11
    const-string/jumbo v2, "type"

    const-string v3, "localMonitor"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    const-string v2, "cmd"

    const-string v3, "ping"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "action"

    if-eqz p1, :cond_1

    .line 14
    :try_start_1
    const-string p1, "start"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 16
    :cond_1
    const-string/jumbo p1, "stop"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    :goto_0
    const-string p1, "name"

    const-string v2, "lynshang ping"

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 20
    const-string v2, "freq"

    invoke-virtual {v0}, Lcom/ihoc/mgpa/gradish/e0;->b()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    const-string v2, "size"

    const-string v3, "32"

    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    const-string v2, "ipList"

    invoke-virtual {v0}, Lcom/ihoc/mgpa/gradish/e0;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    const-string v2, "content"

    invoke-virtual {v0}, Lcom/ihoc/mgpa/gradish/e0;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    const-string v2, "param"

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    invoke-static {}, Lcom/ihoc/mgpa/task/TransceiverHelper;->getInstance()Lcom/ihoc/mgpa/task/TransceiverHelper;

    move-result-object p1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ihoc/mgpa/gradish/f0$a;

    invoke-direct {v2, p0, v0}, Lcom/ihoc/mgpa/gradish/f0$a;-><init>(Lcom/ihoc/mgpa/gradish/f0;Lcom/ihoc/mgpa/gradish/e0;)V

    invoke-virtual {p1, v1, v2}, Lcom/ihoc/mgpa/task/TransceiverHelper;->runLocalTaskWithCallback(Ljava/lang/String;Lcom/ihoc/mgpa/reflectinterface/ITransceiverCallback;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 55
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method static synthetic b(Lcom/ihoc/mgpa/gradish/f0;)Ljava/util/ArrayList;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/ihoc/mgpa/gradish/f0;->c:Ljava/util/ArrayList;

    return-object p0
.end method

.method private b()V
    .locals 3

    .line 3
    iget-boolean v0, p0, Lcom/ihoc/mgpa/gradish/f0;->a:Z

    const-string v1, "TransceiverHelper: TransceiverTool is available."

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/ihoc/mgpa/gradish/f0;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 8
    :try_start_0
    invoke-direct {p0, v0}, Lcom/ihoc/mgpa/gradish/f0;->a(Z)V

    const/4 v2, 0x1

    .line 9
    iput-boolean v2, p0, Lcom/ihoc/mgpa/gradish/f0;->a:Z

    .line 10
    sget-object v2, Lcom/ihoc/mgpa/gradish/f0;->d:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 12
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 13
    sget-object v1, Lcom/ihoc/mgpa/gradish/f0;->d:Ljava/lang/String;

    const-string v2, "TransceiverHelper: TransceiverTool is not available."

    invoke-static {v1, v2}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iput-boolean v0, p0, Lcom/ihoc/mgpa/gradish/f0;->a:Z

    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/ihoc/mgpa/gradish/f0;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ihoc/mgpa/gradish/f0;->a(I)V

    return-void
.end method

.method public static c()Lcom/ihoc/mgpa/gradish/f0;
    .locals 2

    .line 2
    sget-object v0, Lcom/ihoc/mgpa/gradish/f0;->e:Lcom/ihoc/mgpa/gradish/f0;

    if-nez v0, :cond_1

    .line 3
    const-class v0, Lcom/ihoc/mgpa/gradish/f0;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/ihoc/mgpa/gradish/f0;->e:Lcom/ihoc/mgpa/gradish/f0;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcom/ihoc/mgpa/gradish/f0;

    invoke-direct {v1}, Lcom/ihoc/mgpa/gradish/f0;-><init>()V

    sput-object v1, Lcom/ihoc/mgpa/gradish/f0;->e:Lcom/ihoc/mgpa/gradish/f0;

    .line 7
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 9
    :cond_1
    :goto_0
    sget-object v0, Lcom/ihoc/mgpa/gradish/f0;->e:Lcom/ihoc/mgpa/gradish/f0;

    return-object v0
.end method

.method static synthetic c(Lcom/ihoc/mgpa/gradish/f0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/f0;->d()V

    return-void
.end method

.method private d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/f0;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/f0;->c:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/ihoc/mgpa/gradish/t1;->b(Ljava/util/ArrayList;)V

    .line 3
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/f0;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method


# virtual methods
.method public e()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ihoc/mgpa/gradish/f0;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/ihoc/mgpa/gradish/f0;->a(Z)V

    .line 3
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/f0;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ihoc/mgpa/gradish/f0;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/ihoc/mgpa/gradish/f0;->a(Z)V

    .line 3
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/f0;->d()V

    :cond_0
    return-void
.end method
