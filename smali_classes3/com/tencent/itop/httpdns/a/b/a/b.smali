.class public final Lcom/tencent/itop/httpdns/a/b/a/b;
.super Lcom/tencent/itop/httpdns/a/b/c/a;
.source "HttpDnsResponse.java"


# static fields
.field private static final e:Lcom/tencent/itop/httpdns/a/b/a/b;


# instance fields
.field public a:J

.field public b:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 24
    new-instance v0, Lcom/tencent/itop/httpdns/a/b/a/b;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/tencent/itop/httpdns/a/b/a/b;-><init>([Ljava/lang/String;JLjava/lang/String;)V

    sput-object v0, Lcom/tencent/itop/httpdns/a/b/a/b;->e:Lcom/tencent/itop/httpdns/a/b/a/b;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;JLjava/lang/String;)V
    .locals 2

    .line 28
    invoke-direct {p0, p1}, Lcom/tencent/itop/httpdns/a/b/c/a;-><init>([Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 19
    iput-wide v0, p0, Lcom/tencent/itop/httpdns/a/b/a/b;->a:J

    .line 20
    const-string p1, "0"

    iput-object p1, p0, Lcom/tencent/itop/httpdns/a/b/a/b;->b:Ljava/lang/String;

    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, Lcom/tencent/itop/httpdns/a/b/a/b;->d:Ljava/lang/String;

    cmp-long p1, p2, v0

    if-lez p1, :cond_0

    .line 31
    iput-wide p2, p0, Lcom/tencent/itop/httpdns/a/b/a/b;->a:J

    .line 33
    :cond_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 34
    iput-object p4, p0, Lcom/tencent/itop/httpdns/a/b/a/b;->b:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public static a()Lcom/tencent/itop/httpdns/a/b/a/b;
    .locals 1

    .line 39
    sget-object v0, Lcom/tencent/itop/httpdns/a/b/a/b;->e:Lcom/tencent/itop/httpdns/a/b/a/b;

    return-object v0
.end method

.method public static a(Lcom/tencent/itop/httpdns/a/b/a/b;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 43
    sget-object v0, Lcom/tencent/itop/httpdns/a/b/a/b;->e:Lcom/tencent/itop/httpdns/a/b/a/b;

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 7

    .line 50
    iget-object v0, p0, Lcom/tencent/itop/httpdns/a/b/a/b;->d:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    iget-object v1, p0, Lcom/tencent/itop/httpdns/a/b/a/b;->c:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 54
    invoke-static {v5}, Lcom/tencent/itop/httpdns/base/c/c;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 55
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_1

    .line 58
    :cond_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x3b

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 60
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 63
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/itop/httpdns/a/b/a/b;->d:Ljava/lang/String;

    .line 64
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/itop/httpdns/a/b/a/b;->d:Ljava/lang/String;

    .line 68
    :cond_3
    iget-object v0, p0, Lcom/tencent/itop/httpdns/a/b/a/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/tencent/itop/httpdns/a/b/a/b;->c:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/itop/httpdns/a/b/a/b;->c:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/itop/httpdns/a/b/a/b;->c:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/tencent/itop/httpdns/base/c/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/tencent/itop/httpdns/a/b/a/b;->c:[Ljava/lang/String;

    aget-object v0, v0, v1

    return-object v0

    .line 78
    :cond_0
    const-string v0, "0"

    return-object v0
.end method
