.class public Lcom/ihoc/mgpa/gradish/f1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final o:Ljava/lang/String;

.field private static volatile p:Lcom/ihoc/mgpa/gradish/f1;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Z

.field private j:I

.field private k:I

.field private l:I

.field private m:Z

.field private n:Lcom/ihoc/mgpa/IMGPAService$TouchEventWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ihoc/mgpa/gradish/o;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_TuringShield"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ihoc/mgpa/gradish/f1;->o:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    sput-object v0, Lcom/ihoc/mgpa/gradish/f1;->p:Lcom/ihoc/mgpa/gradish/f1;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/ihoc/mgpa/gradish/f1;->i:Z

    .line 13
    iput v0, p0, Lcom/ihoc/mgpa/gradish/f1;->j:I

    .line 14
    iput v0, p0, Lcom/ihoc/mgpa/gradish/f1;->k:I

    .line 15
    iput v0, p0, Lcom/ihoc/mgpa/gradish/f1;->l:I

    .line 18
    iput-boolean v0, p0, Lcom/ihoc/mgpa/gradish/f1;->m:Z

    return-void
.end method

.method public static a()Lcom/ihoc/mgpa/gradish/f1;
    .locals 2

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/gradish/f1;->p:Lcom/ihoc/mgpa/gradish/f1;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/ihoc/mgpa/gradish/f1;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/ihoc/mgpa/gradish/f1;->p:Lcom/ihoc/mgpa/gradish/f1;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/ihoc/mgpa/gradish/f1;

    invoke-direct {v1}, Lcom/ihoc/mgpa/gradish/f1;-><init>()V

    sput-object v1, Lcom/ihoc/mgpa/gradish/f1;->p:Lcom/ihoc/mgpa/gradish/f1;

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
    sget-object v0, Lcom/ihoc/mgpa/gradish/f1;->p:Lcom/ihoc/mgpa/gradish/f1;

    return-object v0
.end method

.method private a(Z)V
    .locals 1

    .line 98
    iput-boolean p1, p0, Lcom/ihoc/mgpa/gradish/f1;->m:Z

    .line 99
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/f1;->n:Lcom/ihoc/mgpa/IMGPAService$TouchEventWrapper;

    if-eqz v0, :cond_0

    .line 100
    invoke-interface {v0, p1}, Lcom/ihoc/mgpa/IMGPAService$TouchEventWrapper;->onTuringTouchIsCollecting(Z)V

    :cond_0
    return-void
.end method

.method private b()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/ihoc/mgpa/gradish/f1;->i:Z

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/ihoc/mgpa/gradish/f1;->o:Ljava/lang/String;

    const-string v1, "Warning, turing shield sdk is not available, ple check!."

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->getOpenId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->getOpenId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/StringUtil;->isEmptyChar(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    iget-boolean v0, p0, Lcom/ihoc/mgpa/gradish/f1;->m:Z

    if-eqz v0, :cond_2

    .line 10
    sget-object v0, Lcom/ihoc/mgpa/gradish/f1;->o:Ljava/lang/String;

    const-string v1, "Is collecting data now, ignore this start!"

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 13
    :cond_2
    iget v0, p0, Lcom/ihoc/mgpa/gradish/f1;->l:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ihoc/mgpa/gradish/f1;->l:I

    .line 14
    iget v2, p0, Lcom/ihoc/mgpa/gradish/f1;->h:I

    if-le v0, v2, :cond_3

    .line 15
    sget-object v0, Lcom/ihoc/mgpa/gradish/f1;->o:Ljava/lang/String;

    const-string v1, "Collected count > limited count, can\'t start to collect again in this match."

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 18
    :cond_3
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/f1;->n:Lcom/ihoc/mgpa/IMGPAService$TouchEventWrapper;

    if-eqz v0, :cond_4

    .line 19
    sget-object v0, Lcom/ihoc/mgpa/gradish/f1;->o:Ljava/lang/String;

    const-string v2, "TuringShield start with wrapper!"

    invoke-static {v0, v2}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->getOpenId()Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/ihoc/mgpa/gradish/f1;->a:I

    iget-object v3, p0, Lcom/ihoc/mgpa/gradish/f1;->n:Lcom/ihoc/mgpa/IMGPAService$TouchEventWrapper;

    invoke-static {v0, v2, v3}, Lcom/ihoc/mgpa/gradish/h1;->a(Ljava/lang/String;ILcom/ihoc/mgpa/IMGPAService$TouchEventWrapper;)V

    goto :goto_0

    .line 22
    :cond_4
    sget-object v0, Lcom/ihoc/mgpa/gradish/f1;->o:Ljava/lang/String;

    const-string v2, "TuringShield start with activity!"

    invoke-static {v0, v2}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->getOpenId()Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/ihoc/mgpa/gradish/f1;->a:I

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/EngineUtil;->getGameMainActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/ihoc/mgpa/gradish/h1;->a(Ljava/lang/String;ILandroid/app/Activity;)V

    .line 25
    :goto_0
    invoke-direct {p0, v1}, Lcom/ihoc/mgpa/gradish/f1;->a(Z)V

    .line 26
    iget v0, p0, Lcom/ihoc/mgpa/gradish/f1;->g:I

    if-eqz v0, :cond_5

    .line 27
    sget-object v0, Lcom/ihoc/mgpa/gradish/f1;->o:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "This collect action will be stopped after "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/ihoc/mgpa/gradish/f1;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-static {}, Lcom/ihoc/mgpa/gradish/s1;->b()Lcom/ihoc/mgpa/gradish/s1;

    move-result-object v0

    iget v1, p0, Lcom/ihoc/mgpa/gradish/f1;->g:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    const-string/jumbo v3, "stop"

    invoke-virtual {v0, v3, v1, v2}, Lcom/ihoc/mgpa/gradish/s1;->a(Ljava/lang/String;J)V

    :cond_5
    return-void

    .line 29
    :cond_6
    :goto_1
    sget-object v0, Lcom/ihoc/mgpa/gradish/f1;->o:Ljava/lang/String;

    const-string v1, "no openid, you should set openid first before turing shield start!"

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private c()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/ihoc/mgpa/gradish/f1;->i:Z

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/ihoc/mgpa/gradish/f1;->o:Ljava/lang/String;

    const-string v1, "Warning, turing shield sdk is not available, ple check!."

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    invoke-static {}, Lcom/ihoc/mgpa/gradish/h1;->a()V

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, v0}, Lcom/ihoc/mgpa/gradish/f1;->a(Z)V

    return-void
.end method

.method private d()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/ihoc/mgpa/gradish/f1;->i:Z

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/ihoc/mgpa/gradish/f1;->o:Ljava/lang/String;

    const-string v1, "Warning, turing shield sdk is not available, ple check!."

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    iget v0, p0, Lcom/ihoc/mgpa/gradish/f1;->a:I

    invoke-static {v0}, Lcom/ihoc/mgpa/gradish/h1;->a(I)V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 1

    .line 11
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isTuringShieldFuncOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 12
    sget-object p1, Lcom/ihoc/mgpa/gradish/f1;->o:Ljava/lang/String;

    const-string p2, "Warning, turing shield func is not open, ple check!."

    invoke-static {p1, p2}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 15
    :cond_0
    iget-boolean v0, p0, Lcom/ihoc/mgpa/gradish/f1;->i:Z

    if-nez v0, :cond_1

    .line 16
    sget-object p1, Lcom/ihoc/mgpa/gradish/f1;->o:Ljava/lang/String;

    const-string p2, "Warning, turing shield sdk is not available, ple check!."

    invoke-static {p1, p2}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 19
    :cond_1
    invoke-static {p1}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getByKey(I)Lcom/ihoc/mgpa/toolkit/constant/KogKey;

    move-result-object p1

    .line 20
    sget-object v0, Lcom/ihoc/mgpa/gradish/f1$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    goto/16 :goto_2

    .line 57
    :cond_2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ihoc/mgpa/gradish/f1;->j:I

    .line 58
    iget p2, p0, Lcom/ihoc/mgpa/gradish/f1;->b:I

    if-eqz p2, :cond_a

    iget v0, p0, Lcom/ihoc/mgpa/gradish/f1;->k:I

    if-ne v0, p2, :cond_a

    .line 59
    iget p2, p0, Lcom/ihoc/mgpa/gradish/f1;->e:I

    if-eqz p2, :cond_3

    if-gt p1, p2, :cond_3

    .line 60
    sget-object p1, Lcom/ihoc/mgpa/gradish/f1;->o:Ljava/lang/String;

    const-string p2, "Start to collect data by usercount."

    invoke-static {p1, p2}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/f1;->b()V

    .line 63
    :cond_3
    iget p1, p0, Lcom/ihoc/mgpa/gradish/f1;->f:I

    if-eqz p1, :cond_a

    iget p1, p0, Lcom/ihoc/mgpa/gradish/f1;->j:I

    iget p2, p0, Lcom/ihoc/mgpa/gradish/f1;->c:I

    if-lt p1, p2, :cond_a

    .line 64
    sget-object p1, Lcom/ihoc/mgpa/gradish/f1;->o:Ljava/lang/String;

    const-string p2, "Stop collecting data by usercount."

    invoke-static {p1, p2}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/f1;->c()V

    goto/16 :goto_2

    .line 66
    :cond_4
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ihoc/mgpa/gradish/f1;->k:I

    const/4 p2, 0x4

    if-ne p1, p2, :cond_5

    .line 68
    sget-object p1, Lcom/ihoc/mgpa/gradish/f1;->o:Ljava/lang/String;

    const-string p2, "Game now enter into lobby, reset collect count."

    invoke-static {p1, p2}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 69
    iput p1, p0, Lcom/ihoc/mgpa/gradish/f1;->l:I

    .line 72
    :cond_5
    iget p1, p0, Lcom/ihoc/mgpa/gradish/f1;->e:I

    if-eqz p1, :cond_7

    iget p1, p0, Lcom/ihoc/mgpa/gradish/f1;->f:I

    if-eqz p1, :cond_7

    .line 73
    iget p1, p0, Lcom/ihoc/mgpa/gradish/f1;->b:I

    if-eqz p1, :cond_6

    iget p2, p0, Lcom/ihoc/mgpa/gradish/f1;->k:I

    if-ne p2, p1, :cond_6

    .line 74
    iget p2, p0, Lcom/ihoc/mgpa/gradish/f1;->j:I

    if-ge p2, p1, :cond_7

    .line 75
    sget-object p1, Lcom/ihoc/mgpa/gradish/f1;->o:Ljava/lang/String;

    const-string p2, "Start to collect data by scene and usercount."

    invoke-static {p1, p2}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/f1;->b()V

    goto :goto_0

    .line 78
    :cond_6
    iget p1, p0, Lcom/ihoc/mgpa/gradish/f1;->c:I

    if-eqz p1, :cond_7

    iget p2, p0, Lcom/ihoc/mgpa/gradish/f1;->k:I

    if-ne p2, p1, :cond_7

    .line 79
    sget-object p1, Lcom/ihoc/mgpa/gradish/f1;->o:Ljava/lang/String;

    const-string p2, "Stop collecting data by scene and usercount."

    invoke-static {p1, p2}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/f1;->c()V

    .line 84
    :cond_7
    :goto_0
    iget p1, p0, Lcom/ihoc/mgpa/gradish/f1;->e:I

    if-nez p1, :cond_9

    iget p1, p0, Lcom/ihoc/mgpa/gradish/f1;->f:I

    if-nez p1, :cond_9

    .line 85
    iget p1, p0, Lcom/ihoc/mgpa/gradish/f1;->b:I

    if-eqz p1, :cond_8

    iget p2, p0, Lcom/ihoc/mgpa/gradish/f1;->k:I

    if-ne p2, p1, :cond_8

    .line 86
    sget-object p1, Lcom/ihoc/mgpa/gradish/f1;->o:Ljava/lang/String;

    const-string p2, "Start to collect data by only scene."

    invoke-static {p1, p2}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/f1;->b()V

    goto :goto_1

    .line 88
    :cond_8
    iget p1, p0, Lcom/ihoc/mgpa/gradish/f1;->c:I

    if-eqz p1, :cond_9

    iget p2, p0, Lcom/ihoc/mgpa/gradish/f1;->k:I

    if-ne p2, p1, :cond_9

    .line 89
    sget-object p1, Lcom/ihoc/mgpa/gradish/f1;->o:Ljava/lang/String;

    const-string p2, "Stop collecting data by only scene."

    invoke-static {p1, p2}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/f1;->c()V

    .line 94
    :cond_9
    :goto_1
    iget p1, p0, Lcom/ihoc/mgpa/gradish/f1;->d:I

    if-eqz p1, :cond_a

    iget p2, p0, Lcom/ihoc/mgpa/gradish/f1;->k:I

    if-ne p2, p1, :cond_a

    .line 95
    sget-object p1, Lcom/ihoc/mgpa/gradish/f1;->o:Ljava/lang/String;

    const-string p2, "Report collected data by scene."

    invoke-static {p1, p2}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/f1;->d()V

    :cond_a
    :goto_2
    return-void
.end method

.method public a(Lcom/ihoc/mgpa/IMGPAService$TouchEventWrapper;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/ihoc/mgpa/gradish/f1;->n:Lcom/ihoc/mgpa/IMGPAService$TouchEventWrapper;

    return-void
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 9
    sget-object v0, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->SCENE:Lcom/ihoc/mgpa/toolkit/constant/KogKey;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKeyStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10
    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKey()I

    move-result v1

    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKeyStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/ihoc/mgpa/gradish/f1;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
