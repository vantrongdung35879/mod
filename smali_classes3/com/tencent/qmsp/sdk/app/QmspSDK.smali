.class public Lcom/tencent/qmsp/sdk/app/QmspSDK;
.super Lcom/tencent/qmsp/sdk/app/a;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/qmsp/sdk/app/a;-><init>()V

    return-void
.end method

.method public static bridge synthetic getAppID()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/tencent/qmsp/sdk/app/a;->getAppID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic getAtomCbTimeout()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    invoke-static {}, Lcom/tencent/qmsp/sdk/app/a;->getAtomCbTimeout()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic getAtomConnTimeOut()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    invoke-static {}, Lcom/tencent/qmsp/sdk/app/a;->getAtomConnTimeOut()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic getAtomReadTimeOut()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    invoke-static {}, Lcom/tencent/qmsp/sdk/app/a;->getAtomReadTimeOut()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic getAtomUpdateInterval()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    invoke-static {}, Lcom/tencent/qmsp/sdk/app/a;->getAtomUpdateInterval()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic getContext()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/tencent/qmsp/sdk/app/a;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic getDevId()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/tencent/qmsp/sdk/app/a;->getDevId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic getQ16()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/tencent/qmsp/sdk/app/a;->getQ16()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getQmspVer()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/tencent/qmsp/sdk/a/c;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSDKIsAlive()Z
    .locals 1

    invoke-static {}, Lcom/tencent/qmsp/sdk/app/a;->getTaskStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/qmsp/sdk/app/b;->e()Lcom/tencent/qmsp/sdk/app/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qmsp/sdk/app/b;->a()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static bridge synthetic getTaskStatus()Z
    .locals 1

    invoke-static {}, Lcom/tencent/qmsp/sdk/app/a;->getTaskStatus()Z

    move-result v0

    return v0
.end method

.method public static bridge synthetic getUid()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/tencent/qmsp/sdk/app/a;->getUid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sendCmdToLib(III[Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 6

    invoke-static {}, Lcom/tencent/qmsp/sdk/c/f;->i()Lcom/tencent/qmsp/sdk/c/f;

    move-result-object v0

    move v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/qmsp/sdk/c/f;->a(III[Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static setLogcat(Z)V
    .locals 0

    invoke-static {p0}, Lcom/tencent/qmsp/sdk/f/g;->a(Z)V

    return-void
.end method

.method public static bridge synthetic setmUid(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/tencent/qmsp/sdk/app/a;->setmUid(Ljava/lang/String;)V

    return-void
.end method

.method public static startQmsp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/tencent/qmsp/sdk/app/a;->login(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static startQmsp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/qmsp/sdk/b/f;)I
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/tencent/qmsp/sdk/app/a;->login(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/qmsp/sdk/b/f;)I

    move-result p0

    return p0
.end method

.method public static stopQmsp()V
    .locals 0

    invoke-static {}, Lcom/tencent/qmsp/sdk/app/a;->logout()V

    return-void
.end method
