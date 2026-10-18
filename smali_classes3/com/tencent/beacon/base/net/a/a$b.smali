.class final Lcom/tencent/beacon/base/net/a/a$b;
.super Ljava/lang/Object;
.source "ByteConverterFactory.java"

# interfaces
.implements Lcom/tencent/beacon/base/net/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/beacon/base/net/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/beacon/base/net/a/c<",
        "[B",
        "Lcom/tencent/beacon/pack/ResponsePackage;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b([B)Lcom/tencent/beacon/pack/ResponsePackage;
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    array-length v0, p1

    if-lez v0, :cond_0

    .line 2
    new-instance v0, Lcom/tencent/beacon/pack/c;

    invoke-direct {v0}, Lcom/tencent/beacon/pack/c;-><init>()V

    .line 3
    invoke-virtual {v0, p1}, Lcom/tencent/beacon/pack/c;->a([B)V

    .line 4
    new-instance p1, Lcom/tencent/beacon/pack/ResponsePackage;

    invoke-direct {p1}, Lcom/tencent/beacon/pack/ResponsePackage;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "detail"

    .line 5
    :try_start_1
    invoke-virtual {v0, v1, p1}, Lcom/tencent/beacon/pack/c;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/beacon/pack/ResponsePackage;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p1

    :catchall_0
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private c([B)[B
    .locals 3

    .line 1
    invoke-static {}, Lcom/tencent/beacon/e/h;->c()Lcom/tencent/beacon/e/h;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/tencent/beacon/e/h;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x3

    .line 3
    invoke-static {p1, v1, v2, v0}, Lcom/tencent/beacon/base/util/b;->a([BIILjava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a([B)Lcom/tencent/beacon/pack/ResponsePackage;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/tencent/beacon/base/net/a/a$b;->c([B)[B

    move-result-object p1

    .line 3
    invoke-direct {p0, p1}, Lcom/tencent/beacon/base/net/a/a$b;->b([B)Lcom/tencent/beacon/pack/ResponsePackage;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/tencent/beacon/base/net/a/a$b;->a([B)Lcom/tencent/beacon/pack/ResponsePackage;

    move-result-object p1

    return-object p1
.end method
