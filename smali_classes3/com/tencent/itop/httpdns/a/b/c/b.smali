.class public final Lcom/tencent/itop/httpdns/a/b/c/b;
.super Ljava/lang/Object;
.source "DnsResponseParser.java"


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-string v0, "(.*)\\|(.*),(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/tencent/itop/httpdns/a/b/c/b;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/tencent/itop/httpdns/a/b/a/b;
    .locals 4

    if-nez p0, :cond_0

    .line 38
    invoke-static {}, Lcom/tencent/itop/httpdns/a/b/a/b;->a()Lcom/tencent/itop/httpdns/a/b/a/b;

    move-result-object p0

    return-object p0

    .line 42
    :cond_0
    sget-object v0, Lcom/tencent/itop/httpdns/a/b/c/b;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 43
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 44
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 48
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const/4 v3, 0x2

    .line 50
    invoke-virtual {p0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 51
    new-instance v3, Lcom/tencent/itop/httpdns/a/b/a/b;

    invoke-direct {v3, v0, v1, v2, p0}, Lcom/tencent/itop/httpdns/a/b/a/b;-><init>([Ljava/lang/String;JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 53
    :catch_0
    invoke-static {}, Lcom/tencent/itop/httpdns/a/b/a/b;->a()Lcom/tencent/itop/httpdns/a/b/a/b;

    move-result-object p0

    return-object p0

    .line 45
    :cond_2
    :goto_0
    invoke-static {}, Lcom/tencent/itop/httpdns/a/b/a/b;->a()Lcom/tencent/itop/httpdns/a/b/a/b;

    move-result-object p0

    return-object p0
.end method

.method public static a([Ljava/net/InetAddress;)Lcom/tencent/itop/httpdns/a/b/b/b;
    .locals 3

    if-nez p0, :cond_0

    .line 22
    invoke-static {}, Lcom/tencent/itop/httpdns/a/b/b/b;->a()Lcom/tencent/itop/httpdns/a/b/b/b;

    move-result-object p0

    return-object p0

    .line 24
    :cond_0
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 25
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 26
    aget-object v2, p0, v1

    if-eqz v2, :cond_1

    .line 28
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_1

    .line 30
    :cond_1
    const-string v2, ""

    aput-object v2, v0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 33
    :cond_2
    new-instance p0, Lcom/tencent/itop/httpdns/a/b/b/b;

    invoke-direct {p0, v0}, Lcom/tencent/itop/httpdns/a/b/b/b;-><init>([Ljava/lang/String;)V

    return-object p0
.end method
