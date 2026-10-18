.class public Lcom/tencent/mna/base/jni/f;
.super Ljava/lang/Object;
.source "TCallJniWrapper.java"


# direct methods
.method public static a(IIIII)I
    .locals 0

    .line 4
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/tencent/mna/base/jni/TCallJni;->getForwardDelay(IIIII)I

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

    .line 5
    :try_start_0
    invoke-static/range {p0 .. p5}, Lcom/tencent/mna/base/jni/TCallJni;->getMatchForwardDelay(IIIIILjava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    const/16 p0, 0x1f5

    return p0
.end method

.method public static a(Ljava/lang/String;)I
    .locals 0

    .line 6
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/base/jni/TCallJni;->getExportDelay(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    const/16 p0, 0x1f5

    return p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 3
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/tencent/mna/base/jni/TCallJni;->connectNegotiate(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    const p0, 0x11172

    return p0
.end method

.method public static a(Z)I
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/base/jni/TCallJni;->tcallInit(Z)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    const p0, 0x11170

    return p0
.end method

.method public static a()Lcom/tencent/mna/base/jni/entity/TCallExportInfo;
    .locals 1

    .line 7
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/jni/TCallJni;->getExportInfo()Lcom/tencent/mna/base/jni/entity/TCallExportInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/jni/entity/TCallTunnelRet;
    .locals 0

    .line 2
    :try_start_0
    invoke-static {p0, p1}, Lcom/tencent/mna/base/jni/TCallJni;->createTunnel(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/jni/entity/TCallTunnelRet;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/jni/TCallJni;->getExportIp()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 3
    :catchall_0
    const-string v0, "0.0.0.0"

    return-object v0
.end method

.method public static c()J
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/jni/TCallJni;->getTCallClosePtr()J

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
    invoke-static {}, Lcom/tencent/mna/base/jni/TCallJni;->getTCallConnectPtr()J

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
    invoke-static {}, Lcom/tencent/mna/base/jni/TCallJni;->getTCallRecvFromPtr()J

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
    invoke-static {}, Lcom/tencent/mna/base/jni/TCallJni;->getTCallRecvMsgPtr()J

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
    invoke-static {}, Lcom/tencent/mna/base/jni/TCallJni;->getTCallRecvPtr()J

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
    invoke-static {}, Lcom/tencent/mna/base/jni/TCallJni;->getTCallSendMsgPtr()J

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
    invoke-static {}, Lcom/tencent/mna/base/jni/TCallJni;->getTCallSendPtr()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static j()J
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/jni/TCallJni;->getTCallSendToPtr()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method
