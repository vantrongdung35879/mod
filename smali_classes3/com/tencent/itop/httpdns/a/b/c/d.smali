.class public final Lcom/tencent/itop/httpdns/a/b/c/d;
.super Ljava/lang/Object;
.source "DnsResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/itop/httpdns/a/b/c/d$a;
    }
.end annotation


# instance fields
.field public a:I

.field public b:Lcom/tencent/itop/httpdns/a/b/c/d$a;

.field public c:Lcom/tencent/itop/httpdns/a/b/c/d$a;


# direct methods
.method public constructor <init>(ILcom/tencent/itop/httpdns/a/b/c/d$a;Lcom/tencent/itop/httpdns/a/b/c/d$a;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/tencent/itop/httpdns/a/b/c/d;->a:I

    .line 14
    sget-object v0, Lcom/tencent/itop/httpdns/a/b/c/d$a;->a:Lcom/tencent/itop/httpdns/a/b/c/d$a;

    iput-object v0, p0, Lcom/tencent/itop/httpdns/a/b/c/d;->b:Lcom/tencent/itop/httpdns/a/b/c/d$a;

    .line 15
    sget-object v0, Lcom/tencent/itop/httpdns/a/b/c/d$a;->a:Lcom/tencent/itop/httpdns/a/b/c/d$a;

    iput-object v0, p0, Lcom/tencent/itop/httpdns/a/b/c/d;->c:Lcom/tencent/itop/httpdns/a/b/c/d$a;

    .line 18
    invoke-static {p1}, Lcom/tencent/itop/httpdns/base/b;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    iput p1, p0, Lcom/tencent/itop/httpdns/a/b/c/d;->a:I

    :cond_0
    if-eqz p2, :cond_1

    .line 22
    iput-object p2, p0, Lcom/tencent/itop/httpdns/a/b/c/d;->b:Lcom/tencent/itop/httpdns/a/b/c/d$a;

    :cond_1
    if-eqz p3, :cond_2

    .line 25
    iput-object p3, p0, Lcom/tencent/itop/httpdns/a/b/c/d;->c:Lcom/tencent/itop/httpdns/a/b/c/d$a;

    :cond_2
    return-void
.end method


# virtual methods
.method public a()[Ljava/lang/String;
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/tencent/itop/httpdns/a/b/c/d;->b:Lcom/tencent/itop/httpdns/a/b/c/d$a;

    iget-object v0, v0, Lcom/tencent/itop/httpdns/a/b/c/d$a;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/itop/httpdns/a/b/c/d;->c:Lcom/tencent/itop/httpdns/a/b/c/d$a;

    iget-object v1, v1, Lcom/tencent/itop/httpdns/a/b/c/d$a;->b:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/itop/httpdns/a/b/c/d;->b:Lcom/tencent/itop/httpdns/a/b/c/d$a;

    iget-object v1, v1, Lcom/tencent/itop/httpdns/a/b/c/d$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/itop/httpdns/a/b/c/d;->c:Lcom/tencent/itop/httpdns/a/b/c/d$a;

    iget-object v1, v1, Lcom/tencent/itop/httpdns/a/b/c/d$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
