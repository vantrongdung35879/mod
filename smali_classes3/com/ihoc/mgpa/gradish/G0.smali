.class public Lcom/ihoc/mgpa/gradish/G0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ihoc/mgpa/gradish/G0$c;
    }
.end annotation


# static fields
.field private static volatile A:Lcom/ihoc/mgpa/gradish/G0;

.field private static final z:Ljava/lang/String;


# instance fields
.field private a:Lcom/ihoc/mgpa/gradish/E0;

.field private b:Lcom/ihoc/mgpa/gradish/G0$c;

.field private c:Landroid/os/HandlerThread;

.field private d:Ljava/util/HashMap;

.field private e:Ljava/util/ArrayList;

.field private f:Ljava/util/ArrayList;

.field private g:Ljava/util/ArrayList;

.field private h:Ljava/util/ArrayList;

.field private i:Ljava/util/ArrayList;

.field private j:Ljava/util/ArrayList;

.field private k:Ljava/util/ArrayList;

.field private l:Ljava/util/ArrayList;

.field private m:Ljava/util/ArrayList;

.field private n:Ljava/util/ArrayList;

.field private o:Ljava/util/ArrayList;

.field private p:Ljava/lang/StringBuilder;

.field private q:Ljava/lang/StringBuilder;

.field private r:Ljava/lang/StringBuilder;

.field private s:Ljava/lang/StringBuilder;

.field private t:Ljava/lang/StringBuilder;

.field private u:Ljava/lang/StringBuilder;

.field private v:Ljava/lang/StringBuilder;

.field private w:Ljava/lang/StringBuilder;

.field private x:Ljava/lang/StringBuilder;

.field private y:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/gradish/o;->b:Ljava/lang/String;

    sput-object v0, Lcom/ihoc/mgpa/gradish/G0;->z:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    sput-object v0, Lcom/ihoc/mgpa/gradish/G0;->A:Lcom/ihoc/mgpa/gradish/G0;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/ihoc/mgpa/gradish/a1;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/G0;->c:Landroid/os/HandlerThread;

    .line 189
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/G0;->d:Ljava/util/HashMap;

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/G0;->e:Ljava/util/ArrayList;

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/G0;->f:Ljava/util/ArrayList;

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/G0;->g:Ljava/util/ArrayList;

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/G0;->h:Ljava/util/ArrayList;

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/G0;->i:Ljava/util/ArrayList;

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/G0;->j:Ljava/util/ArrayList;

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/G0;->k:Ljava/util/ArrayList;

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/G0;->l:Ljava/util/ArrayList;

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/G0;->m:Ljava/util/ArrayList;

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/G0;->n:Ljava/util/ArrayList;

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/G0;->o:Ljava/util/ArrayList;

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/G0;->p:Ljava/lang/StringBuilder;

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/G0;->q:Ljava/lang/StringBuilder;

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/G0;->r:Ljava/lang/StringBuilder;

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/G0;->s:Ljava/lang/StringBuilder;

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/G0;->t:Ljava/lang/StringBuilder;

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/G0;->u:Ljava/lang/StringBuilder;

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/G0;->v:Ljava/lang/StringBuilder;

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/G0;->w:Ljava/lang/StringBuilder;

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/G0;->x:Ljava/lang/StringBuilder;

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/G0;->y:Ljava/lang/StringBuilder;

    return-void
.end method

.method static synthetic a(Lcom/ihoc/mgpa/gradish/G0;Ljava/lang/String;)Lcom/ihoc/mgpa/gradish/C;
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ihoc/mgpa/gradish/G0;->a(Ljava/lang/String;)Lcom/ihoc/mgpa/gradish/C;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;)Lcom/ihoc/mgpa/gradish/C;
    .locals 1

    if-nez p1, :cond_0

    .line 56
    sget-object p1, Lcom/ihoc/mgpa/gradish/G0;->z:Ljava/lang/String;

    const-string v0, "SSPHelper: get local config content null."

    invoke-static {p1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    sget-object p1, Lcom/ihoc/mgpa/gradish/C;->h:Lcom/ihoc/mgpa/gradish/C;

    return-object p1

    .line 59
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    sget-object p1, Lcom/ihoc/mgpa/gradish/G0;->z:Ljava/lang/String;

    const-string v0, "SSPHelper: local config content is empty."

    invoke-static {p1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    sget-object p1, Lcom/ihoc/mgpa/gradish/C;->i:Lcom/ihoc/mgpa/gradish/C;

    return-object p1

    .line 64
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 65
    new-instance p1, Lcom/ihoc/mgpa/gradish/E0;

    invoke-direct {p1}, Lcom/ihoc/mgpa/gradish/E0;-><init>()V

    .line 66
    invoke-virtual {p1, v0}, Lcom/ihoc/mgpa/gradish/E0;->a(Lorg/json/JSONObject;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 68
    sget-object p1, Lcom/ihoc/mgpa/gradish/G0;->z:Ljava/lang/String;

    const-string v0, "SSPHelper: parse json failed. "

    invoke-static {p1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    sget-object p1, Lcom/ihoc/mgpa/gradish/C;->j:Lcom/ihoc/mgpa/gradish/C;

    return-object p1

    .line 72
    :cond_2
    iput-object p1, p0, Lcom/ihoc/mgpa/gradish/G0;->a:Lcom/ihoc/mgpa/gradish/E0;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    sget-object p1, Lcom/ihoc/mgpa/gradish/G0;->z:Ljava/lang/String;

    const-string v0, "SSPHelper: parse json success. "

    invoke-static {p1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    sget-object p1, Lcom/ihoc/mgpa/gradish/C;->e:Lcom/ihoc/mgpa/gradish/C;

    return-object p1

    :catch_0
    move-exception p1

    .line 81
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 82
    sget-object p1, Lcom/ihoc/mgpa/gradish/G0;->z:Ljava/lang/String;

    const-string v0, "SSPHelper:  content is not json."

    invoke-static {p1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    sget-object p1, Lcom/ihoc/mgpa/gradish/C;->t:Lcom/ihoc/mgpa/gradish/C;

    return-object p1
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/gradish/G0;->z:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/ihoc/mgpa/gradish/G0;)Ljava/lang/StringBuilder;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/ihoc/mgpa/gradish/G0;->u:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method private a(ILjava/lang/String;)Ljava/util/HashMap;
    .locals 4

    .line 10
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/G0;->a:Lcom/ihoc/mgpa/gradish/E0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 11
    sget-object p1, Lcom/ihoc/mgpa/gradish/G0;->z:Ljava/lang/String;

    const-string p2, "SSPHelper: no ssp cloud config was found. "

    invoke-static {p1, p2}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 15
    :cond_0
    invoke-static {p1}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getByKey(I)Lcom/ihoc/mgpa/toolkit/constant/KogKey;

    move-result-object v0

    .line 16
    sget-object v2, Lcom/ihoc/mgpa/gradish/G0$b;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x1

    const-string/jumbo v3, "|"

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    .line 30
    sget-object p2, Lcom/ihoc/mgpa/gradish/G0;->z:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "SSPHelper: do not need to check sspkey when key: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "nokey"

    goto/16 :goto_0

    .line 31
    :cond_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->currentTargetFPS:Ljava/lang/String;

    .line 32
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->currentSceneId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->currentMapID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->currentUserCount:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->currentTargetFPS:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 33
    :cond_2
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->currentUserCount:Ljava/lang/String;

    .line 34
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->currentSceneId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->currentMapID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->currentUserCount:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->currentTargetFPS:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 35
    :cond_3
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->currentSceneId:Ljava/lang/String;

    .line 36
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->currentSceneId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->currentMapID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->currentUserCount:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->currentTargetFPS:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 50
    :goto_0
    iget-object p2, p0, Lcom/ihoc/mgpa/gradish/G0;->a:Lcom/ihoc/mgpa/gradish/E0;

    invoke-virtual {p2, p1}, Lcom/ihoc/mgpa/gradish/E0;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p2

    const-string v0, "SSPHelper: check sspkey: "

    if-eqz p2, :cond_4

    .line 52
    sget-object v1, Lcom/ihoc/mgpa/gradish/G0;->z:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is in ssp config."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    .line 55
    :cond_4
    sget-object p2, Lcom/ihoc/mgpa/gradish/G0;->z:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not in ssp config."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method static synthetic b(Lcom/ihoc/mgpa/gradish/G0;)Ljava/lang/StringBuilder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ihoc/mgpa/gradish/G0;->v:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method private b()Ljava/util/HashMap;
    .locals 5

    .line 6
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/G0;->a:Lcom/ihoc/mgpa/gradish/E0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 7
    sget-object v0, Lcom/ihoc/mgpa/gradish/G0;->z:Ljava/lang/String;

    const-string v2, "SSPHelper: no ssp cloud config was found. "

    invoke-static {v0, v2}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->currentSceneId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->currentMapID:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->currentUserCount:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->currentTargetFPS:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 11
    iget-object v2, p0, Lcom/ihoc/mgpa/gradish/G0;->a:Lcom/ihoc/mgpa/gradish/E0;

    invoke-virtual {v2, v0}, Lcom/ihoc/mgpa/gradish/E0;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 13
    sget-object v1, Lcom/ihoc/mgpa/gradish/G0;->z:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SSPHelper: check sspkey: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is in ssp config."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_1
    return-object v1
.end method

.method static synthetic c(Lcom/ihoc/mgpa/gradish/G0;)Ljava/lang/StringBuilder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ihoc/mgpa/gradish/G0;->w:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method private c()V
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/G0;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 15
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/G0;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 16
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/G0;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 17
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/G0;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 18
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/G0;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 19
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/G0;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 20
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/G0;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 21
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/G0;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 22
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/G0;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 23
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/G0;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 24
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/G0;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method static synthetic d(Lcom/ihoc/mgpa/gradish/G0;)Ljava/lang/StringBuilder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ihoc/mgpa/gradish/G0;->x:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public static e()Lcom/ihoc/mgpa/gradish/G0;
    .locals 2

    .line 2
    sget-object v0, Lcom/ihoc/mgpa/gradish/G0;->A:Lcom/ihoc/mgpa/gradish/G0;

    if-nez v0, :cond_1

    .line 3
    const-class v0, Lcom/ihoc/mgpa/gradish/G0;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/ihoc/mgpa/gradish/G0;->A:Lcom/ihoc/mgpa/gradish/G0;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcom/ihoc/mgpa/gradish/G0;

    invoke-direct {v1}, Lcom/ihoc/mgpa/gradish/G0;-><init>()V

    sput-object v1, Lcom/ihoc/mgpa/gradish/G0;->A:Lcom/ihoc/mgpa/gradish/G0;

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
    sget-object v0, Lcom/ihoc/mgpa/gradish/G0;->A:Lcom/ihoc/mgpa/gradish/G0;

    return-object v0
.end method

.method static synthetic e(Lcom/ihoc/mgpa/gradish/G0;)Ljava/lang/StringBuilder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ihoc/mgpa/gradish/G0;->y:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method private f()V
    .locals 1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/G0;->p:Ljava/lang/StringBuilder;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/G0;->q:Ljava/lang/StringBuilder;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/G0;->r:Ljava/lang/StringBuilder;

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/G0;->s:Ljava/lang/StringBuilder;

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/G0;->t:Ljava/lang/StringBuilder;

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/G0;->u:Ljava/lang/StringBuilder;

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/G0;->v:Ljava/lang/StringBuilder;

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/G0;->w:Ljava/lang/StringBuilder;

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/G0;->x:Ljava/lang/StringBuilder;

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/G0;->y:Ljava/lang/StringBuilder;

    return-void
.end method

.method static synthetic f(Lcom/ihoc/mgpa/gradish/G0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/G0;->i()V

    return-void
.end method

.method static synthetic g(Lcom/ihoc/mgpa/gradish/G0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/G0;->f()V

    return-void
.end method

.method static synthetic h(Lcom/ihoc/mgpa/gradish/G0;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ihoc/mgpa/gradish/G0;->e:Ljava/util/ArrayList;

    return-object p0
.end method

.method private h()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/G0;->d:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/G0;->e:Ljava/util/ArrayList;

    const-string/jumbo v2, "|"

    invoke-static {v1, v2}, Lcom/ihoc/mgpa/toolkit/util/ArrayUtil;->ArrayToString(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "cpu_level"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/G0;->d:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/G0;->f:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/ihoc/mgpa/toolkit/util/ArrayUtil;->ArrayToString(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "gpu_level"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/G0;->d:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/G0;->g:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/ihoc/mgpa/toolkit/util/ArrayUtil;->ArrayToString(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "cpu_load"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/G0;->d:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/G0;->h:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/ihoc/mgpa/toolkit/util/ArrayUtil;->ArrayToString(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "gpu_load"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/G0;->d:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/G0;->i:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/ihoc/mgpa/toolkit/util/ArrayUtil;->ArrayToString(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "cpu_temp"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/G0;->d:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/G0;->j:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/ihoc/mgpa/toolkit/util/ArrayUtil;->ArrayToString(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "fps_limit"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/G0;->d:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/G0;->k:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/ihoc/mgpa/toolkit/util/ArrayUtil;->ArrayToString(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "spa_fps"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/G0;->d:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/G0;->l:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/ihoc/mgpa/toolkit/util/ArrayUtil;->ArrayToString(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "game_overheat"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/G0;->d:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/G0;->m:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/ihoc/mgpa/toolkit/util/ArrayUtil;->ArrayToString(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "frame_drops"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/G0;->d:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/G0;->n:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/ihoc/mgpa/toolkit/util/ArrayUtil;->ArrayToString(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "rpic_set"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/G0;->d:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/G0;->o:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/ihoc/mgpa/toolkit/util/ArrayUtil;->ArrayToString(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "happen_time"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/G0;->d:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/ihoc/mgpa/gradish/t1;->l(Ljava/util/HashMap;)V

    return-void
.end method

.method private i()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/G0;->e:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/G0;->p:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/G0;->f:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/G0;->q:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/G0;->g:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/G0;->r:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/G0;->h:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/G0;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/G0;->i:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/G0;->t:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/G0;->j:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/G0;->u:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/G0;->k:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/G0;->v:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/G0;->l:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/G0;->w:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/G0;->m:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/G0;->x:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/G0;->n:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/G0;->y:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/G0;->o:Ljava/util/ArrayList;

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/DateUtil;->getCurrentTimeStamp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic i(Lcom/ihoc/mgpa/gradish/G0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/G0;->h()V

    return-void
.end method

.method static synthetic j(Lcom/ihoc/mgpa/gradish/G0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/G0;->c()V

    return-void
.end method

.method static synthetic k(Lcom/ihoc/mgpa/gradish/G0;)Ljava/lang/StringBuilder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ihoc/mgpa/gradish/G0;->p:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method static synthetic l(Lcom/ihoc/mgpa/gradish/G0;)Ljava/lang/StringBuilder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ihoc/mgpa/gradish/G0;->q:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method static synthetic m(Lcom/ihoc/mgpa/gradish/G0;)Ljava/lang/StringBuilder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ihoc/mgpa/gradish/G0;->r:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method static synthetic n(Lcom/ihoc/mgpa/gradish/G0;)Ljava/lang/StringBuilder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ihoc/mgpa/gradish/G0;->s:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method static synthetic o(Lcom/ihoc/mgpa/gradish/G0;)Ljava/lang/StringBuilder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ihoc/mgpa/gradish/G0;->t:Ljava/lang/StringBuilder;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/util/HashMap;)V
    .locals 3

    .line 4
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 7
    invoke-virtual {p0, v2, v1}, Lcom/ihoc/mgpa/gradish/G0;->c(ILjava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/G0;->b()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ihoc/mgpa/gradish/m1;->a(Ljava/util/HashMap;Ljava/util/HashMap;)V

    return-void
.end method

.method public b(ILjava/lang/String;)V
    .locals 1

    .line 2
    invoke-static {}, Lcom/ihoc/mgpa/gradish/m1;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/ihoc/mgpa/gradish/G0;->a(ILjava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/ihoc/mgpa/gradish/m1;->a(ILjava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p1, p2}, Lcom/ihoc/mgpa/gradish/m1;->c(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public c(ILjava/lang/String;)V
    .locals 1

    .line 2
    invoke-static {p1}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getByKey(I)Lcom/ihoc/mgpa/toolkit/constant/KogKey;

    move-result-object p1

    .line 3
    sget-object v0, Lcom/ihoc/mgpa/gradish/G0$b;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->currentTargetFPS:Ljava/lang/String;

    goto :goto_0

    .line 12
    :cond_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->currentUserCount:Ljava/lang/String;

    goto :goto_0

    .line 13
    :cond_2
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->currentSceneId:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public d()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/G0;->b:Lcom/ihoc/mgpa/gradish/G0$c;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 3
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 2

    .line 2
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/SdkUtil;->getCacheDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ihoc/mgpa/gradish/o;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/FileUtil;->checkFileExsits(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/FileUtil;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ihoc/mgpa/gradish/G0;->a(Ljava/lang/String;)Lcom/ihoc/mgpa/gradish/C;

    move-result-object v0

    sget-object v1, Lcom/ihoc/mgpa/gradish/C;->e:Lcom/ihoc/mgpa/gradish/C;

    if-ne v0, v1, :cond_0

    .line 4
    sget-object v0, Lcom/ihoc/mgpa/gradish/G0;->z:Ljava/lang/String;

    const-string v1, "SSPHelper: ssp local config parse success."

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    sget-object v0, Lcom/ihoc/mgpa/gradish/G0;->z:Ljava/lang/String;

    const-string v1, "SSPHelper: ssp local config parse failed. "

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 10
    :catch_0
    sget-object v0, Lcom/ihoc/mgpa/gradish/G0;->z:Ljava/lang/String;

    const-string v1, "SSPHelper: read ssp local config exception."

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :goto_0
    new-instance v0, Lcom/ihoc/mgpa/gradish/l;

    sget-object v1, Lcom/ihoc/mgpa/gradish/l$c;->d:Lcom/ihoc/mgpa/gradish/l$c;

    invoke-direct {v0, v1}, Lcom/ihoc/mgpa/gradish/l;-><init>(Lcom/ihoc/mgpa/gradish/l$c;)V

    .line 14
    new-instance v1, Lcom/ihoc/mgpa/gradish/G0$a;

    invoke-direct {v1, p0}, Lcom/ihoc/mgpa/gradish/G0$a;-><init>(Lcom/ihoc/mgpa/gradish/G0;)V

    invoke-virtual {v0, v1}, Lcom/ihoc/mgpa/gradish/l;->a(Lcom/ihoc/mgpa/gradish/A;)V

    return-void
.end method

.method public j()V
    .locals 2

    .line 2
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isSSPReportOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/G0;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/G0;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 5
    new-instance v0, Lcom/ihoc/mgpa/gradish/G0$c;

    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/G0;->c:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ihoc/mgpa/gradish/G0$c;-><init>(Lcom/ihoc/mgpa/gradish/G0;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/G0;->b:Lcom/ihoc/mgpa/gradish/G0$c;

    goto :goto_0

    .line 7
    :cond_0
    sget-object v0, Lcom/ihoc/mgpa/gradish/G0;->z:Ljava/lang/String;

    const-string v1, "SSPHelper: ssp data collect thread is already alive, do not need create again!"

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_1
    sget-object v0, Lcom/ihoc/mgpa/gradish/G0;->z:Ljava/lang/String;

    const-string v1, "SSPHelper: ssp data report func is not open."

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
