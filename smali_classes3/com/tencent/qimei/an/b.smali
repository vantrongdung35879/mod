.class public final Lcom/tencent/qimei/an/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 5
    iget-boolean v0, p0, Lcom/tencent/qimei/an/b;->a:Z

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 8
    :cond_0
    invoke-static {p1}, Lcom/tencent/qimei/uin/U;->b(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_7

    .line 10
    array-length v2, v0

    const/4 v3, 0x1

    if-gt v2, v3, :cond_1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    .line 14
    aget-byte v2, v0, v2

    const/16 v4, 0x64

    if-eqz v2, :cond_4

    const/16 v5, 0x68

    if-eq v2, v5, :cond_4

    const/16 v5, 0x65

    if-ne v2, v5, :cond_2

    goto :goto_0

    :cond_2
    if-ne v2, v4, :cond_3

    .line 15
    invoke-static {p1}, Lcom/tencent/qimei/am/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/am/a;

    move-result-object p1

    .line 16
    iput-boolean v3, p1, Lcom/tencent/qimei/am/a;->c:Z

    goto :goto_0

    .line 17
    :cond_3
    invoke-static {}, Lcom/tencent/qimei/ai/h;->a()Lcom/tencent/qimei/ai/h;

    move-result-object v5

    .line 18
    invoke-static {v5}, Lcom/tencent/qimei/q/b;->a(Lcom/tencent/qimei/ai/h;)Lcom/tencent/qimei/ai/e;

    move-result-object v6

    .line 20
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 21
    iget-object v8, v6, Lcom/tencent/qimei/ai/e;->a:Ljava/util/HashMap;

    const-string v9, "6"

    invoke-virtual {v8, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    const-string/jumbo v7, "v6"

    invoke-virtual {v5, v6, v7, p1}, Lcom/tencent/qimei/ai/h;->a(Lcom/tencent/qimei/ai/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    :cond_4
    :goto_0
    new-instance p1, Ljava/lang/String;

    array-length v5, v0

    invoke-static {v0, v3, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    if-eqz v2, :cond_6

    if-ne v2, v4, :cond_5

    goto :goto_1

    :cond_5
    return-object v1

    :cond_6
    :goto_1
    return-object p1

    :cond_7
    :goto_2
    return-object v1
.end method

.method public final a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    const-class v0, Lcom/tencent/qimei/an/b;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual/range {p0 .. p5}, Lcom/tencent/qimei/an/b;->b(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/tencent/qimei/an/b;->a:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 5
    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 8
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 10
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p4, p5}, Lcom/tencent/qimei/uin/U;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/tencent/qimei/an/b;->a:Z

    if-nez p2, :cond_2

    .line 14
    invoke-static {p1}, Lcom/tencent/qimei/ai/c;->a(Ljava/lang/String;)V

    .line 17
    :cond_2
    iget-boolean p1, p0, Lcom/tencent/qimei/an/b;->a:Z

    .line 18
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p4, 0x0

    aput-object p1, p2, p4

    aput-object p3, p2, v1

    .line 19
    const-string p1, "SDK_INIT \uff5c LOCAL_ENC"

    const-string p3, " initialization is complete (%b),fileName is %s "

    invoke-static {p1, p3, p2}, Lcom/tencent/qimei/af/c;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    iget-boolean p1, p0, Lcom/tencent/qimei/an/b;->a:Z

    return p1
.end method
