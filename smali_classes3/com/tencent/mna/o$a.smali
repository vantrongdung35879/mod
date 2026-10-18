.class Lcom/tencent/mna/o$a;
.super Lcom/tencent/mna/q0;
.source "CdnAccelerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mna/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic l:Lcom/tencent/mna/o;


# direct methods
.method public constructor <init>(Lcom/tencent/mna/o;Ljava/lang/String;IILcom/tencent/mna/f1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/mna/o$a;->l:Lcom/tencent/mna/o;

    .line 2
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/tencent/mna/q0;-><init>(Ljava/lang/String;IILcom/tencent/mna/f1;)V

    return-void
.end method


# virtual methods
.method public a(III)I
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/tencent/mna/o$a;->l:Lcom/tencent/mna/o;

    invoke-static {v0}, Lcom/tencent/mna/o;->a(Lcom/tencent/mna/o;)Lcom/tencent/mna/base/jni/entity/CdnMasterRet;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mna/o$a;->l:Lcom/tencent/mna/o;

    invoke-static {v0}, Lcom/tencent/mna/o;->a(Lcom/tencent/mna/o;)Lcom/tencent/mna/base/jni/entity/CdnMasterRet;

    move-result-object v0

    iget v0, v0, Lcom/tencent/mna/base/jni/entity/CdnMasterRet;->masterErrno:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/tencent/mna/base/jni/a;->a(III)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method public a(IIIII)I
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4, p5}, Lcom/tencent/mna/base/jni/a;->a(IIIII)I

    move-result p1

    return p1
.end method

.method public a(IIIIILjava/lang/String;)I
    .locals 0

    .line 2
    invoke-static/range {p1 .. p6}, Lcom/tencent/mna/base/jni/a;->a(IIIIILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/mna/o$a;->l:Lcom/tencent/mna/o;

    invoke-static {v0}, Lcom/tencent/mna/o;->a(Lcom/tencent/mna/o;)Lcom/tencent/mna/base/jni/entity/CdnMasterRet;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mna/o$a;->l:Lcom/tencent/mna/o;

    invoke-static {v0}, Lcom/tencent/mna/o;->a(Lcom/tencent/mna/o;)Lcom/tencent/mna/base/jni/entity/CdnMasterRet;

    move-result-object v0

    iget v0, v0, Lcom/tencent/mna/base/jni/entity/CdnMasterRet;->masterErrno:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/tencent/mna/o$a;->l:Lcom/tencent/mna/o;

    invoke-static {v0}, Lcom/tencent/mna/o;->a(Lcom/tencent/mna/o;)Lcom/tencent/mna/base/jni/entity/CdnMasterRet;

    move-result-object v0

    iget v0, v0, Lcom/tencent/mna/base/jni/entity/CdnMasterRet;->exportIp:I

    invoke-static {v0}, Lcom/tencent/mna/n1;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
