.class Lcom/tencent/mna/j1$a;
.super Lcom/tencent/mna/q0;
.source "InoAccelerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mna/j1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic l:Lcom/tencent/mna/j1;


# direct methods
.method public constructor <init>(Lcom/tencent/mna/j1;Ljava/lang/String;IILcom/tencent/mna/f1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/mna/j1$a;->l:Lcom/tencent/mna/j1;

    .line 2
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/tencent/mna/q0;-><init>(Ljava/lang/String;IILcom/tencent/mna/f1;)V

    return-void
.end method


# virtual methods
.method public a(III)I
    .locals 0

    .line 3
    invoke-static {p1, p2, p3}, Lcom/tencent/mna/base/jni/c;->a(III)I

    move-result p1

    return p1
.end method

.method public a(IIIII)I
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4, p5}, Lcom/tencent/mna/base/jni/c;->a(IIIII)I

    move-result p1

    return p1
.end method

.method public a(IIIIILjava/lang/String;)I
    .locals 0

    .line 2
    invoke-static/range {p1 .. p6}, Lcom/tencent/mna/base/jni/c;->a(IIIIILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/mna/j1$a;->l:Lcom/tencent/mna/j1;

    invoke-static {v0}, Lcom/tencent/mna/j1;->a(Lcom/tencent/mna/j1;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
