.class public Lcom/tencent/mna/base/jni/d;
.super Ljava/lang/Object;
.source "McJniWrapper.java"


# direct methods
.method public static a()I
    .locals 1

    .line 6
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/jni/McJni;->endMcSpeed()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    const/4 v0, 0x0

    return v0
.end method

.method public static a(III)I
    .locals 0

    .line 9
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/tencent/mna/base/jni/McJni;->getExportDelay(III)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    const/16 p0, 0x1f5

    return p0
.end method

.method public static a(IIIII)I
    .locals 0

    .line 7
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/tencent/mna/base/jni/McJni;->getForwardDelay(IIIII)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    const/16 p0, 0x1f5

    return p0
.end method

.method public static a(IIIIILjava/lang/String;)I
    .locals 0

    .line 8
    :try_start_0
    invoke-static/range {p0 .. p5}, Lcom/tencent/mna/base/jni/McJni;->getMatchForwardDelay(IIIIILjava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    const/16 p0, 0x1f5

    return p0
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;II)I
    .locals 0

    .line 2
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/tencent/mna/base/jni/McJni;->updateProxyIp(Ljava/lang/String;ILjava/lang/String;II)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    const p0, 0x13a14

    return p0
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;IIILjava/lang/String;IZ)I
    .locals 0

    .line 1
    :try_start_0
    invoke-static/range {p0 .. p8}, Lcom/tencent/mna/base/jni/McJni;->prepare(Ljava/lang/String;ILjava/lang/String;IIILjava/lang/String;IZ)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    const p0, 0x13a14

    return p0
.end method

.method public static a(Ljava/lang/String;IZ)I
    .locals 0

    .line 3
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/tencent/mna/base/jni/McJni;->prepareExport(Ljava/lang/String;IZ)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    const p0, 0x10364

    return p0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    .line 5
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/base/jni/McJni;->setVpnIp(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static a(Z)V
    .locals 0

    .line 4
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/base/jni/McJni;->setMainTunnelEnable(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static b(III)I
    .locals 0

    .line 2
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/tencent/mna/base/jni/McJni;->getV6ExportDelay(III)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    const/16 p0, 0x1f5

    return p0
.end method

.method public static b()J
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/jni/McJni;->getMcConnectPtr()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static c()J
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/jni/McJni;->getMcRecvFromPtr()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static d()J
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/jni/McJni;->getMcRecvMsgPtr()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static e()J
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/jni/McJni;->getMcRecvPtr()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static f()J
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/jni/McJni;->getMcSelectPtr()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static g()J
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/jni/McJni;->getMcSendMsgPtr()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static h()J
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/jni/McJni;->getMcSendPtr()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static i()J
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/jni/McJni;->getMcSendToPtr()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static j()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/jni/McJni;->getMcStatistics()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 3
    :catchall_0
    const-string v0, ""

    return-object v0
.end method
