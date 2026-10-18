.class Lcom/tencent/mna/base/jni/McJni;
.super Ljava/lang/Object;
.source "McJni.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native endMcSpeed()I
.end method

.method public static native getExportDelay(III)I
.end method

.method public static native getForwardDelay(IIIII)I
.end method

.method public static native getMatchForwardDelay(IIIIILjava/lang/String;)I
.end method

.method public static native getMcConnectPtr()J
.end method

.method public static native getMcRecvFromPtr()J
.end method

.method public static native getMcRecvMsgPtr()J
.end method

.method public static native getMcRecvPtr()J
.end method

.method public static native getMcSelectPtr()J
.end method

.method public static native getMcSendMsgPtr()J
.end method

.method public static native getMcSendPtr()J
.end method

.method public static native getMcSendToPtr()J
.end method

.method public static native getMcStatistics()Ljava/lang/String;
.end method

.method public static native getV6ExportDelay(III)I
.end method

.method public static native prepare(Ljava/lang/String;ILjava/lang/String;IIILjava/lang/String;IZ)I
.end method

.method public static native prepareExport(Ljava/lang/String;IZ)I
.end method

.method public static native setMainTunnelEnable(Z)V
.end method

.method public static native setVpnIp(Ljava/lang/String;)V
.end method

.method public static native updateProxyIp(Ljava/lang/String;ILjava/lang/String;II)I
.end method
