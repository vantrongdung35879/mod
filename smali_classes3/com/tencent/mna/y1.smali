.class public Lcom/tencent/mna/y1;
.super Ljava/lang/Object;
.source "McDiagnostor.java"

# interfaces
.implements Lcom/tencent/mna/c1;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const-string v0, "0.0.0.0"

    iput-object v0, p0, Lcom/tencent/mna/y1;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/tencent/mna/y1;->b:I

    .line 5
    iput v0, p0, Lcom/tencent/mna/y1;->c:I

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/tencent/mna/y1;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/mna/y1;->c:I

    const/16 v1, 0x1f4

    invoke-static {p1, v0, v1}, Lcom/tencent/mna/base/jni/d;->b(III)I

    move-result p1

    return p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/mna/y1;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 3

    .line 1
    invoke-static {}, Lcom/tencent/mna/c0;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mna/y1;->a:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/tencent/mna/c0;->h()I

    move-result v0

    iput v0, p0, Lcom/tencent/mna/y1;->b:I

    .line 3
    iget-object v0, p0, Lcom/tencent/mna/y1;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mna/n1;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mna/y1;->b:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/tencent/mna/base/jni/d;->a(Ljava/lang/String;IZ)I

    move-result v0

    return v0
.end method
