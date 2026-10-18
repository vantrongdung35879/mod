.class public final Lcom/tencent/qimei/ao/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/qimei/sdk/S/DataFormatter;
    .locals 8

    .line 42
    new-instance v0, Lcom/tencent/qimei/sdk/S/DataFormatter;

    invoke-direct {v0}, Lcom/tencent/qimei/sdk/S/DataFormatter;-><init>()V

    .line 43
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 47
    :try_start_0
    invoke-static {p0, p1}, Lcom/tencent/qimei/s/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 49
    invoke-static {p0}, Lcom/tencent/qimei/af/c;->a(Ljava/lang/Throwable;)V

    move-object p0, v1

    .line 51
    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 52
    :try_start_1
    const-string p1, "com.google.gson.Gson"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 53
    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 56
    const-string v2, "fromJson"

    const-string v3, "java.lang.Class"

    .line 59
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object v3, v5, v6

    .line 60
    invoke-virtual {p1, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 66
    new-array v2, v4, [Ljava/lang/Object;

    aput-object p0, v2, v7

    const-class p0, Lcom/tencent/qimei/sdk/S/DataFormatter;

    aput-object p0, v2, v6

    invoke-virtual {p1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/qimei/sdk/S/DataFormatter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, p0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 72
    invoke-static {p0}, Lcom/tencent/qimei/af/c;->a(Ljava/lang/Throwable;)V

    move-object v0, v1

    :goto_1
    if-nez v0, :cond_1

    .line 75
    new-instance v0, Lcom/tencent/qimei/sdk/S/DataFormatter;

    invoke-direct {v0}, Lcom/tencent/qimei/sdk/S/DataFormatter;-><init>()V

    :cond_1
    return-object v0
.end method

.method public static a(Lcom/tencent/qimei/sdk/S/DataFormatter;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 19
    const-string v0, ""

    .line 22
    :try_start_0
    const-string v1, "com.google.gson.Gson"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 24
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 26
    const-string/jumbo v3, "toJson"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 31
    new-array v3, v4, [Ljava/lang/Object;

    aput-object p0, v3, v7

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 35
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 38
    :cond_0
    invoke-static {p0, p1}, Lcom/tencent/qimei/s/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 41
    invoke-static {p0}, Lcom/tencent/qimei/af/c;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final a()Lcom/tencent/qimei/sdk/S/DataFormatter;
    .locals 8

    .line 8
    new-instance v0, Lcom/tencent/qimei/sdk/S/DataFormatter;

    invoke-direct {v0}, Lcom/tencent/qimei/sdk/S/DataFormatter;-><init>()V

    .line 9
    const-class v1, Lcom/tencent/qimei/sdk/S/DataFormatter;

    monitor-enter v1

    const/4 v2, 0x1

    .line 10
    :try_start_0
    new-array v3, v2, [Lcom/tencent/qimei/sdk/S/DataFormatter;

    .line 11
    new-instance v4, Lcom/tencent/qimei/w/b;

    invoke-direct {v4}, Lcom/tencent/qimei/w/b;-><init>()V

    const-string v5, "spread_data"

    new-instance v6, Lcom/tencent/qimei/ao/b;

    invoke-direct {v6, p0, v3}, Lcom/tencent/qimei/ao/b;-><init>(Lcom/tencent/qimei/ao/c;[Lcom/tencent/qimei/sdk/S/DataFormatter;)V

    const/4 v7, 0x2

    .line 12
    invoke-virtual {v4, v5, v6, v7}, Lcom/tencent/qimei/w/b;->a(Ljava/lang/String;Lcom/tencent/qimei/w/a;I)Z

    move-result v4

    .line 13
    const-string v5, "SpreadQM"

    const-string v6, "readFromCache blockRead result %b"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v2, v7

    invoke-static {v5, v6, v2}, Lcom/tencent/qimei/af/c;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    aget-object v2, v3, v7

    if-eqz v2, :cond_0

    move-object v0, v2

    .line 17
    :cond_0
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    .line 18
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lcom/tencent/qimei/sdk/S/DataFormatter;)V
    .locals 5

    .line 1
    const-class v0, Lcom/tencent/qimei/sdk/S/DataFormatter;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/qimei/ao/c;->a()Lcom/tencent/qimei/sdk/S/DataFormatter;

    move-result-object v1

    .line 4
    new-instance v2, Lcom/tencent/qimei/w/b;

    invoke-direct {v2}, Lcom/tencent/qimei/w/b;-><init>()V

    const-string v3, "spread_data"

    new-instance v4, Lcom/tencent/qimei/ao/a;

    invoke-direct {v4, p0, v1, p1}, Lcom/tencent/qimei/ao/a;-><init>(Lcom/tencent/qimei/ao/c;Lcom/tencent/qimei/sdk/S/DataFormatter;Lcom/tencent/qimei/sdk/S/DataFormatter;)V

    const/4 p1, 0x3

    .line 5
    invoke-virtual {v2, v3, v4, p1}, Lcom/tencent/qimei/w/b;->a(Ljava/lang/String;Lcom/tencent/qimei/w/a;I)Z

    move-result p1

    .line 6
    const-string v1, "SpreadQM"

    const-string/jumbo v2, "writeToCache blockWrite result %b"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/qimei/af/c;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
