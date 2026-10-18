.class public Lcom/tencent/itop/httpdns/a/b/b/a;
.super Ljava/lang/Object;
.source "LocalDnsImpl.java"

# interfaces
.implements Lcom/tencent/itop/httpdns/a/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/itop/httpdns/a/b/a<",
        "Lcom/tencent/itop/httpdns/a/b/b/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/String;)Lcom/tencent/itop/httpdns/a/b/c/a;
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Lcom/tencent/itop/httpdns/a/b/b/a;->b(Ljava/lang/String;)Lcom/tencent/itop/httpdns/a/b/b/b;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;)Lcom/tencent/itop/httpdns/a/b/b/b;
    .locals 2

    .line 20
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    invoke-static {}, Lcom/tencent/itop/httpdns/a/b/b/b;->a()Lcom/tencent/itop/httpdns/a/b/b/b;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x1

    .line 23
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "LocalDns(domain:%s) start."

    invoke-static {v1, v0}, Lcom/tencent/itop/httpdns/base/log/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object p1

    .line 26
    invoke-static {p1}, Lcom/tencent/itop/httpdns/a/b/c/b;->a([Ljava/net/InetAddress;)Lcom/tencent/itop/httpdns/a/b/b/b;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 28
    :catch_0
    invoke-static {}, Lcom/tencent/itop/httpdns/a/b/b/b;->a()Lcom/tencent/itop/httpdns/a/b/b/b;

    move-result-object p1

    return-object p1
.end method
