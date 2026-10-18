.class public Lcom/tencent/beacon/c/a;
.super Ljava/lang/Object;
.source "A.java"


# static fields
.field private static a:Z = false

.field private static b:Ljava/lang/String; = "load_so"

.field private static c:Ljava/lang/String; = "load_so_version"

.field private static d:Ljava/lang/String; = "beacon_so_beacon"


# direct methods
.method private static a(Landroid/content/Context;)I
    .locals 2

    .line 34
    invoke-static {p0}, Lcom/tencent/beacon/c/a;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 35
    sget-object v0, Lcom/tencent/beacon/c/a;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;ILandroid/app/Activity;Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    const-class v0, Lcom/tencent/beacon/c/a;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tencent/beacon/a/c/b;->a()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {p0}, Lcom/tencent/beacon/c/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 4
    new-array v2, v3, [Ljava/lang/Object;

    const-string v4, "[audit] app update"

    invoke-static {v4, v2}, Lcom/tencent/beacon/base/util/c;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    invoke-static {p0, v1}, Lcom/tencent/beacon/c/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    invoke-static {p0, v3}, Lcom/tencent/beacon/c/a;->a(Landroid/content/Context;I)V

    const/4 v1, 0x0

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p0}, Lcom/tencent/beacon/c/a;->a(Landroid/content/Context;)I

    move-result v1

    .line 8
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v2, v5, v3

    const-string v2, "[audit] last load so occur fetal error cnt: %s"

    invoke-static {v2, v5}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-lt v1, p4, :cond_1

    .line 9
    invoke-static {}, Lcom/tencent/beacon/a/b/i;->e()Lcom/tencent/beacon/a/b/i;

    move-result-object p0

    const-string p1, "502"

    const-string p2, "[audit] load so error count over max!"

    invoke-virtual {p0, p1, p2}, Lcom/tencent/beacon/a/b/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    new-array p0, v3, [Ljava/lang/Object;

    const-string p1, "[audit] !!!!!!!!!!LOADERROR!!!!!!!!!! "

    invoke-static {p1, p0}, Lcom/tencent/beacon/base/util/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p0, "LOADERROR"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto :goto_2

    .line 11
    :cond_1
    :try_start_1
    sget-boolean p4, Lcom/tencent/beacon/c/a;->a:Z

    if-nez p4, :cond_2

    add-int/2addr v1, v4

    .line 12
    invoke-static {p0, v1}, Lcom/tencent/beacon/c/a;->a(Landroid/content/Context;I)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string p4, "[audit] load libBeacon.so success"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 13
    :try_start_3
    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p4, v1}, Lcom/tencent/beacon/base/util/c;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    sput-boolean v4, Lcom/tencent/beacon/c/a;->a:Z

    .line 15
    :cond_2
    invoke-static {p0, p1, p2, p3}, Lcom/tencent/qmsp/sdk/u/U;->a(Landroid/content/Context;ILandroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 16
    :try_start_4
    invoke-static {p0, p1}, Lcom/tencent/beacon/c/a;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    const-string p1, "NOLIB"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    .line 17
    :catch_0
    :try_start_5
    sput-boolean v4, Lcom/tencent/beacon/c/a;->a:Z

    .line 18
    invoke-static {p0, p1, p2, p3}, Lcom/tencent/qmsp/sdk/u/U;->a(Landroid/content/Context;ILandroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 19
    :try_start_6
    invoke-static {p0, p1}, Lcom/tencent/beacon/c/a;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    const-string p1, "NOLIB"

    .line 20
    :goto_1
    invoke-static {p0, v3}, Lcom/tencent/beacon/c/a;->a(Landroid/content/Context;I)V

    move-object p0, p1

    :goto_2
    if-eqz p0, :cond_3

    .line 21
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 22
    :cond_3
    invoke-static {}, Lcom/tencent/beacon/a/b/i;->e()Lcom/tencent/beacon/a/b/i;

    move-result-object p1

    const-string p2, "501"

    const-string p3, "[audit] audit run fail! result is empty!"

    invoke-virtual {p1, p2, p3}, Lcom/tencent/beacon/a/b/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_4
    monitor-exit v0

    return-object p0

    :catchall_2
    move-exception p0

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw p0
.end method

.method private static a(Landroid/content/Context;I)V
    .locals 1

    .line 26
    invoke-static {p0}, Lcom/tencent/beacon/c/a;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 27
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 28
    invoke-static {p0}, Lcom/tencent/beacon/base/util/b;->a(Landroid/content/SharedPreferences$Editor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    sget-object v0, Lcom/tencent/beacon/c/a;->b:Ljava/lang/String;

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 30
    invoke-static {p0}, Lcom/tencent/beacon/c/a;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 31
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 32
    invoke-static {p0}, Lcom/tencent/beacon/base/util/b;->a(Landroid/content/SharedPreferences$Editor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    sget-object v0, Lcom/tencent/beacon/c/a;->c:Ljava/lang/String;

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 2

    const/4 p0, 0x0

    .line 23
    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "[audit] libBeacon.so load failed!"

    invoke-static {v0, p0}, Lcom/tencent/beacon/base/util/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    invoke-static {p1}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/Throwable;)V

    .line 25
    invoke-static {}, Lcom/tencent/beacon/a/b/i;->e()Lcom/tencent/beacon/a/b/i;

    move-result-object p0

    const-string v1, "501"

    invoke-virtual {p0, v1, v0, p1}, Lcom/tencent/beacon/a/b/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static b(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .line 1
    sget-object v0, Lcom/tencent/beacon/c/a;->d:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/tencent/beacon/c/a;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 2
    sget-object v0, Lcom/tencent/beacon/c/a;->c:Ljava/lang/String;

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
