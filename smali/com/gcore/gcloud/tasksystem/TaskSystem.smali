.class public Lcom/gcore/gcloud/tasksystem/TaskSystem;
.super Ljava/lang/Object;
.source "TaskSystem.java"


# static fields
.field public static Instance:Lcom/gcore/gcloud/tasksystem/TaskSystem;

.field private static transceiverManagerInit:Ljava/lang/reflect/Method;

.field private static transceiverManagerInstance:Ljava/lang/Object;

.field private static transceiverManagerSetTaskConfig:Ljava/lang/reflect/Method;

.field private static transceiverManagerStart:Ljava/lang/reflect/Method;

.field private static transceiverManagerStop:Ljava/lang/reflect/Method;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/gcore/gcloud/tasksystem/TaskSystem;

    invoke-direct {v0}, Lcom/gcore/gcloud/tasksystem/TaskSystem;-><init>()V

    sput-object v0, Lcom/gcore/gcloud/tasksystem/TaskSystem;->Instance:Lcom/gcore/gcloud/tasksystem/TaskSystem;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/gcore/gcloud/tasksystem/TaskSystem;->mContext:Landroid/content/Context;

    return-void
.end method

.method private checkTaskValid()Z
    .locals 11

    .line 75
    const-string/jumbo v0, "setTaskConfig"

    const-string v1, "checkTaskValid error:%s"

    const-string v2, "ENQSDK"

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 78
    :try_start_0
    const-string v5, "com.enq.transceiver.TransceiverManager"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 80
    const-string v6, "getInstance"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6, v7, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sput-object v6, Lcom/gcore/gcloud/tasksystem/TaskSystem;->transceiverManagerInstance:Ljava/lang/Object;

    .line 82
    const-string v6, "init"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v3

    aput-object v9, v8, v4

    const-class v9, Landroid/content/Context;

    const/4 v10, 0x2

    aput-object v9, v8, v10

    invoke-virtual {v5, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sput-object v6, Lcom/gcore/gcloud/tasksystem/TaskSystem;->transceiverManagerInit:Ljava/lang/reflect/Method;

    .line 83
    const-string/jumbo v6, "start"

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sput-object v6, Lcom/gcore/gcloud/tasksystem/TaskSystem;->transceiverManagerStart:Ljava/lang/reflect/Method;

    .line 84
    const-string/jumbo v6, "stop"

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sput-object v6, Lcom/gcore/gcloud/tasksystem/TaskSystem;->transceiverManagerStop:Ljava/lang/reflect/Method;

    .line 85
    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v3

    invoke-virtual {v5, v0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sput-object v6, Lcom/gcore/gcloud/tasksystem/TaskSystem;->transceiverManagerSetTaskConfig:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 92
    :try_start_1
    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v3

    invoke-virtual {v5, v0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/gcore/gcloud/tasksystem/TaskSystem;->transceiverManagerSetTaskConfig:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 94
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v0, v5, v3

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v4

    :catch_1
    move-exception v0

    .line 87
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v3

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/gcore/gcloud/tasksystem/TaskSystem;->mContext:Landroid/content/Context;

    .line 21
    invoke-direct {p0}, Lcom/gcore/gcloud/tasksystem/TaskSystem;->checkTaskValid()Z

    return-void
.end method

.method public setTaskConfig(Ljava/lang/String;)V
    .locals 6

    .line 60
    sget-object v0, Lcom/gcore/gcloud/tasksystem/TaskSystem;->transceiverManagerInstance:Ljava/lang/Object;

    const-string v1, "ENQSDK"

    if-eqz v0, :cond_1

    sget-object v2, Lcom/gcore/gcloud/tasksystem/TaskSystem;->transceiverManagerSetTaskConfig:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 67
    :try_start_0
    new-array v5, v4, [Ljava/lang/Object;

    aput-object p1, v5, v3

    invoke-virtual {v2, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 69
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    aput-object p1, v0, v3

    const-string/jumbo p1, "setTaskConfig error:%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    .line 62
    :cond_1
    :goto_1
    const-string p1, "can not find TransceiverManager"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public start(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 28
    sget-object v0, Lcom/gcore/gcloud/tasksystem/TaskSystem;->transceiverManagerInstance:Ljava/lang/Object;

    const-string v1, "ENQSDK"

    if-eqz v0, :cond_1

    sget-object v2, Lcom/gcore/gcloud/tasksystem/TaskSystem;->transceiverManagerInit:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_1

    sget-object v3, Lcom/gcore/gcloud/tasksystem/TaskSystem;->transceiverManagerStart:Ljava/lang/reflect/Method;

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 36
    :try_start_0
    iget-object v5, p0, Lcom/gcore/gcloud/tasksystem/TaskSystem;->mContext:Landroid/content/Context;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v3

    aput-object p2, v6, v4

    const/4 p1, 0x2

    aput-object v5, v6, p1

    invoke-virtual {v2, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object p1, Lcom/gcore/gcloud/tasksystem/TaskSystem;->transceiverManagerStart:Ljava/lang/reflect/Method;

    sget-object p2, Lcom/gcore/gcloud/tasksystem/TaskSystem;->transceiverManagerInstance:Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 39
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v4, [Ljava/lang/Object;

    aput-object p1, p2, v3

    const-string/jumbo p1, "start error:%s"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    .line 31
    :cond_1
    :goto_1
    const-string p1, "can not find TransceiverManager"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stop()V
    .locals 4

    .line 45
    sget-object v0, Lcom/gcore/gcloud/tasksystem/TaskSystem;->transceiverManagerInstance:Ljava/lang/Object;

    const-string v1, "ENQSDK"

    if-eqz v0, :cond_1

    sget-object v2, Lcom/gcore/gcloud/tasksystem/TaskSystem;->transceiverManagerStop:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 52
    :try_start_0
    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string/jumbo v0, "stop error:%s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    .line 47
    :cond_1
    :goto_1
    const-string v0, "can not find TransceiverManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
