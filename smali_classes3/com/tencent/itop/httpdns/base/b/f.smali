.class final Lcom/tencent/itop/httpdns/base/b/f;
.super Ljava/lang/Object;
.source "UserAction.java"


# static fields
.field private static a:Ljava/lang/Class;

.field private static b:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    :try_start_0
    const-string v0, "com.tencent.beacon.event.UserAction"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/tencent/itop/httpdns/base/b/f;->a:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 19
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Can not find UserAction class"

    invoke-static {v1, v0}, Lcom/tencent/itop/httpdns/base/log/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 20
    sput-object v0, Lcom/tencent/itop/httpdns/base/b/f;->a:Ljava/lang/Class;

    :goto_0
    return-void
.end method

.method static a(Ljava/lang/String;ZJJLjava/util/Map;Z)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZJJ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    .line 40
    const-string v0, "onUserAction"

    sget-object v1, Lcom/tencent/itop/httpdns/base/b/f;->a:Ljava/lang/Class;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    .line 45
    :try_start_0
    sget-object v10, Lcom/tencent/itop/httpdns/base/b/f;->b:Ljava/lang/reflect/Method;

    const/4 v11, 0x7

    if-nez v10, :cond_1

    .line 46
    new-array v10, v11, [Ljava/lang/Class;

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v2

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v9

    sget-object v13, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v13, v10, v8

    aput-object v13, v10, v7

    const-class v13, Ljava/util/Map;

    aput-object v13, v10, v6

    aput-object v12, v10, v5

    aput-object v12, v10, v4

    invoke-virtual {v1, v0, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/tencent/itop/httpdns/base/b/f;->b:Ljava/lang/reflect/Method;

    .line 49
    :cond_1
    sget-object v1, Lcom/tencent/itop/httpdns/base/b/f;->b:Ljava/lang/reflect/Method;

    .line 50
    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    new-array v11, v11, [Ljava/lang/Object;

    aput-object p0, v11, v2

    aput-object v10, v11, v9

    aput-object v12, v11, v8

    aput-object v13, v11, v7

    aput-object p6, v11, v6

    aput-object v14, v11, v5

    aput-object v15, v11, v4

    .line 49
    invoke-virtual {v1, v3, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 53
    :catch_0
    :try_start_1
    sget-object v1, Lcom/tencent/itop/httpdns/base/b/f;->b:Ljava/lang/reflect/Method;

    if-nez v1, :cond_2

    .line 54
    sget-object v1, Lcom/tencent/itop/httpdns/base/b/f;->a:Ljava/lang/Class;

    new-array v10, v4, [Ljava/lang/Class;

    const-class v11, Ljava/lang/String;

    aput-object v11, v10, v2

    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v9

    sget-object v12, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v8

    aput-object v12, v10, v7

    const-class v12, Ljava/util/Map;

    aput-object v12, v10, v6

    aput-object v11, v10, v5

    invoke-virtual {v1, v0, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/tencent/itop/httpdns/base/b/f;->b:Ljava/lang/reflect/Method;

    .line 57
    :cond_2
    sget-object v0, Lcom/tencent/itop/httpdns/base/b/f;->b:Ljava/lang/reflect/Method;

    .line 58
    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v2

    aput-object v1, v4, v9

    aput-object v10, v4, v8

    aput-object v11, v4, v7

    aput-object p6, v4, v6

    aput-object v12, v4, v5

    .line 57
    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return v0

    :catch_1
    move-exception v0

    .line 60
    const-string v1, "Call UserAction.onUserAction() failed"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/tencent/itop/httpdns/base/log/b;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method
