.class public Lcom/tencent/mna/base/jni/c;
.super Ljava/lang/Object;
.source "InoJniWrapper.java"


# direct methods
.method public static a()I
    .locals 1

    .line 3
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/jni/InoJni;->endInoSpeed()I

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
    invoke-static {p0, p1, p2}, Lcom/tencent/mna/base/jni/InoJni;->getExportDelay(III)I

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
    invoke-static {p0, p1, p2, p3, p4}, Lcom/tencent/mna/base/jni/InoJni;->getForwardDelay(IIIII)I

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
    invoke-static/range {p0 .. p5}, Lcom/tencent/mna/base/jni/InoJni;->getMatchForwardDelay(IIIIILjava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    const/16 p0, 0x1f5

    return p0
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)I
    .locals 0

    .line 1
    :try_start_0
    invoke-static/range {p0 .. p7}, Lcom/tencent/mna/base/jni/InoJni;->prepare(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    const p0, 0xfde8

    return p0
.end method

.method public static a(Ljava/lang/String;IZ)I
    .locals 0

    .line 2
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/tencent/mna/base/jni/InoJni;->prepareExport(Ljava/lang/String;IZ)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    const p0, 0x101d0

    return p0
.end method

.method public static b(III)I
    .locals 0

    .line 2
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/tencent/mna/base/jni/InoJni;->getV6ExportDelay(III)I

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
    invoke-static {}, Lcom/tencent/mna/base/jni/InoJni;->getInoConnectPtr()J

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
    invoke-static {}, Lcom/tencent/mna/base/jni/InoJni;->getInoRecvFromPtr()J

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
    invoke-static {}, Lcom/tencent/mna/base/jni/InoJni;->getInoRecvMsgPtr()J

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
    invoke-static {}, Lcom/tencent/mna/base/jni/InoJni;->getInoRecvPtr()J

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
    invoke-static {}, Lcom/tencent/mna/base/jni/InoJni;->getInoSendMsgPtr()J

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
    invoke-static {}, Lcom/tencent/mna/base/jni/InoJni;->getInoSendPtr()J

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
    invoke-static {}, Lcom/tencent/mna/base/jni/InoJni;->getInoSendToPtr()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method
