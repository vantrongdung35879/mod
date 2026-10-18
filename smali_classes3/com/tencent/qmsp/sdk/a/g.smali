.class public Lcom/tencent/qmsp/sdk/a/g;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Ljava/lang/StringBuilder;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/qmsp/sdk/a/g;->a()Lcom/tencent/qmsp/sdk/a/g;

    return-void
.end method

.method private b()V
    .locals 1

    const-string v0, ","

    invoke-direct {p0, v0}, Lcom/tencent/qmsp/sdk/a/g;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qmsp/sdk/a/g;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qmsp/sdk/a/g;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tencent/qmsp/sdk/a/g;->b:Z

    return-void
.end method


# virtual methods
.method public a()Lcom/tencent/qmsp/sdk/a/g;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/tencent/qmsp/sdk/a/g;->a:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qmsp/sdk/a/g;->b:Z

    return-object p0
.end method

.method public a(I)Lcom/tencent/qmsp/sdk/a/g;
    .locals 2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "%d"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/qmsp/sdk/a/g;->a(Ljava/lang/String;)Lcom/tencent/qmsp/sdk/a/g;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Lcom/tencent/qmsp/sdk/a/g;
    .locals 2

    invoke-direct {p0}, Lcom/tencent/qmsp/sdk/a/g;->b()V

    const/16 v0, 0x2c

    const/16 v1, 0x3b

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/qmsp/sdk/a/g;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qmsp/sdk/a/g;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
