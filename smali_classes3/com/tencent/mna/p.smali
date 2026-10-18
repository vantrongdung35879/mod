.class public Lcom/tencent/mna/p;
.super Ljava/lang/Object;
.source "CdnDiagnostor.java"

# interfaces
.implements Lcom/tencent/mna/c1;


# instance fields
.field private a:Lcom/tencent/mna/base/jni/entity/CdnMasterRet;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/tencent/mna/p;->a:Lcom/tencent/mna/base/jni/entity/CdnMasterRet;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/tencent/mna/p;->b:I

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/mna/p;->a:Lcom/tencent/mna/base/jni/entity/CdnMasterRet;

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/tencent/mna/base/jni/entity/CdnMasterRet;->masterErrno:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget v0, p0, Lcom/tencent/mna/p;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/mna/p;->b:I

    const/16 v1, 0x1f4

    invoke-static {p1, v0, v1}, Lcom/tencent/mna/base/jni/a;->b(III)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/mna/p;->a:Lcom/tencent/mna/base/jni/entity/CdnMasterRet;

    if-eqz v0, :cond_1

    iget v1, v0, Lcom/tencent/mna/base/jni/entity/CdnMasterRet;->masterErrno:I

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget v0, v0, Lcom/tencent/mna/base/jni/entity/CdnMasterRet;->exportIp:I

    invoke-static {v0}, Lcom/tencent/mna/n1;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()I
    .locals 8

    .line 1
    const-string v0, "101.226.141.225"

    invoke-static {v0}, Lcom/tencent/mna/n1;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "masterIp:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 3
    sget-object v6, Lcom/tencent/mna/t0;->u:Ljava/lang/String;

    .line 5
    invoke-static {v0}, Lcom/tencent/mna/n1;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/16 v3, 0x1f9a

    const-string v4, "0.0.0.0"

    invoke-static/range {v2 .. v7}, Lcom/tencent/mna/base/jni/a;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)Lcom/tencent/mna/base/jni/entity/CdnMasterRet;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mna/p;->a:Lcom/tencent/mna/base/jni/entity/CdnMasterRet;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cdn diagnose ret:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mna/p;->a:Lcom/tencent/mna/base/jni/entity/CdnMasterRet;

    invoke-virtual {v1}, Lcom/tencent/mna/base/jni/entity/CdnMasterRet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/tencent/mna/p;->a:Lcom/tencent/mna/base/jni/entity/CdnMasterRet;

    iget v0, v0, Lcom/tencent/mna/base/jni/entity/CdnMasterRet;->masterErrno:I

    if-eqz v0, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
