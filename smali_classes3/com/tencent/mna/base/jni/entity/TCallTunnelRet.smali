.class public Lcom/tencent/mna/base/jni/entity/TCallTunnelRet;
.super Ljava/lang/Object;
.source "TCallTunnelRet.java"


# instance fields
.field public accessIp:I

.field public gatewayIp:I

.field public masterIp:I

.field public tunnelErrno:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/tencent/mna/base/jni/entity/TCallTunnelRet;->tunnelErrno:I

    .line 3
    iput p2, p0, Lcom/tencent/mna/base/jni/entity/TCallTunnelRet;->accessIp:I

    .line 4
    iput p3, p0, Lcom/tencent/mna/base/jni/entity/TCallTunnelRet;->gatewayIp:I

    .line 5
    iput p4, p0, Lcom/tencent/mna/base/jni/entity/TCallTunnelRet;->masterIp:I

    return-void
.end method
