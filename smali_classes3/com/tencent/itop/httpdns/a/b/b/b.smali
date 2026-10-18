.class public final Lcom/tencent/itop/httpdns/a/b/b/b;
.super Lcom/tencent/itop/httpdns/a/b/c/a;
.source "LocalDnsResponse.java"


# static fields
.field private static final d:Lcom/tencent/itop/httpdns/a/b/b/b;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Lcom/tencent/itop/httpdns/a/b/b/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/itop/httpdns/a/b/b/b;-><init>([Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/itop/httpdns/a/b/b/b;->d:Lcom/tencent/itop/httpdns/a/b/b/b;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/tencent/itop/httpdns/a/b/c/a;-><init>([Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lcom/tencent/itop/httpdns/a/b/b/b;->a:Ljava/lang/String;

    .line 15
    iput-object p1, p0, Lcom/tencent/itop/httpdns/a/b/b/b;->b:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/tencent/itop/httpdns/a/b/b/b;
    .locals 1

    .line 24
    sget-object v0, Lcom/tencent/itop/httpdns/a/b/b/b;->d:Lcom/tencent/itop/httpdns/a/b/b/b;

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 5

    .line 31
    iget-object v0, p0, Lcom/tencent/itop/httpdns/a/b/b/b;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 32
    const-string v0, "0"

    iput-object v0, p0, Lcom/tencent/itop/httpdns/a/b/b/b;->a:Ljava/lang/String;

    .line 33
    iget-object v0, p0, Lcom/tencent/itop/httpdns/a/b/b/b;->c:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 34
    invoke-static {v3}, Lcom/tencent/itop/httpdns/base/c/c;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 35
    iput-object v3, p0, Lcom/tencent/itop/httpdns/a/b/b/b;->a:Ljava/lang/String;

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 40
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/tencent/itop/httpdns/a/b/b/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 5

    .line 47
    iget-object v0, p0, Lcom/tencent/itop/httpdns/a/b/b/b;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 48
    const-string v0, "0"

    iput-object v0, p0, Lcom/tencent/itop/httpdns/a/b/b/b;->b:Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lcom/tencent/itop/httpdns/a/b/b/b;->c:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 50
    invoke-static {v3}, Lcom/tencent/itop/httpdns/base/c/c;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 51
    iput-object v3, p0, Lcom/tencent/itop/httpdns/a/b/b/b;->b:Ljava/lang/String;

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 56
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/tencent/itop/httpdns/a/b/b/b;->b:Ljava/lang/String;

    return-object v0
.end method
