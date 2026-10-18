.class public Lcom/tencent/mna/base/jni/e;
.super Ljava/lang/Object;
.source "MnaJniWrapper.java"


# direct methods
.method public static a(II)I
    .locals 0

    .line 22
    :try_start_0
    invoke-static {p0, p1}, Lcom/tencent/mna/base/jni/MnaJni;->setFdTos(II)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    const/4 p0, -0x4

    return p0
.end method

.method public static a(IIIIILjava/lang/String;I)I
    .locals 0

    .line 9
    :try_start_0
    invoke-static/range {p0 .. p6}, Lcom/tencent/mna/base/jni/MnaJni;->transportInfo(IIIIILjava/lang/String;I)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    const/4 p0, -0x4

    return p0
.end method

.method public static a(IIIILjava/lang/String;)I
    .locals 0

    .line 8
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/tencent/mna/base/jni/MnaJni;->transportActionEndSpeed(IIIILjava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    const/4 p0, -0x4

    return p0
.end method

.method public static a(IIIILjava/lang/String;I)I
    .locals 0

    .line 6
    :try_start_0
    invoke-static/range {p0 .. p5}, Lcom/tencent/mna/base/jni/MnaJni;->uploadGameValue(IIIILjava/lang/String;I)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    const/4 p0, -0x4

    return p0
.end method

.method public static a(IIII[I[I[I)I
    .locals 0

    .line 7
    :try_start_0
    invoke-static/range {p0 .. p6}, Lcom/tencent/mna/base/jni/MnaJni;->transportInfoFpsMoveClick(IIII[I[I[I)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    const/4 p0, -0x4

    return p0
.end method

.method public static a(IJJLjava/lang/String;)I
    .locals 0

    .line 36
    :try_start_0
    invoke-static/range {p0 .. p5}, Lcom/tencent/mna/base/jni/MnaJni;->checkTypeAndMsgValid(IJJLjava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    const/4 p0, -0x4

    return p0
.end method

.method public static a(I[BIIIIIILjava/lang/String;I)I
    .locals 0

    .line 38
    :try_start_0
    invoke-static/range {p0 .. p9}, Lcom/tencent/mna/base/jni/MnaJni;->getV6DelayWithFpsApm(I[BIIIIIILjava/lang/String;I)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    const/16 p0, 0x1f5

    return p0
.end method

.method public static a(I[BIILjava/lang/String;I)I
    .locals 0

    .line 5
    :try_start_0
    invoke-static/range {p0 .. p5}, Lcom/tencent/mna/base/jni/MnaJni;->getV6DirectDelay(I[BIILjava/lang/String;I)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    const/4 p0, -0x4

    return p0
.end method

.method public static a(Ljava/lang/String;)I
    .locals 0

    .line 24
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/base/jni/MnaJni;->endFps(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    const/4 p0, -0x4

    return p0
.end method

.method public static a(Ljava/lang/String;I)I
    .locals 0

    .line 23
    :try_start_0
    invoke-static {p0, p1}, Lcom/tencent/mna/base/jni/MnaJni;->startFps(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    const/4 p0, -0x4

    return p0
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;ZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
    .locals 0

    .line 40
    :try_start_0
    invoke-static/range {p0 .. p10}, Lcom/tencent/mna/base/jni/MnaJni;->uploadFullFile(Ljava/lang/String;ILjava/lang/String;ZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    const/16 p0, 0x1f5

    return p0
.end method

.method public static a(Ljava/lang/String;J)I
    .locals 0

    .line 13
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/tencent/mna/base/jni/MnaJni;->hookClose(Ljava/lang/String;J)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    const/4 p0, -0x4

    return p0
.end method

.method public static a(Ljava/lang/String;JJ)I
    .locals 0

    .line 11
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/tencent/mna/base/jni/MnaJni;->hookUdpSendMsg(Ljava/lang/String;JJ)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    const/4 p0, -0x4

    return p0
.end method

.method public static a(Ljava/lang/String;JJJ)I
    .locals 0

    .line 12
    :try_start_0
    invoke-static/range {p0 .. p6}, Lcom/tencent/mna/base/jni/MnaJni;->hookUdpConnectSendMsg(Ljava/lang/String;JJJ)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    const/4 p0, -0x4

    return p0
.end method

.method public static a(ILjava/lang/String;IIIILjava/lang/String;I)Lcom/tencent/mna/base/jni/entity/CloudRet;
    .locals 0

    .line 37
    :try_start_0
    invoke-static/range {p0 .. p7}, Lcom/tencent/mna/base/jni/MnaJni;->requestGameStatus(ILjava/lang/String;IIIILjava/lang/String;I)Lcom/tencent/mna/base/jni/entity/CloudRet;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(ZILjava/lang/String;ILjava/lang/String;I)Lcom/tencent/mna/base/jni/entity/CloudRet;
    .locals 0

    .line 3
    :try_start_0
    invoke-static/range {p0 .. p5}, Lcom/tencent/mna/base/jni/MnaJni;->requestCloud(ZILjava/lang/String;ILjava/lang/String;I)Lcom/tencent/mna/base/jni/entity/CloudRet;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(IIIIII)Ljava/lang/String;
    .locals 0

    .line 25
    :try_start_0
    invoke-static/range {p0 .. p5}, Lcom/tencent/mna/base/jni/MnaJni;->getDelayDetail(IIIIII)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 30
    :catchall_0
    const-string p0, ""

    return-object p0
.end method

.method public static a(Ljava/lang/String;III)Ljava/lang/String;
    .locals 0

    .line 31
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/tencent/mna/base/jni/MnaJni;->getIpGroupDelays(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 35
    :catchall_0
    const-string p0, ""

    return-object p0
.end method

.method public static a()V
    .locals 0

    .line 19
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/jni/MnaJni;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static a(I)V
    .locals 0

    .line 4
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/base/jni/MnaJni;->closeFd(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static a(IIII)V
    .locals 0

    .line 15
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/tencent/mna/base/jni/MnaJni;->turnDoubleSend(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static a(IZLjava/lang/String;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/tencent/mna/base/jni/MnaJni;->init(IZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static a(I[BIIIII)V
    .locals 0

    .line 17
    :try_start_0
    invoke-static/range {p0 .. p6}, Lcom/tencent/mna/base/jni/MnaJni;->startV6UdpSendLoop(I[BIIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static a(JIILjava/lang/String;)V
    .locals 0

    .line 20
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/tencent/mna/base/jni/MnaJni;->notify(JIILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static a(JLjava/lang/String;ILjava/lang/String;IIIILjava/lang/String;IILjava/lang/String;IILjava/lang/String;IILjava/lang/String;IIILjava/lang/String;ILjava/lang/String;I)V
    .locals 0

    .line 21
    :try_start_0
    invoke-static/range {p0 .. p25}, Lcom/tencent/mna/base/jni/MnaJni;->kartinNotify(JLjava/lang/String;ILjava/lang/String;IIIILjava/lang/String;IILjava/lang/String;IILjava/lang/String;IILjava/lang/String;IIILjava/lang/String;ILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    .line 39
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/tencent/mna/base/jni/MnaJni;->setGameIpAndLocalIp(Ljava/lang/String;ILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    :try_start_0
    invoke-static {p0, p1}, Lcom/tencent/mna/base/jni/MnaJni;->setPkg(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static a(Z)V
    .locals 0

    .line 10
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/base/jni/MnaJni;->nHook(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static a(ZI)V
    .locals 0

    .line 14
    :try_start_0
    invoke-static {p0, p1}, Lcom/tencent/mna/base/jni/MnaJni;->turnFilter(ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static a([Ljava/lang/String;)V
    .locals 0

    .line 18
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/base/jni/MnaJni;->addHookIps([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static a(I[BILjava/lang/String;)Z
    .locals 0

    .line 16
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/tencent/mna/base/jni/MnaJni;->startV6DoubleNeg(I[BILjava/lang/String;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b()I
    .locals 1

    .line 12
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/jni/MnaJni;->detectLocalIpStack()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    const/4 v0, -0x4

    return v0
.end method

.method public static b(I)I
    .locals 0

    .line 5
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/base/jni/MnaJni;->getFd(I)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    const/4 p0, -0x4

    return p0
.end method

.method public static b(IIIILjava/lang/String;)I
    .locals 0

    .line 7
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/tencent/mna/base/jni/MnaJni;->transportActionStartSpeed(IIIILjava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    const/4 p0, -0x4

    return p0
.end method

.method public static b(I[BIILjava/lang/String;I)I
    .locals 0

    .line 6
    :try_start_0
    invoke-static/range {p0 .. p5}, Lcom/tencent/mna/base/jni/MnaJni;->getV6MatchDirectDelay(I[BIILjava/lang/String;I)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    const/4 p0, -0x4

    return p0
.end method

.method public static b(Ljava/lang/String;J)I
    .locals 0

    .line 10
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/tencent/mna/base/jni/MnaJni;->hookSelect(Ljava/lang/String;J)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    const/4 p0, -0x4

    return p0
.end method

.method public static b(Ljava/lang/String;JJ)I
    .locals 0

    .line 8
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/tencent/mna/base/jni/MnaJni;->hookUdpSendTo(Ljava/lang/String;JJ)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    const/4 p0, -0x4

    return p0
.end method

.method public static b(Ljava/lang/String;JJJ)I
    .locals 0

    .line 9
    :try_start_0
    invoke-static/range {p0 .. p6}, Lcom/tencent/mna/base/jni/MnaJni;->hookUdpConnectSendTo(Ljava/lang/String;JJJ)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    const/4 p0, -0x4

    return p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/base/jni/MnaJni;->getInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 4
    :catchall_0
    const-string p0, ""

    return-object p0
.end method

.method public static b(II)V
    .locals 0

    .line 11
    :try_start_0
    invoke-static {p0, p1}, Lcom/tencent/mna/base/jni/MnaJni;->startUdpRecvLoop(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static b(Z)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/base/jni/MnaJni;->setDebug(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static c()I
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/jni/MnaJni;->getSoVersion()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    const/4 v0, 0x0

    return v0
.end method

.method public static c(I)I
    .locals 0

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/base/jni/MnaJni;->getTcpFd(I)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    const/4 p0, -0x4

    return p0
.end method

.method public static c(Ljava/lang/String;)I
    .locals 0

    .line 5
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/base/jni/MnaJni;->sendToUnity(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    const/4 p0, -0x4

    return p0
.end method

.method public static c(Ljava/lang/String;JJJ)I
    .locals 0

    .line 3
    :try_start_0
    invoke-static/range {p0 .. p6}, Lcom/tencent/mna/base/jni/MnaJni;->hookUdpSend(Ljava/lang/String;JJJ)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    const/4 p0, -0x4

    return p0
.end method

.method public static c(Z)V
    .locals 0

    .line 4
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/base/jni/MnaJni;->setIsLoadMap(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static d(I)I
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/base/jni/MnaJni;->getV6Fd(I)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    const/4 p0, -0x4

    return p0
.end method

.method public static d()V
    .locals 0

    .line 3
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/jni/MnaJni;->switchNetworkBindingIdle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 0

    .line 4
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/base/jni/MnaJni;->setGameAssistFilterConfig(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static d(Z)V
    .locals 0

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/base/jni/MnaJni;->setIsShouldSpeed(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static e()V
    .locals 0

    .line 3
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/jni/MnaJni;->switchNetworkBindingToMobile()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static e(I)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/base/jni/MnaJni;->setHookPort(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 0

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/base/jni/MnaJni;->setMobileVip(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static f(Ljava/lang/String;)I
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/base/jni/MnaJni;->unhookClose(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    const/4 p0, -0x4

    return p0
.end method

.method public static f()V
    .locals 0

    .line 3
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/jni/MnaJni;->switchNetworkBindingToWifi()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static f(I)V
    .locals 0

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/base/jni/MnaJni;->setLoadMapSwitch(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static g(Ljava/lang/String;)I
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/base/jni/MnaJni;->unhookSelect(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    const/4 p0, -0x4

    return p0
.end method

.method public static g(I)V
    .locals 0

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/base/jni/MnaJni;->turnHookedFdTos(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static h(Ljava/lang/String;)I
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/base/jni/MnaJni;->unhookUdpConnectSendMsg(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    const/4 p0, -0x4

    return p0
.end method

.method public static i(Ljava/lang/String;)I
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/base/jni/MnaJni;->unhookUdpConnectSendTo(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    const/4 p0, -0x4

    return p0
.end method

.method public static j(Ljava/lang/String;)I
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/base/jni/MnaJni;->unhookUdpSend(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    const/4 p0, -0x4

    return p0
.end method

.method public static k(Ljava/lang/String;)I
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/base/jni/MnaJni;->unhookUdpSendMsg(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    const/4 p0, -0x4

    return p0
.end method

.method public static l(Ljava/lang/String;)I
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/base/jni/MnaJni;->unhookUdpSendTo(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    const/4 p0, -0x4

    return p0
.end method
