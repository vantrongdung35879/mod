.class public final Lcom/ihoc/mgpa/gradish/L;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ihoc/mgpa/gradish/L$b;,
        Lcom/ihoc/mgpa/gradish/L$a;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String;

.field private static volatile e:Lcom/ihoc/mgpa/gradish/L;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/ihoc/mgpa/gradish/L$b;

.field public c:Lcom/ihoc/mgpa/gradish/L$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/gradish/o;->b:Ljava/lang/String;

    sput-object v0, Lcom/ihoc/mgpa/gradish/L;->d:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/ihoc/mgpa/gradish/L$b;

    invoke-direct {v0}, Lcom/ihoc/mgpa/gradish/L$b;-><init>()V

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    .line 3
    new-instance v0, Lcom/ihoc/mgpa/gradish/L$a;

    invoke-direct {v0}, Lcom/ihoc/mgpa/gradish/L$a;-><init>()V

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    return-void
.end method

.method public static c()Lcom/ihoc/mgpa/gradish/L;
    .locals 2

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/gradish/L;->e:Lcom/ihoc/mgpa/gradish/L;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/ihoc/mgpa/gradish/L;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/ihoc/mgpa/gradish/L;->e:Lcom/ihoc/mgpa/gradish/L;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/ihoc/mgpa/gradish/L;

    invoke-direct {v1}, Lcom/ihoc/mgpa/gradish/L;-><init>()V

    sput-object v1, Lcom/ihoc/mgpa/gradish/L;->e:Lcom/ihoc/mgpa/gradish/L;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Lcom/ihoc/mgpa/gradish/L;->e:Lcom/ihoc/mgpa/gradish/L;

    return-object v0
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)I
    .locals 12

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 15
    :cond_0
    const-string/jumbo v0, "switch"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 16
    const-string v1, "config"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 17
    const-string/jumbo v2, "version"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 p1, -0x2

    return p1

    :cond_1
    if-nez v1, :cond_2

    const/4 p1, -0x3

    return p1

    .line 27
    :cond_2
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    const-string v2, "globalSwitch"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p1, Lcom/ihoc/mgpa/gradish/L$b;->a:Z

    .line 28
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    const-string v2, "debugMode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p1, Lcom/ihoc/mgpa/gradish/L$b;->b:Z

    .line 29
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    const-string v2, "logUpload"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p1, Lcom/ihoc/mgpa/gradish/L$b;->c:Z

    .line 30
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    const-string v2, "reportAll"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p1, Lcom/ihoc/mgpa/gradish/L$b;->d:Z

    .line 31
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    const-string v2, "registerCallback"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p1, Lcom/ihoc/mgpa/gradish/L$b;->e:Z

    .line 32
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    const-string v2, "checkCpuCoreLock"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p1, Lcom/ihoc/mgpa/gradish/L$b;->f:Z

    .line 33
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    const-string v2, "heavyThreadBind"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p1, Lcom/ihoc/mgpa/gradish/L$b;->g:Z

    .line 34
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    const-string v2, "lightThreadBind"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p1, Lcom/ihoc/mgpa/gradish/L$b;->h:Z

    .line 35
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    const-string v2, "cpuApply"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p1, Lcom/ihoc/mgpa/gradish/L$b;->i:Z

    .line 36
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    const-string v2, "gpuApply"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p1, Lcom/ihoc/mgpa/gradish/L$b;->j:Z

    .line 37
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    const-string v2, "netLatency"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p1, Lcom/ihoc/mgpa/gradish/L$b;->k:Z

    .line 38
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    const-string v2, "screenUser"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p1, Lcom/ihoc/mgpa/gradish/L$b;->l:Z

    .line 39
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    const-string v2, "preTransceiver"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p1, Lcom/ihoc/mgpa/gradish/L$b;->m:Z

    .line 40
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    const-string/jumbo v2, "transceiver"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p1, Lcom/ihoc/mgpa/gradish/L$b;->n:Z

    .line 41
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    const-string/jumbo v2, "transceiverSignalpipe"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p1, Lcom/ihoc/mgpa/gradish/L$b;->o:Z

    .line 42
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    const-string/jumbo v2, "transceiverLocalTapd"

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p1, Lcom/ihoc/mgpa/gradish/L$b;->p:Z

    .line 43
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    const-string v2, "deviceCheck"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p1, Lcom/ihoc/mgpa/gradish/L$b;->q:Z

    .line 44
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    const-string v2, "deviceInfoReport"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p1, Lcom/ihoc/mgpa/gradish/L$b;->r:Z

    .line 45
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    const-string v2, "romVersionReport"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p1, Lcom/ihoc/mgpa/gradish/L$b;->s:Z

    .line 46
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    const-string v2, "preDownload"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p1, Lcom/ihoc/mgpa/gradish/L$b;->t:Z

    .line 47
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    const-string v2, "sceneToVendor"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p1, Lcom/ihoc/mgpa/gradish/L$b;->u:Z

    .line 48
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    const-string v2, "sceneTransform"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p1, Lcom/ihoc/mgpa/gradish/L$b;->v:Z

    .line 49
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    const-string v2, "sceneType"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p1, Lcom/ihoc/mgpa/gradish/L$b;->w:Z

    .line 50
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    const-string v2, "optCfg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p1, Lcom/ihoc/mgpa/gradish/L$b;->x:Z

    .line 51
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    const-string v2, "spa"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p1, Lcom/ihoc/mgpa/gradish/L$b;->y:Z

    .line 52
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    const-string v2, "spaReport"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p1, Lcom/ihoc/mgpa/gradish/L$b;->z:Z

    .line 53
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    const-string v2, "fpsStrategy"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p1, Lcom/ihoc/mgpa/gradish/L$b;->A:Z

    .line 54
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    const-string v2, "notchProbe"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p1, Lcom/ihoc/mgpa/gradish/L$b;->B:Z

    .line 55
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    const-string/jumbo v2, "vendorUniqueIdReport"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p1, Lcom/ihoc/mgpa/gradish/L$b;->C:Z

    .line 56
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    const-string/jumbo v2, "uniqueIdReport"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p1, Lcom/ihoc/mgpa/gradish/L$b;->D:Z

    .line 57
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    const-string v2, "safeUniqueIdReport"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p1, Lcom/ihoc/mgpa/gradish/L$b;->E:Z

    .line 58
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    const-string v2, "l1IdReport"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p1, Lcom/ihoc/mgpa/gradish/L$b;->F:Z

    .line 59
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    const-string v2, "l2IdReport"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p1, Lcom/ihoc/mgpa/gradish/L$b;->G:Z

    .line 60
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    const-string/jumbo v2, "xidUpdate"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p1, Lcom/ihoc/mgpa/gradish/L$b;->H:Z

    .line 61
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    const-string/jumbo v2, "vendorOAIDReport"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p1, Lcom/ihoc/mgpa/gradish/L$b;->I:Z

    .line 62
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    const-string v2, "debugIdReport"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p1, Lcom/ihoc/mgpa/gradish/L$b;->J:Z

    .line 63
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    const-string v2, "liveIdReport"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p1, Lcom/ihoc/mgpa/gradish/L$b;->K:Z

    .line 64
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    const-string v2, "predownFileCheck"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p1, Lcom/ihoc/mgpa/gradish/L$b;->L:Z

    .line 65
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    const-string/jumbo v2, "threadAffinity"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p1, Lcom/ihoc/mgpa/gradish/L$b;->M:Z

    .line 66
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    const-string v2, "commonHaptic"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p1, Lcom/ihoc/mgpa/gradish/L$b;->N:Z

    .line 67
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    const-string v2, "richTap"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p1, Lcom/ihoc/mgpa/gradish/L$b;->O:Z

    .line 68
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    const-string/jumbo v2, "useNoneRichTap"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p1, Lcom/ihoc/mgpa/gradish/L$b;->P:Z

    .line 69
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    const-string/jumbo v2, "turingShield"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p1, Lcom/ihoc/mgpa/gradish/L$b;->Q:Z

    .line 70
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    const-string v2, "netLatencyProbe"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p1, Lcom/ihoc/mgpa/gradish/L$b;->R:Z

    .line 71
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    const-string v2, "reportException"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p1, Lcom/ihoc/mgpa/gradish/L$b;->S:Z

    .line 72
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    const-string v2, "dataForward"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p1, Lcom/ihoc/mgpa/gradish/L$b;->T:Z

    .line 73
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    const-string v2, "backgroundDownload"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p1, Lcom/ihoc/mgpa/gradish/L$b;->U:Z

    .line 74
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    const-string v2, "bgCloseNotifyInFore"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p1, Lcom/ihoc/mgpa/gradish/L$b;->V:Z

    .line 75
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    const-string v2, "bgPreDownload"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p1, Lcom/ihoc/mgpa/gradish/L$b;->W:Z

    .line 76
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    const-string v2, "bgPreDownloadHotfix"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p1, Lcom/ihoc/mgpa/gradish/L$b;->X:Z

    .line 77
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    const-string v2, "isAutoCopyPreFile"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p1, Lcom/ihoc/mgpa/gradish/L$b;->Y:Z

    .line 78
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    const-string v2, "samplingEventReport"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p1, Lcom/ihoc/mgpa/gradish/L$b;->Z:Z

    .line 79
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    const-string/jumbo v2, "startRouter"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p1, Lcom/ihoc/mgpa/gradish/L$b;->a0:Z

    .line 80
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    const-string/jumbo v5, "startRouterReport"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p1, Lcom/ihoc/mgpa/gradish/L$b;->b0:Z

    .line 81
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    const-string v5, "localWifiOptimize"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p1, Lcom/ihoc/mgpa/gradish/L$b;->c0:Z

    .line 82
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    const-string/jumbo v5, "wifiUpLinkOptimize"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p1, Lcom/ihoc/mgpa/gradish/L$b;->d0:Z

    .line 83
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    const-string v5, "netSmartSelect"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p1, Lcom/ihoc/mgpa/gradish/L$b;->e0:Z

    .line 84
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    const-string v5, "recordScreen"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p1, Lcom/ihoc/mgpa/gradish/L$b;->f0:Z

    .line 85
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    const-string/jumbo v5, "thermalMonitor"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p1, Lcom/ihoc/mgpa/gradish/L$b;->h0:Z

    .line 86
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    const-string v5, "gameAdaption"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p1, Lcom/ihoc/mgpa/gradish/L$b;->i0:Z

    .line 87
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    const-string v6, "keepAlive"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p1, Lcom/ihoc/mgpa/gradish/L$b;->j0:Z

    .line 88
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    const-string v6, "frameInterpolation"

    invoke-virtual {v0, v6, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p1, Lcom/ihoc/mgpa/gradish/L$b;->k0:Z

    .line 89
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    const-string/jumbo v6, "superResolution"

    invoke-virtual {v0, v6, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p1, Lcom/ihoc/mgpa/gradish/L$b;->l0:Z

    .line 90
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    const-string v6, "bilink"

    invoke-virtual {v0, v6, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p1, Lcom/ihoc/mgpa/gradish/L$b;->m0:Z

    .line 91
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    const-string v6, "foldScreenSupport"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Lcom/ihoc/mgpa/gradish/L$b;->p0:Z

    .line 94
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    iget-boolean v0, p1, Lcom/ihoc/mgpa/gradish/L$b;->a:Z

    sput-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->globalSwitch:Z

    .line 95
    iget-boolean v0, p1, Lcom/ihoc/mgpa/gradish/L$b;->b:Z

    sput-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->debugMode:Z

    .line 96
    iget-boolean v0, p1, Lcom/ihoc/mgpa/gradish/L$b;->c:Z

    sput-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->logUpload:Z

    .line 97
    iget-boolean v0, p1, Lcom/ihoc/mgpa/gradish/L$b;->d:Z

    sput-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->reportAll:Z

    .line 98
    iget-boolean v0, p1, Lcom/ihoc/mgpa/gradish/L$b;->e:Z

    sput-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->registerCallback:Z

    .line 99
    iget-boolean v0, p1, Lcom/ihoc/mgpa/gradish/L$b;->f:Z

    sput-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->checkCpuCoreLock:Z

    .line 100
    iget-boolean v0, p1, Lcom/ihoc/mgpa/gradish/L$b;->g:Z

    sput-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->heavyThreadBind:Z

    .line 101
    iget-boolean v0, p1, Lcom/ihoc/mgpa/gradish/L$b;->h:Z

    sput-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->lightThreadBind:Z

    .line 102
    iget-boolean v0, p1, Lcom/ihoc/mgpa/gradish/L$b;->i:Z

    sput-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->cpuApply:Z

    .line 103
    iget-boolean v0, p1, Lcom/ihoc/mgpa/gradish/L$b;->j:Z

    sput-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->gpuApply:Z

    .line 104
    iget-boolean v0, p1, Lcom/ihoc/mgpa/gradish/L$b;->k:Z

    sput-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->netLatency:Z

    .line 105
    iget-boolean v0, p1, Lcom/ihoc/mgpa/gradish/L$b;->l:Z

    sput-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->screenUser:Z

    .line 106
    iget-boolean v0, p1, Lcom/ihoc/mgpa/gradish/L$b;->m:Z

    sput-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->preTransceiver:Z

    .line 107
    iget-boolean v0, p1, Lcom/ihoc/mgpa/gradish/L$b;->n:Z

    sput-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->transceiver:Z

    .line 108
    iget-boolean v0, p1, Lcom/ihoc/mgpa/gradish/L$b;->o:Z

    sput-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->transceiverSignalpipe:Z

    .line 109
    iget-boolean v0, p1, Lcom/ihoc/mgpa/gradish/L$b;->q:Z

    sput-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->deviceCheck:Z

    .line 110
    iget-boolean v0, p1, Lcom/ihoc/mgpa/gradish/L$b;->r:Z

    sput-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->deviceInfoReport:Z

    .line 111
    iget-boolean v0, p1, Lcom/ihoc/mgpa/gradish/L$b;->s:Z

    sput-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->romVersionReport:Z

    .line 112
    iget-boolean v0, p1, Lcom/ihoc/mgpa/gradish/L$b;->t:Z

    sput-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->preDownload:Z

    .line 113
    iget-boolean v0, p1, Lcom/ihoc/mgpa/gradish/L$b;->u:Z

    sput-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->sceneToVendor:Z

    .line 114
    iget-boolean v0, p1, Lcom/ihoc/mgpa/gradish/L$b;->v:Z

    sput-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->sceneTransform:Z

    .line 115
    iget-boolean v0, p1, Lcom/ihoc/mgpa/gradish/L$b;->w:Z

    sput-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->sceneType:Z

    .line 116
    iget-boolean v0, p1, Lcom/ihoc/mgpa/gradish/L$b;->x:Z

    sput-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->optCfg:Z

    .line 117
    iget-boolean v0, p1, Lcom/ihoc/mgpa/gradish/L$b;->y:Z

    sput-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->spa:Z

    .line 118
    iget-boolean v0, p1, Lcom/ihoc/mgpa/gradish/L$b;->z:Z

    sput-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->spaReport:Z

    .line 119
    iget-boolean v0, p1, Lcom/ihoc/mgpa/gradish/L$b;->A:Z

    sput-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->fpsStrategy:Z

    .line 120
    iget-boolean v0, p1, Lcom/ihoc/mgpa/gradish/L$b;->B:Z

    sput-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->notchProbe:Z

    .line 121
    iget-boolean v0, p1, Lcom/ihoc/mgpa/gradish/L$b;->C:Z

    sput-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->vendorUniqueIdReport:Z

    .line 122
    iget-boolean v0, p1, Lcom/ihoc/mgpa/gradish/L$b;->D:Z

    sput-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->uniqueIdReport:Z

    .line 123
    iget-boolean v0, p1, Lcom/ihoc/mgpa/gradish/L$b;->F:Z

    sput-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->l1IdReport:Z

    .line 124
    iget-boolean v0, p1, Lcom/ihoc/mgpa/gradish/L$b;->G:Z

    sput-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->l2IdReport:Z

    .line 125
    iget-boolean v0, p1, Lcom/ihoc/mgpa/gradish/L$b;->H:Z

    sput-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->xidUpdate:Z

    .line 126
    iget-boolean v0, p1, Lcom/ihoc/mgpa/gradish/L$b;->E:Z

    sput-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->safeUniqueIdReport:Z

    .line 127
    iget-boolean v0, p1, Lcom/ihoc/mgpa/gradish/L$b;->I:Z

    sput-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->vendorOAIDReport:Z

    .line 128
    iget-boolean v0, p1, Lcom/ihoc/mgpa/gradish/L$b;->J:Z

    sput-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->debugIdReport:Z

    .line 129
    iget-boolean v0, p1, Lcom/ihoc/mgpa/gradish/L$b;->K:Z

    sput-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->liveIdReport:Z

    .line 130
    iget-boolean v0, p1, Lcom/ihoc/mgpa/gradish/L$b;->L:Z

    sput-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->predownFileCheck:Z

    .line 131
    iget-boolean v0, p1, Lcom/ihoc/mgpa/gradish/L$b;->M:Z

    sput-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->threadAffinitySet:Z

    .line 132
    iget-boolean v0, p1, Lcom/ihoc/mgpa/gradish/L$b;->N:Z

    sput-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->commonHaptic:Z

    .line 133
    iget-boolean v0, p1, Lcom/ihoc/mgpa/gradish/L$b;->O:Z

    sput-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->richTap:Z

    .line 134
    iget-boolean v0, p1, Lcom/ihoc/mgpa/gradish/L$b;->P:Z

    sput-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->useNoneRichTap:Z

    .line 135
    iget-boolean v0, p1, Lcom/ihoc/mgpa/gradish/L$b;->Q:Z

    sput-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->turingShield:Z

    .line 136
    iget-boolean v0, p1, Lcom/ihoc/mgpa/gradish/L$b;->R:Z

    sput-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->netLatencyProbe:Z

    .line 137
    iget-boolean v0, p1, Lcom/ihoc/mgpa/gradish/L$b;->S:Z

    sput-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->reportException:Z

    .line 138
    iget-boolean v0, p1, Lcom/ihoc/mgpa/gradish/L$b;->T:Z

    sput-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->dataForward:Z

    .line 139
    iget-boolean v0, p1, Lcom/ihoc/mgpa/gradish/L$b;->U:Z

    sput-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->backgroundDownload:Z

    .line 140
    iget-boolean v0, p1, Lcom/ihoc/mgpa/gradish/L$b;->V:Z

    sput-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->bgCloseNotifyInFore:Z

    .line 141
    iget-boolean v0, p1, Lcom/ihoc/mgpa/gradish/L$b;->W:Z

    sput-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->bgPreDownload:Z

    .line 142
    iget-boolean p1, p1, Lcom/ihoc/mgpa/gradish/L$b;->a0:Z

    sput-boolean p1, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->startRouter:Z

    .line 143
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isDebugMode()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 144
    sput-boolean v4, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->startRouterReport:Z

    goto :goto_0

    .line 146
    :cond_3
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    iget-boolean p1, p1, Lcom/ihoc/mgpa/gradish/L$b;->b0:Z

    sput-boolean p1, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->startRouterReport:Z

    .line 148
    :goto_0
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    iget-boolean v0, p1, Lcom/ihoc/mgpa/gradish/L$b;->c0:Z

    sput-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->localWifiOptimize:Z

    .line 149
    iget-boolean v0, p1, Lcom/ihoc/mgpa/gradish/L$b;->d0:Z

    sput-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->wifiUpLinkOptimize:Z

    .line 150
    iget-boolean v0, p1, Lcom/ihoc/mgpa/gradish/L$b;->e0:Z

    sput-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->netSmartSelect:Z

    .line 151
    iget-boolean v0, p1, Lcom/ihoc/mgpa/gradish/L$b;->X:Z

    sput-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->bgPreDownloadHotfix:Z

    .line 152
    iget-boolean v0, p1, Lcom/ihoc/mgpa/gradish/L$b;->f0:Z

    sput-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->recordScreen:Z

    .line 153
    iget-boolean v0, p1, Lcom/ihoc/mgpa/gradish/L$b;->g0:Z

    sput-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->bgServicePreDownload:Z

    .line 154
    iget-boolean v0, p1, Lcom/ihoc/mgpa/gradish/L$b;->j0:Z

    sput-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->keepAlive:Z

    .line 155
    iget-boolean v0, p1, Lcom/ihoc/mgpa/gradish/L$b;->k0:Z

    sput-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->frameInterpolation:Z

    .line 156
    iget-boolean v0, p1, Lcom/ihoc/mgpa/gradish/L$b;->l0:Z

    sput-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->superResolution:Z

    .line 157
    iget-boolean v0, p1, Lcom/ihoc/mgpa/gradish/L$b;->m0:Z

    sput-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->bilink:Z

    .line 158
    iget-boolean v0, p1, Lcom/ihoc/mgpa/gradish/L$b;->p0:Z

    sput-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->foldScreen:Z

    .line 160
    sget-object v0, Lcom/ihoc/mgpa/gradish/L;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ihoc/mgpa/gradish/L$b;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string/jumbo p1, "versionPropertyConfig"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 v6, 0x0

    if-eqz p1, :cond_5

    .line 165
    iget-object v8, p0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    new-instance v9, Lcom/ihoc/mgpa/gradish/r1;

    invoke-direct {v9}, Lcom/ihoc/mgpa/gradish/r1;-><init>()V

    iput-object v9, v8, Lcom/ihoc/mgpa/gradish/L$a;->a:Lcom/ihoc/mgpa/gradish/r1;

    .line 166
    iget-object v8, p0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iget-object v8, v8, Lcom/ihoc/mgpa/gradish/L$a;->a:Lcom/ihoc/mgpa/gradish/r1;

    invoke-virtual {v8, p1}, Lcom/ihoc/mgpa/gradish/r1;->a(Lorg/json/JSONObject;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 168
    const-string p1, "GlobalConfig: versionPropertyConfig config parse success."

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 170
    :cond_4
    const-string p1, "GlobalConfig: versionPropertyConfig config parse failed. ple check it."

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iput-object v6, p1, Lcom/ihoc/mgpa/gradish/L$a;->a:Lcom/ihoc/mgpa/gradish/r1;

    const/4 p1, 0x1

    goto :goto_2

    :cond_5
    :goto_1
    const/4 p1, 0x0

    .line 176
    :goto_2
    const-string/jumbo v8, "vendorChannelControl"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    const/4 v9, 0x2

    if-eqz v8, :cond_7

    .line 178
    iget-object v10, p0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    new-instance v11, Lcom/ihoc/mgpa/gradish/n1;

    invoke-direct {v11}, Lcom/ihoc/mgpa/gradish/n1;-><init>()V

    iput-object v11, v10, Lcom/ihoc/mgpa/gradish/L$a;->b:Lcom/ihoc/mgpa/gradish/n1;

    .line 179
    iget-object v10, p0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iget-object v10, v10, Lcom/ihoc/mgpa/gradish/L$a;->b:Lcom/ihoc/mgpa/gradish/n1;

    invoke-virtual {v10, v8}, Lcom/ihoc/mgpa/gradish/n1;->a(Lorg/json/JSONArray;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 181
    const-string v8, "GlobalConfig: vendorChannelControl config parse success."

    invoke-static {v0, v8}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 183
    :cond_6
    const-string p1, "GlobalConfig: vendorChannelControl config parse failed. ple check it."

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iput-object v6, p1, Lcom/ihoc/mgpa/gradish/L$a;->b:Lcom/ihoc/mgpa/gradish/n1;

    const/4 p1, 0x2

    .line 189
    :cond_7
    :goto_3
    const-string/jumbo v8, "vendorConfig"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    if-eqz v8, :cond_9

    .line 191
    iget-object v10, p0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    new-instance v11, Lcom/ihoc/mgpa/gradish/o1;

    invoke-direct {v11}, Lcom/ihoc/mgpa/gradish/o1;-><init>()V

    iput-object v11, v10, Lcom/ihoc/mgpa/gradish/L$a;->c:Lcom/ihoc/mgpa/gradish/o1;

    .line 192
    iget-object v10, p0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iget-object v10, v10, Lcom/ihoc/mgpa/gradish/L$a;->c:Lcom/ihoc/mgpa/gradish/o1;

    invoke-virtual {v10, v8}, Lcom/ihoc/mgpa/gradish/o1;->a(Lorg/json/JSONObject;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 194
    const-string v8, "GlobalConfig: vendorConfig config parse success."

    invoke-static {v0, v8}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 196
    :cond_8
    const-string p1, "GlobalConfig: vendorConfig config parse failed. ple check it."

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iput-object v6, p1, Lcom/ihoc/mgpa/gradish/L$a;->c:Lcom/ihoc/mgpa/gradish/o1;

    goto :goto_5

    :cond_9
    :goto_4
    move v9, p1

    .line 203
    :goto_5
    const-string p1, "sceneTransformConfig"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 205
    iget-object v8, p0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    new-instance v10, Lcom/ihoc/mgpa/gradish/H0;

    invoke-direct {v10}, Lcom/ihoc/mgpa/gradish/H0;-><init>()V

    iput-object v10, v8, Lcom/ihoc/mgpa/gradish/L$a;->d:Lcom/ihoc/mgpa/gradish/H0;

    .line 206
    iget-object v8, p0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iget-object v8, v8, Lcom/ihoc/mgpa/gradish/L$a;->d:Lcom/ihoc/mgpa/gradish/H0;

    invoke-virtual {v8, p1}, Lcom/ihoc/mgpa/gradish/H0;->a(Lorg/json/JSONObject;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 208
    const-string p1, "GlobalConfig: sceneTransformConfig config parse success."

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 210
    :cond_a
    const-string p1, "GlobalConfig: sceneTransformConfig config parse failed. ple check it."

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iput-object v6, p1, Lcom/ihoc/mgpa/gradish/L$a;->d:Lcom/ihoc/mgpa/gradish/H0;

    const/4 v9, 0x3

    .line 216
    :cond_b
    :goto_6
    const-string p1, "limitKey"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 218
    iget-object v8, p0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    new-instance v10, Lcom/ihoc/mgpa/gradish/a0;

    invoke-direct {v10}, Lcom/ihoc/mgpa/gradish/a0;-><init>()V

    iput-object v10, v8, Lcom/ihoc/mgpa/gradish/L$a;->e:Lcom/ihoc/mgpa/gradish/a0;

    .line 219
    iget-object v8, p0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iget-object v8, v8, Lcom/ihoc/mgpa/gradish/L$a;->e:Lcom/ihoc/mgpa/gradish/a0;

    invoke-virtual {v8, p1}, Lcom/ihoc/mgpa/gradish/a0;->a(Lorg/json/JSONObject;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 221
    const-string p1, "GlobalConfig: limitKey config parse success."

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 223
    :cond_c
    const-string p1, "GlobalConfig: limitKey config parse failed. ple check it."

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iput-object v6, p1, Lcom/ihoc/mgpa/gradish/L$a;->e:Lcom/ihoc/mgpa/gradish/a0;

    const/4 v9, 0x4

    .line 229
    :cond_d
    :goto_7
    const-string p1, "sceneTypeConfig"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 231
    iget-object v8, p0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    new-instance v10, Lcom/ihoc/mgpa/gradish/I0;

    invoke-direct {v10}, Lcom/ihoc/mgpa/gradish/I0;-><init>()V

    iput-object v10, v8, Lcom/ihoc/mgpa/gradish/L$a;->f:Lcom/ihoc/mgpa/gradish/I0;

    .line 232
    iget-object v8, p0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iget-object v8, v8, Lcom/ihoc/mgpa/gradish/L$a;->f:Lcom/ihoc/mgpa/gradish/I0;

    invoke-virtual {v8, p1}, Lcom/ihoc/mgpa/gradish/I0;->a(Lorg/json/JSONObject;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 234
    invoke-static {}, Lcom/ihoc/mgpa/gradish/K0;->b()Lcom/ihoc/mgpa/gradish/K0;

    move-result-object p1

    iget-object v8, p0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iget-object v8, v8, Lcom/ihoc/mgpa/gradish/L$a;->f:Lcom/ihoc/mgpa/gradish/I0;

    invoke-virtual {p1, v8}, Lcom/ihoc/mgpa/gradish/K0;->a(Lcom/ihoc/mgpa/gradish/I0;)V

    .line 235
    const-string p1, "GlobalConfig: sceneTypeConfig config parse success."

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 237
    :cond_e
    const-string p1, "GlobalConfig: sceneTypeConfig config parse failed. ple check it."

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iput-object v6, p1, Lcom/ihoc/mgpa/gradish/L$a;->f:Lcom/ihoc/mgpa/gradish/I0;

    const/4 v9, 0x5

    .line 243
    :cond_f
    :goto_8
    const-string p1, "APMKeys"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 245
    iget-object v8, p0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    new-instance v10, Lcom/ihoc/mgpa/gradish/a;

    invoke-direct {v10}, Lcom/ihoc/mgpa/gradish/a;-><init>()V

    iput-object v10, v8, Lcom/ihoc/mgpa/gradish/L$a;->g:Lcom/ihoc/mgpa/gradish/a;

    .line 246
    iget-object v8, p0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iget-object v8, v8, Lcom/ihoc/mgpa/gradish/L$a;->g:Lcom/ihoc/mgpa/gradish/a;

    invoke-virtual {v8, p1}, Lcom/ihoc/mgpa/gradish/a;->a(Lorg/json/JSONArray;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 248
    const-string p1, "GlobalConfig: APMKeys config parse success."

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 250
    :cond_10
    const-string p1, "GlobalConfig: APMKeys config parse failed. ple check it."

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iput-object v6, p1, Lcom/ihoc/mgpa/gradish/L$a;->g:Lcom/ihoc/mgpa/gradish/a;

    const/4 v9, 0x6

    .line 256
    :cond_11
    :goto_9
    const-string p1, "sspChannelOpen"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 258
    iget-object v8, p0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    new-instance v10, Lcom/ihoc/mgpa/gradish/F0;

    invoke-direct {v10}, Lcom/ihoc/mgpa/gradish/F0;-><init>()V

    iput-object v10, v8, Lcom/ihoc/mgpa/gradish/L$a;->h:Lcom/ihoc/mgpa/gradish/F0;

    .line 259
    iget-object v8, p0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iget-object v8, v8, Lcom/ihoc/mgpa/gradish/L$a;->h:Lcom/ihoc/mgpa/gradish/F0;

    invoke-virtual {v8, p1}, Lcom/ihoc/mgpa/gradish/F0;->a(Lorg/json/JSONArray;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 261
    const-string p1, "GlobalConfig: sspChannelOpen config parse success."

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 263
    :cond_12
    const-string p1, "GlobalConfig: sspChannelOpen config parse failed. ple check it."

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iput-object v6, p1, Lcom/ihoc/mgpa/gradish/L$a;->h:Lcom/ihoc/mgpa/gradish/F0;

    const/4 v9, 0x7

    .line 267
    :goto_a
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v8, "GlobalConfig: sspChannel samsung_shm: "

    invoke-direct {p1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v8, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->samsungSharedMemoryOpen:Z

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " , samsung2: "

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v8, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->samsungSceneSdkOpen:Z

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :cond_13
    const-string p1, "checkFileList"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 272
    iget-object v8, p0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    new-instance v10, Lcom/ihoc/mgpa/gradish/v0;

    invoke-direct {v10}, Lcom/ihoc/mgpa/gradish/v0;-><init>()V

    iput-object v10, v8, Lcom/ihoc/mgpa/gradish/L$a;->i:Lcom/ihoc/mgpa/gradish/v0;

    .line 273
    iget-object v8, p0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iget-object v8, v8, Lcom/ihoc/mgpa/gradish/L$a;->i:Lcom/ihoc/mgpa/gradish/v0;

    invoke-virtual {v8, p1}, Lcom/ihoc/mgpa/gradish/v0;->a(Lorg/json/JSONArray;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 275
    const-string p1, "GlobalConfig: checkFileList config parse success."

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 277
    :cond_14
    const-string p1, "GlobalConfig: checkFileList config parse failed. ple check it."

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iput-object v6, p1, Lcom/ihoc/mgpa/gradish/L$a;->i:Lcom/ihoc/mgpa/gradish/v0;

    const/16 v9, 0x8

    .line 283
    :cond_15
    :goto_b
    const-string p1, "optimizeConfig"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 285
    iget-object v8, p0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    new-instance v10, Lcom/ihoc/mgpa/gradish/k0;

    invoke-direct {v10}, Lcom/ihoc/mgpa/gradish/k0;-><init>()V

    iput-object v10, v8, Lcom/ihoc/mgpa/gradish/L$a;->j:Lcom/ihoc/mgpa/gradish/k0;

    .line 286
    iget-object v8, p0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iget-object v8, v8, Lcom/ihoc/mgpa/gradish/L$a;->j:Lcom/ihoc/mgpa/gradish/k0;

    invoke-virtual {v8, p1}, Lcom/ihoc/mgpa/gradish/k0;->a(Lorg/json/JSONObject;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 288
    const-string p1, "GlobalConfig: optimizeConfig config parse success."

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 290
    :cond_16
    const-string p1, "GlobalConfig: optimizeConfig config parse failed. ple check it."

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iput-object v6, p1, Lcom/ihoc/mgpa/gradish/L$a;->j:Lcom/ihoc/mgpa/gradish/k0;

    const/16 v9, 0x9

    .line 296
    :cond_17
    :goto_c
    const-string p1, "deviceCheckConfig"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_19

    .line 298
    iget-object v8, p0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    new-instance v10, Lcom/ihoc/mgpa/gradish/v;

    invoke-direct {v10}, Lcom/ihoc/mgpa/gradish/v;-><init>()V

    iput-object v10, v8, Lcom/ihoc/mgpa/gradish/L$a;->k:Lcom/ihoc/mgpa/gradish/v;

    .line 299
    iget-object v8, p0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iget-object v8, v8, Lcom/ihoc/mgpa/gradish/L$a;->k:Lcom/ihoc/mgpa/gradish/v;

    invoke-virtual {v8, p1}, Lcom/ihoc/mgpa/gradish/v;->a(Lorg/json/JSONObject;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 301
    const-string p1, "GlobalConfig: deviceCheckConfig config parse success."

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 303
    :cond_18
    const-string p1, "GlobalConfig: deviceCheckConfig config parse failed. ple check it."

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iput-object v6, p1, Lcom/ihoc/mgpa/gradish/L$a;->k:Lcom/ihoc/mgpa/gradish/v;

    const/16 v9, 0xa

    .line 310
    :cond_19
    :goto_d
    const-string p1, "fpsStrategyConfig"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1b

    .line 312
    iget-object v8, p0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    new-instance v10, Lcom/ihoc/mgpa/gradish/F;

    invoke-direct {v10}, Lcom/ihoc/mgpa/gradish/F;-><init>()V

    iput-object v10, v8, Lcom/ihoc/mgpa/gradish/L$a;->l:Lcom/ihoc/mgpa/gradish/F;

    .line 313
    iget-object v8, p0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iget-object v8, v8, Lcom/ihoc/mgpa/gradish/L$a;->l:Lcom/ihoc/mgpa/gradish/F;

    invoke-virtual {v8, p1}, Lcom/ihoc/mgpa/gradish/F;->a(Lorg/json/JSONObject;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 315
    const-string p1, "GlobalConfig: fpsStrategyConfig config parse success."

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 317
    :cond_1a
    const-string p1, "GlobalConfig: fpsStrategyConfig config parse failed. ple check it."

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iput-object v6, p1, Lcom/ihoc/mgpa/gradish/L$a;->l:Lcom/ihoc/mgpa/gradish/F;

    const/16 v9, 0xc

    .line 323
    :cond_1b
    :goto_e
    const-string p1, "cpuTopology"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1d

    .line 325
    iget-object v8, p0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    new-instance v10, Lcom/ihoc/mgpa/gradish/r;

    invoke-direct {v10}, Lcom/ihoc/mgpa/gradish/r;-><init>()V

    iput-object v10, v8, Lcom/ihoc/mgpa/gradish/L$a;->m:Lcom/ihoc/mgpa/gradish/r;

    .line 326
    iget-object v8, p0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iget-object v8, v8, Lcom/ihoc/mgpa/gradish/L$a;->m:Lcom/ihoc/mgpa/gradish/r;

    invoke-virtual {v8, p1}, Lcom/ihoc/mgpa/gradish/r;->a(Lorg/json/JSONObject;)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 328
    const-string p1, "GlobalConfig: cpuTopology config parse success."

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 330
    :cond_1c
    const-string p1, "GlobalConfig: cpuTopology config parse failed. ple check it."

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iput-object v6, p1, Lcom/ihoc/mgpa/gradish/L$a;->m:Lcom/ihoc/mgpa/gradish/r;

    const/16 v9, 0xd

    .line 336
    :cond_1d
    :goto_f
    const-string p1, "cleanPDFiles"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1f

    .line 338
    iget-object v8, p0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    new-instance v10, Lcom/ihoc/mgpa/gradish/s0;

    invoke-direct {v10}, Lcom/ihoc/mgpa/gradish/s0;-><init>()V

    iput-object v10, v8, Lcom/ihoc/mgpa/gradish/L$a;->n:Lcom/ihoc/mgpa/gradish/s0;

    .line 339
    iget-object v8, p0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iget-object v8, v8, Lcom/ihoc/mgpa/gradish/L$a;->n:Lcom/ihoc/mgpa/gradish/s0;

    invoke-virtual {v8, p1}, Lcom/ihoc/mgpa/gradish/s0;->a(Lorg/json/JSONObject;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 341
    const-string p1, "GlobalConfig: cleanPDFiles config parse success."

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 343
    :cond_1e
    const-string p1, "GlobalConfig: cleanPDFiles config parse failed. ple check it."

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iput-object v6, p1, Lcom/ihoc/mgpa/gradish/L$a;->n:Lcom/ihoc/mgpa/gradish/s0;

    const/16 v9, 0xe

    .line 349
    :cond_1f
    :goto_10
    const-string p1, "netLatencyProbeConfig"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_21

    .line 351
    iget-object v8, p0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    new-instance v10, Lcom/ihoc/mgpa/gradish/e0;

    invoke-direct {v10}, Lcom/ihoc/mgpa/gradish/e0;-><init>()V

    iput-object v10, v8, Lcom/ihoc/mgpa/gradish/L$a;->q:Lcom/ihoc/mgpa/gradish/e0;

    .line 352
    iget-object v8, p0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iget-object v8, v8, Lcom/ihoc/mgpa/gradish/L$a;->q:Lcom/ihoc/mgpa/gradish/e0;

    invoke-virtual {v8, p1}, Lcom/ihoc/mgpa/gradish/e0;->a(Lorg/json/JSONObject;)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 354
    const-string p1, "GlobalConfig: netLatencyProbeConfig config parse success."

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 356
    :cond_20
    const-string p1, "GlobalConfig: netLatencyProbeConfig config parse failed. ple check it."

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iput-object v6, p1, Lcom/ihoc/mgpa/gradish/L$a;->q:Lcom/ihoc/mgpa/gradish/e0;

    const/16 v9, 0xf

    .line 363
    :cond_21
    :goto_11
    const-string/jumbo p1, "turingShieldConfig"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_23

    .line 365
    iget-object v8, p0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    new-instance v10, Lcom/ihoc/mgpa/gradish/e1;

    invoke-direct {v10}, Lcom/ihoc/mgpa/gradish/e1;-><init>()V

    iput-object v10, v8, Lcom/ihoc/mgpa/gradish/L$a;->o:Lcom/ihoc/mgpa/gradish/e1;

    .line 366
    iget-object v8, p0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iget-object v8, v8, Lcom/ihoc/mgpa/gradish/L$a;->o:Lcom/ihoc/mgpa/gradish/e1;

    invoke-virtual {v8, p1}, Lcom/ihoc/mgpa/gradish/e1;->a(Lorg/json/JSONObject;)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 368
    const-string p1, "GlobalConfig: turingShieldConfig config parse success."

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    .line 370
    :cond_22
    const-string p1, "GlobalConfig: turingShieldConfig config parse failed. ple check it."

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iput-object v6, p1, Lcom/ihoc/mgpa/gradish/L$a;->o:Lcom/ihoc/mgpa/gradish/e1;

    const/16 v9, 0x10

    .line 376
    :cond_23
    :goto_12
    const-string p1, "dataForwardKey"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_25

    .line 378
    iget-object v8, p0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    new-instance v10, Lcom/ihoc/mgpa/gradish/t;

    invoke-direct {v10}, Lcom/ihoc/mgpa/gradish/t;-><init>()V

    iput-object v10, v8, Lcom/ihoc/mgpa/gradish/L$a;->u:Lcom/ihoc/mgpa/gradish/t;

    .line 379
    iget-object v8, p0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iget-object v8, v8, Lcom/ihoc/mgpa/gradish/L$a;->u:Lcom/ihoc/mgpa/gradish/t;

    invoke-virtual {v8, p1}, Lcom/ihoc/mgpa/gradish/t;->a(Lorg/json/JSONArray;)Z

    move-result p1

    if-eqz p1, :cond_24

    .line 381
    const-string p1, "GlobalConfig: dataForwardKey config parse success."

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    .line 383
    :cond_24
    const-string p1, "GlobalConfig: dataForwardKey config parse failed. ple check it."

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iput-object v6, p1, Lcom/ihoc/mgpa/gradish/L$a;->u:Lcom/ihoc/mgpa/gradish/t;

    const/16 v9, 0x11

    .line 390
    :cond_25
    :goto_13
    const-string p1, "bgPreDownloadConfig"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_27

    .line 392
    iget-object v8, p0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    new-instance v10, Lcom/ihoc/mgpa/gradish/d;

    invoke-direct {v10}, Lcom/ihoc/mgpa/gradish/d;-><init>()V

    iput-object v10, v8, Lcom/ihoc/mgpa/gradish/L$a;->p:Lcom/ihoc/mgpa/gradish/d;

    .line 393
    iget-object v8, p0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iget-object v8, v8, Lcom/ihoc/mgpa/gradish/L$a;->p:Lcom/ihoc/mgpa/gradish/d;

    invoke-virtual {v8, p1}, Lcom/ihoc/mgpa/gradish/d;->a(Lorg/json/JSONObject;)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 395
    const-string p1, "GlobalConfig: bgPreDownloadConfig config parse success."

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    .line 397
    :cond_26
    const-string p1, "GlobalConfig: bgPreDownloadConfig config parse failed. ple check it."

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iput-object v6, p1, Lcom/ihoc/mgpa/gradish/L$a;->p:Lcom/ihoc/mgpa/gradish/d;

    const/16 v9, 0x12

    .line 404
    :cond_27
    :goto_14
    const-string p1, "reportConfig"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_29

    .line 406
    new-instance v6, Lcom/ihoc/mgpa/gradish/z0;

    invoke-direct {v6}, Lcom/ihoc/mgpa/gradish/z0;-><init>()V

    .line 407
    invoke-virtual {v6, p1}, Lcom/ihoc/mgpa/gradish/z0;->a(Lorg/json/JSONObject;)Z

    move-result p1

    if-eqz p1, :cond_28

    .line 408
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iget v6, v6, Lcom/ihoc/mgpa/gradish/z0;->a:I

    iput v6, p1, Lcom/ihoc/mgpa/gradish/L$a;->t:I

    goto :goto_15

    .line 410
    :cond_28
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iput v7, p1, Lcom/ihoc/mgpa/gradish/L$a;->t:I

    .line 411
    new-array p1, v7, [Ljava/lang/Object;

    const-string v6, "GlobalConfig: reportConfig config parse failed, use default. ple check it."

    invoke-static {v6, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 416
    :cond_29
    :goto_15
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    const-string v6, "5GSceneConfig"

    invoke-virtual {v1, v6, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/ihoc/mgpa/gradish/L$a;->r:Ljava/lang/String;

    .line 421
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    const-string/jumbo v3, "threadObserverPeriod"

    invoke-virtual {v1, v3, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p1, Lcom/ihoc/mgpa/gradish/L$a;->s:I

    .line 424
    const-string p1, "cpuLock"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v3, "GlobalConfig: cpuLock config parse failed, use default. ple check it."

    if-eqz p1, :cond_2b

    .line 426
    new-instance v6, Lcom/ihoc/mgpa/gradish/i;

    invoke-direct {v6}, Lcom/ihoc/mgpa/gradish/i;-><init>()V

    .line 427
    invoke-virtual {v6, p1}, Lcom/ihoc/mgpa/gradish/i;->a(Lorg/json/JSONObject;)Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 428
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iput-object v6, p1, Lcom/ihoc/mgpa/gradish/L$a;->v:Lcom/ihoc/mgpa/gradish/i;

    .line 429
    const-string p1, "GlobalConfig: cpuLock config parse success."

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    .line 431
    :cond_2a
    new-array p1, v7, [Ljava/lang/Object;

    invoke-static {v3, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_16

    .line 434
    :cond_2b
    new-array p1, v7, [Ljava/lang/Object;

    invoke-static {v3, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 437
    :goto_16
    const-string p1, "eventReportConfig"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 438
    invoke-static {}, Lcom/ihoc/mgpa/report/entity/EventReportConfig;->getDefault()Lcom/ihoc/mgpa/report/entity/EventReportConfig;

    move-result-object v0

    if-eqz p1, :cond_2c

    .line 440
    invoke-virtual {v0, p1}, Lcom/ihoc/mgpa/report/entity/EventReportConfig;->parse(Lorg/json/JSONObject;)V

    .line 442
    :cond_2c
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    iget-boolean p1, p1, Lcom/ihoc/mgpa/gradish/L$b;->Z:Z

    invoke-virtual {v0, p1}, Lcom/ihoc/mgpa/report/entity/EventReportConfig;->setSamplingEventReport(Z)V

    .line 443
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iput-object v0, p1, Lcom/ihoc/mgpa/gradish/L$a;->w:Lcom/ihoc/mgpa/report/entity/EventReportConfig;

    .line 446
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "GlobalConfig: %s config parse success."

    if-eqz p1, :cond_2e

    .line 448
    new-instance v3, Lcom/ihoc/mgpa/gradish/Q0;

    invoke-direct {v3}, Lcom/ihoc/mgpa/gradish/Q0;-><init>()V

    .line 449
    invoke-virtual {v3, p1}, Lcom/ihoc/mgpa/gradish/Q0;->a(Lorg/json/JSONObject;)Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 450
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iput-object v3, p1, Lcom/ihoc/mgpa/gradish/L$a;->x:Lcom/ihoc/mgpa/gradish/Q0;

    .line 451
    new-array p1, v4, [Ljava/lang/Object;

    aput-object v2, p1, v7

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_17

    .line 453
    :cond_2d
    new-array p1, v4, [Ljava/lang/Object;

    aput-object v2, p1, v7

    const-string v2, "GlobalConfig: %s config parse failed, use default. ple check it."

    invoke-static {v2, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_17

    .line 456
    :cond_2e
    new-array p1, v4, [Ljava/lang/Object;

    aput-object v2, p1, v7

    const-string v2, "GlobalConfig: %s config is not found, use default. ple check it."

    invoke-static {v2, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 460
    :goto_17
    const-string p1, "recordScreenConfig"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_2f

    .line 462
    new-instance v2, Lcom/ihoc/mgpa/gradish/x0;

    invoke-direct {v2}, Lcom/ihoc/mgpa/gradish/x0;-><init>()V

    .line 463
    invoke-virtual {v2, p1}, Lcom/ihoc/mgpa/gradish/x0;->a(Lorg/json/JSONObject;)Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 464
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iput-object v2, p1, Lcom/ihoc/mgpa/gradish/L$a;->y:Lcom/ihoc/mgpa/gradish/x0;

    .line 468
    :cond_2f
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v2, "GlobalConfig: %s config parse failed."

    const-string v3, "GlobalConfig: %s config is not found. ple check it."

    if-eqz p1, :cond_31

    .line 470
    new-instance v6, Lcom/ihoc/mgpa/gradish/H;

    invoke-direct {v6}, Lcom/ihoc/mgpa/gradish/H;-><init>()V

    .line 471
    invoke-virtual {v6, p1}, Lcom/ihoc/mgpa/gradish/H;->a(Lorg/json/JSONObject;)Z

    move-result p1

    if-eqz p1, :cond_30

    .line 472
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iput-object v6, p1, Lcom/ihoc/mgpa/gradish/L$a;->z:Lcom/ihoc/mgpa/gradish/H;

    .line 473
    new-array p1, v4, [Ljava/lang/Object;

    aput-object v5, p1, v7

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_18

    .line 475
    :cond_30
    new-array p1, v4, [Ljava/lang/Object;

    aput-object v5, p1, v7

    invoke-static {v2, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_18

    .line 478
    :cond_31
    new-array p1, v4, [Ljava/lang/Object;

    aput-object v5, p1, v7

    invoke-static {v3, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 481
    :goto_18
    const-string p1, "deviceToken"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_33

    .line 483
    new-instance v3, Lcom/ihoc/mgpa/gradish/x;

    invoke-direct {v3}, Lcom/ihoc/mgpa/gradish/x;-><init>()V

    .line 484
    invoke-virtual {v3, v5}, Lcom/ihoc/mgpa/gradish/x;->a(Lorg/json/JSONObject;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 485
    iget-object v2, p0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iput-object v3, v2, Lcom/ihoc/mgpa/gradish/L$a;->A:Lcom/ihoc/mgpa/gradish/x;

    .line 486
    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v7

    invoke-static {v0, v2}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_19

    .line 488
    :cond_32
    new-array v0, v4, [Ljava/lang/Object;

    aput-object p1, v0, v7

    invoke-static {v2, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_19

    .line 491
    :cond_33
    new-array v0, v4, [Ljava/lang/Object;

    aput-object p1, v0, v7

    invoke-static {v3, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 495
    :goto_19
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    invoke-static {}, Lcom/ihoc/mgpa/gradish/U0;->a()Lcom/ihoc/mgpa/gradish/U0;

    move-result-object v0

    iput-object v0, p1, Lcom/ihoc/mgpa/gradish/L$a;->B:Lcom/ihoc/mgpa/gradish/U0;

    .line 496
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iget-object p1, p1, Lcom/ihoc/mgpa/gradish/L$a;->B:Lcom/ihoc/mgpa/gradish/U0;

    invoke-virtual {p1, v1}, Lcom/ihoc/mgpa/gradish/U0;->a(Lorg/json/JSONObject;)Z

    .line 499
    invoke-static {v1}, Lcom/ihoc/mgpa/gradish/f;->a(Lorg/json/JSONObject;)V

    .line 501
    invoke-static {v1}, Lcom/ihoc/mgpa/gradish/E;->a(Lorg/json/JSONObject;)Z

    return v9
.end method

.method public a()Ljava/util/Map;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 4
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 5
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "1"

    goto :goto_1

    :cond_0
    const-string v4, "0"

    :goto_1
    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 12
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v1

    .line 13
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v1

    .line 14
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_2
    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/L;->a:Ljava/lang/String;

    return-object v0
.end method
