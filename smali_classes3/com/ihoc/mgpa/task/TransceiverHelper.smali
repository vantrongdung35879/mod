.class public final Lcom/ihoc/mgpa/task/TransceiverHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile mTransceiverHelper:Lcom/ihoc/mgpa/task/TransceiverHelper;


# instance fields
.field private mLastSceneID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget-object v0, Lcom/ihoc/mgpa/toolkit/constant/SceneID;->NO_SET:Lcom/ihoc/mgpa/toolkit/constant/SceneID;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/constant/SceneID;->getSceneID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ihoc/mgpa/task/TransceiverHelper;->mLastSceneID:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/ihoc/mgpa/task/TransceiverHelper;
    .locals 2

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/task/TransceiverHelper;->mTransceiverHelper:Lcom/ihoc/mgpa/task/TransceiverHelper;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/ihoc/mgpa/task/TransceiverHelper;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/ihoc/mgpa/task/TransceiverHelper;->mTransceiverHelper:Lcom/ihoc/mgpa/task/TransceiverHelper;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/ihoc/mgpa/task/TransceiverHelper;

    invoke-direct {v1}, Lcom/ihoc/mgpa/task/TransceiverHelper;-><init>()V

    sput-object v1, Lcom/ihoc/mgpa/task/TransceiverHelper;->mTransceiverHelper:Lcom/ihoc/mgpa/task/TransceiverHelper;

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
    sget-object v0, Lcom/ihoc/mgpa/task/TransceiverHelper;->mTransceiverHelper:Lcom/ihoc/mgpa/task/TransceiverHelper;

    return-object v0
.end method

.method private handlerSceneID(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/gradish/o;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sceneID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", lastSceneID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ihoc/mgpa/task/TransceiverHelper;->mLastSceneID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/ihoc/mgpa/toolkit/constant/SceneID;->MAIN_UI:Lcom/ihoc/mgpa/toolkit/constant/SceneID;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/constant/SceneID;->getSceneID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ihoc/mgpa/task/TransceiverHelper;->mLastSceneID:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/constant/SceneID;->getSceneID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    :cond_0
    const-string v1, "start"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    :cond_1
    invoke-static {}, Lcom/ihoc/mgpa/gradish/d1;->c()Lcom/ihoc/mgpa/gradish/d1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ihoc/mgpa/gradish/d1;->d()V

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/constant/SceneID;->getSceneID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/ihoc/mgpa/task/TransceiverHelper;->mLastSceneID:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/constant/SceneID;->getSceneID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 7
    :cond_3
    const-string/jumbo v0, "stop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 9
    :cond_4
    invoke-static {}, Lcom/ihoc/mgpa/gradish/d1;->c()Lcom/ihoc/mgpa/gradish/d1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ihoc/mgpa/gradish/d1;->e()V

    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method public handleHashMapData(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isTransceiverOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    sget-object v0, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->SCENE:Lcom/ihoc/mgpa/toolkit/constant/KogKey;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKeyStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKey()I

    move-result v1

    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKeyStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/ihoc/mgpa/task/TransceiverHelper;->handleKeyValueData(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public handleKeyValueData(ILjava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isTransceiverOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->SCENE:Lcom/ihoc/mgpa/toolkit/constant/KogKey;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKey()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 2
    iget-object p1, p0, Lcom/ihoc/mgpa/task/TransceiverHelper;->mLastSceneID:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "TransceiverHelper: sceneID: %s , lastSceneID: %s "

    invoke-static {p1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Lcom/ihoc/mgpa/gradish/L;->c()Lcom/ihoc/mgpa/gradish/L;

    move-result-object p1

    iget-object p1, p1, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iget-object p1, p1, Lcom/ihoc/mgpa/gradish/L$a;->B:Lcom/ihoc/mgpa/gradish/U0;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1, p2}, Lcom/ihoc/mgpa/gradish/U0;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ihoc/mgpa/task/TransceiverHelper;->mLastSceneID:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    invoke-static {}, Lcom/ihoc/mgpa/gradish/d1;->c()Lcom/ihoc/mgpa/gradish/d1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ihoc/mgpa/gradish/d1;->d()V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1, p2}, Lcom/ihoc/mgpa/gradish/U0;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/ihoc/mgpa/task/TransceiverHelper;->mLastSceneID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 9
    invoke-static {}, Lcom/ihoc/mgpa/gradish/d1;->c()Lcom/ihoc/mgpa/gradish/d1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ihoc/mgpa/gradish/d1;->e()V

    .line 11
    :cond_1
    :goto_0
    iput-object p2, p0, Lcom/ihoc/mgpa/task/TransceiverHelper;->mLastSceneID:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public handleLocalTaskData(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isTransceiverOpen()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "LocalTransceiver func is not open. "

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->print(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "LocalTransceiver value is empty!"

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->print(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 9
    :cond_1
    invoke-static {p1}, Lcom/ihoc/mgpa/gradish/y0;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    invoke-static {p1}, Lcom/ihoc/mgpa/gradish/y0;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_2
    invoke-static {}, Lcom/ihoc/mgpa/gradish/d1;->c()Lcom/ihoc/mgpa/gradish/d1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ihoc/mgpa/gradish/d1;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public handleLocalTaskTapdData(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/gradish/L;->c()Lcom/ihoc/mgpa/gradish/L;

    move-result-object v0

    iget-object v0, v0, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    iget-boolean v0, v0, Lcom/ihoc/mgpa/gradish/L$b;->p:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "LocalTransceiverTapd func is not open. "

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->print(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "LocalTransceiverTapd value is empty!"

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->print(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 9
    :cond_1
    invoke-static {}, Lcom/ihoc/mgpa/gradish/d1;->c()Lcom/ihoc/mgpa/gradish/d1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ihoc/mgpa/gradish/d1;->a(Ljava/lang/String;)V

    return-void
.end method

.method public handleTaskData(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isTransceiverOpen()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "Transceiver func is not open. "

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->print(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "Transceiver value is empty!"

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->print(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 9
    :cond_1
    const-string v0, "start"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    invoke-static {}, Lcom/ihoc/mgpa/gradish/d1;->c()Lcom/ihoc/mgpa/gradish/d1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ihoc/mgpa/gradish/d1;->d()V

    goto :goto_0

    .line 11
    :cond_2
    const-string/jumbo v0, "stop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    invoke-static {}, Lcom/ihoc/mgpa/gradish/d1;->c()Lcom/ihoc/mgpa/gradish/d1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ihoc/mgpa/gradish/d1;->e()V

    goto :goto_0

    .line 13
    :cond_3
    const-string v0, "init"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14
    invoke-virtual {p0}, Lcom/ihoc/mgpa/task/TransceiverHelper;->initAfterLogin()V

    goto :goto_0

    .line 15
    :cond_4
    const-string v0, "preInit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 16
    invoke-virtual {p0}, Lcom/ihoc/mgpa/task/TransceiverHelper;->initBeforeLogin()V

    goto :goto_0

    .line 18
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Transceiver value is not correct! value: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->print(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public initAfterLogin()V
    .locals 8

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isTransceiverOpen()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->getOpenId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "TransceiverHelper: openID is null, you should set openid first!"

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 7
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 8
    const-string v2, "model"

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/DeviceUtil;->getProductModel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    invoke-static {}, Lcom/ihoc/mgpa/gradish/d1;->c()Lcom/ihoc/mgpa/gradish/d1;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ihoc/mgpa/gradish/d1;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 11
    :catch_0
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "TransceiverHelper: set model to task failed!"

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    :goto_0
    invoke-static {}, Lcom/ihoc/mgpa/gradish/d1;->c()Lcom/ihoc/mgpa/gradish/d1;

    move-result-object v2

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->getOpenId()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/ihoc/mgpa/gradish/i1;->f()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/ihoc/mgpa/gradish/l;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object v6

    sget-object v0, Lcom/ihoc/mgpa/toolkit/constant/SceneID;->MAIN_UI:Lcom/ihoc/mgpa/toolkit/constant/SceneID;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/constant/SceneID;->getSceneID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/ihoc/mgpa/gradish/d1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 15
    :cond_1
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "TransceiverHelper: Transceiver func is not open. "

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->print(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public initBeforeLogin()V
    .locals 8

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/gradish/L;->c()Lcom/ihoc/mgpa/gradish/L;

    move-result-object v0

    iget-object v0, v0, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    iget-boolean v0, v0, Lcom/ihoc/mgpa/gradish/L$b;->m:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/SharedPrefUtil;->getUserId()Ljava/lang/String;

    move-result-object v3

    .line 3
    invoke-static {}, Lcom/ihoc/mgpa/gradish/i1;->f()Ljava/lang/String;

    move-result-object v4

    .line 4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "TransceiverHelper: openid & xid is null, wait user login!"

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 9
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 10
    const-string v2, "model"

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/DeviceUtil;->getProductModel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    invoke-static {}, Lcom/ihoc/mgpa/gradish/d1;->c()Lcom/ihoc/mgpa/gradish/d1;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ihoc/mgpa/gradish/d1;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 13
    :catch_0
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "TransceiverHelper: set model to task failed!"

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    :goto_0
    invoke-static {}, Lcom/ihoc/mgpa/gradish/d1;->c()Lcom/ihoc/mgpa/gradish/d1;

    move-result-object v2

    invoke-static {}, Lcom/ihoc/mgpa/gradish/l;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object v6

    sget-object v0, Lcom/ihoc/mgpa/toolkit/constant/SceneID;->START:Lcom/ihoc/mgpa/toolkit/constant/SceneID;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/constant/SceneID;->getSceneID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/ihoc/mgpa/gradish/d1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 17
    :cond_1
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "TransceiverHelper: preTransceiver func is not open. "

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->print(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public registerCallback(Lcom/ihoc/mgpa/MgpaCallback;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/gradish/d1;->c()Lcom/ihoc/mgpa/gradish/d1;

    move-result-object v0

    new-instance v1, Lcom/ihoc/mgpa/task/TransceiverHelper$a;

    invoke-direct {v1, p0, p1}, Lcom/ihoc/mgpa/task/TransceiverHelper$a;-><init>(Lcom/ihoc/mgpa/task/TransceiverHelper;Lcom/ihoc/mgpa/MgpaCallback;)V

    invoke-virtual {v0, v1}, Lcom/ihoc/mgpa/gradish/d1;->a(Lcom/ihoc/mgpa/reflectinterface/ITransceiverCallback;)V

    return-void
.end method

.method public runLocalTaskWithCallback(Ljava/lang/String;Lcom/ihoc/mgpa/reflectinterface/ITransceiverCallback;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isTransceiverOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/ihoc/mgpa/gradish/d1;->c()Lcom/ihoc/mgpa/gradish/d1;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ihoc/mgpa/gradish/d1;->a(Ljava/lang/String;Lcom/ihoc/mgpa/reflectinterface/ITransceiverCallback;)V

    :cond_0
    return-void
.end method
