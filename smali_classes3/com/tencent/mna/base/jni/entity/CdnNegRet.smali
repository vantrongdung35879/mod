.class public Lcom/tencent/mna/base/jni/entity/CdnNegRet;
.super Ljava/lang/Object;
.source "CdnNegRet.java"


# instance fields
.field public negErrno:I

.field public proxyIp:I

.field public proxyPort:I

.field public token:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/tencent/mna/base/jni/entity/CdnNegRet;->negErrno:I

    .line 3
    iput p2, p0, Lcom/tencent/mna/base/jni/entity/CdnNegRet;->proxyIp:I

    .line 4
    iput p3, p0, Lcom/tencent/mna/base/jni/entity/CdnNegRet;->proxyPort:I

    .line 5
    iput p4, p0, Lcom/tencent/mna/base/jni/entity/CdnNegRet;->token:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    sget-object v0, Lcom/tencent/mna/w;->a:Ljava/util/Locale;

    iget v1, p0, Lcom/tencent/mna/base/jni/entity/CdnNegRet;->negErrno:I

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/tencent/mna/base/jni/entity/CdnNegRet;->proxyIp:I

    .line 3
    invoke-static {v2}, Lcom/tencent/mna/n1;->a(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/tencent/mna/base/jni/entity/CdnNegRet;->proxyPort:I

    .line 4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/tencent/mna/base/jni/entity/CdnNegRet;->token:I

    .line 5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v2, v5, v1

    const/4 v1, 0x2

    aput-object v3, v5, v1

    const/4 v1, 0x3

    aput-object v4, v5, v1

    .line 6
    const-string v1, "negError:%d, proxyIp:%s, proxyPort:%d, token:%d"

    invoke-static {v0, v1, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
