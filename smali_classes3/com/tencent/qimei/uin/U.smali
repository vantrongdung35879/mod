.class public Lcom/tencent/qimei/uin/U;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile a:Z = false


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;)B
    .locals 1

    .line 57
    sget-boolean v0, Lcom/tencent/qimei/uin/U;->a:Z

    if-eqz v0, :cond_0

    .line 59
    :try_start_0
    invoke-static {p0, p1}, Lcom/tencent/qimei/uin/U;->e(Ljava/lang/String;Ljava/lang/String;)B

    move-result p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 61
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .line 29
    sget-boolean v0, Lcom/tencent/qimei/uin/U;->a:Z

    if-eqz v0, :cond_0

    .line 31
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Lcom/tencent/qimei/uin/U;->m(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 36
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 62
    sget-boolean v0, Lcom/tencent/qimei/uin/U;->a:Z

    if-eqz v0, :cond_0

    .line 64
    :try_start_0
    invoke-static {p0}, Lcom/tencent/qimei/uin/U;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 66
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 69
    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 70
    sget-boolean v0, Lcom/tencent/qimei/uin/U;->a:Z

    const-string v1, ""

    if-eqz v0, :cond_1

    .line 72
    :try_start_0
    invoke-static {p0}, Lcom/tencent/qimei/uin/U;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 73
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    return-object v1

    :catch_0
    move-exception p0

    .line 75
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return-object v1
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 47
    sget-boolean v0, Lcom/tencent/qimei/uin/U;->a:Z

    if-eqz v0, :cond_0

    .line 49
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 51
    invoke-static {p0}, Lcom/tencent/qimei/aw/b;->a(Ljava/lang/String;)Lcom/tencent/qimei/aw/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/qimei/aw/b;->b()[Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x1

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object v7, p4

    .line 52
    invoke-static/range {v1 .. v7}, Lcom/tencent/qimei/uin/U;->r(ZIILjava/lang/String;I[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 56
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 8

    .line 37
    sget-boolean v0, Lcom/tencent/qimei/uin/U;->a:Z

    if-eqz v0, :cond_0

    .line 39
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 41
    invoke-static {p0}, Lcom/tencent/qimei/aw/b;->a(Ljava/lang/String;)Lcom/tencent/qimei/aw/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/qimei/aw/b;->b()[Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    const/4 v1, 0x0

    move v3, p2

    move-object v4, p1

    move v5, p3

    .line 42
    invoke-static/range {v1 .. v7}, Lcom/tencent/qimei/uin/U;->r(ZIILjava/lang/String;I[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 46
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 6

    .line 1
    const-class v0, Lcom/tencent/qimei/uin/U;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-boolean v1, Lcom/tencent/qimei/uin/U;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    monitor-exit v0

    goto :goto_2

    .line 6
    :cond_0
    :try_start_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v1, :cond_2

    const/4 p2, 0x0

    .line 7
    :cond_1
    :try_start_2
    sget v1, Lcom/tencent/qimei/ad/b;->a:I

    const-string v1, "qimei"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 8
    sput-boolean v2, Lcom/tencent/qimei/uin/U;->a:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 12
    :try_start_3
    const-string v4, "so load fail,error info :%s"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v1, v5}, Lcom/tencent/qimei/af/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    add-int/2addr p2, v2

    .line 15
    sget-boolean v1, Lcom/tencent/qimei/uin/U;->a:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-nez v1, :cond_3

    const/4 v1, 0x2

    if-lt p2, v1, :cond_1

    goto :goto_1

    .line 16
    :cond_2
    :try_start_4
    invoke-static {p2}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 17
    sput-boolean v2, Lcom/tencent/qimei/uin/U;->a:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p2

    .line 19
    :try_start_5
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 20
    :cond_3
    :goto_1
    monitor-exit v0

    .line 21
    :goto_2
    sget-boolean p2, Lcom/tencent/qimei/uin/U;->a:Z

    if-eqz p2, :cond_4

    .line 24
    :try_start_6
    invoke-static {}, Lcom/tencent/qimei/aw/a;->a()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2, p3}, Lcom/tencent/qimei/uin/U;->n2(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_6
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 27
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    const/4 v2, 0x0

    :goto_3
    return v2

    :catchall_2
    move-exception p0

    .line 28
    monitor-exit v0

    throw p0
.end method

.method private static native a(I[B[B[B)[B
.end method

.method public static a([B[B)[B
    .locals 3

    .line 79
    array-length v0, p0

    .line 80
    array-length v1, p1

    .line 81
    sget-boolean v2, Lcom/tencent/qimei/uin/U;->a:Z

    if-eqz v2, :cond_0

    .line 83
    :try_start_0
    invoke-static {p0, v0, p1, v1}, Lcom/tencent/qimei/uin/U;->r4([BI[BI)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 85
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 11
    sget-boolean v0, Lcom/tencent/qimei/uin/U;->a:Z

    if-eqz v0, :cond_0

    .line 13
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p0, v0}, Lcom/tencent/qimei/uin/U;->z2(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method private static native b()Z
.end method

.method public static b(I[B[B[B)[B
    .locals 1

    .line 6
    sget-boolean v0, Lcom/tencent/qimei/uin/U;->a:Z

    if-eqz v0, :cond_0

    .line 8
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/tencent/qimei/uin/U;->a(I[B[B[B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Ljava/lang/String;)[B
    .locals 1

    .line 1
    sget-boolean v0, Lcom/tencent/qimei/uin/U;->a:Z

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-static {p0}, Lcom/tencent/qimei/uin/U;->d(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/tencent/qimei/uin/U;->a:Z

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-static {}, Lcom/tencent/qimei/uin/U;->u()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 8
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 2

    .line 9
    sget-boolean v0, Lcom/tencent/qimei/uin/U;->a:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 13
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/tencent/qimei/uin/U;->s(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return v1
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/tencent/qimei/uin/U;->a:Z

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-static {}, Lcom/tencent/qimei/uin/U;->o()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 8
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method private static native d(Ljava/lang/String;)[B
.end method

.method private static native e(Ljava/lang/String;Ljava/lang/String;)B
.end method

.method public static e()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/tencent/qimei/uin/U;->a:Z

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-static {}, Lcom/tencent/qimei/uin/U;->b()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static e(Ljava/lang/String;)Z
    .locals 1

    .line 6
    sget-boolean v0, Lcom/tencent/qimei/uin/U;->a:Z

    if-eqz v0, :cond_0

    .line 8
    :try_start_0
    invoke-static {p0}, Lcom/tencent/qimei/uin/U;->w(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static native k(Ljava/lang/String;I)V
.end method

.method private static native m(I)Ljava/lang/String;
.end method

.method private static mnav()I
    .locals 1

    const v0, 0x3d2a2

    return v0
.end method

.method private static native n(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;Z)V
.end method

.method private static native n2(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method private static native o()Ljava/lang/String;
.end method

.method private static native p()Ljava/lang/String;
.end method

.method private static native r(ZIILjava/lang/String;I[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native r4([BI[BI)[B
.end method

.method private static native s(Ljava/lang/String;)Z
.end method

.method private static native tvc()Ljava/lang/String;
.end method

.method private static native tvd()Ljava/lang/String;
.end method

.method private static native tvm(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native tvs()Ljava/lang/String;
.end method

.method private static native u()Ljava/lang/String;
.end method

.method private static native w(Ljava/lang/String;)Z
.end method

.method private static native x(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native y(Ljava/lang/String;)V
.end method

.method private static native z(Landroid/content/Context;)Ljava/lang/String;
.end method

.method private static native z2(Landroid/content/Context;I)Ljava/lang/String;
.end method
