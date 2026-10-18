.class Lcom/tencent/mna/l3$a;
.super Lcom/tencent/mna/q0;
.source "TCallAccelerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mna/l3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Lcom/tencent/mna/l3;Ljava/lang/String;IILcom/tencent/mna/f1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/tencent/mna/q0;-><init>(Ljava/lang/String;IILcom/tencent/mna/f1;)V

    return-void
.end method


# virtual methods
.method public a(III)I
    .locals 0

    .line 3
    sget-object p1, Lcom/tencent/mna/t0;->u:Ljava/lang/String;

    invoke-static {p1}, Lcom/tencent/mna/base/jni/f;->a(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public a(IIIII)I
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4, p5}, Lcom/tencent/mna/base/jni/f;->a(IIIII)I

    move-result p1

    return p1
.end method

.method public a(IIIIILjava/lang/String;)I
    .locals 0

    .line 2
    invoke-static/range {p1 .. p6}, Lcom/tencent/mna/base/jni/f;->a(IIIIILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/mna/base/jni/f;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
