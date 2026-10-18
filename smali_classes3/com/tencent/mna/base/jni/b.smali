.class public Lcom/tencent/mna/base/jni/b;
.super Ljava/lang/Object;
.source "DsJniWrapper.java"


# direct methods
.method public static a()I
    .locals 1

    .line 3
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/jni/DsJni;->endDsSpeed()I

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

    .line 6
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/tencent/mna/base/jni/DsJni;->getExportDelay(III)I

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

    .line 4
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/tencent/mna/base/jni/DsJni;->getForwardDelay(IIIII)I

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
    invoke-static/range {p0 .. p5}, Lcom/tencent/mna/base/jni/DsJni;->getMatchForwardDelay(IIIIILjava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    const/16 p0, 0x1f5

    return p0
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;IIIIIZ)I
    .locals 0

    .line 1
    :try_start_0
    invoke-static/range {p0 .. p8}, Lcom/tencent/mna/base/jni/DsJni;->prepare(Ljava/lang/String;ILjava/lang/String;IIIIIZ)I

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

    .line 2
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/tencent/mna/base/jni/DsJni;->prepareExport(Ljava/lang/String;IZ)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    const p0, 0x10364

    return p0
.end method

.method public static b()J
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/jni/DsJni;->getDsConnectPtr()J

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
    invoke-static {}, Lcom/tencent/mna/base/jni/DsJni;->getDsRecvFromPtr()J

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
    invoke-static {}, Lcom/tencent/mna/base/jni/DsJni;->getDsRecvMsgPtr()J

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
    invoke-static {}, Lcom/tencent/mna/base/jni/DsJni;->getDsRecvPtr()J

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
    invoke-static {}, Lcom/tencent/mna/base/jni/DsJni;->getDsSendMsgPtr()J

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
    invoke-static {}, Lcom/tencent/mna/base/jni/DsJni;->getDsSendPtr()J

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
    invoke-static {}, Lcom/tencent/mna/base/jni/DsJni;->getDsSendToPtr()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method
