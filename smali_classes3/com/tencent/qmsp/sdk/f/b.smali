.class public Lcom/tencent/qmsp/sdk/f/b;
.super Ljava/lang/Object;
.source ""


# instance fields
.field a:Lcom/tencent/qmsp/sdk/f/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/qmsp/sdk/f/c;

    invoke-direct {v0}, Lcom/tencent/qmsp/sdk/f/c;-><init>()V

    iput-object v0, p0, Lcom/tencent/qmsp/sdk/f/b;->a:Lcom/tencent/qmsp/sdk/f/c;

    return-void
.end method


# virtual methods
.method public a([BII[B)[B
    .locals 1

    iget-object v0, p0, Lcom/tencent/qmsp/sdk/f/b;->a:Lcom/tencent/qmsp/sdk/f/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/tencent/qmsp/sdk/f/c;->a([BII[B)[B

    move-result-object p1

    return-object p1
.end method

.method public a([B[B)[B
    .locals 1

    iget-object v0, p0, Lcom/tencent/qmsp/sdk/f/b;->a:Lcom/tencent/qmsp/sdk/f/c;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/qmsp/sdk/f/c;->a([B[B)[B

    move-result-object p1

    return-object p1
.end method
