.class public Lcom/tencent/mna/base/jni/entity/CdnMasterRet;
.super Ljava/lang/Object;
.source "CdnMasterRet.java"


# instance fields
.field public exportIp:I

.field public exportPort:I

.field public masterErrno:I

.field public negIp:I

.field public negPort:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/tencent/mna/base/jni/entity/CdnMasterRet;->masterErrno:I

    .line 3
    iput p2, p0, Lcom/tencent/mna/base/jni/entity/CdnMasterRet;->negIp:I

    .line 4
    iput p3, p0, Lcom/tencent/mna/base/jni/entity/CdnMasterRet;->negPort:I

    .line 5
    iput p4, p0, Lcom/tencent/mna/base/jni/entity/CdnMasterRet;->exportIp:I

    .line 6
    iput p5, p0, Lcom/tencent/mna/base/jni/entity/CdnMasterRet;->exportPort:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 8

    .line 1
    sget-object v0, Lcom/tencent/mna/w;->a:Ljava/util/Locale;

    iget v1, p0, Lcom/tencent/mna/base/jni/entity/CdnMasterRet;->masterErrno:I

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/tencent/mna/base/jni/entity/CdnMasterRet;->negIp:I

    .line 3
    invoke-static {v2}, Lcom/tencent/mna/n1;->a(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/tencent/mna/base/jni/entity/CdnMasterRet;->negPort:I

    .line 4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/tencent/mna/base/jni/entity/CdnMasterRet;->exportIp:I

    .line 5
    invoke-static {v4}, Lcom/tencent/mna/n1;->a(I)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/tencent/mna/base/jni/entity/CdnMasterRet;->exportPort:I

    .line 6
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v1, 0x1

    aput-object v2, v6, v1

    const/4 v1, 0x2

    aput-object v3, v6, v1

    const/4 v1, 0x3

    aput-object v4, v6, v1

    const/4 v1, 0x4

    aput-object v5, v6, v1

    .line 7
    const-string v1, "errno:%d, negip:%s, negport:%d, exportIp:%s, exportPort:%d"

    invoke-static {v0, v1, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
