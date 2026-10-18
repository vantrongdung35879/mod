.class final Lcom/tencent/itop/httpdns/base/b/e;
.super Ljava/lang/Object;
.source "TDataMaster.java"


# static fields
.field private static a:Ljava/lang/Class;

.field private static b:Ljava/lang/Object;

.field private static c:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    .line 26
    :try_start_0
    const-string v1, "com.tencent.tdm.TDataMaster"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/tencent/itop/httpdns/base/b/e;->a:Ljava/lang/Class;

    .line 27
    const-string v2, "getInstance"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 28
    invoke-virtual {v1, v0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sput-object v1, Lcom/tencent/itop/httpdns/base/b/e;->b:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    .line 30
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Call TDataMaster.getInstance() failed"

    invoke-static {v1, v3, v2}, Lcom/tencent/itop/httpdns/base/log/b;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    sput-object v0, Lcom/tencent/itop/httpdns/base/b/e;->a:Ljava/lang/Class;

    .line 33
    sput-object v0, Lcom/tencent/itop/httpdns/base/b/e;->b:Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method static a(ILjava/lang/String;Ljava/util/Map;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 41
    sget-object v0, Lcom/tencent/itop/httpdns/base/b/e;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 45
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tencent/itop/httpdns/base/b/e;->c:Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-nez v0, :cond_1

    .line 46
    sget-object v0, Lcom/tencent/itop/httpdns/base/b/e;->a:Ljava/lang/Class;

    const-string v5, "reportEvent"

    new-array v6, v3, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v1

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v4

    const-class v7, Ljava/util/Map;

    aput-object v7, v6, v2

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/tencent/itop/httpdns/base/b/e;->c:Ljava/lang/reflect/Method;

    .line 48
    :cond_1
    sget-object v0, Lcom/tencent/itop/httpdns/base/b/e;->c:Ljava/lang/reflect/Method;

    sget-object v5, Lcom/tencent/itop/httpdns/base/b/e;->b:Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v1

    aput-object p1, v3, v4

    aput-object p2, v3, v2

    invoke-virtual {v0, v5, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    move-exception p0

    .line 51
    const-string p1, "Call TDataMaster.getInstance().reportEvent() failed"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/tencent/itop/httpdns/base/log/b;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method
