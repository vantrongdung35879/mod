.class public final Lcom/tencent/itop/httpdns/base/log/b;
.super Ljava/lang/Object;
.source "DnsLog.java"


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x7

    const/4 v1, 0x6

    const/4 v0, 0x6

    const/4 v1, 0x7

    :goto_0
    const/4 v2, 0x2

    if-lt v0, v2, :cond_1

    .line 22
    const-string v2, "HttpDns"

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v0, -0x1

    move v3, v1

    move v1, v0

    move v0, v3

    goto :goto_0

    .line 27
    :cond_1
    :goto_1
    sput v1, Lcom/tencent/itop/httpdns/base/log/b;->a:I

    return-void
.end method

.method public static a(I)V
    .locals 1

    .line 32
    sget v0, Lcom/tencent/itop/httpdns/base/log/b;->a:I

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    sput p0, Lcom/tencent/itop/httpdns/base/log/b;->a:I

    return-void
.end method

.method private static varargs a(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 80
    sget v0, Lcom/tencent/itop/httpdns/base/log/b;->a:I

    if-lt p0, v0, :cond_0

    .line 81
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p2, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "HttpDns"

    invoke-static {p0, p3, p2, p1}, Lcom/tencent/itop/httpdns/base/log/c;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static a(Lcom/tencent/itop/httpdns/base/log/ILogNode;)V
    .locals 0

    .line 36
    invoke-static {p0}, Lcom/tencent/itop/httpdns/base/log/c;->a(Lcom/tencent/itop/httpdns/base/log/ILogNode;)V

    return-void
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-static {v0, p0, p1}, Lcom/tencent/itop/httpdns/base/log/b;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x3

    .line 52
    invoke-static {v0, p0, p1, p2}, Lcom/tencent/itop/httpdns/base/log/b;->a(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-static {v0, p0, p1}, Lcom/tencent/itop/httpdns/base/log/b;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x5

    .line 68
    invoke-static {v0, p0, p1, p2}, Lcom/tencent/itop/httpdns/base/log/b;->a(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
